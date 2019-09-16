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
    <script type="text/javascript">aaaa
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

        var setting = {
            async:{//异步
                enable:true,//是否使用异步加载 true使用
                url:"${pageContext.request.contextPath}/user/getQuyu1",
                autoParam:["id"]//异步加载需要的参数
            },
            view: {
                addHoverDom: addHoverDom,
                removeHoverDom: removeHoverDom,
                selectedMulti: false
            },
            edit: {
                enable: true,
                editNameSelectAll: true,
                showRemoveBtn: showRemoveBtn,
                showRenameBtn: showRenameBtn
            },
            data: {
                simpleData: {
                    enable: true
                }
            },
            callback: {
                beforeDrag: beforeDrag,
                beforeEditName: beforeEditName,
                beforeRemove: beforeRemove,
                beforeRename: beforeRename,
                onRemove: onRemove,
                onRename: onRename
            }
        };

        var zNodes =[];
        var log, className = "dark";
        function beforeDrag(treeId, treeNodes) {
            return false;
        }
        function beforeEditName(treeId, treeNode) {
            alert(741)
            className = (className === "dark" ? "":"dark");
            showLog("[ "+getTime()+" beforeEditName ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name);
            var zTree = $.fn.zTree.getZTreeObj("treeDemo");
            zTree.selectNode(treeNode);
            setTimeout(function() {
                if (confirm("进入节点 -- " + treeNode.name + " 的编辑状态吗？")) {
                    setTimeout(function() {
                        zTree.editName(treeNode);
                    }, 0);
                }
            }, 0);
            return false;
        }


        function addddd(treeNode){
            alert("addd")
            var isParent=treeNode.isParent
            alert(isParent)
            alert("添加")
            $("#bbbb").click(function(){

                    var areaCode=$("#areaCode").val();
                    var areaName=$("#areaName").val();
                    var type1=$("#type1").val();

                    $.ajax({
                        url:"${pageContext.request.contextPath}/user/addZtree",
                        type:"post",
                        data:{areaCode:areaCode,areaName:areaName,type1:type1},
                        dataType:"json",
                        success:function(data){
                            alert("添加成功回调函数")
                            alert(areaCode)
                            alert(areaName)

                            if(data){
                                alert("成功le1")
                            }else{
                                alert("失败le")
                            }
                        }
                    })
            })

        }
        function beforeRemove(treeId, treeNode) {
            alert(666)
            var id=treeNode.id
            alert(id)

            var isParent=treeNode.isParent;
            alert(isParent)

                $.ajax({
                    url:"${pageContext.request.contextPath}/user/delete1",
                    type:"post",
                    data:{id:id},
                    dataType:"json",
                    success:function(data){
                        alert(222)
                        if(data){
                            alert("删除成功")
                            window.location.reload();
                        }else{
                            alert("ok")
                        }
                    },error:function(){
                        alert("后台出错")
                    }
                })


        }
        function onRemove(e, treeId, treeNode) {
            showLog("[ "+getTime()+" onRemove ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name);
        }
        function beforeRename(treeId, treeNode, newName, isCancel) {
            className = (className === "dark" ? "":"dark");
            showLog((isCancel ? "<span style='color:red'>":"") + "[ "+getTime()+" beforeRename ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name + (isCancel ? "</span>":""));
            if (newName.length == 0) {
                setTimeout(function() {
                    var zTree = $.fn.zTree.getZTreeObj("treeDemo");
                    zTree.cancelEditName();
                    alert("节点名称不能为空.");
                }, 0);
                return false;
            }
            return true;
        }
        function onRename(e, treeId, treeNode, isCancel) {
            showLog((isCancel ? "<span style='color:red'>":"") + "[ "+getTime()+" onRename ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name + (isCancel ? "</span>":""));
        }
        function showRemoveBtn(treeId, treeNode) {
            return !treeNode.isFirstNode;
        }
        function showRenameBtn(treeId, treeNode) {
            return !treeNode.isLastNode;
        }
        function showLog(str) {
            if (!log) log = $("#log");
            log.append("<li class='"+className+"'>"+str+"</li>");
            if(log.children("li").length > 8) {
                log.get(0).removeChild(log.children("li")[0]);
            }
        }
        function getTime() {
            var now= new Date(),
                h=now.getHours(),
                m=now.getMinutes(),
                s=now.getSeconds(),
                ms=now.getMilliseconds();
            return (h+":"+m+":"+s+ " " +ms);
        }

        var newCount = 1;
        function addHoverDom(treeId, treeNode) {
            var sObj = $("#" + treeNode.tId + "_span");
            if (treeNode.editNameFlag || $("#addBtn_"+treeNode.tId).length>0) return;
            var addStr = "<span class='button add' id='addBtn_" + treeNode.tId
                + "' title='add node' onfocus='this.blur();'></span>";
            sObj.after(addStr);
            var btn = $("#addBtn_"+treeNode.tId);
            if (btn) btn.bind("click", function(){
                $("#pId").val(treeNode.id)
                $("#myModal").modal("show");
                addddd(treeNode)
            });
        };
        function removeHoverDom(treeId, treeNode) {
            $("#addBtn_"+treeNode.tId).unbind().remove();

        };
        function selectAll() {
            var zTree = $.fn.zTree.getZTreeObj("treeDemo");
            zTree.setting.edit.editNameSelectAll =  $("#selectAll").attr("checked");
        }

        $(document).ready(function(){
            $.fn.zTree.init($("#treeDemo"), setting, zNodes);
            $("#selectAll").bind("click", selectAll);
        });



    </SCRIPT>
    <style type="text/css">
        .ztree li span.button.add {margin-left:2px; margin-right: -1px; background-position:-144px 0; vertical-align:top; *vertical-align:middle}
    </style>
</HEAD>

<BODY>
<div class="content_wrap">
    <div class="zTreeDemoBackground left">
        <ul id="treeDemo" class="ztree">


        </ul>
    </div>


    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title" id="myModalLabel">添加用户界面</h5>
                </div>
                <div class="modal-body">
                   地区名： <input id="areaName" name="areaName" type="text"/>
                    缩写：<input id="areaCode" name="areaCode" type="text"/>
                    省/市/县：<input id="type1" name="type1" type="text"/>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" id="bbbb">提交更改</button>
                </div>
            </div>
        </div>
    </div>



</div>
</div>
</BODY>
</HTML>