<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta charset="utf-8" />
	<title>NchuPandas WeChat Admin</title>

	<meta name="description" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="http://ace.zcdreams.com/assets/css/bootstrap.css" />
	<link rel="stylesheet" href="plugins/fonts/font-awesome.css" />
	<!-- page specific plugin styles -->
	<link rel="stylesheet" href="http://ace.zcdreams.com/assets/css/jquery-ui.css" />
    <link rel="stylesheet" href="http://ace.zcdreams.com/assets/css/jquery-ui.custom.css" />
    <link rel="stylesheet" href="http://ace.zcdreams.com/assets/css/chosen.css" />
	<!-- text fonts -->
	<link rel="stylesheet" href="http://ace.zcdreams.com/assets/css/ace-fonts.css" />
    <!-- ace styles -->
	<link rel="stylesheet" href="http://ace.zcdreams.com/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />

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
    
<!-- #section:basics/navbar.layout -->
<div id="navbar" class="navbar navbar-default">
    <script type="text/javascript">
        try { ace.settings.check('navbar', 'fixed') } catch (e) { }
    </script>

    <div class="navbar-container" id="navbar-container">
        <!-- #section:basics/sidebar.mobile.toggle -->
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>
        </button>

        <!-- /section:basics/sidebar.mobile.toggle -->
        <div class="navbar-header pull-left">
            <!-- #section:basics/navbar.layout.brand -->
            <a href="#" class="navbar-brand">
                <small>
                    <i class="fa fa-weixin"></i>
                    WeChat Admin
                </small>
            </a>

            <!-- /section:basics/navbar.layout.brand -->

            <!-- #section:basics/navbar.toggle -->

            <!-- /section:basics/navbar.toggle -->
        </div>

        <!-- #section:basics/navbar.dropdown -->
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="grey">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa fa-tasks"></i>
                        <span class="badge badge-grey">4</span>
                    </a>

                    <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-check"></i>
                            4 Tasks to complete
                        </li>

                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar">
                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">Software Update</span>
                                            <span class="pull-right">65%</span>
                                        </div>

                                        <div class="progress progress-mini">
                                            <div style="width: 65%" class="progress-bar"></div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">Hardware Upgrade</span>
                                            <span class="pull-right">35%</span>
                                        </div>

                                        <div class="progress progress-mini">
                                            <div style="width: 35%" class="progress-bar progress-bar-danger"></div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">Unit Testing</span>
                                            <span class="pull-right">15%</span>
                                        </div>

                                        <div class="progress progress-mini">
                                            <div style="width: 15%" class="progress-bar progress-bar-warning"></div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">Bug Fixes</span>
                                            <span class="pull-right">90%</span>
                                        </div>

                                        <div class="progress progress-mini progress-striped active">
                                            <div style="width: 90%" class="progress-bar progress-bar-success"></div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="dropdown-footer">
                            <a href="#">See tasks with details
										<i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="purple">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa fa-bell icon-animated-bell"></i>
                        <span class="badge badge-important">8</span>
                    </a>

                    <ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-exclamation-triangle"></i>
                            8 Notifications
                        </li>

                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar navbar-pink">
                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">
                                                <i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
                                                New Comments
                                            </span>
                                            <span class="pull-right badge badge-info">+12</span>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <i class="btn btn-xs btn-primary fa fa-user"></i>
                                        Bob just signed up as an editor ...
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">
                                                <i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
                                                New Orders
                                            </span>
                                            <span class="pull-right badge badge-success">+8</span>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">
                                                <i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
                                                Followers
                                            </span>
                                            <span class="pull-right badge badge-info">+11</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="dropdown-footer">
                            <a href="#">See all notifications
										<i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="green">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
                        <span class="badge badge-success">5</span>
                    </a>

                    <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-envelope-o"></i>
                            5 Messages
                        </li>

                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar">
                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="/assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
                                        <span class="msg-body">
                                            <span class="msg-title">
                                                <span class="blue">Alex:</span>
                                                Ciao sociis natoque penatibus et auctor ...
                                            </span>

                                            <span class="msg-time">
                                                <i class="ace-icon fa fa-clock-o"></i>
                                                <span>a moment ago</span>
                                            </span>
                                        </span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="/assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
                                        <span class="msg-body">
                                            <span class="msg-title">
                                                <span class="blue">Susan:</span>
                                                Vestibulum id ligula porta felis euismod ...
                                            </span>

                                            <span class="msg-time">
                                                <i class="ace-icon fa fa-clock-o"></i>
                                                <span>20 minutes ago</span>
                                            </span>
                                        </span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="/assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
                                        <span class="msg-body">
                                            <span class="msg-title">
                                                <span class="blue">Bob:</span>
                                                Nullam quis risus eget urna mollis ornare ...
                                            </span>

                                            <span class="msg-time">
                                                <i class="ace-icon fa fa-clock-o"></i>
                                                <span>3:15 pm</span>
                                            </span>
                                        </span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="/assets/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
                                        <span class="msg-body">
                                            <span class="msg-title">
                                                <span class="blue">Kate:</span>
                                                Ciao sociis natoque eget urna mollis ornare ...
                                            </span>

                                            <span class="msg-time">
                                                <i class="ace-icon fa fa-clock-o"></i>
                                                <span>1:33 pm</span>
                                            </span>
                                        </span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="/assets/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
                                        <span class="msg-body">
                                            <span class="msg-title">
                                                <span class="blue">Fred:</span>
                                                Vestibulum id penatibus et auctor  ...
                                            </span>

                                            <span class="msg-time">
                                                <i class="ace-icon fa fa-clock-o"></i>
                                                <span>10:09 am</span>
                                            </span>
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="dropdown-footer">
                            <a href="inbox.html">See all messages
										<i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- #section:basics/navbar.user_menu -->
                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="../assets/avatars/user.jpg" alt="Jason's Photo" />
                        <span class="user-info">
                            <small>Welcome,</small>
                            Jason
                        </span>

                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="#">
                                <i class="ace-icon fa fa-cog"></i>
                                Settings
                            </a>
                        </li>

                        <li>
                            <a href="profile.html">
                                <i class="ace-icon fa fa-user"></i>
                                Profile
                            </a>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="#">
                                <i class="ace-icon fa fa-power-off"></i>
                                Logout
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- /section:basics/navbar.user_menu -->
            </ul>
        </div>

        <!-- /section:basics/navbar.dropdown -->
    </div>
    <!-- /.navbar-container -->
