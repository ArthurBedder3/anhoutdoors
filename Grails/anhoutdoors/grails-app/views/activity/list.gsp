
<%@ page import="app.Activity" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'activity.label', default: 'Activity')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
	  <div class="span-1 first">
       &nbsp;
      </div>
	  <div class="span-22">
	    <BR/>
        <h1><g:message code="default.list.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
        <div class="error">${flash.message}</div>
        </g:if>
         <table>
          <thead>
           <tr>
            <g:sortableColumn property="hikeDate" title="Date and time" />
            <g:sortableColumn property="activityType" title="Activity" />
            <g:sortableColumn property="shortDescription" title="Description" />
            <g:sortableColumn property="specialEquipment" title="Special Equipment" />
            <g:sortableColumn property="registrationDate" title="Register By" />
           </tr>
          </thead>
          <tbody>
           <g:each in="${activityInstanceList}" status="i" var="activityInstance">
            <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
            
             <td width="175"><g:link action="show" id="${activityInstance.id}">
              <g:formatDate format="EEE MM/dd/yyyy hh:mm a" date="${activityInstance.hikeDate}" />
              </g:link>
             </td>
       
             <td width="130">${fieldValue(bean: activityInstance, field: "activityType")}</td>
       
             <td width="125">${fieldValue(bean: activityInstance, field: "shortDescription")}</td>
       
             <td width="130">${fieldValue(bean: activityInstance, field: "specialEquipment")}</td>
       
             <td width="75"><g:formatDate format="MM/dd/yyyy" date="${activityInstance.registrationDate}" /></td>
            
            </tr>
           </g:each>
           </tbody>
         </table>
        <div class="paginateButtons">
            <g:paginate total="${activityInstanceTotal}" />
        </div>
        <BR/>
        <BR/>
      </div>
	  <div class="span-1 last">
       &nbsp;
      </div>
    </body>
</html>
