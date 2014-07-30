<html>
    <head>
        <title>A &amp; H Outdoors - Activities</title>
		<meta name="layout" content="main" />
    </head>
    <body>
	 <div class="span-1 first">
	  &nbsp;
	 </div>
	  <div class="span-22">
        <BR/>
		<h2 id="green">Activities</h2>
		<BR>
		We offer fee based <g:link controller="dayHikes">Day Hikes</g:link>, 
		<g:link controller="nightHikes">Night Hikes</g:link>, 
		<g:link controller="yogaHikes">Yoga Hikes </g:link> and 
		<g:link controller="campingTrips">Camping, Rafting, Canoeing &amp; Kayaking</g:link> trips.
		<BR>
		A list of all scheduled activities is below.
		<BR>
		<BR>
		Our Day hikes can range from a couple of miles to many miles inside
		state, local or national parks. The hikes can be from several hours
		in length to most of the day depending on distance, terrain and 
		group ability.
		<BR>
		We try to incorporate as many scenic views as we can and base the 
		level of terrain on our current group of hikers.
		<BR>
		<b>Proper hiking boots are required.</b>
		<BR>
		<BR>
		Our Night hikes are more challenging because we generally
		start after dark, hike to an area where we will see the moon
		rise and then hike back after moon rise. 
		<BR> 
		<b>Head lamps or flashlights are required.</b>
		<BR>
		<BR>
		Please click on one of the links above to see what we have
		already scheduled for this season. If you are interested in 
		scheduling a hike or other trip feel free to contact
		<A HREF="mailto:hal@anhoutdoors.com">Hal</A> or 
		<A HREF="mailto:arthur@anhoutdoors.com">Arthur</A>.
		<BR>
		<BR>
		Or for further information on any of our activities email
		us at <A HREF="mailto:info@anhoutdoors.com">Info@AnHOutdoors.com</A>
		<BR>
		<BR>
		<A HREF="mailto:arthur@anhoutdoors.com">Arthur Bedder III</A> - Program Coordinator
		<BR>
		<BR>
        <g:if test="${flash.message}">
        <div class="error">${flash.message}</div>
        </g:if>
        Click on a date for further information.
        <div class="anhlist">
         <table>
          <thead>
           <tr>
            <g:sortableColumn property="hikeDate" title="Date and time" />
            <g:sortableColumn property="activityType" title="Activity" />
            <g:sortableColumn property="shortDescription" title="Description" />
            <g:sortableColumn property="specialEquipment" title="Special Equipment" />
            <g:sortableColumn property="fee" title="Fee" />
            <g:sortableColumn property="registrationDate" title="Register By" />
           </tr>
          </thead>
          <tbody>
           <g:each in="${activityInstanceList}" status="i" var="activityInstance">
            <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
            
             <td width="175"><g:link controller="activity" action="full" id="${activityInstance.id}">
              <g:formatDate format="EEE MM/dd/yyyy hh:mm a" date="${activityInstance.hikeDate}" />
              </g:link>
             </td>
       
             <td width="100">${fieldValue(bean: activityInstance, field: "activityType")}</td>
       
             <td width="125">${fieldValue(bean: activityInstance, field: "shortDescription")}</td>
       
             <td width="130">${fieldValue(bean: activityInstance, field: "specialEquipment")}</td>
       
             <td width="50"><g:formatNumber number="${activityInstance.fee}" format="\$##.##" /> </td>

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