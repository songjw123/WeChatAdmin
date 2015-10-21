package nchu.weixin.admin.model;

import com.jfinal.plugin.activerecord.Model;

public class Custom extends Model<Custom> {

	public static final Custom dao=new Custom();
	
	public Custom getCustom(){
		
		return Custom.dao.findById((get("customID")));
	}
}
