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
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div class="container">
         <div id="mainmenu">
         <g:link controller="home">
          <img src="${resource(dir:'images',file:'anhoutdoors_banner750.jpg')}" alt="A & H Outdoors" border="0" />
         </g:link>
         <table cellspacing="0" cellpadding="0">
          <tr>
           <td width="100">
            <g:link controller="home">Home</g:link>
           </td>
           <td width="100">
            <g:link controller="activities">Activities</g:link>
           </td>
           <td width="250">
            <g:link controller="affiliatedPrograms">Affiliated Programs</g:link>
           </td>
           <td width="100">
            <g:link controller="aboutUs">About Us</g:link>
           </td>
          </tr>
         </table>
         </div>
        <g:layoutBody />
        </div>
    </body>
</html>