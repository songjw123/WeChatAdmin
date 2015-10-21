package nchu.weixin.admin.controller;


import java.util.List;
import java.util.Map;

import nchu.weixin.admin.model.Custom;

import com.jfinal.core.Controller;

public class CustomController extends Controller {

	public void index(){
		
		render("/index.jsp");
	}
}
