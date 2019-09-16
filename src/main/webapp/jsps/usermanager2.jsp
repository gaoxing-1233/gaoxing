<!DOCTYPE html>
<HTML>
<HEAD>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <TITLE> ZTREE DEMO - beforeEditName / beforeRemove / onRemove / beforeRename / onRename</TITLE>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/ztree/css/demo.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ztree/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ztree/js/jquery.ztree.excheck.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/ztree/js/jquery.ztree.exedit.js"></script>
    <SCRIPT type="text/javascript">
        $(function(){
            $.ajax({
                url:"${pageContext.request.contextPath}/user/quyu",
                type:"post",
                dataType:"json",
                success:function(data){
                    //把数据填入
                    $.fn.zTree.init($("#treeDemo"), setting, data);
                }
            })
        })
        var setting = {//zTree的配置信息
            async:{//异步
                enable:true,//是否使用异步加载 true使用
                url:"${pageContext.request.contextPath}/user/getQuyu1",
                autoParam:["id"]//异步加载需要的参数
            },
            view: {//样式
                showIcon: true,
                showLine: true
            },

            callback: {
                onClick: onClick
            },
            data: {
                simpleData: {
                    enable: true,
                    idKey: "id",
                    pIdKey: "pId",
                    rootPId: 0
                }
            }
        };

        function onClick(event, treeId, treeNode) {
            var id=treeNode.id;
            alert(treeNode.name)
            alert(treeNode.id)
            alert(treeNode.isParent)

            if(treeNode.isParent){
                alert(888)
                $.ajax({
                    url:"${pageContext.request.contextPath}/user/getchakan1",
                    type:"post",
                    dataType:"json",
                    data:{"id":id},
                    success:function(data){

                        for (var i = 0; i < data.length; i++) {
                            $("#t1").html(data[i].id);
                            $("#t2").html(data[i].areaCode);
                            $("#t3").html(data[i].areaName);
                            $("#t4").html(data[i].isParent);


                        }
                    }
                })
            }else{
                alert("ajax1111")
                $.ajax({
                    url:"${pageContext.request.contextPath}/user/getchakan",
                    type:"post",
                    dataType:"json",
                    data:{"id":id},
                    success:function(data){
                        for (var i = 0; i < data.length; i++) {
                            $("#t1").html(data[i].id);
                            $("#t2").html(data[i].deptCode);
                            $("#t3").html(data[i].deptName);
                            $("#t4").html(data[i].isParent);
                            alert(id)
                        }
                    }
                })
            }
        };

        function add(){
            var isParent=$("#t4").html();
            alert(isParent)
            alert("添加")
            if(isParent){
                var areaCode=$("#areaCode").val();
                var areaName=$("#areaName").val();
                var type=$("#type").val();

                $.ajax({
                    url:"${pageContext.request.contextPath}/item/addZtree1",
                    type:"post",
                    data:{areaCode:areaCode,areaName:areaName,type:type},
                    dataType:"json",
                    success:function(data){
                        alert("添加成功回调函数")
                        alert(areaCode)
                        alert(areaName)

                        if(data){
                            alert("成功")
                        }else{
                            alert("失败")
                        }
                    }
                })

            }else{
                $.ajax({
                    url:"${pageContext.request.contextPath}/item/addZtree2",
                    type:"post",
                    data:{areaCode:areaCode,areaName:areaName,type:type},
                    dataType:"json",
                    success:function(data){
                        alert("添加成功回调函数")
                        alert(areaCode)
                        alert(areaName)

                        if(data){
                            alert("成功")
                        }else{
                            alert("失败")
                        }
                    }
                })
            }
        }

        function del(){
            alert(1111)
            var id=$("#t1").html();
            var isParent=$("#t4").val();
            if(isParent==true){
                $.ajax({
                    url:"${pageContext.request.contextPath}/item/delete1",
                    type:"post",
                    data:{id:id},
                    dataType:"json",
                    success:function(data){
                        alert(222)
                        if(data){
                            alert("删除成功")
                            window.location.reload();
                        }else{
                            alert("删除失败")
                        }
                    },error:function(){
                        alert("后台出错")
                    }
                })
            }else{
                $.ajax({
                    url:"${pageContext.request.contextPath}/item/delete2",
                    type:"post",
                    data:{id:id},
                    dataType:"json",
                    success:function(data){
                        if(data){
                            alert("删除成功")
                            window.location.reload();
                        }else{
                            alert("删除失败")
                        }
                    },error:function(){
                        alert("后台出错")
                    }
                })
            }

        }
    </script>
        <div class="container">
            <div class="col-xs-6 col-sm-4">
                <div class="zTreeDemoBackground left" >
                    <ul id="treeDemo" class="ztree"></ul>
                </div>
            </div>
            <div class="col-xs-6 col-sm-5">


                <table class="table">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>Pid</th>
                        <th>地区name</th>
                        <th>isParent</th>
                        <th>操作</th>
                    </tr>
                    </thead>

                    <tbody id="tt">
                    <tr>
                        <td id="t1"></td>
                        <td id="t2"></td>
                        <td id="t3"></td>
                        <td id="t4"></td>
                        <td>
                            <button onclick="javaScript:del();">删除</button>
                            <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">添加用户</button>
                        </td>
                    </tr>

                    </tbody>

                </table>
            </div>
        </div>
        <!-- 模态框（Modal） -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h5 class="modal-title" id="myModalLabel">添加用户界面</h5>
                    </div>
                    <div class="modal-body">
                        <input id="areaName" name="areaName" type="text"/>
                        <input id="areaCode" name="areaCode" type="text"/>
                        <input id="type" name="type" type="text"/>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" onclick="javaScript:add();">提交更改</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>
        </body>

</html>