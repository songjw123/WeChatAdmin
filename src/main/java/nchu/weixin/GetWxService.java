package nchu.weixin;

import java.util.List;
import java.util.Map;

import me.chanjar.weixin.mp.api.WxMpInMemoryConfigStorage;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.api.WxMpServiceImpl;
import nchu.weixin.admin.config.ConfigDao;
import nchu.weixin.admin.config.ConfigInfo;
import nchu.weixin.admin.model.Custom;

/**
 * 获取微信服务类
 * 
 * @author Administrator
 * 
 */
public class GetWxService {

	protected ConfigInfo info;
	protected WxMpInMemoryConfigStorage wxMpConfigStorage;
	protected WxMpService wxMpService;
	protected static Map<Integer, WxMpService> services;

	private static final ConfigDao dao = new ConfigDao();

	public GetWxService(Map<Integer, WxMpService> services) {
		if (this.services == null) {
			this.services = services;
		}
	}

	/**
	 * 创建微信服务对象
	 * 
	 * @param session
	 * @return
	 */
	public GetWxService buildService(ConfigInfo info) {

		wxMpConfigStorage = new WxMpInMemoryConfigStorage();
		wxMpConfigStorage.setAppId(info.getWeChatAppID()); // 设置微信公众号的appid
		wxMpConfigStorage.setSecret(info.getWeChatAppSecret()); // 设置微信公众号的app
		wxMpConfigStorage.setToken(info.getWeChatToken()); // 设置微信公众号的token
		wxMpConfigStorage.setAesKey(info.getWeChatAESKey()); // 设置微信公众号的EncodingAESKey
		wxMpService = new WxMpServiceImpl();
		wxMpService.setWxMpConfigStorage(wxMpConfigStorage);
		return this;
	}

	/**
	 * 从session中获取service
	 * 
	 * @return
	 */
	public WxMpService initService(Integer customID) {

		if (services.get(customID) == null) {
			info = dao.GetConfig(customID);
			buildService(info);
			services.put(customID, wxMpService);
			return wxMpService;
		}
		return services.get(customID);
	}

	/**
	 * 根据访问URL的命名空间初始化公众平台
	 * 
	 * @param namespace
	 * @return
	 */
	public WxMpService initService(String namespace) {

		List<Custom> find = Custom.dao.find(
				"select * from ott_custom where NameSpace=?", namespace);

		if (find.size() > 0) {

			Integer customID = find.get(0).getInt("CustomID");
			if (services.get(customID) == null) {
				info = dao.GetConfig(customID);
				buildService(info);
				services.put(customID, wxMpService);
				return wxMpService;
			}
			return services.get(customID);
		}
		return null;
	}

}
