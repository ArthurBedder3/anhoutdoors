
<%@ page import="app.Activity" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'activity.label', default: 'Activity')}" />
        <title>A &amp; H Outdoors - Activity Details</title>
    </head>
    <body>
	  <div class="span-1 first">
       &nbsp;
      </div>
	  <div class="span-22">
	  <BR/>
       <h1>Activity Details</h1>
       <g:if test="${flash.message}">
       <div class="error">${flash.message}</div>
       </g:if>
       <table>
        <tbody>
         <tr class="prop">
             <td valign="top" class="name"><g:message code="activity.hikeDate.label" default="Hike Date" /></td>
             
             <td valign="top" class="value">
              <g:formatDate format="EEE MM/dd/yyyy hh:mm a" date="${activityInstance?.hikeDate}" />
             </td>
             
         </tr>
     
         <tr class="prop">
             <td valign="top" class="name"><g:message code="activity.activityType.label" default="Activity Type" /></td>
             
             <td valign="top" class="value">${fieldValue(bean: activityInstance, field: "activityType")}</td>
             
         </tr>
     
         <tr class="prop">
             <td valign="top" class="name"><g:message code="activity.shortDescription.label" default="Short Description" /></td>
             
             <td valign="top" class="value">${fieldValue(bean: activityInstance, field: "shortDescription")}</td>
             
         </tr>
     
         <tr class="prop">
             <td valign="top" class="name"><g:message code="activity.specialEquipment.label" default="Special Equipment" /></td>
             
             <td valign="top" class="value">${fieldValue(bean: activityInstance, field: "specialEquipment")}</td>
             
         </tr>
     
         <tr class="prop">
             <td valign="top" class="name"><g:message code="activity.registrationDate.label" default="Registration Date" /></td>
             
             <td valign="top" class="value">
              <g:formatDate format="MM/dd/yyyy" date="${activityInstance?.registrationDate}" />
             </td>
             
         </tr>
     
         <tr class="prop">
             <td valign="top" class="name"><g:message code="activity.fullDescription.label" default="Full Description" /></td>
             
             <td valign="top" class="value">${fieldValue(bean: activityInstance, field: "fullDescription")}</td>
             
         </tr>
     
         <tr class="prop">
             <td valign="top" class="name"><g:message code="activity.statusType.label" default="Status Type" /></td>
             
             <td valign="top" class="value">${fieldValue(bean: activityInstance, field: "statusType")}</td>
             
         </tr>
     
         <tr class="prop">
             <td valign="top" class="name"><g:message code="activity.fee.label" default="Fee" /></td>
             
             <td valign="top" class="value">
             <g:formatNumber number="${activityInstance.fee}" format="\$##.##" /> 
             </td>
             
         </tr>
     
        </tbody>
       </table>
	   <BR>
	   <BR>
	  </div>
	  <div class="span-1 last">
       &nbsp;
      </div>
    </body>
</html>
