package com.empaneledwebportletaction;

import com.dealers.model.Dealer;
import com.dealers.service.DealerLocalServiceUtil;
import com.empaneledweb.constants.EmpaneledWebPortletKeys;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCRenderCommand;
import com.liferay.portal.kernel.service.LayoutLocalServiceUtil;
import com.liferay.portal.kernel.theme.ThemeDisplay;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.WebKeys;

import java.util.List;

import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.osgi.service.component.annotations.Component;


@Component(
	    immediate = true,
	    property = {
	       "javax.portlet.name=" + EmpaneledWebPortletKeys.EMPANELEDWEB,
	       "mvc.command.name=epaneledweb"
	    },
	    service = MVCRenderCommand.class
)
public class EmpaneledDealerRenderMvcCommand implements MVCRenderCommand{

	@Override
	public String render(RenderRequest renderRequest, RenderResponse renderResponse) throws PortletException {

		String city= ParamUtil.getString(renderRequest, "city");
		String make = ParamUtil.getString(renderRequest, "make");
		
		ThemeDisplay themeDisplay = (ThemeDisplay)renderRequest.getAttribute(WebKeys.THEME_DISPLAY);
		
		System.out.println("ID : " + themeDisplay.getPortletDisplay().getId());

		System.out.println("InstanceID: " + themeDisplay.getPortletDisplay().getInstanceId());

		System.out.println("Portlet Name: " + themeDisplay.getPortletDisplay().getPortletName());
		
		/*
		 * long plid = 0L; try { plid =
		 * LayoutLocalServiceUtil.getFriendlyURLLayout(themeDisplay.getScopeGroupId(),
		 * false, "/home").getPlid(); } catch (Exception e) { e.printStackTrace(); }
		 * 
		 * System.out.println("PLID IS : " + plid);
		 */
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


	
	

}