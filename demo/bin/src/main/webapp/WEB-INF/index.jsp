<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <title>Index</title>
    <style>
       h1{text-align: center;}
        .div_main{

        }
        .div_main{
            background-color :lightyellow;
        }
        .div_rule{
            background-color: white;
        }
    </style>

</head>
<body>
<h1>Bulls and Cows</h1>
<div class="div_main"style="border:3px solid" align="center">
<!--<h3>Please sign in to use the game</h3>
<input type="button" value="Signin">
-->
<h2>Rule</h2>
<div class="div_rule" style = "border:1px dotted" align="left">

<h3>Bulls and Cows is a 2 player game. One player thinks of a number,
     while the other player tries to guess it.</h3>
<h4> ● The number to be guessed must be a 3 digit number, 
    using only digits from 1 - 9, each digit atmost once. 
    <br>e.g. 123 is valid, 012 is not valid, 988 is not valid, 987 is valid.</h4>
<h4> ● For every guess that the player makes, 
    he gets 2 values - the number of bulls and the number of cows. 
    1 bull means the guess contains and the target number have 1 digit in common, 
    and in the correct position. 
    1 cow means the guess and the target have 1 digit in common,
     but not in correct position.
    <br> e.g. Let the target be 123. 
    Guessing 312 will give 0 bulls and 3 cows. 
    321 will give 1 bull and 2 cows. 3 bulls means you have won the game! </h4>
<br/><br/>
</div>
<h3>Please sign in to use the game</h3>
<input type="button" value="Signin">
<br/><br/>
</div>

</body>
</html>