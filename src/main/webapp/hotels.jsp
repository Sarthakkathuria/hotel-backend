<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotels</title>
<style type="text/css"> 
body{
margin:0; 
padding:0; 
font-weight: bold;
} 
.head{
background:#262626; 

}
.container
{
width:1280px; 
margin: 70px auto 0;  
display:flex; 
flex-direction:row; 
flex-wrap:wrap;
}
.container .box
{ 
position: relative; 
 
margin :10px; 
box-sizing:border-box; 
display:inline-block;
} 
.container.box.ibox
{ 
position: relative; 
overflow: Shidden;
} 
.container .box .ibox img
{
max-width:100%; 
max-height:100%;
transition: transform .2s; 
}  
.container .box:HOVER .ibox img{

	transform:scale(1.05);
} 
.container .box .det{ 
position: absolute; 
top:10px; 
left: 10px; 
bottom: 10px; 
right: 10px; 
background:rgba(0,0,0,.8);  
transform:scaleY(0); 
transition:transform .5s;
}  
.container .box:hover .det{ 
transform:scaleY(1);
}
.container .box .det .con{ 
position: absolute; 
top:50%; 
transform:translateY(-50%); 
text-align:center;  
padding:30px;
color:#fff;

} 
.container .box .det .con h1,h2,h4,h3,h5{
margin: 0;
padding: 0; 
font-size: 50px; 
color: silver;
background:#262626;
font-family: fantasy;
}
</style>
</head>
<body>
<div class="container"> 

	<c:forEach items="${wq}" var= "ii">
	<div class="box">
	<a href = "http://localhost:8081/hoteldetails?name=${ii.name}" >
	<div class="ibox">
	 <img src="${ii.img}"
     height="230" width="245" style="border-radius: 23px"> 
     </a>
    <figcaption><b>${ii.name}</b></figcaption>
    <figcaption>${ii.distance} kilometers away</figcaption>
    <figcaption> Rs. ${ii.price} /night</figcaption>
	</div>
	
	</div>
	</c:forEach>
</div>

</body>
</html>