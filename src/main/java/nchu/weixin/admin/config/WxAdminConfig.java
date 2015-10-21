package nchu.weixin.admin.config;

import nchu.weixin.admin.controller.CustomController;
import nchu.weixin.admin.model.Custom;
import nchu.weixin.admin.model.WechatInfo;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;

public class WxAdminConfig extends JFinalConfig {

	@Override
	public void configConstant(Constants me) {
		loadPropertyFile("db.properties");
		me.setDevMode(true);
		me.setEncoding("utf-8");
		me.setViewType(ViewType.JSP);
	}

	@Override
	public void configRoute(Routes me) {
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
		arp.addMapping("ott_custom","CustomID", Custom.class);
		arp.addMapping("ott_wechatinfo","WID", WechatInfo.class);
		
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
