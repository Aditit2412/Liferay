package com.empaneledwebportletaction;

import com.empaneledweb.constants.EmpaneledWebPortletKeys;
import com.liferay.portal.kernel.portlet.PortletURLFactoryUtil;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCActionCommand;
import com.liferay.portal.kernel.service.LayoutLocalServiceUtil;
import com.liferay.portal.kernel.theme.ThemeDisplay;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.PortalUtil;
import com.liferay.portal.kernel.util.WebKeys;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.PortletRequest;
import javax.portlet.PortletURL;

import org.osgi.service.component.annotations.Component;


@Component(
	    immediate = true,
	    property = {
	       "javax.portlet.name=" + EmpaneledWebPortletKeys.EMPANELEDWEB,
	       "mvc.command.name=sendAction"
	    },
	    service = MVCActionCommand.class
)
public class EmpaneledDealerActionMvcCommand implements MVCActionCommand{

	/*
	@Override
	public String render(RenderRequest renderRequest, RenderResponse renderResponse) throws PortletException {

		String city= ParamUtil.getString(renderRequest, "city");
		String make = ParamUtil.getString(renderRequest, "make");
		
		ThemeDisplay themeDisplay = (ThemeDisplay)renderRequest.getAttribute(WebKeys.THEME_DISPLAY);
		
		System.out.println("ID : " + themeDisplay.getPortletDisplay().getId());

		System.out.println("InstanceID: " + themeDisplay.getPortletDisplay().getInstanceId());

		System.out.println("Portlet Name: " + themeDisplay.getPortletDisplay().getPortletName());
		System.out.println("parameter 1"+city);
		System.out.println("parameter 2"+make);
		List<Dealer> dealerList=null;
		try{
			
			 dealerList=DealerLocalServiceUtil.findBymakeAndCity(make, city);
			 System.out.println(dealerList.size()+" "+dealerList.isEmpty());
		}catch(Exception e) {
			System.out.println("NO SUCH ENTRY IN DATABASE"+e);
		}
	
	
		 renderRequest.setAttribute("dealerList",dealerList);
	
		 System.out.println(dealerList.size());
		 
		 
		return "/dealers.jsp";
	}
	*/
	

	@Override
	public boolean processAction(ActionRequest actionRequest, ActionResponse actionResponse) throws PortletException {
		
		ThemeDisplay themeDisplay = (ThemeDisplay) actionRequest.getAttribute(WebKeys.THEME_DISPLAY);
		String pageName="/empaneled";
		String portletName = "com_empaneledweb_EmpaneledWebPortlet";
		
		String city= ParamUtil.getString(actionRequest, "city");
		String make = ParamUtil.getString(actionRequest, "make");
		
		System.out.println("parameter 1"+city);
		System.out.println("parameter 2"+make);
		
		long plid = 0L;
		try {
		 plid = LayoutLocalServiceUtil.getFriendlyURLLayout(themeDisplay.getScopeGroupId(), false, pageName).getPlid();
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		PortletURL redirectURL = PortletURLFactoryUtil.create(PortalUtil.getHttpServletRequest(actionRequest),portletName,plid,    PortletRequest.RENDER_PHASE);
		redirectURL.setParameter("city", city); 
		redirectURL.setParameter("make", make);// set required parameter that you need in doView of another Portlet
		try {
			actionResponse.sendRedirect(redirectURL.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("nahi kaam kar raha hai bhai");
			e.printStackTrace();
		} 
	
	

	
		return true;
	}


	
	

}