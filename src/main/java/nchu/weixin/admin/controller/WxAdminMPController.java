package nchu.weixin.admin.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jfinal.core.Controller;

import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.common.util.StringUtils;
import me.chanjar.weixin.mp.api.WxMpInMemoryConfigStorage;
import me.chanjar.weixin.mp.api.WxMpMessageHandler;
import me.chanjar.weixin.mp.api.WxMpMessageRouter;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.api.WxMpServiceImpl;
import me.chanjar.weixin.mp.bean.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.WxMpXmlOutMessage;
import me.chanjar.weixin.mp.bean.WxMpXmlOutTextMessage;
import nchu.weixin.GetWxService;
import nchu.weixin.admin.config.ConfigDao;
import nchu.weixin.admin.config.ConfigInfo;
import nchu.weixin.admin.util.LogBuilder;

public class WxAdminMPController extends Controller {

	protected WxMpInMemoryConfigStorage wxMpConfigStorage;
	protected WxMpService wxMpService;
	protected WxMpMessageRouter wxMpMessageRouter;


	public void index() {
		try {
			HttpServletResponse response=getResponse();
			HttpServletRequest request=getRequest();
			ServletContext context = request.getSession().getServletContext();
			Map<Integer,WxMpService> services=(Map<Integer, WxMpService>)context .getAttribute("services");
			String namespace;
			namespace = getPara();
			GetWxService geService=new GetWxService(services);
			wxMpService= geService.initService(namespace);
			response.setContentType("text/html;charset=utf-8");
			response.setStatus(HttpServletResponse.SC_OK);

			String signature = getRequest().getParameter("signature");
			String nonce =getRequest().getParameter("nonce");
			String timestamp = getRequest().getParameter("timestamp");

			if (!wxMpService.checkSignature(timestamp, nonce, signature)) {
				// 消息签名不正确，说明不是公众平台发过来的消息
				response.getWriter().println("非法请求");
				return;
			}

			String echostr = request.getParameter("echostr");
			if (StringUtils.isNotBlank(echostr)) {
				// 说明是一个仅仅用来验证的请求，回显echostr
				response.getWriter().println(echostr);
				return;
			}

			String encryptType = StringUtils.isBlank(request
					.getParameter("encrypt_type")) ? "raw" : request
					.getParameter("encrypt_type");

			if ("raw".equals(encryptType)) {
				// 明文传输的消息
				WxMpXmlMessage inMessage = WxMpXmlMessage.fromXml(request
						.getInputStream());
				WxMpXmlOutMessage outMessage = wxMpMessageRouter
						.route(inMessage);
				response.getWriter().write(outMessage.toXml());
				return;
			}
			if ("aes".equals(encryptType)) {
				// 是aes加密的消息
				String msgSignature = request.getParameter("msg_signature");
				WxMpXmlMessage inMessage = WxMpXmlMessage.fromEncryptedXml(
						request.getInputStream(), wxMpConfigStorage, timestamp,
						nonce, msgSignature);
				WxMpXmlOutMessage outMessage = wxMpMessageRouter
						.route(inMessage);
				response.getWriter().write(
						outMessage.toEncryptedXml(wxMpConfigStorage));
				return;
			}
			response.getWriter().println("不可识别的加密类型");
			return;
		} catch (Exception e) {
			e.printStackTrace();
			LogBuilder.writeToLog(e.getMessage());
		}
	}
}