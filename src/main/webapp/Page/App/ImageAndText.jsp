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
		<meta charset="utf-8" />
		<title>微信后台管理</title>
		<!-- basic styles -->
		<link href="../../assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="../../assets/css/font-awesome.min.css" />
		<!--[if IE 7]>
		  <link rel="stylesheet" href="../../assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="../../assets/css/jquery-ui-1.10.3.custom.min.css" />
		<!-- fonts -->
		<!-- ace styles -->
		<link rel="stylesheet" href="../../assets/css/ace.min.css" />
		<link rel="stylesheet" href="../../assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="../../assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="../../assets/css/ace-skins.min.css" />
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="../../assets/css/ace-ie.min.css" />
		<![endif]-->
		<!-- inline styles related to this page -->
		<!-- ace settings handler -->
		<script src="../../assets/js/ace-extra.min.js"></script>
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="../../assets/js/html5shiv.js"></script>
		<script src="../../assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try {
					ace.settings.check('navbar', 'fixed')
				} catch (e) {}
			</script>
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand"> <small> <i
						class="icon-leaf"></i> Ace Admin </small> </a>
					<!-- /.brand -->
				</div>
				<!-- /.navbar-header -->
				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="grey">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i class="icon-tasks"></i> <span class="badge badge-grey">4</span> </a>
							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header"><i class="icon-ok"></i> 4 Tasks to complete</li>
								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Software Update</span> <span class="pull-right">65%</span>
										</div>
										<div class="progress progress-mini ">
											<div style="width:65%" class="progress-bar "></div>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Hardware Upgrade</span> <span class="pull-right">35%</span>
										</div>
										<div class="progress progress-mini ">
											<div style="width:35%" class="progress-bar progress-bar-danger"></div>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Unit Testing</span> <span class="pull-right">15%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width:15%" class="progress-bar progress-bar-warning"></div>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Bug Fixes</span> <span class="pull-right">90%</span>
										</div>
										<div class="progress progress-mini progress-striped active">
											<div style="width:90%" class="progress-bar progress-bar-success"></div>
										</div>
									</a>
								</li>
								<li>
									<a href="#"> See tasks with details 
									<i class="icon-arrow-right"></i> 
									</a>
								</li>
							</ul>
						</li>
						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i class="icon-bell-alt icon-animated-bell"></i> <span class="badge badge-important">8</span> </a>
							<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header"><i class="icon-warning-sign"></i> 8 Notifications</li>
								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-pink icon-comment"></i> New
											Comments </span> <span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>
								<li>
									<a href="#"> <i class="btn btn-xs btn-primary icon-user"></i> Bob just signed up as an editor ... </a>
								</li>
								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
											New Orders </span> <span class="pull-right badge badge-success">+8</span>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-info icon-twitter"></i>
											Followers </span> <span class="pull-right badge badge-info">+11</span>
										</div>
									</a>
								</li>
								<li><a href="#"> See all notifications <i
									class="icon-arrow-right"></i> </a></li>
							</ul>
						</li>
						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i class="icon-envelope icon-animated-vertical"></i> <span class="badge badge-success">5</span> </a>
							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header"><i class="icon-envelope-alt"></i> 5 Messages</li>
								<li>
									<a href="#"> <img src="../../assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" /> <span class="msg-body"> <span
										class="msg-title"> <span class="blue">Alex:</span> Ciao sociis natoque penatibus et auctor ... </span> <span class="msg-time"> <i class="icon-time"></i> <span>a
												moment ago</span> </span>
										</span>
									</a>
								</li>
								<li>
									<a href="#"> <img src="../../assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" /> <span class="msg-body"> <span
										class="msg-title"> <span class="blue">Susan:</span> Vestibulum id ligula porta felis euismod ... </span> <span class="msg-time"> <i class="icon-time"></i> <span>20
												minutes ago</span> </span>
										</span>
									</a>
								</li>
								<li>
									<a href="#"> <img src="../../assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" /> <span class="msg-body"> <span
										class="msg-title"> <span class="blue">Bob:</span> Nullam quis risus eget urna mollis ornare ... </span> <span class="msg-time"> <i class="icon-time"></i> <span>3:15
												pm</span> </span>
										</span>
									</a>
								</li>
								<li>
									<a href="inbox.html"> See all messages 
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="../../assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info"> <small>Welcome,</small> Jason </span>
								<i class="icon-caret-down"></i> </a>
							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#"> <i class="icon-cog"></i> Settings </a>
								</li>
								<li>
									<a href="#"> <i class="icon-user"></i> Profile </a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="#"> <i class="icon-off"></i> Logout </a>
								</li>
							</ul>
						</li>
					</ul>
					<!-- /.ace-nav -->
				</div>
				<!-- /.navbar-header -->
			</div>
			<!-- /.container -->
		</div>
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try {
					ace.settings.check('main-container', 'fixed')
				} catch (e) {}
			</script>
			<jsp:include page="../../WebPart/Menu.jsp"></jsp:include>
			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#"> <span class="menu-text"></span> </a>
				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try {
								ace.settings.check('breadcrumbs', 'fixed')
							} catch (e) {}
						</script>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li><a href="#">Forms</a></li>
							<li class="active">Wysiwyg &amp; Markdown</li>
						</ul>
						<!-- .breadcrumb -->
						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon"> 
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" /> 
									<i class="icon-search nav-search-icon"></i> 
								</span>
							</form>
						</div>
						<!-- #nav-search -->
					</div>
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="tabbable">
									<ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab4">
										<li class="active">
											<a data-toggle="tab" href="#home4">图文素材上传管理</a>
										</li>
										<li>
											<a data-toggle="tab" href="#profile4">媒体素材上传</a>
										</li>
										<li>
											<a data-toggle="tab" href="#dropdown14">素材管理</a>
										</li>
									</ul>
									<div class="tab-content">
										<div id="home4" class="tab-pane in active">
											<div class="page-content">
												<div class="page-header">
													<h1>微信图文素材编辑</h1>
												</div>
												<!-- /.page-header -->
												<div class="row">
													<!-- PAGE CONTENT BEGINS -->
													<div class="col-md-5">
														<div class="widget-box">
															<div class="widget-header">
																<h4>图文预览</h4>
																<div class="widget-toolbar" id="butto_add">
																	<i class="fa fa-plus bigger-200 "></i>
																</div>
															</div>
															<div class="widget-body">
																<div class="widget-main">
																	<div class="dd" id="nestable">
																		<ol class="dd-list">
																			<li class="dd-item" data-id="5">
																				<div class="dd-handle" id="main_content">
																					<a href="#" class="thumbnail">
																						<img src="../../img/bac_grey.jpg" alt="封面" id="main_corver">
																						<span class="label label-info" id="sycTarget">标题</span>
																						<br>
																						<span class="pull-right" onclick="operation('edit','main_content',0)"><i class="icon-pencil bigger-200"></i></span>
																					</a>
																				</div>
																				<div class="space-6"></div>
																				<ol class="dd-list" id="childIT">
																				</ol>
																			</li>

																		</ol>
																	</div>
																</div>
																<div class="row">

																	<div class="col-md-3 col-md-push-2">
																		<p>
																			<button id="addIT" class="btn btn-success btn-block" type="button" onclick="addIT('save')">保存</button>
																		</p>
																	</div>
																	<div class="col-md-3 col-md-push-2">
																		<p>
																			<button id="addIT" class="btn btn-success btn-block" type="button" onclick="addIT('save&post')">保存并群发</button>
																		</p>
																	</div>
																</div>
															</div>
														</div>
														<div class="space-12"></div>
													</div>
													<div class="col-md-7">
														<div class="widget-box">
															<div class="widget-header">
																<h4>图文编辑</h4>
															</div>
															<div class="widget-body">
																<div class="widget-main">
																	<div>
																		<label class="control-label">标题</label>
																		<input class="form-control limited" id="title" onblur="asycValue(this)" maxlength="64" placeholder="0/64"></input>
																	</div>
																	<div>
																		<label class="control-label">作者（选填）</label>
																		<input class="form-control limited" id="author" maxlength="8" placeholder="0/8"></input>
																	</div>
																	<label class="control-label">上传封面</label>
																	<div>
																		<input type="file" id="id-input-file-2" />
																		<input class="hidden" id="mediaId" />
																		<img class="img-responsive hidden" id="imgShow" src="" />
																		<div class="space-6"></div>
																		<button class="btn btn-success btn-block" id="getPics">从图片库选择</button>
																	</div>
																	<div>
																		<label for="control-label">摘要（选填，当编辑的图文为单图文是填写）</label>
																		<textarea class="form-control" id="form_abstract" placeholder="单图文摘要"></textarea>
																	</div>
																	<hr />
																	<h4 class="header green clearfix">
																		<label class="grey middle">正文内容：</label>
																	<span class="block pull-right"> <small
																		class="grey middle">选择风格: &nbsp;</small> <span
																		class="btn-toolbar inline middle no-margin"> <span
																			data-toggle="buttons" class="btn-group no-margin">
																				<label class="btn btn-sm btn-yellow"> 1 <input
																					type="radio" value="1" /> </label> <label
																				class="btn btn-sm btn-yellow active"> 2 <input
																					type="radio" value="2" /> </label> <label
																				class="btn btn-sm btn-yellow"> 3 <input
																					type="radio" value="3" /> </label> </span> </span> </span>
																</h4>
																	<div class="wysiwyg-editor" id="editor1"></div>
																	<div class="hr hr-double dotted"></div>
																	<script type="text/javascript">
																		var $path_assets = "assets"; //this will be used in loading jQuery UI if needed!
																	</script>
																</div>
															</div>
															<!-- PAGE CONTENT ENDS -->
														</div>
														<!-- /.col -->
													</div>
												</div>
												<!-- /.row -->
											</div>
										</div>
										<div id="profile4" class="tab-pane">
											<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid.</p>
										</div>
										<div id="dropdown14" class="tab-pane">
											<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade.</p>
										</div>
									</div>
								</div>
							</div>
							<!-- /span -->
						</div>
					</div>
					<!-- /.page-content -->
				</div>
				<div class="modal fade" role="dialog" id="dialogshow" aria-labelledby="gridSystemModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="gridSystemModalLabel">选择图片</h4>
							</div>
							<div class="modal-body">
								<div class="container-fluid">
									<div class="row">
										<div class="col-xs-12">
											<!-- PAGE CONTENT BEGINS -->
											<div class="row-fluid">
												<div class="ace-thumbnails">
													<div class="row" id="content">
													</div>
												</div>
											</div>
											<!-- PAGE CONTENT ENDS -->
										</div>
										<!-- /.col -->
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" onclick="dialogClose()" data-dismiss="modal">关闭</button>
								<button type="button" class="btn btn-primary" onclick="dialogClose()">确定</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>

				<div class="modal fade" id="warn_dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title">提示</h4>
							</div>
							<div class="modal-body">
								<p id="warn_content"></p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" onclick="dialogClose()" data-dismiss="modal">关闭</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<!-- /.modal -->
				<!--<div class="container">
						<div id="dialog-message" class="hide">
							<div class="row-fluid">
								<div class="col-md-2 col-sm-4">
									<a href="../../assets/images/gallery/image-1.jpg" title="Photo Title"  data-rel="colorbox">
												<img alt="150x150" src="../../../../assets/images/gallery/thumb-1.jpg" class="img-responsive"/>
									</a>
								</div>
								<div class="col-md-2 col-sm-4">
									<a href="../../assets/images/gallery/image-1.jpg" title="Photo Title"  data-rel="colorbox">
												<img alt="150x150" src="../../../../assets/images/gallery/thumb-1.jpg" class="img-responsive"/>
									</a>
								</div>
								<div class="col-md-2 col-sm-4">
									<a href="../../assets/images/gallery/image-1.jpg" title="Photo Title"  data-rel="colorbox">
												<img alt="150x150" src="../../../../assets/images/gallery/thumb-1.jpg" class="img-responsive" />
									</a>
								</div>
								<div class="col-md-2 col-sm-4">
									<a href="../../assets/images/gallery/image-1.jpg" title="Photo Title" data-rel="colorbox">
												<img alt="150x150" src="../../../../assets/images/gallery/thumb-1.jpg" class="img-responsive"  />
									</a>
								</div>
								<div class="col-md-2 col-sm-4">
									<a href="../../assets/images/gallery/image-1.jpg" title="Photo Title"  data-rel="colorbox">
												<img alt="150x150" src="../../../../assets/images/gallery/thumb-1.jpg" class="img-responsive" />
									</a>
								</div>
								<div class="col-md-2 col-sm-4">
									<a href="../../assets/images/gallery/image-1.jpg" title="Photo Title"  data-rel="colorbox">
												<img alt="150x150" src="../../../../assets/images/gallery/thumb-1.jpg" class="img-responsive"/>
									</a>
								</div>
							</div>
							<div class="row-fluid">
								<div class="col-md-2 col-sm-4">
									<a href="../../assets/images/gallery/image-1.jpg" title="Photo Title"  data-rel="colorbox">
												<img alt="150x150" src="../../../../assets/images/gallery/thumb-1.jpg" class="img-responsive"/>
									</a>
								</div>
								<div class="col-md-2 col-sm-4">
									<a href="../../assets/images/gallery/image-1.jpg" title="Photo Title" data-rel="colorbox">
												<img alt="150x150" src="../../../../assets/images/gallery/thumb-1.jpg" class="img-responsive" />
									</a>
								</div>
								<div class="col-md-2 col-sm-4">
									<a href="../../assets/images/gallery/image-1.jpg" title="Photo Title"  data-rel="colorbox">
												<img alt="150x150" src="../../../../assets/images/gallery/thumb-1.jpg" class="img-responsive" />
									</a>
								</div>
								<div class="col-md-2 col-sm-4">
									<a href="../../assets/images/gallery/image-1.jpg" title="Photo Title"  data-rel="colorbox">
												<img alt="150x150" src="../../../../assets/images/gallery/thumb-1.jpg" class="img-responsive"/>
									</a>
								</div>
								<div class="col-md-2 col-sm-4">
									<a href="../../assets/images/gallery/image-1.jpg" title="Photo Title" data-rel="colorbox">
												<img alt="150x150" src="../../../../assets/images/gallery/thumb-1.jpg" class="img-responsive" />
									</a>
								</div>
								<div class="col-md-2 col-sm-4">
									<a href="../../assets/images/gallery/image-1.jpg" title="Photo Title"  data-rel="colorbox">
												<img alt="150x150" src="../../../../assets/images/gallery/thumb-1.jpg" class="img-responsive" />
									</a>
								</div>
							</div>
						</div>
				</div>-->
				<!-- /.main-content -->
				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>
					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; Choose Skin</span>
						</div>
						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
						</div>
						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>
						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>
						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container"> Inside <b>.container</b>
							</label>
						</div>
					</div>
				</div>
				<!-- /#ace-settings-container -->
			</div>
			<!-- /.main-container-inner -->
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse"> <i class="icon-double-angle-up icon-only bigger-110"></i> </a>
		</div>
		<!-- /.main-container -->
		<!-- basic scripts -->
		<!--[if !IE]> -->
		<script src="//cdn.bootcss.com/jquery/2.0.3/jquery.js"></script>
		<!-- <![endif]-->
		<!--[if IE]>
