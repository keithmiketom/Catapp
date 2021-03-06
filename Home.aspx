﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to the Cat App!</title>
<link href="Styles/Catscss.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>

</head>

<body id="index">
	<ul id="nav">
		<li><a href="#intro" title="Next Section"><img src="images/octo.png" width="50px" alt="Link" /></a></li>
	    <li><a href="#second" title="Next Section"><img src="images/octo.png" width="50px" alt="Link" /></a></li>
        <li><a href="#sixth" title="Next Section"><img src="images/octo.png" width="50px" alt="Link" /></a></li>
	    <li><a href="#third" title="Next Section"><img src="images/octo.png" width="50px" alt="Link" /></a></li>
	    <li><a href="#fifth" title="Next Section"><img src="images/octo.png"  width="50px" alt="Link" /></a></li>
	</ul>

	<div id="intro">
		<div class="story">
	    	<div class="float-left">
            <h1 class="head1">All About Cats</h1>
			<h2>I'm onto you...</h2>
	        <p>Cat's are watching, cats are knowing, cats are always there always present, waiting and watching, meowing nad purring, sleeping and hiding, and rolling around.</p>
	        </div>
	    </div> <!--.story-->
	</div> <!--#intro-->

	<div id="second">
		<div class="story"><div class="bg"></div>
	    	<div class="float-right">
	            <h2>Some People Call him Maurice</h2>
	            <p>He loves Wool</p><br /><br /><br />
	            <p>Maurice has an idea for a new e-commerce web application. What is it about, Maurice? "Wool." So... a clothing store? Argyle sweaters? "No, Just wool" Maurice replies as his fat sweaty ass rests on your hand. He leans in closer and you can smell a ploughmans sandwich on his breath. He grips his reusable Aldi bag tighter and wheezes. "Just wool." </p>
                <p>He has a litter of 10 kittens, all named after types of wool, thought they probably came from the milkman. He likes to think he can code, and is master of the Wool Wide Web</p>
	        </div>
	    </div> <!--.story-->

	</div> <!--#second-->
	<div id="sixth">
		<div class="story"><div class="bg"></div>
	    	
	            <h2>&lt;3</h2>
	            <div id="gallery" class="content">
			<h1>Cat Gallery!</h1>
			<div class="rm_wrapper">
				<div id="rm_container" class="rm_container">
					<ul>
						<li data-images="rm_container_1" data-rotation="-15"><img src="images/1.jpg"/></li>
						<li data-images="rm_container_2" data-rotation="-5"><img src="images/2.jpg"/></li>
						<li data-images="rm_container_3" data-rotation="5"><img src="images/3.jpg"/></li>
						<li data-images="rm_container_4" data-rotation="15"><img src="images/4.jpg"/></li>
					</ul>
					<div id="rm_mask_left" class="rm_mask_left"></div>
					<div id="rm_mask_right" class="rm_mask_right"></div>
					<div id="rm_corner_left" class="rm_corner_left"></div>
					<div id="rm_corner_right" class="rm_corner_right"></div>
					<h2>NCI HDSWTECH Cats</h2>
					<div style="display:none;">
						<div id="rm_container_1">
							<img src="images/1.jpg"/>
							<img src="images/5.jpg"/>
							<img src="images/1.jpg"/>
							<img src="images/5.jpg"/>
						</div>
						<div id="rm_container_2">
							<img src="images/2.jpg"/>
							<img src="images/6.jpg"/>
							<img src="images/2.jpg"/>
							<img src="images/6.jpg"/>
						</div>
						<div id="rm_container_3">
							<img src="images/3.jpg"/>
							<img src="images/7.jpg"/>
							<img src="images/3.jpg"/>
							<img src="images/7.jpg"/>
						</div>
						<div id="rm_container_4">
							<img src="images/4.jpg"/>
							<img src="images/8.jpg"/>
							<img src="images/4.jpg"/>
							<img src="images/8.jpg"/>
						</div>
					</div>
				</div>
				<div class="rm_nav">
					<a id="rm_next" href="#" class="rm_next"></a>
					<a id="rm_prev" href="#" class="rm_prev"></a>
				</div>
				<div class="rm_controls">
					<a id="rm_play" href="#" class="rm_play">Play</a>
					<a id="rm_pause" href="#" class="rm_pause">Pause</a>
				</div>
			</div>
		</div>
		   





	       
	    </div> <!--.story-->

	</div> <!--#second-->
  
	<div id="third">
		<div class="story">
	    	<div class="float-left">
	        	<h2>Ginger cats</h2>
	            <p>Research shows ginger moggies are cat owners’ favourites, because they are perceived as friendly and lovable. </p>
	            <p>In contrast, white cats are seen as aloof and distant, tabby cats as intolerant and black cats - as befits their depiction in folklore - as unlucky and mysterious.The two primary color genes in cats are black and red. The reason lies in the genes and chromosomes the cat has inherited. The red gene is carried on the X chromosome; for this reason ginger-colored cats are usually male with females existing at a ratio of 1 out of every 5. Ginger cats are said to be spirited and fiery, however they have personalities as warm as their coat color, and are mellow, loving cats.</p>
	        </div>
	    </div> <!--.story-->
	</div> <!--#third-->

	<div id="fifth">
		<div class="story">

	        <h2>Take a chance on me!</h2>
            <div class="roulette">
            <div id="pageWrapper">

		<div id="rollers">
			<div id="rollerBack">
				<img id="roller1" class="fm" alt="A fruit machine tumbler" src="images/1.gif" />
				<img id="roller2" class="fm" alt="A fruit machine tumbler" src="images/1.gif" />
				<img id="roller3" class="fm" alt="A fruit machine tumbler" src="images/1.gif" />
			</div>
		</div>

		<div id="lever">
			<img class="lever" id="leverpic" alt="Fruit machine lever" src="images/navs/lever1.jpg" onclick="startgame(this);" />

		</div>	

	<div id="sound">
	</div></div>
            </div>
	        <!--roulette thing here -->
	    </div> <!--.story-->
          <span class="links"><a href="About.aspx" alt="cats link" class="entre">Enter Site</a></span>
	</div> <!--#fifth-->
<script type="text/javascript" src="Scripts/jquery.parallax-1.1.3.js"></script>
<script type="text/javascript" src="Scripts/alertify.min.js"></script>
<script type="text/javascript" src="Scripts/jquery.localscroll-1.2.7-min.js"></script>
<script type="text/javascript" src="Scripts/jquery.scrollTo-1.4.2-min.js"></script>
<script type="text/javascript" src="Scripts/fruitmachine.js"></script>
<script type="text/javascript" src="Scripts/jquery.lettering-0.6.1.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#nav').localScroll(800);

        //.parallax(xPosition, speedFactor, outerHeight) options:
        //xPosition - Horizontal position of the element
        //inertia - speed to move relative to vertical scroll. Example: 0.1 is one tenth the speed of scrolling, 2 is twice the speed of scrolling
        //outerHeight (true/false) - Whether or not jQuery should use it's outerHeight option to determine when a section is in the viewport
        $('#intro').parallax("50%", 0.1);
        $('#second').parallax("50%", 0.1);
        $('.bg').parallax("50%", 0.4);
        $('.bg2').parallax("50%", 0.2);
        $('#third').parallax("50%", 0.3);
        $('#sixth').parallax("50%", 0.1);

    })
    $(document).ready(function () {
        $(".head1").lettering();
    });
</script>

		<script type="text/javascript" src="Scripts/jquery.transform-0.9.3.min_.js"></script>
		
	<script type="text/javascript" src="Scripts/jquery.RotateImageMenu.js"></script>
  
</body>
</html>