</div>

    <div class="main-container" id="main-container">
        <script type="text/javascript">
            try { ace.settings.check('main-container', 'fixed') } catch (e) { }
        </script>
        
<!-- #section:basics/sidebar -->
<div id="sidebar" class="sidebar                  responsive">
    <script type="text/javascript">
        try { ace.settings.check('sidebar', 'fixed') } catch (e) { }
    </script>
    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <button class="btn btn-success">
                <i class="ace-icon fa fa-signal"></i>
            </button>
            <button class="btn btn-info">
                <i class="ace-icon fa fa-pencil"></i>
            </button>
            <!-- #section:basics/sidebar.layout.shortcuts -->
            <button class="btn btn-warning">
                <i class="ace-icon fa fa-users"></i>
            </button>
            <button class="btn btn-danger">
                <i class="ace-icon fa fa-cogs"></i>
            </button>
            <!-- /section:basics/sidebar.layout.shortcuts -->
        </div>
        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div>
    <!-- /.sidebar-shortcuts -->
    <ul class="nav nav-list">
        <li id="main">
            <a href="/Main.aspx">
                <i class="menu-icon fa fa-dashboard"></i>
                <span class="menu-text">控制台</span>
            </a>
            <b class="arrow"></b>
        </li>
        <li id="app" class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-wrench"></i>
                <span class="menu-text">基础功能</span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li id="menu" class="">
                    <a href="/App/Menu.aspx">
                        <i class="menu-icon fa fa-reply"></i>
                        <span class="menu-text">自定义菜单</span>
                    </a>
                    <b class="arrow"></b>
                </li>  
                <li id="gsend" class="">
                    <a href="/App/Gsend.aspx">
                        <i class="menu-icon fa fa-crosshairs"></i>
                        <span class="menu-text">消息群发</span>
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
        <li id="expand" class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-expand"></i>
                <span class="menu-text">拓展功能</span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">       
                <li id="vote" class="">
                    <a href="/Expand/Vote.aspx">
                        <i class="menu-icon fa fa-crosshairs"></i>
                        <span class="menu-text">投票</span>
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
        <li id="message" class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-comments"></i>
                <span class="menu-text">消息管理</span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li id="autoreply" class="">
                    <a href="/Message/AutoReply.aspx">
                        <i class="menu-icon fa fa-reply"></i>
                        <span class="menu-text">自动回复</span>
                    </a>
                    <b class="arrow"></b>
                </li>
                <li id="keyword" class="">
                    <a href="/Message/KeyWord.aspx">
                        <i class="menu-icon fa fa-crosshairs"></i>
                        <span class="menu-text">关键字维护</span>
                    </a>
                    <b class="arrow"></b>
                </li>
                <li id="templatmsg" class="">
                    <a href="/Message/TemplatMsg.aspx">
                        <i class="menu-icon fa fa-crosshairs"></i>
                        <span class="menu-text">模板消息</span>
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
        <li id="users" class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-user"></i>
                <span class="menu-text">用户管理
                </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li id="group" class="">
                    <a href="/User/Group.aspx">
                        <i class="menu-icon fa fa-users"></i>
                        <span class="menu-text">用户分组</span>
                    </a>
                    <b class="arrow"></b>
                </li>
                <li id="chat" class="">
                    <a href="/User/Chat.aspx">
                        <i class="menu-icon fa fa-envelope"></i>
                        <span class="menu-text">用户消息</span>
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
        <li id="material" class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-cubes"></i>
                <span class="menu-text">素材管理
                </span>
                <b class="arrow fa fa-angle-down""></b>
            </a>
            <ul class="submenu">
                <li id="lmaterial" class="">
                    <a href="/Material/LocalMaterial.aspx">
                        <i class="menu-icon fa fa-users"></i>
                        <span class="menu-text">本地素材</span>
                    </a>
                    <b class="arrow"></b>
                </li>
                <li id="tmaterial" class="">
                    <a href="/Material/TencentMaterial.aspx">
                        <i class="menu-icon fa fa-envelope"></i>
                        <span class="menu-text">微信素材</span>
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
        <li id="pie" class="">
            <a href="#">
                <i class="menu-icon fa fa-pie-chart"></i>
                <span class="menu-text">统计分析
                </span>
                <b class="arrow"></b>
            </a>
           
        </li>
        <li id="setting" class="">
            <a href="#">
                <i class="menu-icon fa fa-cogs"></i>
                <span class="menu-text">设置
                </span>
                <b class="arrow"></b>
            </a>
             <ul class="submenu">
                <li id="develop">
                    <a href="/Setting/Develop.aspx">
                        <i class="menu-icon fa fa-code"></i>
                        <span class="menu-text">开发者设置</span>
                    </a>
                     <b class="arrow"></b>
                </li>
            </ul>
        </li>
    </ul>
    <!-- /.nav-list -->
    <!-- #section:basics/sidebar.layout.minimize -->
    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
    <!-- /section:basics/sidebar.layout.minimize -->
    <script type="text/javascript">
        try { ace.settings.check('sidebar', 'collapsed') } catch (e) { }
    </script>
    <div id="SideBar_menu_s" style="display:none"><script>document.getElementById("app").className="active open";document.getElementById("menu").className="active";</script></div>
