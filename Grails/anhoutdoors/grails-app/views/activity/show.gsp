
<%@ page import="app.Activity" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'activity.label', default: 'Activity')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
      <div class="span-1 first">
       &nbsp;
      </div>
      <div class="span-22">
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <BR/>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
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
                            
                            <td valign="top" class="value">${fieldValue(bean: activityInstance, field: "fee")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${activityInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
            <BR/>
            <BR/>
        </div>
      </div>
      <div class="span-1 last">
       &nbsp;
      </div>
    </body>
</html>
