package nchu.weixin.admin.controller;


import java.util.List;
import java.util.Map;

import nchu.weixin.admin.config.ConfigDao;
import nchu.weixin.admin.config.ConfigInfo;
import nchu.weixin.admin.model.Custom;

import com.jfinal.core.Controller;

public class CustomController extends Controller {

	public void index(){
		ConfigDao dao=new ConfigDao();
		ConfigInfo info = dao.GetConfig(1);
		
		System.out.println(info.getWeChatToken());
		render("/index.jsp");
	}
}
