<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <link href="/blog/css/pages/editPage.css" rel="stylesheet">
    <link href="/blog/css/common/position.css" rel="stylesheet">
        
<!--     <link href="/blog/css/bootstrap/bootstrap.min.css" rel="stylesheet"> -->
<!--     <link href="/blog/css/bootstrap/bootstrap-responsive.css" rel="stylesheet"> -->

<!--     <script src="/blog/js/jquery/jquery-1.11.3.js"></script> -->
<!--     <script src="/blog/js/bootstrap/bootstrap.min.js"></script> -->
   
  </head>
<body>
	<div>
		<div id="title" align="center"><h1>This is the edit page.</h1></div>
		
		<div id="content" contenteditable="true" class="clear contentTextbox centre"></div>
		
		<div id="contentDisplay" class="contentDisplay clear centre"></div>
		
		<div align="center">
			<input type="button" value="Save" onclick="save()" class="centre"></input>
		</div>
		<div align="center">
			<input type="button" value="Bold" onclick="bold()" class="centre"></input>
			
			 <button onclick="InsertImage()">InsertImage</button> 
		</div>
	</div>
</body>
</html>
    
<script type="text/javascript">
function save(){
	var message = document.querySelectorAll("#content")[0].innerHTML;
	alert(message);
	document.querySelectorAll("#contentDisplay")[0].innerHTML = message;
}

 var editer=document.getElementById('content');
 function InsertImage(){
    ImagePath = window.prompt('图片URL:', '');
    editer.focus();
    document.execCommand('InsertImage', false, ImagePath);
 }

function bold(){
	var selectedText = document.getSelection().getRangeAt(0);
	alert(selectedText);
	
	var span = document.createElement("span");
	span.setAttribute("style", "font-weight:bold");
	selectedText.surroundContents(span);
}
</script>