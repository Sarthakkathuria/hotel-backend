<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	.mainHeader{
    background-color: rgb(237, 106, 241);
    height: 180px;
}
.header{
    /* display:flex;
    justify-content: space-evenly;
    background-color: lightblue; */
    position: sticky;
    top:0px;
    z-index:50;
    display:flex;
    padding: 10px;
    /* height: 150px; */
    justify-content: space-evenly;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    background-color: rgb(237, 106, 241);
}
.header-left{
    padding: 15px;
    
}
.header-right{
    display: flex;
    justify-content: space-evenly;
}
.ptag{
    padding:7px;
}
.language-img{
    padding: 7px;
    margin: 2px;
    height: auto;
    width: auto;

    border-radius: 900px;
     
}
.button{
    flex-grow: 1;
    /* background: none; */
    align-items: center;
    cursor: pointer;
    border-width: 2px;
    padding: 10px;
    /* margin:7px; */
    margin-left: 6px;
    height: 60px;
    border-radius: 10px;
    font-weight: 500;
}

.bb1{
    opacity: 0.8;
    
}

.button :hover{
    /* box-shadow: 0 0 2px 1px rgba(193, 174, 224, 0.5).5).5); */
    opacity: 0.5;
}


.headerTwo{
    display: flex;
    justify-content: start;
    margin-top: 5px;
    margin-right: 150px;
    margin-left:150px;
    
    /* border: solid red 2px; */
    
    /* padding: 5px; */
}

.buttons{
    display: flex;
    align-items: center;
    border-width: 3px;
    padding: 15px;
    cursor: pointer;
    
    
}
.buttons:hover{ 
    /* background: lightgray; */
    opacity: 0.5;
}
.b1{
    border-bottom: solid gray 2px; 
}
.bttn{
    border:none;
    background-color: transparent;
    font-size: 20px;
    font-weight: 500;
    text-decoration: none;

}
.img{
    height: 25px;
    width: 25px;
    /* border: solid red 2px; */
}

.headerThree{
    margin-top: 5px;
    margin-right: 150px;
    margin-left:150px;
}

.h1{
    padding-top: 20px;
    padding-left:10px;
    font-size: 48px;
    font-family: Avenir Next,BlinkMacSystemFont,-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif;
    font-weight:bold;
}
.h3{
    font-size: 30px;
    line-height: 32px;
    padding-left:12px;
    font-weight:bold;
}
.main{
    display: flex;
    width:100%;
    margin: 50px;;
}
.left{
    width:60%;
    
}
.left-first{
    display: flex;
    border-bottom: solid gray 2px;
    margin-left: 150px;
    margin-right: 70px;
}
.left-first-left{
    /* border: solid black 2px; */
    padding-right: 120px;
    padding-bottom: 7px;
    padding-left:25px
    
}
.left-first-left>p{
    font-size: 19px;
    /* font-weight: bold; */
}
.left-first-right{
    margin-top: 17px;
    padding-left: 70px;
}
img{
    border-radius: 50%;
    /*  */
    
}
.second{
    margin-left: 150px;
    margin-right: 70px;
    margin-top: 25px;
    padding: 20px;
}
.icon,.text{
    
    vertical-align: middle;
    display:inline-block;
}
/* .right  */
.desc{
    border-bottom: solid gray 2px;
    border-top: solid gray 2px;
    margin-top: 50px;
    margin-left: 150px;
    margin-right: 70px;
    padding: 20px;
    
}
.third{
    margin-left: 150px;
    margin-right: 70px;
    margin-top: 25px;
    padding: 20px;
}
.right{
    width:300px;
    height: 330px;
    border: solid black 2px; 
    margin-left: 60px;
    border-radius: 20px;
    box-shadow: 2px 2px 7px 2px #888888;
}
.horizontal{
    display:flex; 
    justify-content: space-between;   
    margin-left: 15px; 
    margin-top: 10px;
    margin-right: 10px;
    font-size: medium;
}
/* .bttn{
    position:relative;
} */
.bttn1{
    border: solid black 2px;
    
    width: 250px;
    height: 60px;
    border-radius: 7px;
    background-color: white;
    cursor: pointer;
    font-size: large;
    font-weight: bold;
    color:black;
    margin-left: 150px;
    margin-right: 70px;
    margin-top: 25px;
    padding: 20px;
}
.hor1{
    display: flex;
    margin-right:2px;
}
.hor1>svg{
    margin-top: 18px;
    margin-right: 5px;
    color:  #FF385C;
}
.hor1>p{
    margin-right: 2px;
}
.bttn button{
    border: solid black 2px;
    width: 90%;
    height: 45px;
    border-radius: 7px;
    background-color: #FF385C;
    cursor: pointer;
    font-size: large;
    font-weight: bold;
    color:white;
    margin-left: 15px;
    
}

.bttn p{
    color:gray;
    margin-left: 60px;
    font-size: medium;
    margin-top: 4px;
}
.totalp{
    margin-top: -15px;
    /* margin-bottom: 5px; */
}
.price1{
    display: flex;
    justify-content: space-around;
    margin-top: -15px;
    margin-bottom: -15px;
}
.und{
    text-decoration-line: underline;
    text-decoration-color: grey;
}
.total{
    display: flex;
    justify-content: space-around;  
    border-top: solid black 2px;
    margin-top: 10px;
    font-weight: bold;
    
}

 .row img{
 margin-top:50px;
  border-radius: 9px;
  
}

.texts,.tre{
    display: inline-block; 
    vertical-align: middle; 
    
} 