<script src="//cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->
		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document
				.write("<script src='../../assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
		</script>
		<!-- <![endif]-->
		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='../../assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if ("ontouchend" in document)
				document
				.write("<script src='../../assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
		</script>
		<script src="../../assets/js/bootstrap.min.js"></script>
		<script src="../../assets/js/typeahead-bs2.min.js"></script>
		<!-- page specific plugin scripts -->
		<script src="../../assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="../../assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="../../assets/js/markdown/markdown.min.js"></script>
		<script src="../../assets/js/markdown/bootstrap-markdown.min.js"></script>
		<script src="../../assets/js/jquery.hotkeys.min.js"></script>
		<script src="../../assets/js/bootstrap-wysiwyg.min.js"></script>
		<script src="../../assets/js/bootbox.min.js"></script>
		<script src="../../assets/js/jquery-ui-1.10.3.full.min.js"></script>
		<!-- ace scripts -->
		<script src="../../assets/js/ace-elements.min.js"></script>
		<script src="../../assets/js/ace.min.js"></script>
		<script src="../../assets/js/jquery.colorbox-min.js"></script>
		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				var colorbox_params = {
					reposition: true,
					scalePhotos: true,
					scrolling: false,
					previous: '<i class="icon-arrow-left"></i>',
					next: '<i class="icon-arrow-right"></i>',
					close: '&times;',
					current: '{current} of {total}',
					maxWidth: '100%',
					maxHeight: '100%',
					onOpen: function() {
						document.body.style.overflow = 'hidden';
					},
					onClosed: function() {
						document.body.style.overflow = 'auto';
					},
					onComplete: function() {
						$.colorbox.resize();
					}
				};
				$('.ace-thumbnails [data-rel="colorbox"]').colorbox(colorbox_params);
				$("#cboxLoadingGraphic").append("<i class='icon-spinner orange'></i>"); //let's add a custom loading icon
				function showErrorAlert(reason, detail) {
						var msg = '';
						if (reason === 'unsupported-file-type') {
							msg = "Unsupported format " + detail;
						} else {
							console.log("error uploading file", reason, detail);
						}
						$(
							'<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' + '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
					}
					//$('#editor1').ace_wysiwyg();//this will create the default editor will all buttons
					//but we want to change a few buttons colors for the third style
				$('#editor1').ace_wysiwyg({
					toolbar: ['font', null, 'fontSize', null, {
							name: 'bold',
							className: 'btn-info'
						}, {
							name: 'italic',
							className: 'btn-info'
						}, {
							name: 'strikethrough',
							className: 'btn-info'
						}, {
							name: 'underline',
							className: 'btn-info'
						},
						null, {
							name: 'insertunorderedlist',
							className: 'btn-success'
						}, {
							name: 'insertorderedlist',
							className: 'btn-success'
						}, {
							name: 'outdent',
							className: 'btn-purple'
						}, {
							name: 'indent',
							className: 'btn-purple'
						},
						null, {
							name: 'justifyleft',
							className: 'btn-primary'
						}, {
							name: 'justifycenter',
							className: 'btn-primary'
						}, {
							name: 'justifyright',
							className: 'btn-primary'
						}, {
							name: 'justifyfull',
							className: 'btn-inverse'
						},
						null, {
							name: 'createLink',
							className: 'btn-pink'
						}, {
							name: 'unlink',
							className: 'btn-pink'
						},
						null, {
							name: 'insertImage',
							className: 'btn-success'
						},
						null, 'foreColor', null, {
							name: 'undo',
							className: 'btn-grey'
						}, {
							name: 'redo',
							className: 'btn-grey'
						}
					],
					'wysiwyg': {
						fileUploadError: showErrorAlert
					}
				}).prev().addClass('wysiwyg-style2');
				$('#editor2').css({
					'height': '200px'
				}).ace_wysiwyg({
					toolbar_place: function(toolbar) {
						return $(this).closest('.widget-box').find(
								'.widget-header').prepend(toolbar)
							.children(0).addClass('inline');
					},
					toolbar: ['bold', {
							name: 'italic',
							title: 'Change Title!',
							icon: 'icon-leaf'
						}, 'strikethrough', null, 'insertunorderedlist',
						'insertorderedlist', null, 'justifyleft',
						'justifycenter', 'justifyright'
					],
					speech_button: false
				});
				$('[data-toggle="buttons"] .btn').on(
					'click',
					function(e) {
						var target = $(this).find('input[type=radio]');
						var which = parseInt(target.val());
						var toolbar = $('#editor1').prev().get(0);
						if (which == 1 || which == 2 || which == 3) {
							toolbar.className = toolbar.className.replace(
								/wysiwyg\-style(1|2)/g, '');
							if (which == 1)
								$(toolbar).addClass('wysiwyg-style1');
							else if (which == 2)
								$(toolbar).addClass('wysiwyg-style2');
						}
					});
				//Add Image Resize Functionality to Chrome and Safari
				//webkit browsers don't have image resize functionality when content is editable
				//so let's add something using jQuery UI resizable
				//another option would be opening a dialog for user to enter dimensions.
				if (typeof jQuery.ui !== 'undefined' && /applewebkit/.test(navigator.userAgent.toLowerCase())) {
					var lastResizableImg = null;

					function destroyResizable() {
						if (lastResizableImg == null)
							return;
						lastResizableImg.resizable("destroy");
						lastResizableImg.removeData('resizable');
						lastResizableImg = null;
					}
					var enableImageResize = function() {
						$('.wysiwyg-editor')
							.on(
								'mousedown',
								function(e) {
									var target = $(e.target);
									if (e.target instanceof HTMLImageElement) {
										if (!target.data('resizable')) {
											target
												.resizable({
													aspectRatio: e.target.width / e.target.height,
												});
											target.data('resizable', true);
											if (lastResizableImg != null) { //disable previous resizable image
												lastResizableImg
													.resizable("destroy");
												lastResizableImg
													.removeData('resizable');
											}
											lastResizableImg = target;
										}
									}
								})
							.on(
								'click',
								function(e) {
									if (lastResizableImg != null && !(e.target instanceof HTMLImageElement)) {
										destroyResizable();
									}
								}).on('keydown', function() {
								destroyResizable();
							});
					}
					enableImageResize();
					/**
					//or we can load the jQuery UI dynamically only if needed
					if (typeof jQuery.ui !== 'undefined') enableImageResize();
					else {//load jQuery UI if not loaded
						$.getScript($path_assets+"/js/jquery-ui-1.10.3.custom.min.js", function(data, textStatus, jqxhr) {
							if('ontouchend' in document) {//also load touch-punch for touch devices
								$.getScript($path_assets+"/js/jquery.ui.touch-punch.min.js", function(data, textStatus, jqxhr) {
									enableImageResize();
								});
							} else	enableImageResize();
						});
					}
					 */
				}
				$("#getPics").click(function() {
					$.ajax({
						type: "get",
						url: "${pageContext.request.contextPath}/admin/weixin/upload/getPicMeratail",
						async: true,
						dataType: "json",
						success: function(data) {},
						error: function(data) {},
						complete: function(data) {
							initDialog(data.responseText);
						}
					});
				});
				//初始化图片选择框
				function initDialog(data) {
					debugger;
					var json = JSON.parse(data);
					var div_content = $("#content");
					debugger;
					div_content.html("");
					if (json.content == null || json.content.length < 1) {
						div_content.append("<div class='col-sm-4 col-xs-6 col-md-3' >" + "<a href='#' onclick='check(this,2)' class='thumbnail'> <img col-xs-6' src='../../assets/images/gallery/thumb-1.jpg' />" + "<i class='fa fa-check-square-o hidden' id='image_tag'></i></a></div><div class='clearfix visible-md'></div>");
						div_content.append("<div class='col-sm-4 col-xs-6 col-md-3' >" + "<a href='#' class='thumbnail' onclick='check(this,1)'> <img col-xs-6' src='../../assets/images/gallery/thumb-1.jpg' />" + "<i class='fa fa-check-square-o hidden' id='image_tag'></i></a></div><div class='clearfix visible-md'></div>");
						div_content.append("<div class='col-sm-4 col-xs-6 col-md-3' >" + "<a href='#' class='thumbnail' onclick='check(this,1)'> <img col-xs-6' src='../../img/test.jpg' />" + "<i class='fa fa-check-square-o hidden' id='image_tag'></i></a></div></div><div class='clearfix visible-md'></div>");
						div_content.append("<div class='col-sm-4 col-xs-6 col-md-3'>" + "<a href='#' class='thumbnail' onclick='check(this,1)'> <img col-xs-6' src='../../assets/images/gallery/thumb-1.jpg' />" + "<i class='fa fa-check-square-o hidden' id='image_tag'></i></a></div></div><div class='clearfix visible-md'></div>");
					} else {
						for (var i = 0; i < json.content.length; i++) {
							div_content.append("<div class='col-sm-4 col-xs-6 col-md-3'>" + "<a href='#' class='thumbnail' onclick='check(this,\"" + json.content[i].mediaId + "\",\"" + json.content[i].url + "\")'> <img col-xs-6' src='" + json.content[i].url + "' />" + "<i class='fa fa-check-square-o hidden' id='image_tag'></i></a>" + "</div>" + "<div class='clearfix visible-lg'></div>");
						}
					}
					$('#dialogshow').modal({
						keyboard: true,
						backdrop: true,
						show: true,
						remote: false,
					});
				}
			});
			var ischeck = false;
			var lastCheck = null;
			var edit_title = $("#title");
			var arr_data = new Array();
			var mediaId = $("#mediaId");
			var asycTarget = $("#sycTarget");
			var index = 0;
			var is_edit = false;
			var locate_index = 0;
			var image_corver;
			 //上传本地图片
			$('#id-input-file-1 , #id-input-file-2')
				.ace_file_input({
					no_file: '没有文件',
					btn_choose: '本地上传',
					btn_change: '修改',
					droppable: false,
					onchange: null,
					thumbnail: false, //| true | large
					//whitelist:'gif|png|jpg|jpeg'
					//blacklist:'exe|php'
					//onchange:''
					before_change: function(files, dropped) {
						//Check an example below
						//or examples/file-upload.html
						var allowed_files = [];
						for (var i = 0; i < files.length; i++) {
							var file = files[i];
							if (typeof file === "string") {
								//IE8 and browsers that don't support File Object
								if (!(/\.(jpe?g|png|gif|bmp)$/i)
									.test(file))
									return false;
							} else {
								var type = $.trim(file.type);
								if ((type.length > 0 && !(/^image\/(jpe?g|png|gif|bmp)$/i)
										.test(type)) || (type.length == 0 && !(/\.(jpe?g|png|gif|bmp)$/i)
										.test(file.name)) //for android's default browser which gives an empty string for file.type
								)
									continue; //not an image so don't keep this file
							}
							var fileObj = document.getElementById("id-input-file-2").files[0];
							var FileController = "${pageContext.request.contextPath }/admin/weixin/upload/image"; // 接收上传文件的后台地址 
							// FormData 对象
							debugger;
							var form = new FormData();
							form.append("file", fileObj); // 文件对象
							// XMLHttpRequest 对象
							var xhr = new XMLHttpRequest();
							xhr.open("post", FileController, true);
							xhr.onreadystatechange = function() {
								if (xhr.readyState == 4 && xhr.status == 200) {
									alert(xhr.responseText);
									var data = JSON.parse(xhr.responseText);
									alert(data.mediaId);
									var $img = $(document.getElementById("imgShow"));
									$img.attr("src", data.url);
									$img.removeClass("hidden");
									debugger;
									if (locate_index == 0) {
										$("#main_corver").attr("src", data.url)
									} else {
										image_corver.attr("src", data.url);
									}
									$("#mediaId").val(data.mediaId);
								}
							};
							xhr.send(form);
							allowed_files.push(file);
						}
						if (allowed_files.length == 0)
							return false;
						return allowed_files;
					}
				});
			 //添加一个图文子消息
			$("#butto_add").click(function() {
				
				debugger;
				if(completeEdit(new Object())){
					$("#imgShow").addClass("hidden");
					index++;
					var content = $("#childIT");
					content.append("<li class='dd-item item-orange' data-id='6'>" + "<div class='dd-handle'>" + "<div class='container'>" + "<div class='row'>" + "<div class='col-sm-6 col-xs-6'>标题</div>" + "<div class='col-sm-4 col-sm-push-2 col-xs-6' >" + "<ul class='ace-thumbnails'>" + "<li>" + "<a href='' class='thumbnail'> <img id='image_corver' src='../../img/bac_grey.jpg' class='image_corver' />" + "</a>" + "<div class='tools'>" + "<a href='#' onclick=\"operation('edit',this," + index + ")\"> <i class='icon-pencil'></i>" + "</a>" + "<a href='#' onclick=\"operation('delete',this," + index + ")\"> <i class='icon-remove'></i>" + "</a></div></li></ul></div></div></div></div></li>");
					locate_index = index;
					asycTarget = content.children('li')[content.children('li').length - 1].childNodes[0].childNodes[0].childNodes[0].childNodes[0];
					image_corver = $(".image_corver")[$(".image_corver").length - 1];
					image_corver = $(image_corver);
					asycTarget = $(asycTarget);
				}
			});
			 //从图片素材中选择图片
			function check(tag_a, mediaId, url) {
					$tag_a = $(tag_a);
					if (ischeck && lastCheck != null) {
						lastCheck.children('i').addClass('hidden');
						$tag_a.children('i').removeClass('hidden');
						lastCheck = $tag_a;
						ischeck = true;
					}
					if (!ischeck) {
						$tag_a.children('i').removeClass('hidden');
						lastCheck = $tag_a;
						ischeck = true;
					}
					if (locate_index == 0) {
						$("#main_corver").attr("src", url);
					} else {
						image_corver.attr("src", url);
					}
					$("#mediaId").val(mediaId);
					$("#imgShow").attr("src", url);
					$("#imgShow").removeClass("hidden");
				}
				//编辑操作

			function operation(oper, id, index_tag) {
					if ((checkEmpty($("#title").val()) && checkEmpty($("#mediaId").val()) && checkEmpty($("#editor1").html()))) {
						reEdit(locate_index);
					}
					debugger;
					var edit_image = $("#imgShow");
					var title;
					var img;
					if (oper == "edit") {
						debugger;
						is_edit = true;
						locate_index = index_tag;
						for (var i = 0; i < arr_data.length; i++) {
							if (arr_data[i] != null) {
								var ind = arr_data[i].index;
								if (arr_data[i].index == index_tag) {
									$("#editor1").html(arr_data[i].content);
									$("#author").val(arr_data[i].author);
									mediaId.val(arr_data[i].mediaId);
									break;
								}
							}
						}
						if (i == arr_data.length) {
							$("#editor1").val("");
							$("#author").val("");
							$("#mediaId").val("");
						}
						if (id != "main_content") {
							asycTarget = $(id.parentNode.parentNode.parentNode.parentNode);
							asycTarget = $(asycTarget.prev()[0]);
							title = asycTarget[0].innerText;
							img = $(id.parentNode).prev().children('img')[0].src;
							image_corver = $(id.parentNode).prev().children('img')[0];
							image_corver = $(image_corver);
						} else {
							title = $("#" + id).children('a').children('span')[0].innerHTML;
							img = $("#" + id).children('a').children('img')[0].src;
							asycTarget = $("#" + id).children('a').children('span')[0];
							asycTarget = $(asycTarget);
						}
						edit_title.val(title);
						edit_image.removeClass("hidden");
						edit_image.attr("src", img);
					}
					if (oper == 'delete') {
						if (id != "main_content") {
							$(id.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode).remove();
							for (var i = 0; i < arr_data.length; i++) {
								if (arr_data[i] != null) {
									if (arr_data.index == index_tag) {
										arr_data[i] = null;
										break;
									}
								}
							}
						}
					}
				}
				//同步编辑和预览

			function asycValue(obj) {
					if (obj.value.length <= 0) {
						$(obj).parent().addClass("has-error");
						obj.FOCUS;
						return;
					}
					$(obj).parent().addClass("has-success");
					asycTarget.text(obj.value);
				}
				//某个图文编辑完成

			function completeEdit(it) {
					debugger;
					if (checkEmpty($("#title").val()) && checkEmpty($("#mediaId").val()) && checkEmpty($("#editor1").html())) {
						var html = $("#editor1").html();
						it.title = edit_title.val();
						it.author = $("#author").val();
						it.mediaId = $("#mediaId").val();
						it.content = $("#editor1").html();
						it.index = index;
						arr_data.push(it);
						//清空编辑版
						edit_title.val("");
						//mediaId.val("");
						$("#author").val("");
						$("#editor1").html("");
						return true;
					}else{
						return false;
					}
				}
				//检查是否空

			function checkEmpty(obj) {
					if (obj != null && obj != undefined && obj != "") {
						return true;
					}
					$('#warn_content').text("未编辑完成，请完成为编辑的项");
					$('#warn_dialog').modal({
						keyboard: true,
						backdrop: true,
						show: true,
						remote: false,
					});
					return false;
				}
				//编辑完成保存

			function addIT(oper) {
				if (is_edit) {
					reEdit(locate_index);
				} else {
					if(completeEdit(new Object())){
						if (arr_data.length == 1) {
							if ($("#form_abstract").val().length > 0) {
								arr_data[0].digest = $("#form_abstract").val();
							} else {
								//提示框
								$('#warn_content').text("请为单图文填写摘要");
								$('#warn_dialog').modal({
									keyboard: true,
									backdrop: true,
									show: true,
									remote: false,
								});
								return;
						}
					}
				}else{
					return;
				}
				}
				var json_data = JSON.stringify(arr_data);
				$.ajax({
					type: "post",
					url: "${pageContext.request.contextPath}/admin/weixin/upload/it",
					data: {json:json_data,type:oper},
					success: function() {
						alert("success");
					}
				});
			}

			function reEdit(index) {
				if ((arr_data.length - 1) >= index) {
					for (var i = 0; i < arr_data.length; i++) {
						if (index == arr_data[i].index) {
							var newIt = new Object();
							newIt.title = edit_title.val();
							newIt.author = $("#author").val();
							newIt.mediaId = mediaId.val();
							newIt.content = $("#editor1").html();
							newIt.index = index;
							arr_data[i] = newIt;
							edit_title.val("");
							//mediaId.val("");
							$("#author").val("");
							$("#editor1").html("");
							break;
						}
					}
				} else {
					completeEdit(new Object());
				}
			}
			
			function dialogClose(){
				$('#dialogshow').modal({
						keyboard: false,
						backdrop: false,
						show: false,
						remote: false,
					});
			}
		</script>
	</body>

</html>