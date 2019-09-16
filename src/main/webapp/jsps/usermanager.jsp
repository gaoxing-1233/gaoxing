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
    $(function(){
        $("#a").bootstrapTable({
            url:"${pageContext.request.contextPath}/user/getPlan",//请求的
            sortName:"id",
            columns: [//field对应的是entity中的属性  title:列名
                {
                    field: 'numActual',
                    title: '机构名称'
                }, /*{
                    field: 'numActivities',
                    title: '计划召开桌数',

                },*/{
                    field: 'numActual',
                    title: '实际召开桌数',

                }/*,{
                    field: '',
                    title: '执行率',
                    formatter:function(value,row,index){
/!*  return row.userName+"(真实姓名："+row.trueName+")<br/>注册时间："+row.birthday;*!/
                   return (row.numActivities/row.numActual*100).toFixed(2)+"%"

        }

                }*/,{
                    field: 'newClient',
                    title: '计新客户',

                },{
                    field: 'oldClient',
                    title: '老客户',

                },{
                    field: 'yxClient',
                    title: '意向客户',

                },{
                    field: 'money',
                    title: '预估保费',

                },
            ]
        });
    })
</script>
<body>
<%--///////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>


<ul id="myTab" class="nav nav-tabs">
    <li class="active">
        <a href="#home" data-toggle="tab">
            <img src="${pageContext.request.contextPath}/static/img/鹿.jpg" style="width:38px;height: 29px ">统计图展示
        </a>
    </li>
    <li><a href="#ios" data-toggle="tab"><img src="${pageContext.request.contextPath}/static/img/蜗牛.jpg" style="width:38px;height: 29px ">数据展示</a></li>


</ul>
<script type="text/javascript">
    $(function(){
        var name=[];
        var age=[];
        var money=[];
        alert(132)
        $.ajax({
            url:"${pageContext.request.contextPath}/user/gettu",
            type:"post",
            dataType:"json",
            success:function(data){
                for(var i=0;i<data.length;i++){
                    name.push(data[i].areaName)
                    age.push( {value:data[i].money, name:data[i].areaName})}
                var dom = document.getElementById("container");
                var myChart = echarts.init(dom);
                option = {
                    title : {
                        text: '某站点用户访问来源',
                        subtext: '纯属虚构',
                        x:'center'
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    legend: {
                        orient : 'vertical',
                        x : 'left',
                        data:name
                    },
                    toolbox: {
                        show : true,
                        feature : {
                            mark : {show: true},
                            dataView : {show: true, readOnly: false},
                            magicType : {
                                show: true,
                                type: ['pie', 'funnel'],
                                option: {
                                    funnel: {
                                        x: '25%',
                                        width: '50%',
                                        funnelAlign: 'left',
                                        max: 1548
                                    }
                                }
                            },
                            restore : {show: true},
                            saveAsImage : {show: true}
                        }
                    },
                    calculable : true,
                    series : [
                        {
                            name:'访问来源',
                            type:'pie',
                            radius : '70%',
                            center: ['50%', '50%'],
                            data:age
                        }
                    ]
                };
                ;
                if (option && typeof option === "object") {
                    myChart.setOption(option, true);
                }

            }
        })
    })
</script>
<div id="myTabContent" class="tab-content">
    <div class="tab-pane fade in active" id="home">
        <div id="container" style="height:430px;width: 900px"></div>

    </div>
    <div class="tab-pane fade" id="ios">
        <table id="a"></table>
    </div>

</div>




<%--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>

</body>
</html>