.ter{
    display:inline-block; 
    vertical-align: middle;
    margin: 20px;}

    
    .fa {
        padding: 20px;
        font-size: 30px;
        width: 0px;
        text-align: center;
        text-decoration: none;
      }
      
      /* Add a hover effect if you want */
      .fa:hover {
        opacity: 0.7;
      }
      
      /* Set a specific color for each brand */
      
      /* Facebook */
      .fa-facebook {
       
        color:black;
      }
      
      .fa-twitter {
        
        color:black;
      }
      .js{
        margin-left: 150px;
      }
      .footer{
        border-top: solid gray 2px;
        margin-top: 30px;
        padding-left: 250px;
      }

</style>
</head>
<body>
<div class = "mainHeader">
<div class="header">
    <div class="header-left">
        <svg width="102" height="32" fill="currentcolor" style="display:block"><path d="M29.24 22.68c-.16-.39-.31-.8-.47-1.15l-.74-1.67-.03-.03c-2.2-4.8-4.55-9.68-7.04-14.48l-.1-.2c-.25-.47-.5-.99-.76-1.47-.32-.57-.63-1.18-1.14-1.76a5.3 5.3 0 00-8.2 0c-.47.58-.82 1.19-1.14 1.76-.25.52-.5 1.03-.76 1.5l-.1.2c-2.45 4.8-4.84 9.68-7.04 14.48l-.06.06c-.22.52-.48 1.06-.73 1.64-.16.35-.32.73-.48 1.15a6.8 6.8 0 007.2 9.23 8.38 8.38 0 003.18-1.1c1.3-.73 2.55-1.79 3.95-3.32 1.4 1.53 2.68 2.59 3.95 3.33A8.38 8.38 0 0022.75 32a6.79 6.79 0 006.75-5.83 5.94 5.94 0 00-.26-3.5zm-14.36 1.66c-1.72-2.2-2.84-4.22-3.22-5.95a5.2 5.2 0 01-.1-1.96c.07-.51.26-.96.52-1.34.6-.87 1.65-1.41 2.8-1.41a3.3 3.3 0 012.8 1.4c.26.4.45.84.51 1.35.1.58.06 1.25-.1 1.96-.38 1.7-1.5 3.74-3.21 5.95zm12.74 1.48a4.76 4.76 0 01-2.9 3.75c-.76.32-1.6.41-2.42.32-.8-.1-1.6-.36-2.42-.84a15.64 15.64 0 01-3.63-3.1c2.1-2.6 3.37-4.97 3.85-7.08.23-1 .26-1.9.16-2.73a5.53 5.53 0 00-.86-2.2 5.36 5.36 0 00-4.49-2.28c-1.85 0-3.5.86-4.5 2.27a5.18 5.18 0 00-.85 2.21c-.13.84-.1 1.77.16 2.73.48 2.11 1.78 4.51 3.85 7.1a14.33 14.33 0 01-3.63 3.12c-.83.48-1.62.73-2.42.83a4.76 4.76 0 01-5.32-4.07c-.1-.8-.03-1.6.29-2.5.1-.32.25-.64.41-1.02.22-.52.48-1.06.73-1.6l.04-.07c2.16-4.77 4.52-9.64 6.97-14.41l.1-.2c.25-.48.5-.99.76-1.47.26-.51.54-1 .9-1.4a3.32 3.32 0 015.09 0c.35.4.64.89.9 1.4.25.48.5 1 .76 1.47l.1.2c2.44 4.77 4.8 9.64 7 14.41l.03.03c.26.52.48 1.1.73 1.6.16.39.32.7.42 1.03.19.9.29 1.7.19 2.5zM41.54 24.12a5.02 5.02 0 01-3.95-1.83 6.55 6.55 0 01-1.6-4.48 6.96 6.96 0 011.66-4.58 5.3 5.3 0 014.08-1.86 4.3 4.3 0 013.7 1.92l.1-1.57h2.92V23.8h-2.93l-.1-1.76a4.52 4.52 0 01-3.88 2.08zm.76-2.88c.58 0 1.09-.16 1.57-.45.44-.32.8-.74 1.08-1.25.25-.51.38-1.12.38-1.8a3.42 3.42 0 00-1.47-3.04 2.95 2.95 0 00-3.12 0c-.44.32-.8.74-1.08 1.25a4.01 4.01 0 00-.38 1.8 3.42 3.42 0 001.47 3.04c.47.29.98.45 1.55.45zM53.45 8.46c0 .35-.06.67-.22.93-.16.25-.38.48-.67.64-.29.16-.6.22-.92.22-.32 0-.64-.06-.93-.22a1.84 1.84 0 01-.67-.64 1.82 1.82 0 01-.22-.93c0-.36.07-.68.22-.93.16-.3.39-.48.67-.64.29-.16.6-.23.93-.23a1.84 1.84 0 011.6.86 2 2 0 01.21.94zm-3.4 15.3V11.7h3.18v12.08h-3.19zm11.68-8.9v.04c-.15-.07-.35-.1-.5-.13-.2-.04-.36-.04-.55-.04-.89 0-1.56.26-2 .8-.48.55-.7 1.32-.7 2.31v5.93h-3.19V11.69h2.93l.1 1.83c.32-.64.7-1.12 1.24-1.48a3.1 3.1 0 011.81-.5c.23 0 .45.02.64.06.1.03.16.03.22.06v3.2zm1.28 8.9V6.74h3.18v6.5c.45-.58.96-1.03 1.6-1.38a5.02 5.02 0 016.08 1.31 6.55 6.55 0 011.6 4.49 6.96 6.96 0 01-1.66 4.58 5.3 5.3 0 01-4.08 1.86 4.3 4.3 0 01-3.7-1.92l-.1 1.57-2.92.03zm6.15-2.52c.57 0 1.08-.16 1.56-.45.44-.32.8-.74 1.08-1.25.26-.51.38-1.12.38-1.8 0-.67-.12-1.28-.38-1.79a3.75 3.75 0 00-1.08-1.25 2.95 2.95 0 00-3.12 0c-.45.32-.8.74-1.09 1.25a4.01 4.01 0 00-.38 1.8 3.42 3.42 0 001.47 3.04c.47.29.98.45 1.56.45zm7.51 2.53V11.69h2.93l.1 1.57a3.96 3.96 0 013.54-1.89 4.1 4.1 0 013.82 2.44c.35.76.54 1.7.54 2.75v7.24h-3.19v-6.82c0-.84-.19-1.5-.57-1.99-.38-.48-.9-.74-1.56-.74-.48 0-.9.1-1.27.32-.35.23-.64.52-.86.93a2.7 2.7 0 00-.32 1.35v6.92h-3.16zm12.52 0V6.73h3.19v6.5a4.67 4.67 0 013.73-1.89 5.02 5.02 0 013.95 1.83 6.57 6.57 0 011.59 4.48 6.95 6.95 0 01-1.66 4.58 5.3 5.3 0 01-4.08 1.86 4.3 4.3 0 01-3.7-1.92l-.09 1.57-2.93.03zm6.18-2.53c.58 0 1.09-.16 1.56-.45.45-.32.8-.74 1.09-1.25.25-.51.38-1.12.38-1.8a3.42 3.42 0 00-1.47-3.04 2.95 2.95 0 00-3.12 0c-.44.32-.8.74-1.08 1.25a3.63 3.63 0 00-.38 1.8 3.42 3.42 0 001.47 3.04c.47.29.95.45 1.55.45z"></path></svg>
    </div>
    <div class = "header-right">
        <p class="ptag">INR</p>
        <img class="language-img" src="https://cf.bstatic.com/static/img/flags/new/48-squared/in/20aa535a5d3c505dd02fea275ed1a36c0fb1fe08.png" alt="">
        <button class = "button bb1">List Your Property</button>
        <button class="button">Register</button>
        <button class="button">Sign in</button>
    </div>