</div>
<!-- /section:basics/sidebar -->

        <div class="main-content">
            <div class="main-content-inner">
                <div class="breadcrumbs" id="breadcrumbs">
                    <script type="text/javascript">
                        try { ace.settings.check('breadcrumbs', 'fixed') } catch (e) { }
                    </script>
                    <ul class="breadcrumb">
                        <li><i class="ace-icon fa fa-home home-icon"></i><a href="/Main.aspx">主页</a></li>
                        <li><a href="#">基础功能</a></li>
                        <li class="active">菜单管理</li>
                    </ul>
                    
<!-- #section:basics/content.searchbox -->
<div class="nav-search" id="nav-search">
    <form class="form-search">
        <span class="input-icon">
            <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
            <i class="ace-icon fa fa-search nav-search-icon"></i>
        </span>
    </form>
</div>
<!-- /.nav-search -->
                </div>
                <div class="page-content">
                    
<div class="ace-settings-container" id="ace-settings-container">
    <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
        <i class="ace-icon fa fa-cog bigger-130"></i>
    </div>
    <div class="ace-settings-box clearfix" id="ace-settings-box">
        <div class="pull-left width-50">
            <div class="ace-settings-item">
                <div class="pull-left">
                    <select id="skin-colorpicker" class="hide">
                        <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                        <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                        <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                        <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                    </select>
                </div>
                <span>&nbsp; Choose Skin</span>
            </div>
            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                <label class="lbl" for="ace-settings-navbar">Fixed Navbar</label>
            </div>
            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                <label class="lbl" for="ace-settings-sidebar">Fixed Sidebar</label>
            </div>
            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                <label class="lbl" for="ace-settings-breadcrumbs">Fixed Breadcrumbs</label>
            </div>
            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                <label class="lbl" for="ace-settings-rtl">Right To Left (rtl)</label>
            </div>
            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                <label class="lbl" for="ace-settings-add-container">Inside<b>.container</b></label>
            </div>
        </div>
        <div class="pull-left width-50">
            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" />
                <label class="lbl" for="ace-settings-hover">Submenu on Hover</label>
            </div>
            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" />
                <label class="lbl" for="ace-settings-compact">Compact Sidebar</label>
            </div>
            <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
                <label class="lbl" for="ace-settings-highlight">Alt. Active Item</label>
            </div>
        </div>
    </div>
