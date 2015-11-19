package nchu.weixin.admin.config;

import nchu.weixin.admin.model.WechatInfo;

public class ConfigDao {
	private WechatInfo info;
	
	public ConfigInfo GetConfig(Integer customID) {
		ConfigInfo Config = new ConfigInfo();
		
		info = info.dao.findById(customID);
		Config.setWeChatAppID(info.getStr("WeChatID"));
		Config.setWeChatAppSecret(info.getStr("WeChatSecret"));
		Config.setWeChatToken(info.getStr("WeChatToken"));
		Config.setWeChatAESKey(info.getStr("WeChatAESKey"));
		return Config;
	}
}
