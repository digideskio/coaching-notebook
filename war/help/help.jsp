<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="com.mindforger.coachingnotebook.server.admin.MindForgerKernel" %>

<%
    boolean userLogged=false;

    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
    if (user != null) {
    	userLogged=true;
    }
    	
    if(userLogged) {
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>CoachingNotebook - Personal Development Tool - Help</title>
    <link rel="shortcut icon" href="../favicon.ico" />
    <link rel="alternate" type="application/rss+xml" title="RSS" href="http://www.facebook.com/feeds/page.php?id=172099806154112&format=rss20" />
    <meta name="description" content="CoachingNotebook is life designer, problem solver and coaching notebook. It is an online social utility that helps you to achieve your goals and make your dreams true."/>
    <meta name="keywords" content="notebook, coaching, GROW model, SWOT, SMART goals"/> 
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link type="text/css" rel="stylesheet" href="css/help.css"/>
    <!-- Google Analytics -->
    <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-23166745-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

    </script>
   <% if(MindForgerKernel.showMaintenanceMessage) { %>
	<style type="text/css">
      #leftMenubarContainer {
	    top: 6.5em;
	  }	
	</style>
   <% } %>   
  </head>

  <body>
   <% if(MindForgerKernel.showMaintenanceMessage) { %>
     <div id="maintenanceMessage" style="width: 100%; color: <%= MindForgerKernel.maintenanceMessageFgColor %>; background-color: <%= MindForgerKernel.maintenanceMessageBgColor %>; text-align: center; font-weight: bold;">
       <%= MindForgerKernel.maintenanceMessage %>
     </div>
   <% } %>
   <table border="0" style="width: 100%">
   	<tbody>
   	 <tr>
   	  <td style="width:200px;"></td>
   	  <td><center><div id="errorLabelContainer"></div></center></td>
   	  <td style="width: 450px;">
   	    <div style="float: right; padding-right: 1em; padding-top: 2px;">
   	    <a href="<%= userService.createLogoutURL(request.getRequestURI()) %>">Sign out</a></div></td>
   	 </tr>
   	</tbody>
   </table>
        
   <hr style="background-color: #aaa; color: #aaa; border: 0; height: 1px; width: 100%"/>
    
    <table class="mf-applicationPanel">
    <col ></col>
    <col></col>
	<tr>
		<td style="width: 170px;">
		  <span style="font-family: arial, sans-serif; font-weight: bolder; font-size: 25px; margin-left: 5px;">CoachingNotebook</span>
		  <span style="vertical-align: baseline; font-size: 0.9em; position: relative; top: +0.4em;"><%-- &alpha; --%></span>
		</td>
		<td>
		  <table width="100%">
			<tr>
				<td style="font-size: 2em; font-weight: bold; text-align: right; padding-right: 1em;">Help</td>
			</tr>
		  </table>
		</td>
	</tr>

	<tr>
	  <td id="leftMenubarContainer" valign="top" width="200px" style="padding-right: 15px;">
		  <div class="mf-menuButtonOn"><a class="mf-link" href="#introduction">Introduction</a></div>
		  <div class="mf-menuButtonOff"><a class="mf-link" href="#whatItIs">What is it?</a></div>
		  <div class="mf-menuButtonOff"><a class="mf-link" href="#whatItIsNot">What it isn't</a></div>
		  <div class="mf-menuButtonOff"><a class="mf-link" href="#howItWorks">How it works</a></div>
		  <div class="mf-menuButtonOn"><a class="mf-link" href="#gettingStarted">Getting Started</a></div>
		  <div class="mf-menuButtonOff"><a class="mf-link" href="#tutorials">Tutorials</a></div>
		  <div class="mf-menuButtonOff"><a class="mf-link" href="#alphaProgram">Alpha Program</a></div>
		  <div class="mf-menuButtonOn"><a class="mf-link" href="#closedLoopGoalLifecycle">Closed Loop</a></div>
		  <div class="mf-menuButtonOff"><a class="mf-link" href="#lifeVision">Life Vision</a></div>
		  <div class="mf-menuButtonOff"><a class="mf-link" href="#wheelOfLife">Wheel of Life</a></div>
		  <div class="mf-menuButtonOff"><a class="mf-link" href="#goalSetting">Goal Setting Tool</a></div>
		  <div class="mf-menuButtonOff"><a class="mf-link" href="#growModel">GROW Model</a></div>
		  <div class="mf-menuButtonOn"><a class="mf-link" href="#studyMaterials">Study Materials</a></div>
      </td>
	  <td style="border: solid 1px #ccc; padding-left: 0.8em; padding-right: 1em;" valign="top">
	  
	  
	  
	  <a name="introduction"></a>
	  <h1>Introduction</h1>
	  <center>
        <a style="border-bottom: 1px none #fff;" title="CoachingNotebook on YouTube" href="http://youtu.be/qPmxYmm8VzE?hd=1" target="_blank">
        <img style="margin-left: 2em; border: 1px solid #000" src="../images/youtube-thumbnail.png" width="300" height"215"/></a>
      </center>
      <p>
	  CoachingNotebook is an online <!-- social --> utility aiming to help you in solving of your problems, achieving your goals 
	  and making your dreams true. It brings you a set of tools, techniques and methods that can help you to drive your life.
	  CoachingNotebook bets on the fact that nobody else knows you better. Therefore only you can find the best solution in each
	  and every situation. It is you who knows your skills, capabilities and resources. In addition neither other person nor
	  a tool can benefit from your intuition and your subjective feelings. CoachingNotebook is versatile tool that may be used as:
      </p>
	  <ul>
	    <li>Life Designer</li>
	    <li>Problem Solver</li>
	    <li>Coaching Notebook</li>
	  </ul>

      CoachingNotebook comes in the hope that it will be useful and it will strive to help you in living of better, more productive and happier life.
	  <br/>


      <a name="whatItIs"></a>
	  <h2>Who are potential CoachingNotebook users?</h2>
	  CoachingNotebook is a tool for people who want to switch or improve their careers, plan to start their own business, want to change something or have more in their life, feel something is missing, 
	  look to improve their health and fitness or want to work on their relationships. Therefore it includes:
	  <ul>
	    <li>Active and motivated people</li>
	    <li>Innovators</li>
	    <li>Students</li>
	    <li>Executives</li>
	    <li>Businessmen</li>
	    <li>Life coaches</li>
	  </ul>

      <a name="whatItIsNot"></a>
	  <h2>What CoachingNotebook is not</h2>
	  CoachingNotebook is not:
	  <ul>
	    <li><b>ToDo list</b><br/>
	    CoachingNotebook is not replacement of your ToDo list or task manager. Goals and problems to be 
	    solved are typically developed in long term. Consider the difference between "buy 5 apples" and 
	    "move to a new apartment".
	    </li>
	    <li><b>Replacement for a live coach</b><br/>
	    If you have any experience with life/executive/business coaching, then it is clear to you that
	    live coach is irreplaceable. CoachingNotebook might be your coaching notebook or auto coaching tool,
	    but it will never replace your coach.
	    </li>
	  </ul>

	  
      <a name="howItWorks"></a>
	  <h2>How it Works</h2>
	  CoachingNotebook will not be giving you advices and it also will not solve the problems for you. Instead of 
	  this, it will guide you by offering you the questions that you have to answer yourself in order to find 
	  a way towards the desired result. It will learn you how to look at the problems from different perspectives
	  and explore new opportunities.
	  <br/>
	  <br/>
      Success will not come to you - you have to fight for it. Also you have to be open, sincere and trust in yourself
      - be self-confident. Whenever you want to achieve something, be positive - primarily think about what you want (not about
      what you don't want), what you have (not about what you miss), how you will reward yourself (not punish yourself), 
      how it can be achieved (not why it cannot be done). Simply try to find a way, not an excuse.
	  <br/>


      <a name="gettingStarted"></a>
	  <h1>Getting Started</h1>
	  <center>
        <a style="border-bottom: 1px none #fff;" title="CoachingNotebook on YouTube" href="http://www.youtube.com/user/MindForgerChannel" target="_blank">
        <img style="margin-left: 2em; border: 1px solid #000" src="../images/youtube-thumbnail.png" width="300" height"215"/></a>
      </center>
      <p>
      Watch the video with the first steps after you log in for the first time.
      </p>

	  <a name="tutorials"></a>
	  <h2>Tutorials</h2>
   <table style="width: 870px">
     <tr>
       <td style="width: 33%; text-align: center; font-size: xx-large;">Getting Started</td>
       <td style="width: 33%; text-align: center; font-size: xx-large;">G.R.O.W. Model</td>
       <td style="width: 33%; text-align: center; font-size: xx-large;">S.M.A.R.T. Goals</td>
     </tr>
     <tr>
       <td><a href="http://www.mindforger.com/tutorials/getting-started/" style="border-bottom: none;"><img border="0" title="Launch Getting Started tutorial..." style="width: 15em; height: 8em; margin-left: 1.2em;" src="./images/tutorial-getting-started.png"/></a></td>
       <td style="border-right: solid #ccc 1px; border-left: solid #ccc 1px;"><a href="http://www.mindforger.com/tutorials/grow-model/" style="border-bottom: none;"><img border="0" title="Launch G.R.O.W. Model tutorial..." style="width: 15em; height: 12em; margin-left: 1.2em;" src="./images/tutorial-grow-model.png"/></a></td>
       <td><a href="http://www.mindforger.com/tutorials/smart-goals/" style="border-bottom: none;"><img border="0" title="Launch S.M.A.R.T. Goals tutorial..." style="width: 15em; height: 12em; margin-left: 1.2em;" src="./images/tutorial-smart-goals.png"/></a></td>
     </tr>
     <tr>
       <td colspan="3"><br/></td>
     </tr>
     <tr>
       <td style="width: 33%; text-align: center; font-size: xx-large;">S.W.O.T. Analysis</td>
       <td style="width: 33%; text-align: center; font-size: xx-large;">Eisenhower Matrix</td>
       <td style="width: 33%; text-align: center; font-size: xx-large;">Wheel of Life</td>
     </tr>
     <tr>
       <td><a href="http://www.mindforger.com/tutorials/swot-analysis/" style="border-bottom: none;"><img border="0" title="Launch S.W.O.T. Analysis tutorial..." style="width: 15em; height: 12em; margin-left: 1.2em;" src="./images/tutorial-swot-analysis.png"/></a></td>
       <td style="border-right: solid #ccc 1px; border-left: solid #ccc 1px;"><a href="http://www.mindforger.com/tutorials/eisenhower-matrix/" style="border-bottom: none;"><img border="0" title="Launch Eisenhower Matrix tutorial..." style="width: 15em; height: 12em; margin-left: 1.2em;" src="./images/tutorial-eisenhower-matrix.png"/></a></td>
       <td><a href="http://www.mindforger.com/tutorials/wheel-of-life/" style="border-bottom: none;"><img border="0" title="Launch Wheel of Life tutorial..." style="width: 15em; height: 12em; margin-left: 1.2em;" src="./images/tutorial-wheel-of-life.png"/></a></td>
     </tr>
   </table>	  
      
	  <a name="alphaProgram"></a>
	  <h2>Early Access Program</h2>
	  CoachingNotebook is a preview. This is the reason why there are certain limitations:
	  
	  <ul>
	    <li><b>5</b> goals</li>
	    <li><b>50</b> questions per goal</li>
	    <li>No backup</li>	    
	  </ul> 

      However, if you find CoachingNotebook useful and have a good reason why you need more, please feel free to send me an <a target="_blank" href="mailto:feedback@mindforger.com">email</a> and your limits <b>will be extended</b>.




	  <a name="closedLoopGoalLifecycle"></a>
	  <h1>Closed Loop Goal Lifecycle</h1>	  
	  <div style='width: 100%; text-align: center;'><img src="./images/goal-lifecycle.png" border="0"/></div>
	  
	  Figure above depicts closed loop goal lifecycle and CoachingNotebook methodology for solving problems, challenges and goals.
	  As you can see, one of the important CoachingNotebook principles is learning from experiences and own mistakes.
	  
	  <a name="lifeDesigner"></a>
	  <h2>Life Designer</h2>
	  <div style='width: 100%; text-align: center;'><img src='../images/life-designer-overview.png' border='0'/></div>
	  <p>
	  To start with, you have to define where you want to go - your <b>life vision</b>, then determine where you are - your <b>wheel of life</b> and
	  finally the <b>journey</b> from where you are to where you want to be.
	  </p>
	  
	  <a name="lifeVision"></a>
	  <h3>Life Vision - Where I go</h3>
	  <p>
	  The ideal life vision is the life you dream about. In order to improve the satisfaction with your life, you need decide 
	  where you want to get - you need the ultimate goal. Imagine where you want to be in 1, 2, 5 or 10 years from now. Nobody 
	  else can do this exercise for you - this is your ideal and these are your dreams. The vision of life should capture all 
	  the areas of life that are important to you.
	  </p>
	  <p>
	  CoachingNotebook doesn't give any guidance in this step - except a template of the following form:
	  </p>
	  
	  <div style="padding-left: 0.3em; margin-left: 2em; margin-right: 2em; font-style: italic; border: 1px solid #ccc;">One day I would like to be ... I want to work ... hours a week as ... and spent most of the time ... 
	  I don't want to ... in the future. Also I would like to finally find ... and afford ...
	  It is 
	  </div>
	  
	  <p>
	  It's intentional, because any attempt to influence you would be contra-productive.
      </p>

	  
	  <a name="wheelOfLife"></a>
	  <h3>Wheel of Life - Where I am</h3>
	  <div style='width: 100%; text-align: center;'><img src='./images/wheel-of-life.png' border='0'/></div>
	  <p>	  
	  In the next step you will use the wheel of life to assess the reality i.e. where you are right now. Finally you will leverage checklist to improve the areas of your life that are not ideal by defining the goals that will get you to the ideal state.
	  </p>
	   
	  
	  <a name="goalSetting"></a>
	  <h2>Goal Setting Tool</h2>
	  <div style='width: 100%; text-align: center;'><img src='./images/goal-setting-tool.png' border='0'/></div>
	  <p>	  
	  When you don't know how you would like to change in your life, you may use <b>goal setting tool</b>. Just click <code>Improve</code> button next to the area of the life
	  that is not ideal. You will be asked a set of questions that should help you to identify the goals on your journey towards more productive and happier life.
	  </p>
	  
	  <a name="growModel"></a>
	  <h2>GROW Model</h2>
	  <div style='width: 100%; text-align: center;'><img src='./images/grow-model-overview.png' border='0'/></div>
	  CoachingNotebook uses <a href="http://en.wikipedia.org/wiki/GROW_model">GROW model</a> to guide you through the process of achieving the goal. GROW model
	  is a very popular methodology that used by coaches all around the world. A useful metaphor for GROW is a map: once you know 
	  where you are going (the goal) and where you are (current reality), you can explore possible ways of making the journey (options) 
	  and choose the best. Socrates used this technique more than 2300 years ago. He pretended ignorance in order to encourage others 
	  to express their views fully. CoachingNotebook is aiming to play the role of Socrates by offering you the questions you should answer
	  before making a decision.
	  <br/>
	  <br/>
      
      
	  
	  <%--
	  <a name="magicTriangle"></a>
	  <h2>Magic Triangle</h2>
	  <img src="../images/magic-triangle-small.png" align="right"/>
	  
	  <b>Fast, Good or Cheap - define your strategy and pick two.</b> When solving a problem or working on your goal, you must choose only two out of the three options to define you strategy. You can't have it all. It's a reality of life - you must deal with it.<br/><br/><b>Good + Fast = Expensive</b> ... choose good and fast to postpone every other challenge, cancel all other activities and stay up 25-hours a day just to get your job done. But don''t expect it to be cheap (in terms of resources in general, not just money).<br/><b>Good + Cheap = Slow</b> ... choose good and cheap when you want to do a great job with relatively low investment.  Your strategy is to work on the goal only when you have a free moment from other goals.<br/><b>Fast + Cheap = Inferior</b> ... choose fast and cheap if you don''t plan to pay extra attention to the goal. You are fine an inferior result delivered on time.
	   --%>
	  	  
	  

	  <a name="studyMaterials"></a>
	  <h2>Suggested Study Materials</h2>
      In order to use CoachingNotebook efficiently and correctly you may want to learn more about coaching and associated techniques.

<%--
      Books:
      <ul>
        <li></li>
      </ul>
 --%>      
      
      <p>
      Articles:
      </p> 
      <ul>
        <li>
          Wikipedia: 
          <a href="http://en.wikipedia.org/wiki/GROW_model" target="_blank">GROW model</a>, 
          <a href="http://en.wikipedia.org/wiki/Coaching" target="_blank">Coaching</a> and
          <a href="http://en.wikipedia.org/wiki/SWOT_analysis" target="_blank">SWOT analysis</a>
        </li>
        <li><a href='http://www.insideoutdev.com/site/history_grow_model' target="_blank">InsideOut Development</a></li>
      </ul>

      Video:
      <ul>
        <li><a href="http://www.youtube.com/user/MindForgerChannel" target="_blank">CoachingNotebookChannel's Favorites</a> on YouTube</li>
        <li><a href="http://beanoriginal.net/sketchcast-2-using-the-eisenhower-matrix/" target="_blank">Eisenhower Matrix Sketch Cast @ Be an Original</a></li>
      </ul>

      Authorities:
      <ul>
        <li><a href="http://www.alan-fine.com/blog/" target="_blank">Alan Fine</a></li>
        <li><a href="http://www.alexandercorporation.com/graham_alexander.php" target="_blank">Graham Alexander</a></li>      
      </ul>
	  
	  <br/>
      </td>
	</tr>
</table>
        
    <center>
    <br/>
     <div style="color: #777; width: 99%;">
       <div style="float: right;">
         <a style="color: #777;" href="mailto:info@mindforger.com">Contact</a> | 
         <a style="color: #777;" href="mailto:feedback@mindforger.com?subject=[CoachingNotebook] Feedback">Feedback</a> |
         <a style="color: #777;" href="mailto:feedback@mindforger.com?subject=[CoachingNotebook] Feature Request">Request&nbsp;Feature</a> | 
         <a style="color: #777;" href="mailto:info@mindforger.com?subject=Bug Report">Bug&nbsp;Report</a> | 
         <a style="font-weight: normal; cursor: pointer;" onclick="javascript:document.getElementById('creditsDiv').style.display='block';">Credits</a>
         <%-- . <a href="">Privacy</a> . <a href="">Credits</a><br/> --%>
       </div>
     </div>
    </center>
    
    <br/>
    
  </body>
</html>





<%
    	} else {
%>
<html>
  <head>
    <title>CoachingNotebook - Personal Development Tool - Help</title>
    <link rel="shortcut icon" href="../favicon.ico" />
    <link rel="alternate" type="application/rss+xml" title="RSS" href="http://www.facebook.com/feeds/page.php?id=172099806154112&format=rss20" />
    <meta name="description" content="CoachingNotebook is life designer, problem solver and coaching notebook. It is an online social utility that helps you to achieve your goals and make your dreams true."/>
    <meta name="keywords" content="notebook, coaching, GROW model, SWOT, SMART goals"/> 
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <%-- Google Analytics --%>
    <script type="text/javascript">
    
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-23166745-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
  
    </script>
  </head>
  <body>
   <% if(MindForgerKernel.showMaintenanceMessage) { %>
     <div id="maintenanceMessage" style="width: 100%; color: <%= MindForgerKernel.maintenanceMessageFgColor %>; background-color: <%= MindForgerKernel.maintenanceMessageBgColor %>; text-align: center; font-weight: bold;">
       <%= MindForgerKernel.maintenanceMessage %>
     </div>
   <% } %>
   <center id="signuppage" style="padding-top: 3em;">
   I work with passion to bring you CoachingNotebook soon. If you want to be among first who will get invitation, please drop me an <a href="mailto:invitation@mindforger.com?subject=Invitation Request">email</a>.
   </center>
  </body>
</html>
<%
}
%>
