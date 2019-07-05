<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page contentType="text/html; charset=ISO-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Blog</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/Logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
    <script src="js/jquery.equalheights.js"></script>
    <script type="text/javascript">
    <%
    ServletContext servletContext = getServletContext();
	String contextPath = servletContext.getRealPath(File.separator);
	%>
	function playSound(obj) {
    	var t = $(obj).text();
        var song = "music/"+t;
        document.getElementById("MusicPlayer").innerHTML=
            "<embed src=\""+song+"\" hidden=\"false\" autostart=\"true\" loop=\"false\" />";
    }
    </script>
    <!--[if lt IE 9]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"
                 height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <script src="js/html5shiv.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
    <![endif]-->
</head>
<body>
<div class="page">
    <!--========================================================
                              HEADER
    =========================================================-->
<header id="header">
			    <div id="stuck_container">
			        <div class="container">
			            <div class="row">
			                <div class="grid_12">
			                    <div class="brand put-left">
			                        <h1>
			                            <a href="index.html">
			                                <img src="images/logo.png" alt="Logo"/>
			                            </a>
			                        </h1>
			                         
			                    </div>
			                    
			                    <nav class="nav put-right">
			                        <ul class="sf-menu">
			                            <li class="current"><a href="index.html">Home</a></li>
			                            <li>
			                                <a href="#">About</a>
			                                <ul>
			                                	<li><a href="yoga_is_not_a_myth.html">Yoga is not a myth</a>
			                                    <li><a href="yogacharyaVinayak.html">Yogacharya Vinayak</a></li>
			                                    <li><a href="pratibhaVinayakJoshi.html">Pratibha Vinayak Joshi</a>
			                                    </li>
			                                </ul>
			                            </li>
			                            <li>
			                            	<a href="#">Services</a>
			                            	<ul>
			                                	<li><a href="Packages.html">Packages</a></li>
			                                    <li><a href="Workshops.html">Work shops</a></li>
			                                </ul>
			                            </li>
			                            <li>
			                            	<a href="#">Blog</a>
			                            	<ul>
			                                	<li><a href="Audio.html">Audio</a></li>
			                                    <li><a href="Interviews.html">Interviews</a></li>
			                                    <li><a href="Kriyas.html">Kriyas</a></li>
			                                </ul>
			                            </li>
			                            <li><a href="contacts.html">Contacts</a></li>
			                        </ul>
			                    </nav>
			                </div>
			            </div>
			        </div>
			    </div>
			</header>
    <!--========================================================
                              CONTENT
    =========================================================-->
    <section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - September08, 2014!</div>
        <div class="container">
	        <div class="row wrap_1">
	        	<h2 class="header_2 indent_3">Audio files</h2>
		        <div class="grid_6">
		            <div class="wrap_6">
		            
		            		<div>
                       		   		<img alt="Mp3" src="images/MP3.png" height="30px" width="30px">
                                	<audio controls>
					  					<source src="music/Music 1.mp3" type="audio/mpeg" >
									</audio>
                             </div>
		            <!-- 
	                      <%
	                       File folder = new File(contextPath+"/music");
	               		   System.out.print(folder.getAbsolutePath());
	                       File[] listOfFiles = folder.listFiles();
	               		   System.out.println(listOfFiles);
                           for (int i = 0; i < listOfFiles.length; i++) {
                               System.out.println("File " + listOfFiles[i].getName());
                        	   %>
                        	   <div>
                       		   		<img alt="Mp3" src="images/MP3.png" height="30px" width="30px">
                                	<a href="#" onclick="playSound(this)" ><%=listOfFiles[i].getName()%></a> <br>
                               </div>
                            <% 
	                        }
	                       %>
	                        -->
		            </div>
		        </div>
		        <div class="grid_6">
		                <div class="wrap_6">
			                   <div id = MusicPlayer></div>
		                </div>
		        </div>
        	</div>
        </div>
        
        <div class="container">
	        <div class="row wrap_1">
	        	<h2 class="header_2 indent_3">Audio files</h2>
		        <div class="grid_6">
		            <div class="wrap_6">
	                      <%
	                       folder = new File(contextPath+"/music");
	               		   System.out.print(folder.getAbsolutePath());
	                       listOfFiles = folder.listFiles();
                           for (int i = 0; i < listOfFiles.length; i++) {
                               System.out.println("File " + listOfFiles[i].getName());
                        	   %>
                        	   <div>
                       		   		<img alt="Mp3" src="images/MP3.png" height="30px" width="30px">
                                	<a href="#" onclick="playSound(this)" ><%=listOfFiles[i].getName()%></a> <br>
                               </div>
                            <% 
	                        }
	                       %>
		            </div>
		        </div>
		        <div class="grid_6">
		                <div class="wrap_6">
			                   <div id = MusicPlayer></div>
		                </div>
		        </div>
        	</div>
        </div>
        
        
        <div class="container">
            <div class="row wrap_9 wrap_4 wrap_10">
                <div class="grid_12">
                    <div class="header_1 wrap_3 color_3">
                        Get in Touch
                    </div>
                    <div class="box_3">
                        <ul class="list_1">
                            <li><a class="fa fa-twitter" href="#"></a></li>
                            <li><a class="fa fa-facebook" href="#"></a></li>
                            <li><a class="fa fa-google-plus" href="#"></a></li>
                            <li><a class="fa fa-pinterest" href="#"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
    
<!--========================================================
                          FOOTER
=========================================================-->
<footer id="footer" class="color_9">
    <div class="container">
        <div class="row">
            <div class="grid_12">
                <p class="info text_4 color_4">
                    © <span id="copyright-year"></span> | <a href="#">Privacy Policy</a> <br/>
                </p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
