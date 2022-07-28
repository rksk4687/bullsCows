<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      *{margin:0; padding:0;}
      .game{
        width:330px;
        height: 500px;
        text-align: center;
        margin:0 auto;
      }
      .top{font-size: 18px; padding:15px 0; 
        background:#0084FF; color:white; text-align: center;}
        .play{padding-bottom: 0px;}
      textarea{
        width: 327px;
        height: 480px;
      }
      .text{
        width:250px;
        height:25px;
      }
      
    </style>
  </head>
  <body>
    <div class="game">
      <div class="top">
        GAME
      </div>
      <div class="play">
          <ul></ul>
        </div>
        <div class="input_div">
          <textarea placeholder="guess my number"></textarea>
          <input type="text" class="text">
          <input type="button" value="SEND" class="send" 
          style="width:70px;height:28px;background-color:#0084FF">
        </div>
      </div>
    </div>
  </body>
</html>
