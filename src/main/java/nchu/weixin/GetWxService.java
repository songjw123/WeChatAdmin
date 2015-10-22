package nchu.weixin;

import me.chanjar.weixin.mp.api.WxMpInMemoryConfigStorage;
import me.chanjar.weixin.mp.api.WxMpMessageRouter;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.api.WxMpServiceImpl;
import nchu.weixin.admin.config.ConfigDao;
import nchu.weixin.admin.config.ConfigInfo;

/**
 * 获取微信服务类
 * @author Administrator
 *
 */
public class GetWxService {

	protected ConfigInfo info;
	protected WxMpInMemoryConfigStorage wxMpConfigStorage;
	protected WxMpService wxMpService;
	protected WxMpMessageRouter wxMpMessageRouter;
	
	private static final ConfigDao dao = new ConfigDao();

	public GetWxService init(String CustomID) {

		info = dao.GetConfig();

		return this;
	}
	
	public WxMpService getService(){
		
		wxMpConfigStorage = new WxMpInMemoryConfigStorage();
		wxMpConfigStorage.setAppId(info.getWeChatAppID()); // 设置微信公众号的appid
		wxMpConfigStorage.setSecret(info.getWeChatAppSecret()); // 设置微信公众号的app
																		// corpSecret
		wxMpConfigStorage.setToken(info.getWeChatToken()); // 设置微信公众号的token
		wxMpConfigStorage.setAesKey(info.getWeChatAESKey()); // 设置微信公众号的EncodingAESKey

		wxMpService = new WxMpServiceImpl();
		wxMpService.setWxMpConfigStorage(wxMpConfigStorage);
		
		return wxMpService;
	}
}