</div>
<div>
    <div class="headerTwo">
        <div class = "buttons b1">
            <div class = "img">
            <span class="Icon-module__root___2DICj Tab-module__icon___193ka Icon-module__root--size-medium___U9Qkb" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M2.75 12h18.5c.69 0 1.25.56 1.25 1.25V18l.75-.75H.75l.75.75v-4.75c0-.69.56-1.25 1.25-1.25zm0-1.5A2.75 2.75 0 0 0 0 13.25V18c0 .414.336.75.75.75h22.5A.75.75 0 0 0 24 18v-4.75a2.75 2.75 0 0 0-2.75-2.75H2.75zM0 18v3a.75.75 0 0 0 1.5 0v-3A.75.75 0 0 0 0 18zm22.5 0v3a.75.75 0 0 0 1.5 0v-3a.75.75 0 0 0-1.5 0zm-.75-6.75V4.5a2.25 2.25 0 0 0-2.25-2.25h-15A2.25 2.25 0 0 0 2.25 4.5v6.75a.75.75 0 0 0 1.5 0V4.5a.75.75 0 0 1 .75-.75h15a.75.75 0 0 1 .75.75v6.75a.75.75 0 0 0 1.5 0zm-13.25-3h7a.25.25 0 0 1 .25.25v2.75l.75-.75h-9l.75.75V8.5a.25.25 0 0 1 .25-.25zm0-1.5A1.75 1.75 0 0 0 6.75 8.5v2.75c0 .414.336.75.75.75h9a.75.75 0 0 0 .75-.75V8.5a1.75 1.75 0 0 0-1.75-1.75h-7z"></path></svg></span>
            </div>
            <button class= "bttn">Stays</button>
        </div>
        <div class = "buttons">
            <div class = "img">
            <svg viewBox="0 0 24 24"><path d="M20.505 7.5l-15.266.022.672.415-1.1-2.2a.75.75 0 0 0-.638-.414l-2.293-.1C.82 5.228-.003 6.06.003 7.083c.002.243.051.484.146.709l2.072 4.68a2.947 2.947 0 0 0 2.701 1.778h4.043l-.676-1.075-2.484 5.168A1.831 1.831 0 0 0 7.449 21h2.099a1.85 1.85 0 0 0 1.419-.664l5.165-6.363-.582.277h4.956c1.82.09 3.399-1.341 3.49-3.198l.004-.134a3.426 3.426 0 0 0-3.44-3.419l-.074.001zm.02 1.5h.042a1.924 1.924 0 0 1 1.933 1.914l-.002.065a1.866 1.866 0 0 1-1.955 1.772l-4.993-.001a.75.75 0 0 0-.582.277l-5.16 6.355a.346.346 0 0 1-.26.118h-2.1a.336.336 0 0 1-.3-.49l2.493-5.185a.75.75 0 0 0-.676-1.075H4.924a1.45 1.45 0 0 1-1.328-.878l-2.07-4.676a.35.35 0 0 1 .326-.474l2.255.1-.638-.415 1.1 2.2a.75.75 0 0 0 .672.415L20.507 9zM16.323 7.76l-2.992-4.02A1.851 1.851 0 0 0 11.85 3H9.783a1.85 1.85 0 0 0-1.654 2.672l1.439 2.91a.75.75 0 0 0 1.344-.664L9.472 5.007a.351.351 0 0 1 .312-.507h2.066a.35.35 0 0 1 .279.14l2.99 4.017a.75.75 0 1 0 1.203-.896z"></path></svg>
            </div>
            <button class= "bttn">Flights</button></div>
        <div class = "buttons">
            <div class = "img">
            <span class="Icon-module__root___2DICj Tab-module__icon___193ka Icon-module__root--size-medium___U9Qkb" aria-hidden="true"><svg viewBox="0 0 24 24"><path d="M21.684 9.443l-1.7-3.79c-.42-1.128-1.542-1.905-2.794-1.903H6.809a2.999 2.999 0 0 0-2.811 1.947L2.316 9.443a.75.75 0 1 0 1.368.614l1.7-3.79c.238-.63.798-1.018 1.424-1.017h10.383a1.5 1.5 0 0 1 1.407.973l1.718 3.834a.75.75 0 1 0 1.368-.614zM.75 16.468V18a2.25 2.25 0 0 0 4.5 0v-1.5a.75.75 0 0 0-1.5 0V18a.75.75 0 0 1-1.5 0v-1.532a.75.75 0 0 0-1.5 0zm21 0V18a.75.75 0 0 1-1.5 0v-1.5a.75.75 0 0 0-1.5 0V18a2.25 2.25 0 0 0 4.5 0v-1.532a.75.75 0 0 0-1.5 0zM19.875 13.5a.375.375 0 0 1-.375-.375.75.75 0 0 0 1.5 0c0-.621-.504-1.125-1.125-1.125a.75.75 0 0 0 0 1.5zm.375-.375a.375.375 0 0 1-.375.375.75.75 0 0 0 0-1.5c-.621 0-1.125.504-1.125 1.125a.75.75 0 0 0 1.5 0zm-.375-.375c.207 0 .375.168.375.375a.75.75 0 0 0-1.5 0c0 .621.504 1.125 1.125 1.125a.75.75 0 0 0 0-1.5zm-.375.375c0-.207.168-.375.375-.375a.75.75 0 0 0 0 1.5c.621 0 1.125-.504 1.125-1.125a.75.75 0 0 0-1.5 0zM4.125 12C3.504 12 3 12.504 3 13.125a.75.75 0 0 0 1.5 0 .375.375 0 0 1-.375.375.75.75 0 0 0 0-1.5zm1.125 1.125c0-.621-.504-1.125-1.125-1.125a.75.75 0 0 0 0 1.5.375.375 0 0 1-.375-.375.75.75 0 0 0 1.5 0zM4.125 14.25c.621 0 1.125-.504 1.125-1.125a.75.75 0 0 0-1.5 0c0-.207.168-.375.375-.375a.75.75 0 0 0 0 1.5zM3 13.125c0 .621.504 1.125 1.125 1.125a.75.75 0 0 0 0-1.5c.207 0 .375.168.375.375a.75.75 0 0 0-1.5 0zM2.75 10.5h18.5c.69 0 1.25.56 1.25 1.25v3.75a.25.25 0 0 1-.25.25H1.75a.25.25 0 0 1-.25-.25v-3.75c0-.69.56-1.25 1.25-1.25zm0-1.5A2.75 2.75 0 0 0 0 11.75v3.75c0 .966.784 1.75 1.75 1.75h20.5A1.75 1.75 0 0 0 24 15.5v-3.75A2.75 2.75 0 0 0 21.25 9H2.75z"></path></svg></span>
            </div>
            <button class= "bttn">Car Rentals</button></div>
        <div class = "buttons">
            <div class = "img">
            <svg viewBox="0 0 24 24"><path d="M13.5 3a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zM15 3a3 3 0 1 0-6 0 3 3 0 0 0 6 0zm6 4.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm1.5 0a3 3 0 1 0-6 0 3 3 0 0 0 6 0zM6 7.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm1.5 0a3 3 0 1 0-6 0 3 3 0 0 0 6 0zM21 15a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm1.5 0a3 3 0 1 0-6 0 3 3 0 0 0 6 0zm-9-3.75a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm1.5 0a3 3 0 1 0-6 0 3 3 0 0 0 6 0zM6 15a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm1.5 0a3 3 0 1 0-6 0 3 3 0 0 0 6 0zm10.066 1.277a7.5 7.5 0 0 1-3.077 2.05.75.75 0 0 0 .498 1.415 9 9 0 0 0 3.693-2.46.75.75 0 1 0-1.114-1.005zm1.798-6.466c.177.922.183 1.869.015 2.792a.75.75 0 1 0 1.476.268c.2-1.106.194-2.24-.019-3.344a.75.75 0 1 0-1.472.284zm-5.337-5.784a7.5 7.5 0 0 1 3.54 2.196.75.75 0 0 0 1.113-1.004 9.002 9.002 0 0 0-4.247-2.636.75.75 0 1 0-.406 1.444zM6.434 6.223a7.5 7.5 0 0 1 3.539-2.196.75.75 0 1 0-.406-1.444A9.001 9.001 0 0 0 5.32 5.219a.75.75 0 0 0 1.114 1.004zM4.636 12.69a7.602 7.602 0 0 1 0-2.878.75.75 0 1 0-1.472-.284 9.102 9.102 0 0 0 0 3.446.75.75 0 0 0 1.472-.284zm4.876 5.639a7.517 7.517 0 0 1-3.035-2.005.75.75 0 0 0-1.106 1.014 9.017 9.017 0 0 0 3.641 2.405.75.75 0 1 0 .5-1.414zM7.31 21.872A1.5 1.5 0 0 0 8.672 24h6.656a1.5 1.5 0 0 0 1.362-2.128l-3.314-8.217c-.361-.785-1.252-1.114-2.005-.767a1.5 1.5 0 0 0-.733.734l-3.343 8.283zm1.377.595l3.328-8.25-.015.033 3.313 8.217.015.033H8.672z"></path></svg>
            </div>
            <button class= "bttn">Attractions</button></div>
        <div class = "buttons">
            <div class = "img">
            <svg viewBox="0 0 24 24"><path d="M21.75 15.5V8a.75.75 0 0 0-1.5 0v7.5a.75.75 0 0 0 1.5 0zm-16.5 0V8a.75.75 0 0 0-1.5 0v7.5a.75.75 0 0 0 1.5 0zM3 8.75h3a.75.75 0 0 0 0-1.5H3a.75.75 0 0 0 0 1.5zm6.75 6.75v-6a.75.75 0 0 1 1.5 0v6a.75.75 0 0 0 1.5 0v-6a2.25 2.25 0 0 0-4.5 0v6a.75.75 0 0 0 1.5 0zM9 13.25h3a.75.75 0 0 0 0-1.5H9a.75.75 0 0 0 0 1.5zm5.304-4.971l3 7.5a.75.75 0 0 0 1.392-.557l-3-7.5a.75.75 0 0 0-1.392.557zm3-.558l-3 7.5a.75.75 0 0 0 1.392.557l3-7.5a.75.75 0 0 0-1.392-.557zM.75 5h22.5a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5zm0 15h22.5a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5z"></path></svg>
            </div>
            <button class= "bttn">Airport taxis</button></div>
    </div>
    
