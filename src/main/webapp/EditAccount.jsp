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
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="editAccount" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Account</h4>
                            <button type="button" class="close" id="closeEditModal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Username</label>
                                <input name="user" type="text" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label>Password</label>
                                <input name="pass" type="password" class="form-control" required>
                            </div>
                            <div class="form-group form-check">
                                <input name="isSell" value="1" type="checkbox" class="form-check-input" id="isSell">
                                <label class="form-check-label" for="isSell">Là người bán</label>
                            </div>

                            <div class="form-group form-check">
                                <input name="isAdmin" value="1" type="checkbox" class="form-check-input" id="isAdmin">
                                <label class="form-check-label" for="isAdmin">Là Admin</label>
                            </div>
                            
                            <div class="form-group">
                                <label>Email</label>
                                <input name="email" type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="submit" class="btn btn-success" value="Save">
                        </div>
                    </form>
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
        </script>
    </body>
</html>