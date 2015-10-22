package nchu.weixin.admin.controller;

import java.util.ArrayList;
import java.util.List;

import nchu.weixin.GetWxService;
import nchu.weixin.admin.model.Custom;

import me.chanjar.weixin.common.bean.WxMenu;
import me.chanjar.weixin.common.bean.WxMenu.WxMenuButton;

import com.jfinal.core.Controller;

public class WxMenuController extends Controller {

	private WxMenu menu;
	private GetWxService getService;

	public void saveMenu() {

		Custom attribute = (Custom) getSession().getAttribute("user");
		menu = new WxMenu();
		menu.setButtons(getButton(0, 2));
		System.out.println(menu.toJson());
		
	}

	public void getMenu() {

		System.out.println("获取菜单");
	}

	public void deleteMenu() {

		System.out.println("删除菜单");
	}

	private List<WxMenuButton> getButtons(int index) {
		List<WxMenuButton> buttons = null;
		return null;
	}

	private List<WxMenuButton> getButton(int btn_index, int maxSize) {
		String baseParaName = "";
		if (maxSize == 2) {
			baseParaName = "menu.button[";
		} else if (maxSize == 4) {
			baseParaName = "menu.button[" + btn_index + "].sub_button[";
		} else {
			throw new RuntimeException("maxSize=" + maxSize + "非法");
		}
		List<WxMenuButton> buttons = new ArrayList<WxMenuButton>();
		WxMenuButton button = null;
		for (int i = 0; i < maxSize; i++) {
			button = new WxMenuButton();
			String name = getPara(baseParaName + i + "].name");
			String type = getPara(baseParaName + i + "].type");
			String url = getPara(baseParaName + i + "].url");
			String key = getPara(baseParaName + i + "].key");
			button.setName(name);
			button.setType(type);
			button.setUrl(url);
			button.setKey(key);
			if (maxSize == 2) {
				button.setSubButtons(getButton(i, 4));
			}
			buttons.add(button);
		}

		
		return buttons;
	}
}
