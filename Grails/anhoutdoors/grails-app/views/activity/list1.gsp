
<%@ page import="app.Activity" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'activity.label', default: 'Activity')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'activity.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="hikeDate" title="${message(code: 'activity.hikeDate.label', default: 'Hike Date')}" />
                        
                            <g:sortableColumn property="activityType" title="${message(code: 'activity.activityType.label', default: 'Activity Type')}" />
                        
                            <g:sortableColumn property="shortDescription" title="${message(code: 'activity.shortDescription.label', default: 'Short Description')}" />
                        
                            <g:sortableColumn property="specialEquipment" title="${message(code: 'activity.specialEquipment.label', default: 'Special Equipment')}" />
                        
                            <g:sortableColumn property="registrationDate" title="${message(code: 'activity.registrationDate.label', default: 'Registration Date')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${activityInstanceList}" status="i" var="activityInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${activityInstance.id}">${fieldValue(bean: activityInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${activityInstance.hikeDate}" /></td>
                        
                            <td>${fieldValue(bean: activityInstance, field: "activityType")}</td>
                        
                            <td>${fieldValue(bean: activityInstance, field: "shortDescription")}</td>
                        
                            <td>${fieldValue(bean: activityInstance, field: "specialEquipment")}</td>
                        
                            <td><g:formatDate date="${activityInstance.registrationDate}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${activityInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
