package nchu.weixin.admin.config.router;

import nchu.weixin.admin.controller.WxMenuController;

import com.jfinal.config.Routes;

public class WxRouter extends Routes {

	@Override
	public void config() {
		add("/admin/weixin/menu", WxMenuController.class);
	}
	

}
