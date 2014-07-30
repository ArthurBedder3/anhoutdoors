<!DOCTYPE html PUBLIC "-//W3C//DTD XHMTL 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd" >

<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css/blueprint',file:'print.css')}" media="print"/>
        <link rel="stylesheet" href="${resource(dir:'css/blueprint',file:'screen.css')}" 
          media="screen,projection"/>
        <!-- [if lt IE 8]>
         <link rel="stylesheet" href="${resource(dir:'css/blueprint',file:'ie.css')}" 
          media="screen,projection"/>
        <![endif] -->
        <link rel="stylesheet" href="${resource(dir:'css',file:'application.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div class="container ">
          <div class="span-24 last mainmenu">
           <g:link controller="home">
            <img src="${resource(dir:'images',file:'anhoutdoors_banner_950.jpg')}" alt="A & H Outdoors" border="0" />
           </g:link>
          </div>
         <div class="span-24 last mainmenu">
           <div class="span-1">
            &nbsp;
           </div>
           <div class="span-3">
             &nbsp;<g:link controller="home">Home</g:link>
           </div>
           <div class="span-3">
            <g:link controller="activities">Activities</g:link>
           </div>
           <div class="span-5">
            <g:link controller="affiliatedPrograms">Affiliated Programs</g:link>
           </div>
           <div class="span-4">
            <g:link controller="photos">Photos</g:link>
           </div>
           <div class="span-4">
           &nbsp;
           </div>
           <div class="span-4 last">
            <g:link controller="aboutUs">About Us</g:link>
           </div>
          </div>
          <div class="span-24 last">
           <g:layoutBody />
          </div>
          <div class="span-24 last">
	       <g:copyright startYear="2008">A and H Outdoor Adventure Services&nbsp;</g:copyright>
	      </div>
         </div>
    </body>
</html>