</div>
<div class="row">
    <div class="col-sm-6">
        <p><img src="https://a0.muscache.com/im/pictures/32a68404-8ed2-48a9-98f8-b9ad15a25d41.jpg" style="width:100%" height="350px"></p>
    
    </div>
    <div class="col-sm-3">
        <img src="https://a0.muscache.com/im/pictures/db5d08ac-253d-426b-b55b-7b4a59ffff0a.jpg" style="width:100%" height="140px"><br><br>
       <img src="https://a0.muscache.com/im/pictures/2fc52583-3114-4ca6-8092-bf318f3768b4.jpg" style="width:100%" height="140px">
    
    </div>
    <div class="col-sm-3">
            <img src="https://a0.muscache.com/im/pictures/2e091efb-9fb5-42a3-985c-a19fb0803abb.jpg" style="width:100%" height="140px"><br><br>
        <img src="https://a0.muscache.com/im/pictures/db5d08ac-253d-426b-b55b-7b4a59ffff0a.jpg" style="width:100%" height="140px">
    </div>
  </div>
</div>
<div class = "main">
    <div class="left">
        <div class="left-first">
         <div class="left-first-left">
            <p style="font-weight:bold">Earth house hosted by Nantanut</p>
            <p>5 guests . 2 bedrooms . 3 beds . 2 bathrooms</p>
         </div>
         <div class="left-first-right">
            <img src="https://a0.muscache.com/im/pictures/user/eb0faadb-d81d-4f28-8ed6-8fe3f44aa855.jpg" height="55px" width="55px" >
         </div>

        </div>
        <div class="second">
            <div >
                <div class="icon"><svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="m17.9772237 1.90551573.1439807.13496509 13.2525 13.25240998-1.4142088 1.4142184-.9603513-.9603098.0008557 12.5832006c0 1.0543618-.8158778 1.9181651-1.8507377 1.9945143l-.1492623.0054857h-22c-1.0543618 0-1.91816512-.8158778-1.99451426-1.8507377l-.00548574-.1492623-.00085571-12.5822006-.95878858.9593098-1.41421142-1.414217 13.25247161-13.25243161c1.1247615-1.1246896 2.9202989-1.16967718 4.0986078-.13494486zm-2.5902053 1.46599297-.0942127.08318915-10.29366141 10.29310155.00085571 14.5822006h5.9991443l.0008557-9.9966c0-1.0543764.8158639-1.9181664 1.8507358-1.9945144l.1492642-.0054856h6c1.0543764 0 1.9181664.8158639 1.9945144 1.8507358l.0054856.1492642-.0008557 9.9966h6.0008557l-.0008557-14.5832006-10.2921737-10.29212525c-.3604413-.36046438-.9276436-.38819241-1.3199522-.08316545zm3.6129816 14.9618913h-6l-.0008557 9.9963994h6z"> </path></svg>  
                </div><div class="text">  
                    &nbsp;&nbsp; <b>Entire home</b> <br>
                    &nbsp;&nbsp;          You'll have the vila to yourself
            </div> 
            <br> 
            <br>  
            <div class="icon">
            <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M15.032 1.747c.263-1.004 1.692-.993 1.94.015.876 3.577 2.415 6.454 4.614 8.652 2.198 2.199 5.075 3.738 8.652 4.615 1.016.249 1.016 1.693 0 1.942-3.577.877-6.454 2.416-8.652 4.615-2.199 2.198-3.738 5.075-4.615 8.652-.249 1.016-1.693 1.016-1.942 0-.877-3.577-2.416-6.454-4.615-8.652-2.198-2.199-5.075-3.738-8.652-4.615-1.008-.247-1.019-1.676-.015-1.939 3.535-.923 6.394-2.487 8.597-4.69 2.202-2.202 3.765-5.06 4.688-8.595zm.945 3.518l-.133.325c-.88 2.085-2.025 3.914-3.438 5.484l-.33.357-.318.326c-1.6 1.6-3.5 2.893-5.693 3.88l-.475.206-.325.133.352.14c2.108.859 3.952 1.995 5.527 3.407l.358.33.326.319c1.603 1.602 2.887 3.515 3.854 5.732l.203.48.115.291.115-.292c.86-2.108 1.996-3.952 3.408-5.527l.33-.358.319-.326c1.602-1.603 3.515-2.887 5.732-3.854l.48-.203.292-.115-.293-.115c-2.421-.988-4.494-2.34-6.211-4.057-1.603-1.602-2.887-3.515-3.854-5.732l-.203-.48-.138-.351zm11.04-3.891c.13-.502.845-.497.969.007.176.718.48 1.287.913 1.72.433.433 1.002.737 1.72.913.508.125.508.847 0 .972-.718.176-1.287.48-1.72.913-.433.433-.737 1.002-.913 1.72-.125.508-.847.508-.972 0-.176-.718-.48-1.287-.913-1.72-.433-.433-1.002-.737-1.72-.913-.504-.124-.51-.839-.007-.97.71-.185 1.277-.496 1.712-.93.434-.435.745-1.002.93-1.712z"></path></svg>
            </div> 
            <div class="text"> 
                &nbsp;&nbsp;<b>Enhanced clean</b> 
                <br> &nbsp;&nbsp;This host has committed to our enhanced cleaning process 
            
            </div> 
            <br> 
            <br> 
            <div class="icon"> 
                <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M16 0c6.627 0 12 5.373 12 12 0 6.337-3.814 12.751-11.346 19.257L16 31.82l-1.076-.932C7.671 24.509 4 18.218 4 12 4 5.423 9.397 0 16 0zm0 2C10.504 2 6 6.525 6 12c0 5.44 3.249 11.118 9.831 17.02l.169.149.576-.518c6.178-5.65 9.293-11.092 9.42-16.318L26 12c0-5.523-4.477-10-10-10zm0 5a5 5 0 1 1 0 10 5 5 0 0 1 0-10zm0 2a3 3 0 1 0 0 6 3 3 0 0 0 0-6z"></path></svg>
            </div> 
            <div class="text"> 
                &nbsp;&nbsp;<b>Great location</b> <br>
                &nbsp; 100% of recent guests gave the location a 5-star rating 
            </div>
            <br>
            <br>
            <div class="icon"> 
            
                <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="m16.8438 27.1562-.00005-3.39845-.2608465.0913211c-.9857292.3215073-2.0303948.5116467-3.1127817.5499306l-.4076218.0071983-.2927873-.0037049c-6.03236807-.1528291-10.89442655-5.0148222-11.04725775-11.0472069l-.00370495-.2927882.00370495-.2927873c.1528312-6.03236807 5.01488968-10.89442655 11.04725775-11.04725775l.2927873-.00370495.2927882.00370495c6.0323847.1528312 10.8943778 5.01488968 11.0472069 11.04725775l.0037049.2927873-.00663.3912275c-.0484899 1.4286741-.3615343 2.7917824-.8920452 4.0406989l-.1327748.2963236 7.90645 7.90705v5.5834h-5.5834l-4.12505-4.12545zm-6.5313-19.93745c1.708641 0 3.09375 1.38511367 3.09375 3.09375 0 1.7086436-1.3851064 3.09375-3.09375 3.09375-1.70863633 0-3.09375-1.385109-3.09375-3.09375 0-1.70863365 1.38511635-3.09375 3.09375-3.09375zm0 2.0625c-.56954635 0-1.03125.46170365-1.03125 1.03125 0 .5695521.46169942 1.03125 1.03125 1.03125.5695564 0 1.03125-.4616936 1.03125-1.03125 0-.56955058-.4616979-1.03125-1.03125-1.03125zm12.1147 15.81255 4.12455 4.12495h2.667v-2.667l-8.37295-8.37255.3697-.6775.1603998-.3074798c.56763-1.1397167.90791-2.4128858.9606815-3.761954l.0072187-.3697662-.0038197-.2688703c-.1397418-4.91222958-4.0963692-8.86881961-9.0086094-9.00856l-.2688709-.0038197-.2688703.0038197c-4.91222958.13974039-8.86881961 4.09633042-9.00856 9.00856l-.0038197.2688703.0038197.2688709c.14228112 5.0015536 4.24146819 9.0124291 9.2774303 9.0124291 1.4456308 0 2.8116781-.3298367 4.0293209-.9177001l.3012791-.1522999 1.5131-.7998-.00045 4.61975z"></path></svg>
            </div><div class="text"> 
                &nbsp; &nbsp;<b>Great check-in experience</b> <br> 
                &nbsp; 100% of recent guests gave the check-in process a 5-star rating
            </div>
            </div>
        </div>
        <div class="desc">
            <p>Leafy Greens was built as a retreat center for our family and friends. It is where people would visit to refreshing their souls and mind. We work so hard to make this place to be one of the place that we can live in harmony with nature. That is why the cob houses are the right choice for us. Not only the buildings are eco-friendly but also the garden is organic. Visit here you will be able to take a deep breath and enjoy the fresh air with organic environment. It is a perfect place to getaway!!...</p>
            <p style="text-decoration: underline; cursor: pointer; font-weight: bold;">Show more ></p>
        </div>
        <div class="third">
            <h3>What this place offers</h3>
    <div class="icon"><svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M26 1a5 5 0 0 1 5 5c0 6.389-1.592 13.187-4 14.693V31h-2V20.694c-2.364-1.478-3.942-8.062-3.998-14.349L21 6l.005-.217A5 5 0 0 1 26 1zm-9 0v18.118c2.317.557 4 3.01 4 5.882 0 3.27-2.183 6-5 6s-5-2.73-5-6c0-2.872 1.683-5.326 4-5.882V1zM2 1h1c4.47 0 6.934 6.365 6.999 18.505L10 21H3.999L4 31H2zm14 20c-1.602 0-3 1.748-3 4s1.398 4 3 4 3-1.748 3-4-1.398-4-3-4zM4 3.239V19h3.995l-.017-.964-.027-.949C7.673 9.157 6.235 4.623 4.224 3.364l-.12-.07zm19.005 2.585L23 6l.002.31c.045 4.321 1.031 9.133 1.999 11.39V3.17a3.002 3.002 0 0 0-1.996 2.654zm3.996-2.653v14.526C27.99 15.387 29 10.4 29 6a3.001 3.001 0 0 0-2-2.829z"></path></svg>
    </div><div class="text">  
        &nbsp;&nbsp; Kitchen <br>
