
<%@ page import="app.Activity" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'activity.label', default: 'Activity')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
	  <div class="span-1 first">
       &nbsp;
      </div>
      <div class="span-2">
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <BR/>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${activityInstance}">
            <div class="errors">
                <g:renderErrors bean="${activityInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hikeDate"><g:message code="activity.hikeDate.label" default="Hike Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: activityInstance, field: 'hikeDate', 'errors')}">
                                    <g:datePicker name="hikeDate" value="${activityInstance?.hikeDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="activityType"><g:message code="activity.activityType.label" default="Activity Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: activityInstance, field: 'activityType', 'errors')}">
                                    <g:select name="activityType" from="${activityInstance.constraints.activityType.inList}" value="${activityInstance?.activityType}" valueMessagePrefix="activity.activityType"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="shortDescription"><g:message code="activity.shortDescription.label" default="Short Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: activityInstance, field: 'shortDescription', 'errors')}">
                                    <g:textField name="shortDescription" value="${activityInstance?.shortDescription}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="specialEquipment"><g:message code="activity.specialEquipment.label" default="Special Equipment" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: activityInstance, field: 'specialEquipment', 'errors')}">
                                    <g:textField name="specialEquipment" value="${activityInstance?.specialEquipment}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="registrationDate"><g:message code="activity.registrationDate.label" default="Registration Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: activityInstance, field: 'registrationDate', 'errors')}">
                                    <g:datePicker name="registrationDate" precision="day" value="${activityInstance?.registrationDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fullDescription"><g:message code="activity.fullDescription.label" default="Full Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: activityInstance, field: 'fullDescription', 'errors')}">
                                    <g:textArea name="fullDescription" cols="40" rows="5" value="${activityInstance?.fullDescription}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="statusType"><g:message code="activity.statusType.label" default="Status Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: activityInstance, field: 'statusType', 'errors')}">
                                    <g:select name="statusType" from="${activityInstance.constraints.statusType.inList}" value="${activityInstance?.statusType}" valueMessagePrefix="activity.statusType"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fee"><g:message code="activity.fee.label" default="Fee" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: activityInstance, field: 'fee', 'errors')}">
                                    $<g:textField name="fee" value="${fieldValue(bean: activityInstance, field: 'fee')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
            <BR/>
            <BR/>
        </div>
      </div>
	  <div class="span-1 last">
       &nbsp;
      </div>
    </body>
</html>
