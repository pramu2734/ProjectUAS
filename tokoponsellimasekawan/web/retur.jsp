<%@page import="java.sql.ResultSet"%>
<%@page import="control.koneksi"%>
<%@page import="model.barang,model.supplier,model.retur"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% java.util.Date waktu = new java.util.Date();
int tanggal = waktu.getDate();
int tahun = waktu.getYear() + 1900;
int bulan = waktu.getMonth() + 1;
String tgl = tahun + "-" + bulan + "-" + tanggal;
retur retur = new retur();
barang barang = new barang();
supplier supplier = new supplier();
koneksi kon = new koneksi();
ResultSet rs = null;
ResultSet qrybarang = null;
ResultSet qryretur = null;
%>
<html>
<head>
    <meta http=-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Transaksi Retur</title>
</head>
<body>
<sql:query var="ttl" dataSource="${dataSource}">
    SELECT SUM(quantity) AS ttl_D,
    SUM(subtotal) AS ttl_K FROM sementara_retur
</sql:query>
<h1>Transaksi Retur</h1></br>
<table border="0">
    <form action="ServletRetur" method="post">
        <tr>
            <td>No Retur</td>       <td>: <input type="text" name="no_retur" value="${param.no_retur}"/></td>
        </tr>
        <tr>
            <td>Tanggal Retur</td>  <td>: <input type="text" name="tanggal" value=<%= tgl%> readonly="readonly"></td>
        </tr>
        <tr>
            <td>Supplier</td>       <td>: <select name="supplier">
                    <option value="-1">Pilih Supplier</option>
                    <%
                        rs = kon.stmt.executeQuery("SELECT * from supplier ");
                        while (rs.next()) {
                            supplier.setKodesupp(rs.getString("kd_supp"));
                            supplier.SetNamasupp(rs.getString("nm_supp"));
                    %>
                    <option value="<%=supplier.getKodesupp()%>"><%=supplier.getNamasupp()%></option>
                    <%  } %>
                </select>
        </tr>
        <tr>
            <td>Barang</td>         <td>: <select name="kode" onchange="showEmp(this.value);">
                    <option value="-1">Pilih Barang</option>
                    <%
                        rs = kon.stmt.executeQuery("SELECT * from barang ");
                        while (rs.next()) {
                            barang.setKodebarang(rs.getString("kd_brg"));
                            barang.setNamabarang(rs.getString("nm_brg"));
                    %>
                    <option value="<%=barang.getKodebarang()%>"><%=barang.getKodebarang()%>
                        || <%=barang.getNamabarang()%></option>
                    <%  } %>
                </select></td>
        </tr>
        <input type="hidden" name="emp_id" id="emp_id" value="">
        <tr>
            <td>Harga Barang</td>    <td>: <input type="text" name="harga" id="ename" value=""
                                                  readonly="readonly" onkeyup="sumRetur();"></td>
        </tr>
        <tr>
            <td>Jumlah Pesan</td>    <td>: <input type="text" name="jml" id="jml" onkeyup="sumRetur();"></td>
        </tr>
        <tr>
            <td>Subtotal</td>        <td>: <input type="text" name="sub" id="subtotal" readonly="readonly"></td>
        </tr>
        <tr>
            <td><input type="submit" value="TAMBAH" name="aksi1"></td>
        </tr>
</table>


<table width="535" border="1" align="center">
    <tr align="center">
        <td colspan="5"><h2>Data Barang Untuk Diretur</h2></td>
    </tr>
    <tr>
        <th>Nomor Transaksi</th>
        <th>Kode Barang</th>
        <th>Quantity</th>
        <th>Subtotal</th>
        <th>AKSI</th>
    </tr>
    <%
        rs = kon.stmt.executeQuery("SELECT * from sementara_retur");
        while (rs.next()) {
            out.println("<tr class=isi>"
                    + "<td>" + rs.getString(1) + "</td>"
                    + "<td>" + rs.getString(2) + "</td>"
                    + "<td>" + rs.getString(3) + "</td>"
                    + "<td>" + rs.getString(4) + "</td>"
                    + "<td><a href=ServletRetur?aksi2=HAPUS&no_retur=" + rs.getString(1) + ">Hapus</a></td>"
                    + "</tr>");
            }
    %>
</table>
    <c:forEach var='ttlDK'items='${ttl.rowsByIndex}'><br>
        <table border="0">
            <tr><td>Total Jumlah Barang Diretur</td> <td>:
                    <input type="text" readonly="readonly" name="totjum" size="1" value="${ttlDK[0]}"></td></tr>
            <tr><td>Total Bayar</td>                 <td>:
                    <input type="text" readonly="readonly" name="tobay" value="${ttlDK[1]}"></td></tr>
    </c:forEach>
    <%kon.close();%>
    <tr><td><input type="submit" value="Simpan" name="aksi3"> <input type="reset" value="Cancel"></td></tr>  
</table>
</form>
</body>
</html>