</div> 
<br> 
<br>  
<div class="icon">
    <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="m15.9999 20.33323c2.0250459 0 3.66667 1.6416241 3.66667 3.66667s-1.6416241 3.66667-3.66667 3.66667-3.66667-1.6416241-3.66667-3.66667 1.6416241-3.66667 3.66667-3.66667zm0 2c-.9204764 0-1.66667.7461936-1.66667 1.66667s.7461936 1.66667 1.66667 1.66667 1.66667-.7461936 1.66667-1.66667-.7461936-1.66667-1.66667-1.66667zm.0001-7.33323c3.5168171 0 6.5625093 2.0171251 8.0432368 4.9575354l-1.5143264 1.5127043c-1.0142061-2.615688-3.5549814-4.4702397-6.5289104-4.4702397s-5.5147043 1.8545517-6.52891042 4.4702397l-1.51382132-1.5137072c1.48091492-2.939866 4.52631444-4.9565325 8.04273174-4.9565325zm.0001-5.3332c4.9804693 0 9.3676401 2.540213 11.9365919 6.3957185l-1.4470949 1.4473863c-2.1746764-3.5072732-6.0593053-5.8431048-10.489497-5.8431048s-8.31482064 2.3358316-10.48949703 5.8431048l-1.44709488-1.4473863c2.56895177-3.8555055 6.95612261-6.3957185 11.93659191-6.3957185zm-.0002-5.3336c6.4510616 0 12.1766693 3.10603731 15.7629187 7.9042075l-1.4304978 1.4309874c-3.2086497-4.44342277-8.4328305-7.3351949-14.3324209-7.3351949-5.8991465 0-11.12298511 2.89133703-14.33169668 7.334192l-1.43047422-1.4309849c3.58629751-4.79760153 9.31155768-7.9032071 15.7621709-7.9032071z"></path></svg></div>
