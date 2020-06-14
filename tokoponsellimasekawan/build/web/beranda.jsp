<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql"uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource var="dataSource"
                   driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/tokoponsellimasekawan"
                   user="root"password=""/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lima Sekawan Cell</title>
        <link rel="stylesheet" type="text/css" href="config/style.css" />
        <script type="text/javascript" src="config/setting.js"></script>
        <link href="config/cssTable.css" rel="stylesheet" type="text/css" />
</head>
    </head>
    <body>
        <header>
        <div id="wrapper">
            <div id="header">
                <h1><a>Lima Sekawan Cell</a></h1><br>
                <marquee behavior="alternate">Jl. Kapuk Kamal Raya No 18, Cengkareng Timur, Jakarta Barat</p></marquee>
                </div>
            <div id="menu">
                <ul>
                    <li><a href="beranda.jsp?halaman=home">Home</a></li>
                    <li><a href="beranda.jsp?halaman=product">Product</a></li>
                </ul>
            </div>
            <div id="content">
                <div id="left_column">
                    <table width="100%">
                        <tr>
                            <td valign="top" width="110%">
                                <div class="text_area" align="justify">
                                 <c:choose>
                                <c:when test="${param.halaman=='home'}">
                                <%@include file="home.jsp" %>
                                </c:when>
                                <c:when test="${param.halaman=='tampilbrg'}">
                                <%@include file="barang.jsp" %>
                                </c:when>
                                <c:when test="${param.halaman=='tampilsup'}">
                                <%@include file="supplier.jsp" %>
                                </c:when>
                                <c:when test="${param.halaman=='tampilakun'}">
                                <%@include file="akun.jsp" %>
                                </c:when>
                                <c:when test="${param.halaman=='tampiluser'}">
                                <%@include file="user.jsp" %>
                                </c:when>
                                <c:when test="${param.halaman=='pesan'}">
                                <%@include file="pemesanan.jsp" %>
                                </c:when>
                                <c:when test="${param.halaman=='returbeli'}">
                                <%@include file="retur.jsp" %>
                                </c:when>
                                <c:when test="${param.halaman=='beli'}">
                                <%@include file="pembelian.jsp" %>
                                </c:when>
                                <c:when test="${param.halaman=='product'}">
                                <%@include file="product.jsp" %>
                                </c:when>
                                <c:otherwise>
                                <%@include file="home.jsp" %>
                                </c:otherwise>
                                </c:choose>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="right_column">
                    <ul>
                        <li><a href="beranda.jsp?halaman=tampilbrg&aksi=SIMPAN"">Data Barang</a></li>
                        <li><a href="beranda.jsp?halaman=tampilsup&aksi=SIMPAN">Data Supplier</a></li>
                        <li><a href="beranda.jsp?halaman=tampilakun&aksi=SIMPAN">Data Akun</a></li>
                        <li><a href="beranda.jsp?halaman=tampiluser&aksi=SIMPAN">Data User</a></li>
                        <li><a href="beranda.jsp?halaman=pesan">Pemesanan</a></li>
                        <li><a href="beranda.jsp?halaman=returbeli">Retur Pembelian</a></li>
                        <li><a href="beranda.jsp?halaman=beli">Pembelian</a></li>
                    </ul>

                <div class="box" align="justify">
                    <div class="subtitle">Date and Time</div>
                    <marquee direction="left"> <%=new java.util.Date()%>
                    </marquee>
                    <br />
                </div>
                <div class="box" align="justify">
                    <div class="subtitle">Member</div>
                    <marquee behavior="scroll" direction="up" scrollamount="5">
                        Bambang Pramu Sinto<br>
                        Cahyadi<br>
                        Hardiyanti<br>
                        Noviyana<br>
                        Siti Fatimah
                    </marquee>
                </div>
                <div class="box">
                    <div class="subtitle">Contac Person</div>
                    <marquee direction="down" height="200" behavior="alternate">
                        <p>Lima Sekawan Cell<br>
                            Hardiyanti (082325121747)<br>
                            Noviyana (085642546223)
                        </marquee>
                </div>
            </div>
            </div>

            <div id="footer">
                Copyright © 2020 Lima Sekawan Cell
            </div>

        </div>
        <div class="spacer"></div>
    </div> 
</body>
</html>
