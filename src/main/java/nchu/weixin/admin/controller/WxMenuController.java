package nchu.weixin.admin.controller;

import java.util.ArrayList;
import java.util.List;

import me.chanjar.weixin.common.bean.WxMenu;
import me.chanjar.weixin.common.bean.WxMenu.WxMenuButton;
import me.chanjar.weixin.common.exception.WxErrorException;
import nchu.weixin.admin.model.Custom;
import nchu.weixin.admin.util.LogBuilder;

import com.jfinal.kit.StrKit;

public class WxMenuController extends BaseWxController {

	private WxMenu menu;

	public WxMenuController() {

		this.menu = new WxMenu();
	}

	public void saveMenu() {

		try {
			menu.setButtons(getButton(0, 3));
			System.out.println(menu.toJson());
			// 从session获取wxMpService
			service.menuCreate(menu);
		} catch (Exception e) {
			e.printStackTrace();
			LogBuilder.writeToLog(this.getClass().getName() + ":"
					+ e.getMessage());
		}

	}

	public void getMenu() {

		try {
			menu = service.menuGet();
			System.out.println(menu.toJson());
		} catch (WxErrorException e) {
			e.printStackTrace();
		}
	}

	public void deleteMenu() {
		try {
			service.menuDelete();
		} catch (WxErrorException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取前台用户编辑菜单的信息
	 * 
	 * @param btn_index
	 * @param maxSize
	 * @return
	 */
	private List<WxMenuButton> getButton(int btn_index, int maxSize) {
		String baseParaName = "";
		if (maxSize == 3) {
			baseParaName = "menu.button[";
		} else if (maxSize == 5) {
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
			if (!StrKit.isBlank(url)) {
				button.setUrl(url);
			}
			if (!StrKit.isBlank(key)) {
				button.setKey(key);
			}
			if (maxSize == 3) {
				button.setSubButtons(getButton(i, 5));
			}
			if (!StrKit.isBlank(name) && !StrKit.isBlank(type)
					&& (StrKit.isBlank(url) ^ StrKit.isBlank(key)))
				buttons.add(button);
		}
		return buttons;
	}
}
