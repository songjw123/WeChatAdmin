package nchu.weixin.admin.controller;

import java.util.Map;

import nchu.weixin.GetWxService;
import nchu.weixin.admin.model.Custom;
import me.chanjar.weixin.mp.api.WxMpService;

import com.jfinal.core.Controller;

public class BaseWxController extends Controller {

	protected  WxMpService service;
	
	public BaseWxController() {
	}
	public void initService(){
		
		Custom test = Custom.dao.findById(1);
		getRequest().getSession().setAttribute("user", test);
		// 获取用户信息
		Custom user = (Custom) getSession().getAttribute("user");
		Map<Integer,WxMpService> services=(Map<Integer, WxMpService>) getRequest().getSession().getServletContext().getAttribute("services");
		GetWxService getWxService=new GetWxService(services);
		service=getWxService.initService(user.getInt("CustomID"));
		
	}
}