<div class="text"> 
    &nbsp;&nbsp;Wifi
    <br>

</div> 
<br> 
<br> 
<div class="icon"> 
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M26 19a1 1 0 1 1-2 0 1 1 0 0 1 2 0zM7 18a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm20.693-5l.42 1.119C29.253 15.036 30 16.426 30 18v9c0 1.103-.897 2-2 2h-2c-1.103 0-2-.897-2-2v-2H8v2c0 1.103-.897 2-2 2H4c-1.103 0-2-.897-2-2v-9c0-1.575.746-2.965 1.888-3.882L4.308 13H2v-2h3v.152l1.82-4.854A2.009 2.009 0 0 1 8.693 5h14.614c.829 0 1.58.521 1.873 1.297L27 11.151V11h3v2h-2.307zM6 25H4v2h2v-2zm22 0h-2v2h2v-2zm0-2v-5c0-1.654-1.346-3-3-3H7c-1.654 0-3 1.346-3 3v5h24zm-3-10h.557l-2.25-6H8.693l-2.25 6H25zm-15 7h12v-2H10v2z"></path></svg></div>
<div class="text"> 
    &nbsp;&nbsp;Free parking on premises <br> 
</div>
<br>
<br>
<div class="icon"> 
    <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M24 26c.988 0 1.945.351 2.671 1.009.306.276.71.445 1.142.483L28 27.5v2l-.228-.006a3.96 3.96 0 0 1-2.443-1.003A1.978 1.978 0 0 0 24 28c-.502 0-.978.175-1.328.491a3.977 3.977 0 0 1-2.67 1.009 3.977 3.977 0 0 1-2.672-1.009A1.978 1.978 0 0 0 16 28c-.503 0-.98.175-1.329.491a3.978 3.978 0 0 1-2.67 1.009 3.978 3.978 0 0 1-2.672-1.008A1.978 1.978 0 0 0 8 28c-.503 0-.98.175-1.33.491a3.96 3.96 0 0 1-2.442 1.003L4 29.5v-2l.187-.008a1.953 1.953 0 0 0 1.142-.483A3.975 3.975 0 0 1 8 26c.988 0 1.945.352 2.671 1.009.35.316.826.49 1.33.491.502 0 .979-.175 1.328-.492A3.974 3.974 0 0 1 16 26c.988 0 1.945.351 2.671 1.009.35.316.826.49 1.33.491.502 0 .979-.175 1.328-.491A3.975 3.975 0 0 1 23.999 26zm0-5c.988 0 1.945.351 2.671 1.009.306.276.71.445 1.142.483L28 22.5v2l-.228-.006a3.96 3.96 0 0 1-2.443-1.003A1.978 1.978 0 0 0 24 23c-.502 0-.978.175-1.328.491a3.977 3.977 0 0 1-2.67 1.009 3.977 3.977 0 0 1-2.672-1.009A1.978 1.978 0 0 0 16 23c-.503 0-.98.175-1.329.491a3.978 3.978 0 0 1-2.67 1.009 3.978 3.978 0 0 1-2.672-1.008A1.978 1.978 0 0 0 8 23c-.503 0-.98.175-1.33.491a3.96 3.96 0 0 1-2.442 1.003L4 24.5v-2l.187-.008a1.953 1.953 0 0 0 1.142-.483A3.975 3.975 0 0 1 8 21c.988 0 1.945.352 2.671 1.009.35.316.826.49 1.33.491.502 0 .979-.175 1.328-.492A3.974 3.974 0 0 1 16 21c.988 0 1.945.351 2.671 1.009.35.316.826.49 1.33.491.502 0 .979-.175 1.328-.491A3.975 3.975 0 0 1 23.999 21zM20 3a4 4 0 0 1 3.995 3.8L24 7v2h4v2h-4v5c.912 0 1.798.3 2.5.862l.171.147c.306.276.71.445 1.142.483L28 17.5v2l-.228-.006a3.96 3.96 0 0 1-2.443-1.003A1.978 1.978 0 0 0 24 18c-.502 0-.978.175-1.328.491a3.977 3.977 0 0 1-2.67 1.009 3.977 3.977 0 0 1-2.672-1.009A1.978 1.978 0 0 0 16 18c-.503 0-.98.175-1.329.491a3.978 3.978 0 0 1-2.67 1.009 3.978 3.978 0 0 1-2.672-1.008A1.978 1.978 0 0 0 8 18c-.503 0-.98.175-1.33.491a3.96 3.96 0 0 1-2.442 1.003L4 19.5v-2l.187-.008a1.953 1.953 0 0 0 1.142-.483A3.975 3.975 0 0 1 8 16c.988 0 1.945.352 2.671 1.009.35.316.826.49 1.33.491.502 0 .979-.175 1.328-.492a3.956 3.956 0 0 1 2.444-1.002L16 16v-5H4V9h12V7a2 2 0 0 0-3.995-.15L12 7h-2a4 4 0 0 1 7-2.645A3.985 3.985 0 0 1 20 3zm-2 13.523c.16.091.313.194.459.307l.212.179c.35.316.826.49 1.33.491.439 0 .86-.134 1.191-.38l.137-.111c.206-.187.431-.35.67-.486V11h-4zM20 5a2 2 0 0 0-1.995 1.85L18 7v2h4V7a2 2 0 0 0-2-2z"></path></svg></div>
    <div class="text"> 
    &nbsp; &nbsp;Pool <br> 
