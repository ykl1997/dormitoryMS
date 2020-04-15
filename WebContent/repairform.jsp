<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    body{
        background: url(./imgs/huahua.jpg) no-repeat center;
          background-size:cover;
    }
    form{
        padding-top: 30px;
        margin: 30px auto;
        width: 300px;
        height: 350px;
        border-radius: 3px;
        text-align: center;
        box-shadow: 1px 1px 10px 2px black;
        font-size:12px;
    }
    input{
        width: 200px;
        height: 30px;
        border-radius: 3px;
        border: 1px black solid;
        display: block;
        margin: 0 auto;
        margin-top: 20px;
    }
    .button{
        background-color: rgba(115,89,227, 0.555);
    }
    .date{
    margin-top:0px
    }
</style>
</head>
<body>
<form action="/dormitoryMS/AddRepair">
    <input type="text" name="build" placeholder="宿舍楼">
    <input type="text" name="room" placeholder="宿舍号">
    <input type="text" name="from_repair_name" placeholder="上报人">
    <input type="text" name="repair_type" placeholder="详细描述">
      预约时间
    <input type="date" name="to_repair_time" class="date">   
    <input type="submit" value="上报" class="button">
</form>
</body>
<script type="text/javascript">
var success="<%=request.getParameter("success")%>";
if(success==="yes"){
	alert("保修成功，师傅会尽快处理的");
}</script>
</html>