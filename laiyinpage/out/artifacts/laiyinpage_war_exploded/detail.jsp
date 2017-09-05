<%@ page import="entity.ProductEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: lb
  Date: 2017/8/3
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>永康市莱尹进出口有限公司</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/detail.css">
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/unslider.min.js"></script>
    <script src="js/scripts.js"></script>
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">

        <div class="navbar-header">
            <a class="navbar-brand" ><img src="img/logo1.jpg"></a>
            <p class="navbar-text"><span class="label label-info">No Honesty No Dignity</span></p>
        </div>


        <div class="search-bar">
            <form class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search Products">
                </div>
                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon glyphicon-search"></span></button>
            </form>
        </div>

        <div class="menu">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="index.html"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Products</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-globe"></span> About Us</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-phone-alt"></span> Contact Us</a></li>
            </ul>
        </div>

    </div>
</nav>

<div class="container center">
    <div class="row">
        <div class="col-lg-3">
            <div class="panel panel-primary">
                <div class="panel-heading"><span class="glyphicon glyphicon-cog"></span> Products</div>
                <div class="panel-body">
                </div>
                <ul class="list-group">
                    <li class="list-group-item"><a href="detail.jsp?itemid=1">CUT OFF MACHINE</a></li>
                    <li class="list-group-item"><a href="">MARBLE CUTTER</a></li>
                    <li class="list-group-item">MITER SAW</li>
                    <li class="list-group-item">24*7 支持</li>
                    <li class="list-group-item">每年更新成本</li>
                </ul>
            </div>
        </div>

        <div class="col-lg-9">
            <div class="panel panel-success">
                <div class="panel-heading"><span class="glyphicon glyphicon-list-alt"></span> Product Detail</div>
                <div class="panel-body">

                    <%
                        List<ProductEntity> products = (ArrayList)request.getAttribute("productList");
                        for(int i=0; i<products.size()&&i<=8; i++){
                            ProductEntity product = products.get(i);
                            out.println("<div class='col-lg-4'>");
                            out.println("<img src='" + product.getImg() + "' class='product_pic'");
                            out.println("</div>");
                            if(i%3==0){
                                for(int t=i; t>0; t--) {
                                    out.println("<br>");
                                    out.println("<div class='col-lg-4'>");
                                    out.println("<span class='label label-info product_id'>" + product.getId() + "</span>");
                                    out.println("</div>");
                                }
                            }
                        }
                    %>

                    <ul class="pagination">
                        <li><a href="#">←</a></li>
                        <li><a href="#">→</a></li>
                    </ul>


                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>