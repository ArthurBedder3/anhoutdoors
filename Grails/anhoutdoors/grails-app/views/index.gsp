<html>
    <head>
        <title>A &amp; H Outdoors - Home</title>
		<meta name="keywords" content="A & H Outdoor Adventure Services LLC, outdoors, Leave No Trace instruction, guide service, Ramapo Mountains, Kittatiny Mountains, gunks, Harriman, Norvin Green, Catskills, Adirondaks, Hiking, Camping, Backpacking, Canoeing, Rafting, Kayaking, Outdoor Navigation Instruction, Shinrinyoku, Forest Bathing, Yoga hikes">
		<meta name="description" content="Experience hiking in New Jersey's Ramapo and Kittatiny Mountains, New York's Catskills, Gunks and Adirondacks. A and H provides Navigation instruction, Leave No Trace instruction and guided hiking and camping in the Catskills, Gunks, Highlands and Adirondacks with New York State Licensed Guides.">
		<meta name="layout" content="main" />
    </head>
    <body>
      <div class="span-19 prepend-1 append-1">
        <g:if test="${flash.message}">
         <div class="message">${flash.message}</div>
        </g:if>
        <BR/>
		<h2 id="green" align="center"> 
		Welcome to 
		<BR>
		A and H Outdoor Adventure Services 
		</h2>
		<p>
		We are committed to creating the best experiential outdoor educational opportunities possible for 
		people of all ages and backgrounds. Our goal is to encourage character development, 
		self-discovery and service. We try to balance the risk with the fun and excitement inherent in all 
		outdoor activities, to instill a knowledge of the outdoors and to inspire a love of the 
		natural world as a resource of renewal, for this generation and generations yet to come.
		<BR>
		We welcome you to join us on our Quest. . . . 
		<BR>
		<BR>
		Please feel free to review <g:link controller="activities">Activities</g:link> section, 
		or for further information on our activities email
		us at <A HREF="mailto:info@anhoutdoors.org">Info@AnHOutdoors.com</A>
		<BR>
		<BR>
		<BR>
		<BR>
		</p>
	  </div>
	  <div class="span-3 last">
	    <div class="box">
		 <g:link controller="activities" action="nextHike" >
		  <font color="blue">Next Scheduled Activity</font>
		 </g:link>
		 <BR/>
		 <BR/>
		 <g:link controller="dayHikes"><font color="green"><g:currentYear /> Day Hike Schedule</font></g:link>
		 <BR/>
		 <BR/>
		 <g:link controller="nightHikes"><font color="red"><g:currentYear /> Night Hike Schedule</font></g:link>
		 <BR/>
		 <BR/>
	   </div>
	  </div>
    </body>
</html>