<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/8
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
                        <li><a href="<%=request.getContextPath()%>/Servlet?id=1"><span class="glyphicon glyphicon-shopping-cart"></span> Products</a></li>
                        <li class="active"><a href="#"><span class="glyphicon glyphicon-globe"></span> About Us</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-phone-alt"></span> Contact Us</a></li>
                    </ul>
                </div>

            </div>
        </nav>


        <div class="container center">
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading"><span class="glyphicon glyphicon-cog"></span> Products</div>
                        <div class="panel-body">
                            <div class="well well-sm">
                                <p><span id="company-name">YONGKANG LAIYIN IMPORT&EXPORT TRADING CO.,LTD</span> located in Yongkang city, Zhejiang China.  To satisfy the customers who looking for all kinds of hardware tools, Laiyin company plan to develop one brand named SEMTEX brand for power tools, hand tools, air tools and so on.  Under this concept, some customers may hesitate how can i make sure you will only sell to me but without any other.  Here we will do share for brand for each market if the customers are really interested in. And LAIYIN company also will make you sure you are the owner of the brand and LAIYIN will try his best to do support for service.</p>
                            </div>

                            <div class="well well-sm">
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;What's more, "enjoy the value" is our slogan for SEMTEX brand and also for our company.  By this way, we will try our best to get good price even customers make small orders to get good profit and the end buyers can get the tools by best cost performance. To achieve this idea, we will try our best to conbine the orders from different market together, and we also prepare some goods in stock to satisfy the need by customers.</p>
                            </div>

                            <div class="well well-sm">
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;At the end, let's enjoy the life, enjoy the work and enjoy the value.  And you are welcome to visit our company!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




    </body>
</html>