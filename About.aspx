<%@ Page Language="VB" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>The Cat Application</title>
    <link href="Styles/Catscss.css" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css' />
        
</head>
<body id="body">
    <form id="form1" runat="server">

<header id="menu">
    	<h2 class="fancy_title">The Cat App</h2>
        <nav>
		<ul>
        	<li> <asp:Hyperlink ID="Hyperlink1" NavigateUrl="~/Cats.aspx" Runat="server" Title="Cats" >Cats</asp:Hyperlink></li>
            <li><a href="Catlightbox.aspx" title="gallery page">Gallery</a></li>
            <li><a href="Cat Quiz.aspx" title="test your knowledge with our quiz">Quiz</a></li>
            <li><a href="Dressup.aspx" title="dress up game ">Dress Up Game</a></li>
		</ul>
	</nav>
    </header>
    
	<div id="content">

    <div id="splash">
    <p>this is content</p>
    </div>
    
     </div><!--end of content--></div>
          <!-- <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>-->
          <script src="Scripts/jquery-1.7.2.min.js" type="text/javascript"></script>
           <script src="Scripts/jquery-ui-1.10.2.custom.min.js" type="text/javascript"></script>
           <script src="Scripts/main.js" type="text/javascript"></script>
           <script src="Scripts/ajax.js" type="text/javascript"></script>
             <script type="text/javascript" src="Scripts/alertify.min.js"></script>
             <script src="Scripts/jquery.lettering-0.6.1.min.js" type="text/javascript"></script>
             <script src="Scripts/lightbox.js" type="text/javascript"></script>
             <script>
                 $(document).ready(function () {
                     $(".fancy_title").lettering().children("span").css({ 'display': 'inline-block', '-webkit-transform': 'rotate(-15deg)' });
                 });
             </script>
          
             
           
            
<footer>
cats
</footer>
    </form>
</body>
</html>
