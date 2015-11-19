package nchu.weixin.admin.listener;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import nchu.weixin.GetWxService;
import nchu.weixin.admin.model.Custom;

import me.chanjar.weixin.mp.api.WxMpService;

/**
 * 应用监听器
 * @author Administrator
 *
 */
public class AppListener implements ServletContextListener {

	private GetWxService service;
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {

	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {

		System.out.println("获取所有微信服务");
		Map<Integer,WxMpService> wxServices=new HashMap<Integer,WxMpService>();
		arg0.getServletContext().setAttribute("services", wxServices);
	}

}
