<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!-- #section:basics/sidebar -->
<div id="sidebar" class="sidebar responsive">
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
                    <a href="${pageContext.request.contextPath}/Page/App/Menu.jsp">
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
                    <a href="/Users/Chat.aspx">
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
                <li id="materialist" class="">
                    <a href="/Material/MaterialList.aspx">
                        <i class="menu-icon fa fa-users"></i>
                        <span class="menu-text">本地素材</span>
                    </a>
                    <b class="arrow"></b>
                </li>
                <li id="Newsmaterial" class="">
                    <a href="/Material/NewsMaterial.aspx">
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
    <div id="menu_s" runat="server" style="display:none"></div>
</div>
<!-- /section:basics/sidebar -->

