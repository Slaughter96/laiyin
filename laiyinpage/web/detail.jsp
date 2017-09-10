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
                <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                <li class="active"><a href="detail.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Products</a></li>
                <li><a href="About%20Us.jsp"><span class="glyphicon glyphicon-globe"></span> About Us</a></li>
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
                    <ul class="list-group">
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=1">CUT OFF MACHINE</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=2">MARBLE CUTTER</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=3">MITER SAW</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=4">CORDLESS DRILL</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=5">CORE DRILL</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=6">DEMOLITION HAMMER</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=7">ELECTRIC DRILL</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=8">IMPACT DRILL</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=9">ROTARY HAMMER</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=10">ANGLE GRINDER</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=11">DIE GRINDER</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=12">MACHINE BY SETS</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=13">BELT SANDER</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=14">CIRCULAR SAW</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=15">ELECTRIC BLOWER</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=16">ELECTRIC PLANER</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=17">ELECTRIC TRIMMER</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=18">JIG SAW</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=19">ORBITAL SANDER</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=20">ROTARY LASER</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/Servlet?id=21">ELECTRIC MIXER</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-lg-9">
            <div class="panel panel-success">
                <div class="panel-heading"><span class="glyphicon glyphicon-list-alt"></span> Product Detail</div>
                <div class="panel-body">

                    <%
                        List<ProductEntity> products = (ArrayList)request.getAttribute("productList");
                        ArrayList<String> productId = new ArrayList<>();
                        for(int i=0; i<products.size()&&i<=8; i++){
                            ProductEntity product = products.get(i);
//                            out.println("<div class='col-lg-4'>");
                            out.println("<img class='product' src='" + product.getImg() + "' style='height:200px; width:245px; margin-left: 20px; margin-bottom:5px; margin-top:20px'>");
//                            out.println("</div>");
                            productId.add(product.getId());
                            if(i%3==2){
                                for(int t=3; t>0; t--) {
//                                    out.println("<div class='col-lg-4'>");
                                    out.println("<span class='label label-info product_id' style='margin-left: 110px; margin-right:85px'>" + productId.get(3-t) + "</span>");
//                                    out.println("</div>");
                                }
                                productId.clear();
                                out.println("<br>");
                            }
                            else if (i==(products.size()-1)){
                                for(int t=productId.size(); t>0; t--) {
//                                    out.println("<div class='col-lg-4'>");
                                    out.println("<br>");
                                    out.println("<span class='label label-info product_id' style='margin-left: 110px; margin-right:85px'>" + productId.get(1-t) + "</span>");
//                                    out.println("</div>");
                                }
                            }
                        }
                    %>


                        <%
                            if (products.size()>=9){
                                out.println("<ul class='pagination'>");
                                out.println("<li><a href=''>←</a></li>");
                                out.println("<li><a href=''>→</a></li>");
                                out.println("</ul>");
                            }
                        %>


                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>