﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Cat gallery.aspx.vb" Inherits="Cat_gallery" %>

<!DOCTYPE html>
<html>
<head>
        <title>Cat Gallery</title>
        <link rel="stylesheet" type="text/css" href="Styles/Catscss.css" />
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css' />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
		<script type="text/javascript" src="Scripts/jquery.transform-0.9.3.min_.js"></script>
		<script type="text/javascript" src="Scripts/jquery.mousewheel.js"></script>
		<script type="text/javascript" src="Scripts/jquery.RotateImageMenu.js"></script>
    </head>
    <body id="gallery">
		<div class="content">
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
		
		
    </body>
</html>