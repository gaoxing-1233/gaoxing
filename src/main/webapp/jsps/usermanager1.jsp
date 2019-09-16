<%--
  Created by IntelliJ IDEA.
  User: 86138
  Date: 2019/8/29
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta charset="utf-8" />
<title>酒会管理系统  </title>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/echarts.min.js"></script>
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

<head>
    <title>Title</title>
</head>
<script>


    function deleteUserById(id){
        alert(id)
        $.ajax({
            url:"${pageContext.request.contextPath}/user/getById1",
            type:"post",
            data:{id:id},
            dataType:"json",
            success:function(data){
                if(data){
                    alert(data)
                    alert("删除成功")

                }else{
                    alert("删除失败")
                }
            },error:function(){
                alert("后台出错")
            }
        })
        $('#myModal').modal('show');
    }
    $(function(){
        $("#tijiao").click(function(){
            alert(55)
            var planId=$("#planId").val();
            var nameActivitie=$("#nameActivitie").val();
            var numActual=$("#numActual").val();
            var newClient=$("#newClient").val();
            var oldClient=$("#oldClient").val();
            var yxClient=$("#yxClient").val();
            var money=$("#money").val();
            var createtime=$("#createtime").val();
            $.ajax({
                url:"${pageContext.request.contextPath}/user/additem",
                type:"post",
                data:{planId:planId,nameActivitie:nameActivitie,numActual:numActual,newClient:newClient,oldClient:oldClient,yxClient:yxClient,money:money,createtime:createtime},
                dataType:"json",
                success:function(data){
                    if(data){
                        alert(data)
                        alert("添加ok")

                    }else{
                        alert("添加no")
                    }
                },error:function(){
                    alert("后台出错")
                }
            })

        })
        alert(5545)
        $("#a").bootstrapTable({
            url:"${pageContext.request.contextPath}/user/getPlan1",//请求的
            sortName:"id",
            columns: [//field对应的是entity中的属性  title:列名
                {
                    field: 'nameActivities',
                    title: '机构名称'
                }, {
                    field: 'numActivities',
                    title: '计划召开桌数',

                },{
                    field: 'startTime',
                    title: '开始时间',

                },{
                    field: 'endTime',
                    title: '结束时间',

                },{
                    field: 'timestamp',
                    title: '录入时间',

                },{
            title: "操作",
                field:'id',
                formatter:function(value,row,index){
                if (row.addrDefault == '1'){
                    return "不可删";
                }else{
                    var str="<button class='btn btn-primary' onclick='deleteUserById("+row.id+")'>上报实际数据</button>&nbsp;&nbsp;";
                    return str;
                }

            }
        }
            ]
        });
    })
</script>
<body>
<%--///////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>

    <div >
        <table id="a"></table>
    </div>


<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-body">
<%--555555555555555555555555555555555555555555555555555555555555555555555555555555555555--%>
    <form class="form-horizontal" role="form">
        <div class="form-group">
            <label  class="col-sm-2 control-label">活动名称</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="nameActivitie " name="nameActivities" value="${plans.numActivities}" readonly="readonly">
                <input type="" id="planId" value="${user.deptId}"/>
            </div>
            <div>
                <span style="color:red"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">实际召开桌数</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="numActual" name="numActual" placeholder="请输入召开桌数">
            </div>
            <div>
                <span style="color:red"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">新客户</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="newClient" name="newClient" placeholder="请输入新客户">
            </div>
            <div>
                <span style="color:red"></span>
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-2 control-label">旧客户</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="oldClient" name="oldClient" placeholder="请输入旧客户">
            </div>
            <div>
                <span style="color:red"></span>
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-2 control-label">客户意向</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="yxClient" name="yxClient" placeholder="请输入客户意向">
            </div>
            <div>
                <span style="color:red"></span>
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-2 control-label">保费</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" id="money" name="money" placeholder="请输入保费">
            </div>
            <div>
                <span style="color:red"></span>
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-2 control-label">活动时间</label>
            <div class="col-sm-4">
                <input type="date" class="form-control" id="createtime" name="createtime" placeholder="请输入活动时间">
            </div>
            <div>
                <span style="color:red"></span>
            </div>
        </div>

    </form>
<%--888888888888888888888888888888888888888888888888888888888888888888888888888888888888888--%>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button id="tijiao"  class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<%--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>

</body>
</html>
