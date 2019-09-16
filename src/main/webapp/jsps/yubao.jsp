<%--
  Created by IntelliJ IDEA.
  User: 86138
  Date: 2019/9/2
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/ace.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/nav.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/style.css"/>
    <script src="${pageContext.request.contextPath}/static/assets/js/ace-extra.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/common/jquery-3.2.1.min.js"></script>

    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/table/bootstrap-table.min.js"></script>
    <script type="text/javascript">
        if("ontouchend" in document) document.write("<script src='/assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
    </script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/typeahead-bs2.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/ace-elements.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/ace.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/layer/layer.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/assets/laydate/laydate.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/assets/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/nav.js"> </script>
</head>
<body>
<form class="form-horizontal" role="form">

    <div class="form-group has-warning"> <br/>

    <label class="col-sm-2 control-label" ><strong> 计划名称：</strong></label></strong>

    <div class="col-sm-3">
        <input  type="text" class="form-control"  id="nameActivities">
    </div>
</div>
    <div class="form-group has-warning"> <br/>

        <label class="col-sm-2 control-label" ><strong> 计划召开桌数：</strong></label></strong>

        <div class="col-sm-3">
            <input  type="text" class="form-control" id="numActivities">
            <input   type="text" class="form-control" id="deptId" value="${user.deptId}">
        </div>
    </div>

    <div class="form-group has-warning"> <br/>

        <label class="col-sm-2 control-label" ><strong> 开始时间：</strong></label></strong>

        <div class="col-sm-3">
            <input  type="date" class="form-control" id="startTime">
        </div>
    </div>

    <div class="form-group has-warning"> <br/>

        <label class="col-sm-2 control-label" ><strong>结束时间：</strong></label></strong>

        <div class="col-sm-3">
            <input  type="date" class="form-control" id="endTime">
        </div>
    </div>

</form>
<center>  <button  class="btn btn-info" id="sub">预报计划</button></center>
</body>
<script>
    $(function(){
        $("#sub").click(function(){
            alert(123);
            var nameActivities=$("#nameActivities").val();
            var numActivities=$("#numActivities").val();
            var startTime=$("#startTime").val();
            var endTime=$("#endTime").val();
            var deptId=$("#deptId").val();
            alert("名字"+nameActivities)
            alert("数量"+numActivities)
            alert("开始"+startTime)
            alert("结束"+endTime)
            alert("ID"+deptId)
            $.ajax({
                url:"${pageContext.request.contextPath}/user/add",
                dataType:"json",
                type:"post",
                data:{nameActivities:nameActivities,numActivities:numActivities,startTime:startTime,endTime:endTime,deptId:deptId},
                success:function (data) {
                    if(data){
                        alert("ok")
                    }else{
                        alert("no")
                    }
                },error:function () {
                    alert(1441541451)
                }
            })


        })
    })
</script>
</html>
