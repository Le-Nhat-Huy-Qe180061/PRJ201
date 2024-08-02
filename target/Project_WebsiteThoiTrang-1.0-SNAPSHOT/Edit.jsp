<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
            .close {
                float: right;
                font-size: 28px;
                font-weight: bold;
                line-height: 1;
                color: #000;
                text-shadow: 0 1px 0 #fff;
                opacity: .5;
            }

            .close:hover {
                color: #000;
                text-decoration: none;
                cursor: pointer;
                opacity: .75;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="edit" method="post" enctype="multipart/form-data">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Product</h4>
                                <button type="button" class="close" id="closeEditModal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <input value="${detail.id}" name="id" type="hidden" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input value="${detail.name}" name="name" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Image</label>
                                    <input type="file" name="image" class="form-control">
                                    <input type="hidden" name="currentImage" value="${detail.image}">
                                    <img src="images/${detail.image}" alt="Current Image" style="max-width: 200px; margin-top: 10px;">
                                </div>
                                <div class="form-group">
                                    <label>Image 2</label>
                                    <input type="file" name="image2" class="form-control">
                                    <input type="hidden" name="currentImage2" value="${detail.image2}">
                                    <img src="images/${detail.image2}" alt="Current Image 2" style="max-width: 200px; margin-top: 10px;">
                                </div>
                                <div class="form-group">
                                    <label>Image 3</label>
                                    <input type="file" name="image3" class="form-control">
                                    <input type="hidden" name="currentImage3" value="${detail.image3}">
                                    <img src="images/${detail.image3}" alt="Current Image 3" style="max-width: 200px; margin-top: 10px;">
                                </div>
                                <div class="form-group">
                                    <label>Image 4</label>
                                    <input type="file" name="image4" class="form-control">
                                    <input type="hidden" name="currentImage4" value="${detail.image4}">
                                    <img src="images/${detail.image4}" alt="Current Image 4" style="max-width: 200px; margin-top: 10px;">
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input value="${detail.price}" name="price" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Title</label>
                                    <textarea name="title" class="form-control" required>${detail.title}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Model</label>
                                    <textarea name="model" class="form-control" required>${detail.model}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Color</label>
                                    <textarea name="color" class="form-control" oninput="validateAlphabetic(this)" required>${detail.color}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Delivery</label>
                                    <textarea name="delivery" class="form-control" oninput="validateAlphabetic(this)" required>${detail.delivery} </textarea>
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description" class="form-control">${detail.description}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select name="category" class="form-select" aria-label="Default select example">
                                        <c:forEach items="${listCC}" var="o">
                                            <option value="${o.cid}">${o.cname}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Save">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
        <script>
            document.getElementById('closeEditModal').addEventListener('click', function (event) {
                event.preventDefault(); // Ngăn chặn hành động mặc định
                if (confirm('Bạn có chắc chắn muốn đóng? Mọi thay đổi chưa lưu sẽ bị mất.')) {
                    window.location.href = 'manager'; // Thay 'manager' bằng URL bạn muốn chuyển đến sau khi đóng
                }
            });

            function validateAlphabetic(input) {
                const regex = /^[A-Za-z]*$/;
                if (!regex.test(input.value)) {
                    input.setCustomValidity("Please enter alphabetic characters only.");
                } else {
                    input.setCustomValidity("");
                }
            }
        </script>
    </body>
</html>