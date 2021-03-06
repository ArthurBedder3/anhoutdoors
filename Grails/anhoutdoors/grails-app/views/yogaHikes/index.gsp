<html>
    <head>
        <title>A &amp; H Outdoors - Yoga Hikes</title>
		<meta name="layout" content="main" />
    </head>
    <body>
	 <div class="span-1 first">
	  &nbsp;
	 </div>
	  <div class="span-22">
        <BR/>
		<h2 id="green">Yoga Hikes</h2>
		<BR>
		Join Maria for some hiking and Yoga. 
		<BR>
		<BR>
		To register or for further information email us at 
		<A HREF="mailto:info@anhoutdoors.com">Info@AnHOutdoors.com</A>
		<BR>
		<BR>
			<SPAN
				style="color: green; font-family: sans-serif, Arial; font-size: 14pt">
			<g:currentYear /> Yoga Hiking schedule
	        </span>
			<SPAN
				style="color: black; font-family: sans-serif, Arial; font-size: 9pt">
	        Click on a date for further information.
	        </SPAN>
			<BR>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="anhlist">
             <table>
              <thead>
               <tr>
                <th width="175">Date and time</th>
                <th width="50">Fee</th>
                <th width="125">Description</th>
                <th width="130">Special Equipment</th>
                <th width="75">Register By</th>
               </tr>
              </thead>
              <tbody>
               <g:each in="${activityInstanceList}" status="i" var="activityInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                
                 <td width="175"><g:link controller="activity" action="full" id="${activityInstance.id}">
                  <g:formatDate format="EEE MM/dd/yyyy hh:mm a" date="${activityInstance.hikeDate}" />
                  </g:link>
                 </td>
           
                 <td width="50"><g:formatNumber number="${activityInstance.fee}" format="\$##.##" /> </td>
           
                 <td width="125">${fieldValue(bean: activityInstance, field: "shortDescription")}</td>
           
                 <td width="130">${fieldValue(bean: activityInstance, field: "specialEquipment")}</td>
           
                 <td width="75"><g:formatDate format="MM/dd/yyyy" date="${activityInstance.registrationDate}" /></td>
                
                </tr>
               </g:each>
               </tbody>
             </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${activityInstanceTotal}" />
            </div>
		<BR>
		<BR>
	  </div>
	 <div class="span-1 last">
	  &nbsp;
	 </div>
    </body>
</html>