</div>

                    <div class="row">
                        <div class="col-sm-12">
                            <form method="post" action="Menu.aspx" id="form_Menu">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="lD8722rBr7X+aiBouIYxhrnKd1yDScQrf40Uv820C42CYas0di/vmy2H9rzOrIOpMrXy1UHC70C/PCVJD9mOD11l7TEb91gQiZB4YGNHIW1LkG9O7cpW07GmV6DvVkmsPyDACUWiWnDzOAwdw4j8DXee10Dg6LObrq9HKM1WQTu7rX4QyDTRHmvwID7CwJluqVQySyTQo8PzwQrZUEe5aUtLo9O+RUCPs0j7SeVGGAy5xKHybtm6IdtHji812bWyrQrIlTCchtmA5PAq9n1Z+B+qSw+19jcBXEHEN6I4NTc=" />
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4AB0BA30" />
</div>
                                <!-- PAGE CONTENT BEGINS -->
                                <div id="alertDiv" class="alert alert-block alert-success">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <i class="ace-icon fa fa-times"></i>
                                    </button>
                                    <i id="menuStateIcon" class="ace-icon fa fa-check green"></i>
                                    <strong id="menuState" class="green"></strong>
                                </div>
                                <div class="col-sm-8">
                                    <div class="tabbable tabs-below">
                                        <div class="tab-content">
                                            <div id="Button0" class="tab-pane in active">
                                                <div class="inline col-xs-12">
                                                    <span class="col-xs-3">第一列</span>
                                                    <span class="col-xs-3">按钮类型</span>
                                                    <span class="col-xs-3">关键字</span>
                                                    <span class="col-xs-3">网页链接</span>
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[0].sub_button[0].name" id="menu_button0_sub_button0_name" placeholder="二级菜单No.1" data-i="0" data-j="0" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[0].type" id="menu_button0_sub_button0_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[0].key" id="menu_button0_sub_button0_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[0].url" id="menu_button0_sub_button0_url" />
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[0].sub_button[1].name" id="menu_button0_sub_button1_name" placeholder="二级菜单No.2" data-i="0" data-j="1" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[1].type" id="menu_button0_sub_button1_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[1].key" id="menu_button0_sub_button1_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[1].url" id="menu_button0_sub_button1_url" />
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[0].sub_button[2].name" id="menu_button0_sub_button2_name" placeholder="二级菜单No.3" data-i="0" data-j="2" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[2].type" id="menu_button0_sub_button2_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[2].key" id="menu_button0_sub_button2_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[2].url" id="menu_button0_sub_button2_url" />
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[0].sub_button[3].name" id="menu_button0_sub_button3_name" placeholder="二级菜单No.4" data-i="0" data-j="3" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[3].type" id="menu_button0_sub_button3_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[3].key" id="menu_button0_sub_button3_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[3].url" id="menu_button0_sub_button3_url" />
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[0].sub_button[4].name" id="menu_button0_sub_button4_name" placeholder="二级菜单No.5" data-i="0" data-j="4" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[4].type" id="menu_button0_sub_button4_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[4].key" id="menu_button0_sub_button4_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[0].sub_button[4].url" id="menu_button0_sub_button4_url" />
                                                </div>
                                                <div class="space-4"></div>
                                            </div>

                                            <div id="Button1" class="tab-pane">
                                                <div class="inline col-xs-12">
                                                    <span class="col-xs-3">第二列</span>
                                                    <span class="col-xs-3">按钮类型</span>
                                                    <span class="col-xs-3">关键字</span>
                                                    <span class="col-xs-3">网页链接</span>
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[1].sub_button[0].name" id="menu_button1_sub_button0_name" placeholder="二级菜单No.1" data-i="1" data-j="0" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[0].type" id="menu_button1_sub_button0_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[0].key" id="menu_button1_sub_button0_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[0].url" id="menu_button1_sub_button0_url" />
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[1].sub_button[1].name" id="menu_button1_sub_button1_name" placeholder="二级菜单No.2" data-i="1" data-j="1" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[1].type" id="menu_button1_sub_button1_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[1].key" id="menu_button1_sub_button1_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[1].url" id="menu_button1_sub_button1_url" />
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[1].sub_button[2].name" id="menu_button1_sub_button2_name" placeholder="二级菜单No.3" data-i="1" data-j="2" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[2].type" id="menu_button1_sub_button2_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[2].key" id="menu_button1_sub_button2_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[2].url" id="menu_button1_sub_button2_url" />
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[1].sub_button[3].name" id="menu_button1_sub_button3_name" placeholder="二级菜单No.4" data-i="1" data-j="3" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[3].type" id="menu_button1_sub_button3_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[3].key" id="menu_button1_sub_button3_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[3].url" id="menu_button1_sub_button3_url" />
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[1].sub_button[4].name" id="menu_button1_sub_button4_name" placeholder="二级菜单No.5" data-i="1" data-j="4" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[4].type" id="menu_button1_sub_button4_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[4].key" id="menu_button1_sub_button4_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[1].sub_button[4].url" id="menu_button1_sub_button4_url" />
                                                </div>
                                                <div class="space-4"></div>
                                            </div>

                                            <div id="Button2" class="tab-pane">
                                                <div class="inline col-xs-12">
                                                    <span class="col-xs-3">第三列</span>
                                                    <span class="col-xs-3">按钮类型</span>
                                                    <span class="col-xs-3">关键字</span>
                                                    <span class="col-xs-3">网页链接</span>
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[2].sub_button[0].name" id="menu_button2_sub_button0_name" placeholder="二级菜单No.1" data-i="2" data-j="0" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[0].type" id="menu_button2_sub_button0_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[0].key" id="menu_button2_sub_button0_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[0].url" id="menu_button2_sub_button0_url" />
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[2].sub_button[1].name" id="menu_button2_sub_button1_name" placeholder="二级菜单No.2" data-i="2" data-j="1" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[1].type" id="menu_button2_sub_button1_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[1].key" id="menu_button2_sub_button1_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[1].url" id="menu_button2_sub_button1_url" />
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[2].sub_button[2].name" id="menu_button2_sub_button2_name" placeholder="二级菜单No.3" data-i="2" data-j="2" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[2].type" id="menu_button2_sub_button2_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[2].key" id="menu_button2_sub_button2_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[2].url" id="menu_button2_sub_button2_url" />
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[2].sub_button[3].name" id="menu_button2_sub_button3_name" placeholder="二级菜单No.4" data-i="2" data-j="3" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[3].type" id="menu_button2_sub_button3_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[3].key" id="menu_button2_sub_button3_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[3].url" id="menu_button2_sub_button3_url" />
                                                </div>
                                                <div class="space-4"></div>
                                                <div class="inline">
                                                    <input type="text" name="menu.button[2].sub_button[4].name" id="menu_button2_sub_button4_name" placeholder="二级菜单No.5" data-i="2" data-j="4" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[4].type" id="menu_button2_sub_button4_type" value="click" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[4].key" id="menu_button2_sub_button4_key" />
                                                    <input readonly type="text" class="control-input" name="menu.button[2].sub_button[4].url" id="menu_button2_sub_button4_url" />
                                                </div>
                                                <div class="space-4"></div>
                                            </div>
                                        </div>

                                        <ul class="nav nav-tabs" id="myButton">
                                            <li class="active">
                                                <a data-toggle="tab" href="#Button0">
                                                    <div class="inline">
                                                        <input type="text" name="menu.button[0].name" id="menu_button0_name" placeholder="一级菜单No.1" data-i="0" data-j="5" data-root="0" />
                                                        <input type="hidden" name="menu.button[0].type" id="menu_button0_type" value="click" />
                                                        <input type="hidden" name="menu.button[0].key" id="menu_button0_key" />
                                                        <input type="hidden" name="menu.button[0].url" id="menu_button0_url" />
                                                    </div>
                                                </a>
                                            </li>

                                            <li>
                                                <a data-toggle="tab" href="#Button1">
                                                    <div class="inline">
                                                        <input type="text" name="menu.button[1].name" id="menu_button1_name" placeholder="一级菜单No.2" data-i="1" data-j="5" data-root="1" />
                                                        <input type="hidden" name="menu.button[1].type" id="menu_button1_type" value="click" />
                                                        <input type="hidden" name="menu.button[1].key" id="menu_button1_key" />
                                                        <input type="hidden" name="menu.button[1].url" id="menu_button1_url" />
                                                    </div>
                                                </a>
                                            </li>

                                            <li>
                                                <a data-toggle="tab" href="#Button2">
                                                    <div class="inline">
                                                        <input type="text" name="menu.button[2].name" id="menu_button2_name" placeholder="一级菜单No.3" data-i="2" data-j="5" data-root="2" />
                                                        <input type="hidden" name="menu.button[2].type" id="menu_button2_type" value="click" />
                                                        <input type="hidden" name="menu.button[2].key" id="menu_button2_key" />
                                                        <input type="hidden" name="menu.button[2].url" id="menu_button2_url" />
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-4" id="buttonDetails">
                                    <div class="col-xs-12">
                                        <div class="widget-box">
                                            <div class="widget-header">
                                                <h4 class="widget-title">按钮详细参数编辑</h4>

                                                <span class="widget-toolbar">
                                                    <a href="#" data-action="settings">
                                                        <i class="ace-icon fa fa-cog"></i>
                                                    </a>

                                                    <a href="#" data-action="reload">
                                                        <i class="ace-icon fa fa-refresh"></i>
                                                    </a>

                                                    <a href="#" data-action="collapse">
                                                        <i class="ace-icon fa fa-chevron-up"></i>
                                                    </a>

                                                    
                                                </span>
                                            </div>
                                            <div class="widget-body">
                                                <div class="widget-main">
                                                    <div>
                                                        <label class="control-label no-padding-right" for="buttonDetails_name">按钮名</label>
                                                        <div>
                                                            <input id="buttonDetails_name" readonly class="col-xs-12" placeholder="按钮显示名称" />
                                                        </div>
                                                    </div>
                                                    <div class="space-4"></div>
                                                    <div>
                                                        <label for="buttonDetails_type">菜单类型</label>

                                                        <select class="form-control" id="buttonDetails_type">
                                                            <option value="click" selected="selected">点击事件（传回服务器）</option>
                                                            <option value="view">访问网页（直接跳转）</option>
                                                            <option value="location_select">弹出地理位置选择器</option>
                                                            <option value="pic_photo_or_album">弹出拍照或者相册发图</option>
                                                            <option value="pic_sysphoto">弹出系统拍照发图</option>
                                                            <option value="pic_weixin">弹出微信相册发图器</option>
                                                            <option value="scancode_push">扫码推事件</option>
                                                            <option value="scancode_waitmsg">扫码推事件且弹出“消息接收中”提示框</option>
                                                        </select>
                                                    </div>
                                                    <div class="space-4"></div>
                                                    <div id="buttonDetails_key_area">
                                                        <label class="control-label no-padding-right" for="buttonDetail_key">关键字（Key）</label>
                                                        <div>
                                                            <input id="buttonDetails_key" class="col-xs-12" placeholder="key" />
                                                        </div>
                                                    </div>
                                                    <div class="space-4"></div>
                                                    <div id="buttonDetails_url_area">
                                                        <label class="control-label no-padding-right" for="buttonDetail_url">网页链接</label>
                                                        <div>
                                                            <input id="buttonDetails_url" class="col-xs-12" placeholder="url" />
                                                        </div>
                                                    </div>
                                                    <div class="space-4"></div>
                                                    <p class="text-info">
                                                        如果一级菜单有下级菜单请忽略Type和Key或Url
                                                    </p>
                                                    <!-- /section:plugins/input.chosen -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="space-12"></div>
                                <div class="clearfix inline col-lg-12 form-actions">
                                    <div class="col-md-9 col-md-offset-3">
                                        <button class="btn btn-info" id="GetMenu" type="button">
                                            <i class="ace-icon fa fa-download bigger-110"></i>
                                            获取菜单
                                        </button>
                                        <button class="btn btn-success" id="SaveMenu" type="button">
                                            <i class="ace-icon fa fa-save bigger-110"></i>
                                            保存菜单
                                        </button>
                                        <button class="btn btn-danger" id="DelMenu" type="button">
                                            <i class="ace-icon fa fa-trash-o bigger-110"></i>
                                            删除菜单
                                        </button>
                                    </div>
                                </div>
                                <div id="dialog_DelMenu_confirm" class="hide">
                                    <div class="alert alert-info bigger-110">
                                        确定要删除?删除后要恢复可能比较麻烦，请谨慎操作！
                                    </div>
                                    <div class="space-6"></div>
                                    <p class="bigger-110 bolder center grey">
                                        <i class="ace-icon fa fa-hand-o-right blue bigger-120"></i>
                                        确定删除?
                                    </p>
                                </div>
                                <div id="dialog_SaveMenu_confirm" class="hide">
                                    <div class="alert alert-info bigger-110">
                                        确定要提交吗？此操作无法撤销！请谨慎操作！
                                    </div>
                                    <div class="space-6"></div>
                                    <p class="bigger-110 bolder center grey">
                                        <i class="ace-icon fa fa-hand-o-right blue bigger-120"></i>
                                        确定提交?
                                    </p>
                                </div>
                                <!-- PAGE CONTENT ENDS -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
