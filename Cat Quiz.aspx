<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Cat Quiz.aspx.vb" Inherits="Cat_Quiz" %>

<!DOCTYPE html>

<html>
<head runat="server">
<link href="Styles/style.css" rel="Stylesheet" />
<link href="Styles/alertify.core.css" rel="stylesheet" />
<link href="Styles/alertify.default.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="quiz" class="quiz">
<h1>The Cat Quiz</h1>
<div id="countdown"></div>
<div id="score">
</div>


<div id="question">
</div>
<ul id="answers">
</ul>
</div>
<div id="winner"></div> 
<audio src="rumble.mp3" id="play">
</audio>


<div id="progressBar"></div>



<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="Scripts/alertify.min.js"></script>

<script src="Scripts/quiz.js"></script>
    </form>
</body>
</html>
