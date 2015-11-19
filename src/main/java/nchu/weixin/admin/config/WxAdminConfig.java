package nchu.weixin.admin.config;

import nchu.weixin.admin.config.router.WxRouter;
import nchu.weixin.admin.controller.CustomController;
import nchu.weixin.admin.model.Custom;
import nchu.weixin.admin.model.Material;
import nchu.weixin.admin.model.UserBind;
import nchu.weixin.admin.model.WechatInfo;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.ext.plugin.shiro.ShiroPlugin;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;

public class WxAdminConfig extends JFinalConfig {

	Routes routes;

	@Override
	public void configConstant(Constants me) {
		loadPropertyFile("db.properties");
		me.setDevMode(true);
		me.setEncoding("utf-8");
		me.setViewType(ViewType.JSP);
		// 设置权限认证不通过页面
		me.setErrorView(401, "/au/login.html");
		me.setErrorView(403, "/au/login.html");
		me.setError404View("/404.html");
		me.setError500View("/500.html");
	}

	@Override
	public void configRoute(Routes me) {
		this.routes = me;
		
		me.add(new WxRouter());
		me.add("/admin", CustomController.class);
	}

	@Override
	public void configPlugin(Plugins me) {

		String url = getProperty("jdbc.url");
		String user = getProperty("jdbc.username");
		String driver = getProperty("jdbc.driverClassName");
		String password = getProperty("jdbc.password");
		C3p0Plugin cp = new C3p0Plugin(url, user, password, driver);
		me.add(cp);
		ActiveRecordPlugin arp = new ActiveRecordPlugin(cp);
		me.add(arp);
		arp.setDialect(new MysqlDialect());
		
		//设置shiro插件
		ShiroPlugin shiroPlugin = new ShiroPlugin(this.routes);
		shiroPlugin.setLoginUrl("/login.do");
		shiroPlugin.setSuccessUrl("/index.do");
		shiroPlugin.setUnauthorizedUrl("/login.do");
		
		me.add(shiroPlugin);
		//添加表的映射
		arp.addMapping("ott_custom", "CustomID", Custom.class);
		arp.addMapping("ott_wechatinfo", "WID", WechatInfo.class);
		arp.addMapping("ott_material", "MaterialID",Material.class);
		arp.addMapping("ott_iddbind", "BindId",UserBind.class);
		// TODO Auto-generated method stub

	}

	@Override
	public void configInterceptor(Interceptors me) {
		// TODO Auto-generated method stub

	}

	@Override
	public void configHandler(Handlers me) {
		// TODO Auto-generated method stub

	}

}
