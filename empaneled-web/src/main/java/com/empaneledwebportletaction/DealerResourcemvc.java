package com.empaneledwebportletaction;

import com.empaneledweb.constants.EmpaneledWebPortletKeys;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCResourceCommand;

import javax.portlet.PortletException;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

import org.osgi.service.component.annotations.Component;

@Component(
	    immediate = true,
	    property = {
	       "javax.portlet.name=" + EmpaneledWebPortletKeys.EMPANELEDWEB,
	       "mvc.command.name=epaneledweb"
	    },
	    service = MVCResourceCommand.class
)

public class DealerResourcemvc implements MVCResourceCommand{

	@Override
	public boolean serveResource(ResourceRequest resourceRequest, ResourceResponse resourceResponse)
			throws PortletException {
		// TODO Auto-generated method stub
		return false;
	}
	
	

}