<div class="footer">
    <div class="footer-inner">
        <!-- #section:basics/footer -->
        <div class="footer-content">
            <span class="bigger-120">
                <span class="blue bolder">IOF</span>
                WeChat &copy; 2015
            </span>

            &nbsp; &nbsp;
						<span class="action-buttons">
                            <a href="#">
                                <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                            </a>

                            <a href="#">
                                <i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
                            </a>

                            <a href="#">
                                <i class="ace-icon fa fa-rss-square orange bigger-150"></i>
                            </a>
                        </span>
        </div>
        <!-- /section:basics/footer -->
    </div>
</div>
<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
    <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
</a>

    </div>
    
<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='/assets/js/jquery.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='/assets/js/jquery1x.js'>"+"<"+"/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='/assets/js/jquery.mobile.custom.js'>" + "<" + "/script>");
</script>
<script src="/assets/js/bootstrap.js"></script>

<!-- page specific plugin scripts -->

<!-- ace scripts -->
<script src="/assets/js/ace/elements.scroller.js"></script>
<script src="/assets/js/ace/elements.colorpicker.js"></script>
<script src="/assets/js/ace/elements.fileinput.js"></script>
<script src="/assets/js/ace/elements.typeahead.js"></script>
<script src="/assets/js/ace/elements.wysiwyg.js"></script>
<script src="/assets/js/ace/elements.spinner.js"></script>
<script src="/assets/js/ace/elements.treeview.js"></script>
<script src="/assets/js/ace/elements.wizard.js"></script>
<script src="/assets/js/ace/elements.aside.js"></script>
<script src="/assets/js/ace/ace.js"></script>
<script src="/assets/js/ace/ace.ajax-content.js"></script>
<script src="/assets/js/ace/ace.touch-drag.js"></script>
<script src="/assets/js/ace/ace.sidebar.js"></script>
<script src="/assets/js/ace/ace.sidebar-scroll-1.js"></script>
<script src="/assets/js/ace/ace.submenu-hover.js"></script>
<script src="/assets/js/ace/ace.widget-box.js"></script>
<script src="/assets/js/ace/ace.settings.js"></script>
<script src="/assets/js/ace/ace.settings-rtl.js"></script>
<script src="/assets/js/ace/ace.settings-skin.js"></script>
<script src="/assets/js/ace/ace.widget-on-reload.js"></script>
<script src="/assets/js/ace/ace.searchbox-autocomplete.js"></script>
    <script src="/assets/js/jquery-ui.js"></script>
    <script src="/assets/js/jquery-ui.custom.js"></script>
    <script src="/assets/js/jquery.ui.touch-punch.js"></script>
    <script src="/assets/js/jquery-2.0.3.min.js"></script>
    <script src="/assets/js/jquery-ui-1.10.3.full.min.js"></script>
    <script>
        $(document).ready(function () {
            var alertDiv = $('#alertDiv');
            var buttonDetails = $('#buttonDetails');
            alertDiv.hide();
            buttonDetails.hide();
            $('#buttonDetails_url_area').hide();
            $("#GetMenu").click(function () {
                alertDiv.show();
                $('#menuState').html('菜单获取中......');
                $.get("/Ajax.ashx?action=GetMenu", function (data) {
                    if (data.substr(0, 3) != "{\"e") {
                        var obj = JSON.parse(data);
                        var buttons = obj.menu.button;
                        for (var i = 0; i < buttons.length; i++) {
                            var button = buttons[i];
                            $('#menu_button' + i + '_name').val(button.name);
                            $('#menu_button' + i + '_type').val(button.type);
                            $('#menu_button' + i + '_key').val(button.key);
                            $('#menu_button' + i + '_url').val(button.url);
                            if (button.sub_button && button.sub_button.length > 0) {
                                //二级菜单
                                for (var j = 0; j < button.sub_button.length; j++) {
                                    var subButton = button.sub_button[j];
                                    var idPrefix = '#menu_button' + i + '_sub_button' + j;
                                    $(idPrefix + "_name").val(subButton.name);
                                    $(idPrefix + "_type").val(subButton.type || 'click');
                                    $(idPrefix + "_key").val(subButton.key);
                                    $(idPrefix + "_url").val(subButton.url);
                                }
                            } else {

                            }
                            $('#menuState').html('菜单获取完成');
                        }
                    } else {
                        if (data == "{\"errcode\":46003,\"errmsg\":\"menu no exist\"}") {
                            $('#menuState').html('菜单不存在！如果下面还显示有菜单，可以点击保存以恢复之前删除的菜单！');
                        }
                        else {
                            $('#menuState').html('菜单获取失败！');
                        }
                    }
                });
            });
            $('#buttonDetails_type').change(function () {
                var val = $('#buttonDetails_type').val();
                if (val.toUpperCase() == 'VIEW') {
                    $('#buttonDetails_key_area').slideUp(100);
                    $('#buttonDetails_url_area').slideDown(100);
                } else {
                    $('#buttonDetails_key_area').slideDown(100);
                    $('#buttonDetails_url_area').slideUp(100);
                }
            });
            $(':input[id^=menu_button]').click(function () {
                buttonDetails.show();

                var idPrefix = $(this).attr('data-root')
                                ? ('menu_button' + $(this).attr('data-root'))
                                : ('menu_button' + $(this).attr('data-i') + '_sub_button' + $(this).attr('data-j'));

                var keyId = idPrefix + "_key";
                var nameId = idPrefix + "_name";
                var typeId = idPrefix + "_type";
                var urlId = idPrefix + "_url";

                var txtDetailsKey = $('#buttonDetails_key');
                var txtDetailsName = $('#buttonDetails_name');
                var ddlDetailsType = $('#buttonDetails_type');
                var txtDetailsUrl = $('#buttonDetails_url');

                var hiddenButtonKey = $('#' + keyId);
                var hiddenButtonType = $('#' + typeId);
                var hiddenButtonUrl = $('#' + urlId);

                txtDetailsKey.val(hiddenButtonKey.val());
                txtDetailsName.val($('#' + nameId).val());
                ddlDetailsType.val(hiddenButtonType.val());
                txtDetailsUrl.val(hiddenButtonUrl.val());

                var val = $('#buttonDetails_type').val();
                if (val.toUpperCase() == 'VIEW') {
                    $('#buttonDetails_key_area').slideUp(100);
                    $('#buttonDetails_url_area').slideDown(100);
                } else {
                    $('#buttonDetails_key_area').slideDown(100);
                    $('#buttonDetails_url_area').slideUp(100);
                }

                txtDetailsKey.unbind('blur').blur(function () {
                    hiddenButtonKey.val($(this).val());
                });
                ddlDetailsType.unbind('blur').blur(function () {
                    hiddenButtonType.val($(this).val());
                });
                txtDetailsUrl.unbind('blur').blur(function () {
                    hiddenButtonUrl.val($(this).val());
                });
            });
            $.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
                _title: function (title) {
                    var $title = this.options.title || '&nbsp;'
                    if (("title_html" in this.options) && this.options.title_html == true)
                        title.html($title);
                    else title.text($title);
                }
            }));
            $('#SaveMenu').click(function (e) {
                e.preventDefault();
                $('#dialog_SaveMenu_confirm').removeClass('hide').dialog({
                    resizable: false,
                    width: '320',
                    modal: true,
                    title: "<div class='widget-header'><h4 class='smaller'><i class='ace-icon fa fa-exclamation-triangle green'></i>菜单提交确认</h4></div>",
                    title_html: true,
                    buttons: [
                        {
                            html: "<i class='ace-icon fa fa-save bigger-110'></i>确定提交菜单",
                            "class": "btn btn-success btn-minier",
                            click: function () {
                                $(this).dialog("close");
                                alertDiv.show();
                                $('#menuState').html('上传中...');
                                $.ajax({
                                    cache: false,
                                    type: "POST",
                                    url: "/Ajax.ashx?action=SaveMenu",
                                    data: $('#form_Menu').serialize(),
                                    async: false,
                                    error: function (request) {
                                        $("#menuState").html('发送请求失败！');
                                    },
                                    success: function (data) {
                                        if (data == 'ok') {
                                            $("#menuState").html('菜单提交成功！');
                                        }
                                        else {
                                            $("#menuState").html(data);
                                        }
                                    }
                                });
                            }
                        },
                        {
                            html: "<i class='ace-icon fa fa-times bigger-110'></i>取消",
                            "class": "btn btn-minier",
                            click: function () {
                                $(this).dialog("close");
                            }
                        }
                    ]
                });
            });
            $('#DelMenu').on('click', function (e) {
                e.preventDefault();
                $('#dialog_DelMenu_confirm').removeClass('hide').dialog({
                    resizable: false,
                    width: '320',
                    modal: true,
                    title: "<div class='widget-header'><h4 class='smaller'><i class='ace-icon fa fa-exclamation-triangle red'></i>菜单删除确认</h4></div>",
                    title_html: true,
                    buttons: [
                        {
                            html: "<i class='ace-icon fa fa-trash-o bigger-110'></i>删除所有菜单",
                            "class": "btn btn-danger btn-minier",
                            click: function () {
                                $(this).dialog("close");
                                alertDiv.show();
                                $('#menuState').html('正在删除菜单中......');
                                $.get("/Ajax.ashx?action=DelMenu", function (data) {
                                    if (data == 'ok') {
                                        $('#menuState').html('菜单删除成功！     页面还没刷新之前你可以点击“保存菜单”按钮恢复菜单！');
                                    } else {
                                        $('#menuState').html('菜单删除失败！');
                                    }
                                });
                            }
                        },
                        {
                            html: "<i class='ace-icon fa fa-times bigger-110'></i>取消",
                            "class": "btn btn-minier",
                            click: function () {
                                $(this).dialog("close");
                            }
                        }
                    ]
                });
            });
        });
    </script>
</body>
</html>
