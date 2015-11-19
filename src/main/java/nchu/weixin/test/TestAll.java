package nchu.weixin.test;

import org.junit.Test;

import nchu.weixin.admin.config.ConfigDao;
import nchu.weixin.admin.config.ConfigInfo;

public class TestAll {

	@Test
	public void WxConfig(){
		
		ConfigDao dao=new ConfigDao();
		ConfigInfo info = dao.GetConfig(1);
		
		System.out.println(info.getWeChatToken());
	}
}
