<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>lobby</title>
<style>
        h1{text-align: center;}
       #main{
       width:600px;
       height:300px;
       align:center;
       }
       #user{
       width:300px;
       height:300px;
       float : left;
       box-sizing: border-box;
       }
       #room{
       width:300px;
       height:300px;
       float:right;
       box-sizing: border-box;
       }
       .radio_room{
            background-color :lightyellow;
        }
        .radio_user{
            background-color :lightyellow;
        }
       
    </style>
</head>
<body>
<h1>Lobby</h1>
<div id="main" style="border:3px solid;margin:0 auto;text-align:center">
<div id="user" style = "border : 2px dashed red">
<h3>USER LIST</h3>
<div class="radio_user">
<br/><br/>

<br/><br/><br/><br/>
</div>
<br/><br/> 
<br/><br/>
</div>
<div id="room" style = "border : 2px dashed red">
<h3>ROOM CHOISE</h3>

<div class="radio_room">
<br/><br/>
<input type="radio" name = "room_choise" value="ROOM1">ROOM1
<input type="radio" name = "room_choise" value="ROOM2">ROOM2
<br/><br/><br/><br/>
</div>
<br/><br/>
<input type="button" value="START"
			onclick="location.href='game'">
</div>

</div>
<br/>
<input type = "button" value="START" 
onclick="location.href='game'">
</body>
</html>