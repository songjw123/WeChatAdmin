<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>NchuPandas WeChat Admin</title>

<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="http://ace.zcdreams.com/assets/css/bootstrap.css" />
<link rel="stylesheet" href="plugins/fonts/font-awesome.css" />
<!-- page specific plugin styles -->
<link rel="stylesheet"
	href="http://ace.zcdreams.com/assets/css/jquery-ui.css" />
<link rel="stylesheet"
	href="http://ace.zcdreams.com/assets/css/chosen.css" />
<link rel="stylesheet"
	href="http://ace.zcdreams.com/assets/css/jquery.gritter.css" />
<!-- text fonts -->
<link rel="stylesheet"
	href="http://ace.zcdreams.com/assets/css/ace-fonts.css" />
<!-- ace styles -->
<link rel="stylesheet" href="http://ace.zcdreams.com/assets/css/ace.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!--[if lte IE 9]>
			<link rel="stylesheet" href="http://ace.zcdreams.com/assets/css/ace-part2.css" class="ace-main-stylesheet" />
	<![endif]-->

<!--[if lte IE 9]>
		    <link rel="stylesheet" href="http://ace.zcdreams.com/assets/css/ace-ie.css" />
	<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="http://ace.zcdreams.com/assets/js/ace-extra.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="http://ace.zcdreams.com/assets/js/html5shiv.js"></script>
		<script src="http://ace.zcdreams.com/assets/js/respond.js"></script>
	<![endif]-->
</head>

<body class="no-skin">
	<jsp:include page="WebPart/Head.jsp"></jsp:include>
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>
		<jsp:include page="WebPart/Menu.jsp"></jsp:include>
		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i><a href="#">Home</a>
						</li>
						<li><a href="#">Other Pages</a></li>
						<li class="active">Blank Page</li>
					</ul>
					<jsp:include page="WebPart/SearchBox.jsp"></jsp:include>
				</div>
				<div class="page-content">
					<%-- <jsp:include page="WebPart/Setting.jsp"></jsp:include> --%>
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<!-- PAGE CONTENT ENDS -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="WebPart/CopyRight.jsp"></jsp:include>
	</div>
	<jsp:include page="WebPart/Script.jsp"></jsp:include>
</body>
</html>
