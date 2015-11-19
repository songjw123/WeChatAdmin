package nchu.weixin.admin.model;

import com.jfinal.plugin.activerecord.Model;

public class Material extends Model<Material> {
public static final Material dao=new Material();
	
	public Material getCustom(){
		
		return Material.dao.findById((get("customID")));
	}
}
