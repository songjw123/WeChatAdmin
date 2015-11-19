package nchu.weixin.admin.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import me.chanjar.weixin.common.api.WxConsts;
import me.chanjar.weixin.mp.bean.WxMpMassOpenIdsMessage;
import me.chanjar.weixin.mp.bean.WxMpMaterial;
import me.chanjar.weixin.mp.bean.WxMpMaterialNews;
import me.chanjar.weixin.mp.bean.result.WxMpMaterialUploadResult;
import me.chanjar.weixin.mp.bean.result.WxMpUserList;
import nchu.weixin.admin.model.Material;

import com.google.gson.Gson;
import com.jfinal.upload.UploadFile;

/**
 * 图文上传控制器
 * 
 * @author Administrator
 * 
 */
public class UploadITController extends BaseWxController {

	/**
	 * 图文上传
	 */
	public void it() {
		initService();
		try {
			String attribute = getRequest().getParameter("json");
			Gson gson = new Gson();
			List<Map> result = gson.fromJson(attribute, List.class);
			WxMpMaterialNews multiNews = new WxMpMaterialNews();
			for (Map mp:result) {
				WxMpMaterialNews.WxMpMaterialNewsArticle mpMaterialNewsArticleSingle = new WxMpMaterialNews.WxMpMaterialNewsArticle();
				mpMaterialNewsArticleSingle.setThumbMediaId(getPara("thumbMediaId"));
				mpMaterialNewsArticleSingle.setAuthor((String) mp.get("author"));
				mpMaterialNewsArticleSingle.setTitle((String) mp.get("title"));
				mpMaterialNewsArticleSingle.setContent((String) mp.get("content"));
				mpMaterialNewsArticleSingle.setContentSourceUrl("www.baidu.com");
				mpMaterialNewsArticleSingle.setShowCoverPic(true);
				if(mp.get("digest")!=null){
					mpMaterialNewsArticleSingle.setDigest((String) mp.get("digest"));
					multiNews.addArticle(mpMaterialNewsArticleSingle);
				}
			}
			WxMpMaterialUploadResult res =
					 service.materialNewsUpload(multiNews);
			Material material=new Material();
			material.set("MaterialType", "news");
			material.set("MaterialUrl", res.getUrl());
			material.set("ThumbMediaID", res.getMediaId());
			material.set("WID", 1);
			material.save();
			//群发
			if(getRequest().getParameter("type").equals("save&post")){
				//获取所有关注用户
				WxMpUserList wxUserList = service.userList(null);
				WxMpMassOpenIdsMessage massMsg=new WxMpMassOpenIdsMessage();
				for (String openId:wxUserList.getOpenIds()) {
					massMsg.addUser(openId);
				}
				massMsg.setMediaId(res.getMediaId());
				massMsg.setMsgType(WxConsts.MASS_MSG_NEWS);
				service.massOpenIdsMessageSend(massMsg);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void image() throws IOException{
		
		try {
			initService();
			UploadFile file = getFile("file");
			WxMpMaterial wxMaterial = new WxMpMaterial();
			wxMaterial.setFile(file.getFile());
			wxMaterial.setName(file.getFileName());
			WxMpMaterialUploadResult res = service.materialFileUpload(file.getContentType(), wxMaterial);
			System.out.println(res.getMediaId()+res.getUrl());
			Material material=new Material();
			material.set("MaterialType", "image");
			material.set("MaterialUrl", res.getUrl());
			material.set("ThumbMediaID", res.getMediaId());
			material.set("WID", 1);
			material.save();
			renderJson("{\"mediaId\":\""+res.getMediaId()+"\",\"url\":\""+res.getUrl()+"\"}");
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public void getPicMeratail(){
		
		try {
			String json="{\"content\":[";
			List<Material> find = Material.dao.find("select * from ott_material where MaterialType='image'");
			for (Material item : find) {
				json+="{\"mediaId\":\""+item.getStr("ThumbMediaID")+"\",\"url\":\""+item.getStr("MaterialUrl")+"\"},";
			}
			json=json.substring(0, json.length()-1);
			json+="]}";
			System.out.println(json);
			renderJson(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
