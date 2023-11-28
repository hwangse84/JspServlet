<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>hanul 201!!</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
        <div class="d-flex align-items-center justify-content-center vh-100">
            <div class="text-center row">
                <div class=" col-md-6">
                    <img src="https://cdn.pixabay.com/photo/2017/03/09/12/31/error-2129569__340.jpg" alt=""
                        class="img-fluid">
                </div>
                <div class=" col-md-6 mt-5">
                    <p class="fs-3"> <span class="text-danger">에러!</span> 페이지를 찾을수 없습니다</p>
                    <p class="lead">
                        경로를 확인하시고 다시 접근해주세요!
                    </p>
                    <!--a태그 href에 /는 root를 의미함  -->
                    <!--  -->
                    <a href='<c:url value="/"/>' class="btn btn-primary"> Home</a>
                </div>

                    <!--<c:url value="/"/>-->
            </div>
        </div>
    </body>

</html>