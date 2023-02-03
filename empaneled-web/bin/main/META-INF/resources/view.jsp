<%@ include file="/init.jsp" %>

<portlet:renderURL var="empaneledwebURL" >
  <portlet:param name="mvcRenderCommandName" value="epaneledweb" /> 
    
  <portlet:actionURL name="sendAction" var="actionUrl"></portlet:actionURL>
 
 <%--  <portlet:param name="mvcPath" value="/addform.jsp"></portlet:param> --%>
  </portlet:renderURL>

<div class="container">
      <div class="row">
        <div class="col-md-12">
          <p class="heading2 heading2bold mb-3 text-center">Empaneled dealers</p>
          <p class="heading6 text-center">Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit
            amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet</p>
        </div>
      </div>
      <div class="row mt-4">
        <div class="col-md-12">
          <div class="shadow-lg p-3 text-left">
               <aui:form  action="${empaneledwebURL}" method="post">
              <div class="d-flex">
                <div class="form-group w-50 mr-3">
                  <aui:select name="make" class="form-control" id="cityName">
                    <aui:option>Select an option*</aui:option>
                    <aui:option value="audi">Audi</aui:option>
                    <aui:option value="BMW">BMW</aui:option>
                    <aui:option value="TATA">Tata</aui:option>
                    <aui:option value="sunuki">Sunuki</aui:option>
                  </aui:select>
                </div>
                <div class="form-group w-50 mr-3">
                  <aui:input type="text" class="form-control" id="city" aria-describedby="city"  name="city" placeholder="Enter your city*" />
                </div>
              </div>
              <div class="d-flex align-items-center">
                <div class="form-group  mr-3">
 <aui:button  class="primary-button w-100" type="submit"  cssClass="primary-button w-100" value="SEARCH DEALERS" ></aui:button>
              </div>
                <div class="form-group w-25">
                 <a href="${actionUrl}" class="anchor">Know more</a>
               
 <%-- <aui:button onClick='${actionUrl}'  class="anchor" value="Know more" type="submit"></aui:button>  --%>
              </div>
           </aui:form> 
          </div>
        </div>
      </div>
    </div> 