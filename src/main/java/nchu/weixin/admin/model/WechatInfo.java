package nchu.weixin.admin.model;

import com.jfinal.plugin.activerecord.Model;

public class WechatInfo extends Model<WechatInfo> {
	public static final WechatInfo dao = new WechatInfo();

	public WechatInfo getCustom() {

		return WechatInfo.dao.findById((get("WID")));
	}
}
