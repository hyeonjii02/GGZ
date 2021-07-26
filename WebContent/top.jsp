    <%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<style>

 a { color:  #333; text-decoration: none;}
  a:link { text-decoration: none;}

header {
    width: 100%;
    position: fixed;
    top: 0;
    z-index: 9;
    background-color: #fff;
    border-bottom: 1px solid #c8c8c8;
    font-family: 'Black Han Sans', sans-serif;
    
  }
  header > .inner {
  	top:20px;
    height: 100px;
    margin: 0 auto;
    position: relative;
  }

  header .sub-menu {
    position: absolute;
    top: 20px;
    right: 0;
    display: flex;
  }
  header .sub-menu ul.menu {
    display: flex;
  }
  header .sub-menu ul.menu li {
    position: relative;
  }
  header .sub-menu ul.menu li::before {
    content: "";
    width: 1px;
    height: 30px;
    background-color: #e5e5e5;
    position: absolute;
    top: 0;
    bottom: 0;
    margin: auto;
  }
  header .sub-menu ul.menu li:first-child::before {
    display: none;
  }
  header .sub-menu ul.menu li a {
    padding: 11px 16px;
    display: block;
    font-size: 13px;
    color: #656565;
  }
    header .sub-menu ul.menu li p {
    padding: 11px 16px;
    display: block;
    font-size: 15px;
    color: #000;  
  }
  header .sub-menu ul.menu li a:hover {
    color: #000;
    
  }
  header .main-menu {
    position: absolute;
    top: 10px;
    left: 0;
    z-index: 1;
    display: flex;
  }
    header .home {
    top: 20px;
    left: 0;
    padding: 10px 20px 34px 20px;
    font-size: 50px;
    color: #656565;
  }
   header .main-menu{
   left:200px;
    text-decoration: none;
   }
  header .main-menu .item .item__name {
    padding: 10px 20px 34px 20px;
    font-size: 13px;
     text-decoration: none;
     margin-top:10px;
  }
   header .main-menu li::before {
    content: "";
    width: 1px;
    height: 30px;
    background-color: #e5e5e5;
    position: absolute;
    top: 0;
    bottom: 0;
    margin: auto;
  }

</style>
</head>
<body>
    <header>
        <div class="inner">
            <div class="sub-menu">
                <ul class="menu">
                  <c:choose>       
             <c:when test="${member != null}">   
                 <li>
                    <p>${member.email} 님
                    &nbsp;&nbsp;
                    ${member.point } P</p>
                  </li>
                  <li>
                    <a href="./update.GGZ">My Page</a>
                  </li>
                   <li>
                    <a href="./logout.GGZ">log out</a>
                  </li>
                  </c:when>              
                  <c:otherwise>
                    <li>
                    <a href="./login.GGZ">log in</a>
                  </li>

                  </c:otherwise>
                  </c:choose>
                </ul>
              </div>
            <div class="home"><a href="./index.jsp"><p>그그지</p></a></div>             
            <ul class="main-menu">
              <li class="item">
                  <a href="./freeboard.GGZ"> <div class="item__name">자유게시판</div></a>
              </li>
              <li class="item">
               <a href="./quiz.GGZ"> <div class="item__name">퀴즈&모의고사</div></a>
              </li>
              <li class="item">
                <a href="listSelect.GGZ?btn=btn5&pno=1"><div class="item__name">문방구</div></a>
              </li>
            </ul>
        
        </div>
</header>
</body>
</html>