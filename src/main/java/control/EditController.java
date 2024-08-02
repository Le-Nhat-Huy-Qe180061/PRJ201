package control;

import dao.DAO;
import entity.Account;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "EditController", urlPatterns = {"/edit"})
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024, // 1 MB
    maxFileSize = 1024 * 1024 * 10,  // 10 MB
    maxRequestSize = 1024 * 1024 * 15 // 15 MB
)
public class EditController extends HttpServlet {

    private static final String UPLOAD_DIRECTORY = "images";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String pid = request.getParameter("id");
        String pname = request.getParameter("name");
        String pprice = request.getParameter("price");
        String ptitle = request.getParameter("title");
        String pdescription = request.getParameter("description");
        String pcategory = request.getParameter("category");
        String pmodel = request.getParameter("model");
        String pcolor = request.getParameter("color");
        String pdelivery = request.getParameter("delivery");

        String[] imageNames = new String[4];
        Part[] imageParts = new Part[4];
        String[] imageFieldNames = {"image", "image2", "image3", "image4"};

        for (int i = 0; i < 4; i++) {
            imageParts[i] = request.getPart(imageFieldNames[i]);
            if (imageParts[i] != null && imageParts[i].getSize() > 0) {
                imageNames[i] = processImageUpload(imageParts[i], request);
            } else {
                imageNames[i] = request.getParameter(imageFieldNames[i]);
            }
        }

        DAO dao = new DAO();
        dao.editProduct(pname, imageNames[0], pprice, ptitle, pdescription, pcategory, 
                        pmodel, pcolor, pdelivery, imageNames[1], imageNames[2], imageNames[3], pid);

        request.setAttribute("mess", "Sản phẩm đã được chỉnh sửa!");
        request.getRequestDispatcher("manager").forward(request, response);
    }

    private String processImageUpload(Part filePart, HttpServletRequest request) throws IOException {
        String fileName = getFileName(filePart);
        String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        try (InputStream input = filePart.getInputStream()) {
            File file = new File(uploadPath + File.separator + fileName);
            Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
        }
        return fileName;
    }

    private String getFileName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename"))
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
        }
        return "unknownfile." + System.currentTimeMillis();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Edit Product Controller";
    }
}