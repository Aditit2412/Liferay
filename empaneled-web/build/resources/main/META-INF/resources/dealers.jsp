<%@ include file="/init.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<portlet:renderURL var="empaneledwebURL" >
  <portlet:param name="mvcRenderCommandName" value="epaneledweb" /> 
 
 <%--  <portlet:param name="mvcPath" value="/addform.jsp"></portlet:param> --%>
  </portlet:renderURL>
  
  <portlet:resourceURL var = "DealersURL" >

    <portlet:param name="city" value="spdealerscity"/>
        <portlet:param name="make" value="spdealersmake"/>

</portlet:resourceURL>
  
<section class="dealers-content pt-3 pt-md-5 pb-3">
        <div class="container">
            <div class="row align-items-center py-2 mb-1">
                <div class="col-12 col-lg-7 col-xl-6">
                      <c:forEach items="${dealerList}" var="dealer">
                    <p class="heading2">Our dealers in <span class="anchor"> <c:out value="${dealer.getCity()}"/></span></p>
                    </c:forEach>
                </div>
                <div class="col-12 col-lg-5 col-xl-6">
                   <aui:form  onkeyup="${empaneledwebURL}" method="post">
                        <div class="d-flex flex-column flex-md-row">
                            <div class="form-group w-100 mr-md-3">
                       
                                   <aui:input type="text" class="form-control" id="city" aria-describedby="city"  name="city" placeholder="Enter your city*" />
                            </div>
                            <div class="form-group w-100">
                                  <aui:select name="make" class="form-control" id="cityName">
                    <aui:option>Select an option*</aui:option>
                    <aui:option value="audi">Audi</aui:option>
                    <aui:option value="BMW">BMW</aui:option>
                    <aui:option value="TATA">Tata</aui:option>
                    <aui:option value="sunuki">Sunuki</aui:option>
                  </aui:select>
                            </div>
    
                      </aui:form>
                </div>
            </div>
<div class="container dealers-content-data shadow">
                <div class="row p-3">
                    <div class="col-md-12">
<c:forEach items="${dealerList}" var="dealer">
  <p class="font-weight-bolder mb-2"> <c:out value="${dealer.getDealerName()}"/></p>
                        <p class="mb-2"><c:out value="${dealer.getAddress()}"/></p>
                       <p class="mb-2"><span class="font-weight-bolder">Contact:</span> - <c:out value="${dealer.getPhone()}"/></p>
                        <p class="mb-2"><span class="font-weight-bolder">Email</span> - <c:out value="${dealer.getEmail()}"/></p>

</c:forEach>
                   </div>
                </div>
            </div>

        </div>
    </section>
<%--     <script>
    $('#make').change(function () {  

        var city = $('#spdealerscity').val();

        var make = $('#spdealersmake').val();

        

        $.ajax({


        url:'<%=DealersURL.toString() %>',

        data: {'<portlet:namespace/>kpiName':kpiName},  

        

        success: function(data){

            $('#<portlet:namespace />kpiIndicator').html('');

            var kpiIndicatorList = data;

            for(var i in kpiIndicatorList){  

                 

                 <% if(Validator.isNotNull(dashboardObj) ) {

                    %>

                    var kpiIndicatorId = document.getElementById("_kpi_dashboard_KpiDashboardPortlet_kpiIndicatorId").value;

                    

                    if (i == kpiIndicatorId) {

                        $('#_kpi_dashboard_KpiDashboardPortlet_kpiIndicator').append("<option  value='"+ i +"' selected >"+kpiIndicatorList[i] +"</option> ");

                        } else {

                            console.log("If else");

                            $('#_kpi_dashboard_KpiDashboardPortlet_kpiIndicator').append("<option  value='"+ i +"' >"+kpiIndicatorList[i] +"</option> ");

                        }

                <%  

                } if(Validator.isNull(dashboardObj) )  {%>

                

                $('#_kpi_dashboard_KpiDashboardPortlet_kpiIndicator').append("<option  value='"+ i +"' >"+kpiIndicatorList[i] +"</option> ");

                <%} %>

            } 

            

            $('#_kpi_dashboard_KpiDashboardPortlet_kpiIndicator').find('option:eq(0)').attr('selected', true).trigger('change');



          },error:function(msg){

              //console.log("error"+msg);

          }

        });

     }); 
    </script> --%>


