<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>lobby</title>
    <style>
      h1 {
        text-align: center;
      }
      #main {
        width: 330px;
        height: 500px;
        text-align: center;
      }
      .top {
        font-size: 18px;
        padding: 15px 0;
        background: #0084ff;
        color: white;
        text-align: center;
      }
      .play {
        padding-bottom: 0px;
      }
      #user {
        width: 165px;
        height: 400px;
        float: left;
        box-sizing: border-box;
      }
      #room {
        width: 165px;
        height: 400px;
        float: right;
        box-sizing: border-box;
      }
      .radio_room {
        background-color: #EFEFEF;
      }
      .radio_user {
        background-color: #EFEFEF;
      input {
        display: table-cell;
        vertical-align: middle;
      }
    </style>
  </head>
  <body>
    <div
      id="main"
      style="border: 1px solid #0084ff; margin: 0 auto; text-align: center"
    >
      <div class="top">Lobby</div>
      <div id="user" style="border: 2px dotted #0084ff">
        <h3>USER LIST</h3>
        <div class="radio_user">
		<c:forEach var="tmp" items="${currSession }">
        <li>${tmp }</li>
    	</c:forEach>
        </div>
        <br /><br />
        <br /><br />
      </div>
      <div id="room" style="border: 2px dotted #0084ff">
        <h3>ROOM CHOISE</h3>

        <div class="radio_room">
          <br /><br />
          <input type="radio" name="room_choise" value="ROOM1" />ROOM1
          <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
          <br /><br />
        </div>
        <br /><br />
      </div>
      <input
        type="button"
        value="START"
        onclick="location.href='/game'"
        style="
          width: 70px;
          height: 30px;
          margin-top: 10px;
          background-color: #0084ff;
        "
      />
    </div>
    <br />
  </body>
</html>
