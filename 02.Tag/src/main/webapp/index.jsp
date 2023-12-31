<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>201호 JSP</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Custom Google font-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
   href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
   rel="stylesheet" />
<!-- Bootstrap icons-->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
   rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body class="d-flex flex-column h-100">

   <main class="flex-shrink-0">
      <!-- Navigation-->
      <nav class="navbar navbar-expand-lg navbar-light bg-white py-3">
         <div class="container px-5">
            <a class="navbar-brand" href="index.jsp"><span
               class="fw-bolder text-primary">JspServletTag</span></a>
            <button class="navbar-toggler" type="button"
               data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
               aria-controls="navbarSupportedContent" aria-expanded="false"
               aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav ms-auto mb-2 mb-lg-0 small fw-bolder">
                  <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                  <li class="nav-item"><a class="nav-link" href="resume.html">Resume</a></li>
                  <li class="nav-item"><a class="nav-link" href="projects.html">Projects</a></li>
                  <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
               </ul>
            </div>
         </div>
      </nav>
      <!-- Header-->
      <header class="py-5">
         <div class="container px-5 pb-5">
            <div class="row gx-5 align-items-center">
               <div class="col-xxl-5">
                  <!-- Header text content-->
                  <div class="text-center text-xxl-start">
                     <div
                        class="badge bg-gradient-primary-to-secondary text-white mb-4">
                        <div class="text-uppercase">Design &middot; Development
                           &middot; Marketing</div>
                     </div>
                     <div class="fs-3 fw-light text-muted">I can help your
                        business to</div>
                     <h1 class="display-3 fw-bolder mb-5">
                        <span class="text-gradient d-inline">Get online and grow
                           fast</span>
                     </h1>
                     <div
                        class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xxl-start mb-3">
                        <a
                           class="btn btn-primary btn-lg px-5 py-3 me-sm-3 fs-6 fw-bolder"
                           href="resume.html">Resume</a> <a
                           class="btn btn-outline-dark btn-lg px-5 py-3 fs-6 fw-bolder"
                           href="projects.html">Projects</a>
                     </div>
                  </div>
               </div>
               <div class="col-xxl-7">
                  <!-- Header profile picture-->
                  <div class="d-flex justify-content-center mt-5 mt-xxl-0">
                     <div class="profile bg-gradient-primary-to-secondary">
                        <!-- TIP: For best results, use a photo with a transparent background like the demo example below-->
                        <!-- Watch a tutorial on how to do this on YouTube (link)-->
                        <img class="profile-img" src="assets/bb.jpg" alt="..." />
                        <div class="dots-1">
                           <!-- SVG Dots-->
                           <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                              xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                              viewBox="0 0 191.6 1215.4"
                              style="enable-background: new 0 0 191.6 1215.4"
                              xml:space="preserve">
                                            <g
                                 transform="translate(0.000000,1280.000000) scale(0.100000,-0.100000)">
                                                <path
                                 d="M227.7,12788.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,12801.6,289.7,12808.6,227.7,12788.6z"></path>
                                                <path
                                 d="M1507.7,12788.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,12801.6,1569.7,12808.6,1507.7,12788.6z"></path>
                                                <path
                                 d="M227.7,11508.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,11521.6,289.7,11528.6,227.7,11508.6z"></path>
                                                <path
                                 d="M1507.7,11508.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,11521.6,1569.7,11528.6,1507.7,11508.6z"></path>
                                                <path
                                 d="M227.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,10241.6,289.7,10248.6,227.7,10228.6z"></path>
                                                <path
                                 d="M1507.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,10241.6,1569.7,10248.6,1507.7,10228.6z"></path>
                                                <path
                                 d="M227.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,8961.6,289.7,8968.6,227.7,8948.6z"></path>
                                                <path
                                 d="M1507.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,8961.6,1569.7,8968.6,1507.7,8948.6z"></path>
                                                <path
                                 d="M227.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,7681.6,289.7,7688.6,227.7,7668.6z"></path>
                                                <path
                                 d="M1507.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,7681.6,1569.7,7688.6,1507.7,7668.6z"></path>
                                                <path
                                 d="M227.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,6401.6,289.7,6408.6,227.7,6388.6z"></path>
                                                <path
                                 d="M1507.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,6401.6,1569.7,6408.6,1507.7,6388.6z"></path>
                                                <path
                                 d="M227.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,5121.6,289.7,5128.6,227.7,5108.6z"></path>
                                                <path
                                 d="M1507.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,5121.6,1569.7,5128.6,1507.7,5108.6z"></path>
                                                <path
                                 d="M227.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,3841.6,289.7,3848.6,227.7,3828.6z"></path>
                                                <path
                                 d="M1507.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,3841.6,1569.7,3848.6,1507.7,3828.6z"></path>
                                                <path
                                 d="M227.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,2561.6,289.7,2568.6,227.7,2548.6z"></path>
                                                <path
                                 d="M1507.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,2561.6,1569.7,2568.6,1507.7,2548.6z"></path>
                                                <path
                                 d="M227.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,1281.6,289.7,1288.6,227.7,1268.6z"></path>
                                                <path
                                 d="M1507.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,1281.6,1569.7,1288.6,1507.7,1268.6z"></path>
                                            </g>
                                        </svg>
                           <!-- END of SVG dots-->
                        </div>
                        <div class="dots-2">
                           <!-- SVG Dots-->
                           <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                              xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                              viewBox="0 0 191.6 1215.4"
                              style="enable-background: new 0 0 191.6 1215.4"
                              xml:space="preserve">
                                            <g
                                 transform="translate(0.000000,1280.000000) scale(0.100000,-0.100000)">
                                                <path
                                 d="M227.7,12788.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,12801.6,289.7,12808.6,227.7,12788.6z"></path>
                                                <path
                                 d="M1507.7,12788.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,12801.6,1569.7,12808.6,1507.7,12788.6z"></path>
                                                <path
                                 d="M227.7,11508.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,11521.6,289.7,11528.6,227.7,11508.6z"></path>
                                                <path
                                 d="M1507.7,11508.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,11521.6,1569.7,11528.6,1507.7,11508.6z"></path>
                                                <path
                                 d="M227.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,10241.6,289.7,10248.6,227.7,10228.6z"></path>
                                                <path
                                 d="M1507.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,10241.6,1569.7,10248.6,1507.7,10228.6z"></path>
                                                <path
                                 d="M227.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,8961.6,289.7,8968.6,227.7,8948.6z"></path>
                                                <path
                                 d="M1507.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,8961.6,1569.7,8968.6,1507.7,8948.6z"></path>
                                                <path
                                 d="M227.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,7681.6,289.7,7688.6,227.7,7668.6z"></path>
                                                <path
                                 d="M1507.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,7681.6,1569.7,7688.6,1507.7,7668.6z"></path>
                                                <path
                                 d="M227.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,6401.6,289.7,6408.6,227.7,6388.6z"></path>
                                                <path
                                 d="M1507.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,6401.6,1569.7,6408.6,1507.7,6388.6z"></path>
                                                <path
                                 d="M227.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,5121.6,289.7,5128.6,227.7,5108.6z"></path>
                                                <path
                                 d="M1507.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,5121.6,1569.7,5128.6,1507.7,5108.6z"></path>
                                                <path
                                 d="M227.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,3841.6,289.7,3848.6,227.7,3828.6z"></path>
                                                <path
                                 d="M1507.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,3841.6,1569.7,3848.6,1507.7,3828.6z"></path>
                                                <path
                                 d="M227.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,2561.6,289.7,2568.6,227.7,2548.6z"></path>
                                                <path
                                 d="M1507.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,2561.6,1569.7,2568.6,1507.7,2548.6z"></path>
                                                <path
                                 d="M227.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,1281.6,289.7,1288.6,227.7,1268.6z"></path>
                                                <path
                                 d="M1507.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,1281.6,1569.7,1288.6,1507.7,1268.6z"></path>
                                            </g>
                                        </svg>
                           <!-- END of SVG dots-->
                        </div>
                        <div class="dots-3">
                           <!-- SVG Dots-->
                           <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                              xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                              viewBox="0 0 191.6 1215.4"
                              style="enable-background: new 0 0 191.6 1215.4"
                              xml:space="preserve">
                                            <g
                                 transform="translate(0.000000,1280.000000) scale(0.100000,-0.100000)">
                                                <path
                                 d="M227.7,12788.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,12801.6,289.7,12808.6,227.7,12788.6z"></path>
                                                <path
                                 d="M1507.7,12788.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,12801.6,1569.7,12808.6,1507.7,12788.6z"></path>
                                                <path
                                 d="M227.7,11508.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,11521.6,289.7,11528.6,227.7,11508.6z"></path>
                                                <path
                                 d="M1507.7,11508.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,11521.6,1569.7,11528.6,1507.7,11508.6z"></path>
                                                <path
                                 d="M227.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,10241.6,289.7,10248.6,227.7,10228.6z"></path>
                                                <path
                                 d="M1507.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,10241.6,1569.7,10248.6,1507.7,10228.6z"></path>
                                                <path
                                 d="M227.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,8961.6,289.7,8968.6,227.7,8948.6z"></path>
                                                <path
                                 d="M1507.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,8961.6,1569.7,8968.6,1507.7,8948.6z"></path>
                                                <path
                                 d="M227.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,7681.6,289.7,7688.6,227.7,7668.6z"></path>
                                                <path
                                 d="M1507.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,7681.6,1569.7,7688.6,1507.7,7668.6z"></path>
                                                <path
                                 d="M227.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,6401.6,289.7,6408.6,227.7,6388.6z"></path>
                                                <path
                                 d="M1507.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,6401.6,1569.7,6408.6,1507.7,6388.6z"></path>
                                                <path
                                 d="M227.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,5121.6,289.7,5128.6,227.7,5108.6z"></path>
                                                <path
                                 d="M1507.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,5121.6,1569.7,5128.6,1507.7,5108.6z"></path>
                                                <path
                                 d="M227.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,3841.6,289.7,3848.6,227.7,3828.6z"></path>
                                                <path
                                 d="M1507.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,3841.6,1569.7,3848.6,1507.7,3828.6z"></path>
                                                <path
                                 d="M227.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,2561.6,289.7,2568.6,227.7,2548.6z"></path>
                                                <path
                                 d="M1507.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,2561.6,1569.7,2568.6,1507.7,2548.6z"></path>
                                                <path
                                 d="M227.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,1281.6,289.7,1288.6,227.7,1268.6z"></path>
                                                <path
                                 d="M1507.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,1281.6,1569.7,1288.6,1507.7,1268.6z"></path>
                                            </g>
                                        </svg>
                           <!-- END of SVG dots-->
                        </div>
                        <div class="dots-4">
                           <!-- SVG Dots-->
                           <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                              xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                              viewBox="0 0 191.6 1215.4"
                              style="enable-background: new 0 0 191.6 1215.4"
                              xml:space="preserve">
                                            <g
                                 transform="translate(0.000000,1280.000000) scale(0.100000,-0.100000)">
                                                <path
                                 d="M227.7,12788.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,12801.6,289.7,12808.6,227.7,12788.6z"></path>
                                                <path
                                 d="M1507.7,12788.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,12801.6,1569.7,12808.6,1507.7,12788.6z"></path>
                                                <path
                                 d="M227.7,11508.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,11521.6,289.7,11528.6,227.7,11508.6z"></path>
                                                <path
                                 d="M1507.7,11508.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,11521.6,1569.7,11528.6,1507.7,11508.6z"></path>
                                                <path
                                 d="M227.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,10241.6,289.7,10248.6,227.7,10228.6z"></path>
                                                <path
                                 d="M1507.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,10241.6,1569.7,10248.6,1507.7,10228.6z"></path>
                                                <path
                                 d="M227.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,8961.6,289.7,8968.6,227.7,8948.6z"></path>
                                                <path
                                 d="M1507.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,8961.6,1569.7,8968.6,1507.7,8948.6z"></path>
                                                <path
                                 d="M227.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,7681.6,289.7,7688.6,227.7,7668.6z"></path>
                                                <path
                                 d="M1507.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,7681.6,1569.7,7688.6,1507.7,7668.6z"></path>
                                                <path
                                 d="M227.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,6401.6,289.7,6408.6,227.7,6388.6z"></path>
                                                <path
                                 d="M1507.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,6401.6,1569.7,6408.6,1507.7,6388.6z"></path>
                                                <path
                                 d="M227.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,5121.6,289.7,5128.6,227.7,5108.6z"></path>
                                                <path
                                 d="M1507.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,5121.6,1569.7,5128.6,1507.7,5108.6z"></path>
                                                <path
                                 d="M227.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,3841.6,289.7,3848.6,227.7,3828.6z"></path>
                                                <path
                                 d="M1507.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,3841.6,1569.7,3848.6,1507.7,3828.6z"></path>
                                                <path
                                 d="M227.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,2561.6,289.7,2568.6,227.7,2548.6z"></path>
                                                <path
                                 d="M1507.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,2561.6,1569.7,2568.6,1507.7,2548.6z"></path>
                                                <path
                                 d="M227.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,1281.6,289.7,1288.6,227.7,1268.6z"></path>
                                                <path
                                 d="M1507.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,1281.6,1569.7,1288.6,1507.7,1268.6z"></path>
                                            </g>
                                        </svg>
                           <!-- END of SVG dots-->
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </header>





      <div class="container px-5 my-5">
         <div class="text-center mb-5">
            <h1 class="display-5 fw-bolder mb-0">
               <span class="text-gradient d-inline">스크립트태그(Script Tag)</span>
            </h1>
         </div>
         <div class="row gx-5 justify-content-center">
            <div class="col-lg-11 col-xl-9 col-xxl-8">
               <!-- Experience Section-->
               <section>
                  <div
                     class="d-flex align-items-center justify-content-between mb-4">
                     <h2 class="text-primary fw-bolder mb-0">Experience</h2>
                     <!-- Download resume button-->
                     <!-- Note: Set the link href target to a PDF file within your project-->
                     <a class="btn btn-primary px-4 py-3" href="#!">
                        <div class="d-inline-block bi bi-download me-2">Download
                           Resume</div>
                     </a>
                  </div>
                  <!-- Experience Card 1-->
                  <div class="card shadow border-0 rounded-4 mb-4">
                     <div class="card-body p-3">
                        <div class="row align-items-center gx-5">
                           <div class="col text-center text-lg-start mb-4 mb-lg-0">
                              <div class="bg-light p-4 rounded-4">
                                 <div class="text-primary fw-bolder mb-2">1.태그 처음 사용</div>
                              </div>
                           </div>
                           <div class="col-lg-8">
                              <div>
                                 <a href="01.script/Ex00Into.jsp">1. 태그와 변수이용</a>
                                 <p></p>
                                 <a href="01.script/Ex01Var.jsp">2. 여러 변수 선언, 할당, 출력</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- Experience Card 2-->
                  <div class="card shadow border-0 rounded-4 mb-4">
                     <div class="card-body p-3">
                        <div class="row align-items-center gx-5">
                           <div class="col text-center text-lg-start mb-4 mb-lg-0">
                              <div class="bg-light p-4 rounded-4">
                                 <div class="text-primary fw-bolder mb-2">2.제어문</div>
                              </div>
                           </div>
                           <div class="col-lg-8">
                              <div>
                                 <a href="01.script/Ex02For.jsp">1. For문 </a>
                                 <p></p>
                                 <a href="01.script/Ex02If.jsp">2. IF문 </a>
                                 <p></p>
                                 <a href="01.script/Ex03TestForIf.jsp">3. 실습1 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- Experience Card 3-->
                  <div class="card shadow border-0 rounded-4 mb-4">
                     <div class="card-body p-3">
                        <div class="row align-items-center gx-5">
                           <div class="col text-center text-lg-start mb-4 mb-lg-0">
                              <div class="bg-light p-4 rounded-4">
                                 <div class="text-primary fw-bolder mb-2">2.제어문</div>
                              </div>
                           </div>
                           <div class="col-lg-8">
                              <div>
                                 <a href="01.script/Ex03TestFor.jsp">1. 중첩 For 문 </a>
                                 <p></p>
                                 <a href="01.script/EtcMethod.jsp">2. 메소드 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>
               <!-- Education Section-->
               <!-- Directive -->
               <section>
                  <h2 class="text-secondary fw-bolder mb-4">Directive Tag</h2>
                  <!-- Education Card 1-->
                  <div class="card shadow border-0 rounded-4 mb-5">
                     <div class="card-body p-3">
                        <div class="row align-items-center gx-5">
                           <div class="col text-center text-lg-start mb-4 mb-lg-0">
                              <div class="bg-light p-4 rounded-4">
                                 <div class="text-secondary fw-bolder mb-2">디렉티브 태그 페이지</div>

                              </div>
                           </div>
                           <div class="col-lg-8">
                              <div>
                                 <a href="02.Directive/Ex01_Directive.jsp">1. 디렉티브 기본 </a>
                                 <p></p>
                                 <a href="02.Directive/Ex02_ErrorMain.jsp">2. 오류페이지 처리 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="card shadow border-0 rounded-4 mb-5">
                     <div class="card-body p-3">
                        <div class="row align-items-center gx-5">
                           <div class="col text-center text-lg-start mb-4 mb-lg-0">
                              <div class="bg-light p-4 rounded-4">
                                 <div class="text-secondary fw-bolder mb-2">디렉티브 인클루드</div>

                              </div>
                           </div>
                           <div class="col-lg-8">
                              <div>
                                 <a href="02.Directive/Ex03_Main.jsp">1. 붙이기 Header Footer
                                 </a>
                                 <p></p>
                                 <a href="02.Directive/Ex04_Main.jsp">2. 붙이기 Header Footer
                                 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>
               <!-- Action Section -->
               <section>
                  <h2 class="text-success fw-bolder mb-4">Action Tag</h2>
                  <!-- Action Card 1-->
                  <div class="card shadow border-0 rounded-4 mb-5">
                     <div class="card-body p-3">
                        <div class="row align-items-center gx-5">
                           <div class="col text-center text-lg-start mb-4 mb-lg-0">
                              <div class="bg-light p-4 rounded-4">
                                 <div class="text-success fw-bolder mb-2">액션 포워드(Forward)</div>
                              </div>
                           </div>
                           <div class="col-lg-8">
                              <div>
                                 <a href="03.Action/Ex01_Forward.jsp" class="d-block mb-1">1. 포워드 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="card shadow border-0 rounded-4 mb-5">
                     <div class="card-body p-3">
                        <div class="row align-items-center gx-5">
                           <div class="col text-center text-lg-start mb-4 mb-lg-0">
                              <div class="bg-light p-4 rounded-4">
                                 <div class="text-success fw-bolder mb-2">JSP 인클루드</div>
                              </div>
                           </div>
                           <div class="col-lg-8">
                              <div>
                                 <a href="03.Action/Ex02_include.jsp" class="d-block mb-1">1. 인클루드 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="card shadow border-0 rounded-4 mb-5">
                     <div class="card-body p-3">
                        <div class="row align-items-center gx-5">
                           <div class="col text-center text-lg-start mb-4 mb-lg-0">
                              <div class="bg-light p-4 rounded-4">
                                 <div class="text-success fw-bolder mb-2">Bean객체(JSP)</div>
                              </div>
                           </div>
                           <div class="col-lg-8">
                              <div>
                                 JSP(Spring) Bean객체 핵심이 되는 내용이지만 현재는 JSP 코드로 사용하는것은 매우 불편함.
                                 스프링 기능없이 만드는거 자체가 매우 불편함.
                                 객체를 항상 new로 초기화 x -> Spring 속성을 이용해서 자동으로 설정을 로딩해서 객체로 만드는 용도로 많이씀.
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>
               
               <!-- 연습용 -->


            <!--    <!-- Divider-->
               <div class="pb-5"></div>
               Skills Section
               <section>
                  Skillset Card
                  <div class="card shadow border-0 rounded-4 mb-5"></div>
               </section>
            </div>
         </div>
      </div>
      About Section
      <section class="bg-light py-5">
         <div class="container px-5">
            <div class="row gx-5 justify-content-center">
               <div class="col-xxl-8">
                  <div class="text-center my-5">
                     <h2 class="display-5 fw-bolder">
                        <span class="text-gradient d-inline">About Me</span>
                     </h2>
                     <p class="lead fw-light mb-4">My name is Start Bootstrap and
                        I help brands grow.</p>
                     <p class="text-muted">Lorem ipsum dolor sit amet, consectetur
                        adipisicing elit. Fugit dolorum itaque qui unde quisquam
                        consequatur autem. Eveniet quasi nobis aliquid cumque officiis
                        sed rem iure ipsa! Praesentium ratione atque dolorem?</p>
                     <div class="d-flex justify-content-center fs-2 gap-4">
                        <a class="text-gradient" href="#!"><i class="bi bi-twitter"></i></a>
                        <a class="text-gradient" href="#!"><i class="bi bi-linkedin"></i></a>
                        <a class="text-gradient" href="#!"><i class="bi bi-github"></i></a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </main>
   Footer
   <footer class="bg-white py-4 mt-auto">
      <div class="container px-5">
         <div
            class="row align-items-center justify-content-between flex-column flex-sm-row">
            <div class="col-auto">
               <div class="small m-0">Copyright &copy; Your Website 2023</div>
            </div>
            <div class="col-auto">
               <a class="small" href="#!">Privacy</a> <span class="mx-1">&middot;</span>
               <a class="small" href="#!">Terms</a> <span class="mx-1">&middot;</span>
               <a class="small" href="#!">Contact</a>
            </div>
         </div>
      </div>
   </footer>
   Bootstrap core JS
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
   Core theme JS
   <script src="js/scripts.js"></script>
</body>
</html> -->