</div>
<br>
<br>
<div class="icon">
<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M9 29v-2h2v-2H6a5 5 0 0 1-4.995-4.783L1 20V8a5 5 0 0 1 4.783-4.995L6 3h20a5 5 0 0 1 4.995 4.783L31 8v12a5 5 0 0 1-4.783 4.995L26 25h-5v2h2v2zm10-4h-6v2h6zm7-20H6a3 3 0 0 0-2.995 2.824L3 8v12a3 3 0 0 0 2.824 2.995L6 23h20a3 3 0 0 0 2.995-2.824L29 20V8a3 3 0 0 0-2.824-2.995z"></path></svg> 
</div> 
<div class="text">
&nbsp;&nbsp;TV
</div>
    
        </div>
        <button class="bttn1">Show all 29 amenities</button>
    </div>
    <div class="right">
        <div class="horizontal">
            <p style="font-weight: bold;">Rs. 3,840 / night</p>
            <div class ="hor1">
            <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 12px; width: 12px; fill: currentcolor;"><path d="M15.094 1.579l-4.124 8.885-9.86 1.27a1 1 0 0 0-.542 1.736l7.293 6.565-1.965 9.852a1 1 0 0 0 1.483 1.061L16 25.951l8.625 4.997a1 1 0 0 0 1.482-1.06l-1.965-9.853 7.293-6.565a1 1 0 0 0-.541-1.735l-9.86-1.271-4.127-8.885a1 1 0 0 0-1.814 0z" fill-rule="evenodd"></path></svg>
            <p>4.87</p>
            <p>(114 reviews)</p>
        </div>
        </div>
        <div>
            <h3>this is date picker using bootstrap</h3>
        </div>
        <div class="bttn">
            <a href="http://localhost:8081/final"><button>Reserve</button></a>
            <p>You won't be charged yet</p>
        </div>
        <div class = "totalp">
            <div class="price1">
                <p class="und">3,989 x 10 nights</p>
                <p>Rs 39,885</p>
            </div>
            <div class="price1">
                <p class="und">Weekly discount</p>
                <p style="color: rgb(36, 194, 22); font-weight: 700;">Rs.7,682</p>
            </div>
        </div>
        <div class = "total">
            <p>Total</p>
            <p>Rs.39,083</p>
        </div>
    </div>
</div>
<div class="footer">
        <div class="text"> 

            <h3><b>Support</b></h3> 
               Help Centre <br><br>
               Safety information<br><br>
               Cancellation option<br><br>
               Our Covid-19 Response<br><br> 
               Supporting people with disabilities<br><br>
               Report a neighbourhood concern<br><br>
        </div>
        <div class="text"> 
        
                <h3><b>Community</b></h3> 
                   disaster relief housing<br><br>
                  Support Afghan refguees<br><br>
                   Celeberating diversity <br>& belonging<br><br>
                   Combating discrimination<br><br> 
                   
        </div>
        <div class="text"> 
        
                    <h3><b>Hosting</b></h3> 
                       Protection for Hosts <br><br>
                       Explore hosting resource<br><br>
                       Visit our community forum<br><br>
                       How to host responsibly<br><br> 
                     
        </div>
        <div class="text"> 
        
                        <h3><b>About</b></h3> 
                           Newsroom<br><br>
                          Learn about new features<br><br>
                           Letter from our founders<br><br>
                           Careers<br><br> 
                           Investors<br><br>
                           Luxe<br><br>
        </div> 
        
        
  </div>
  </div>
</body>
</html>