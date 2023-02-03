package com.empaneledwebportletaction;

	import com.empaneledweb.constants.EmpaneledWebPortletKeys;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCRenderCommand;

import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.osgi.service.component.annotations.Component;

	@Component(
		    immediate = true,
		    property = {
		    		"javax.portlet.name=" + EmpaneledWebPortletKeys.EMPANELEDWEB,
		       "mvc.command.name=/"
		    },
		    service = MVCRenderCommand.class
	)
	public class DefaultController implements MVCRenderCommand{
		


		
			@Override
		public String render(RenderRequest renderRequest, RenderResponse renderResponse) throws PortletException {
			// TODO Auto-generated method stub
			System.out.println("---------------------111111111111hello is STUDENT DEFAULT CONTROLLER ------------------");
			
			

			
			
			return "/view.jsp";
		
		}

	}

