
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>登陆界面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/aaa/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/aaa/css/supersized.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/aaa/css/style.css">
    <script src="${pageContext.request.contextPath}/static/aaa/js/jquery-1.8.2.min.js" ></script>
    <script src="${pageContext.request.contextPath}/static/aaa/js/supersized.3.2.7.min.js" ></script>
    <script src="${pageContext.request.contextPath}/static/aaa/js/supersized-init.js" ></script>
    <script src="${pageContext.request.contextPath}/static/aaa/js/scripts.js" ></script>
    <script src="${pageContext.request.contextPath}/static/js/jrj6out.js"></script>
    <script>try{Typekit.load({ async: false });}catch(e){}</script>

    <style>
        body {
            position: relative;
            margin: 0;
            overflow: hidden;
        }

        .intro-container {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            color: white;
            text-align: center;
            margin: 0 auto;
            right: 0;
            left: 0;
        }

        h1 {
            font-family: 'brandon-grotesque', sans-serif;
            font-weight: bold;
            margin-top: 0px;
            margin-bottom: 0;
            font-size: 20px;
        }
        @media screen and (min-width: 860px) {
            h1 {
                font-size: 40px;
                line-height: 52px;
            }
        }

        .fancy-text {
            font-family: "adobe-garamond-pro",sans-serif;
            font-style: italic;
            letter-spacing: 1px;
            margin-bottom: 17px;
        }

        .button {
            position: relative;
            cursor: pointer;
            display: inline-block;
            font-family: 'brandon-grotesque', sans-serif;
            text-transform: uppercase;
            min-width: 200px;
            margin-top: 30px;
        }
        .button:hover .border {
            box-shadow: 0px 0px 10px 0px white;
        }
        .button:hover .border .left-plane, .button:hover .border .right-plane {
            transform: translateX(0%);
        }
        .button:hover .text {
            color: #121212;
        }
        .button .border {
            border: 1px solid white;
            transform: skewX(-20deg);
            height: 32px;
            border-radius: 3px;
            overflow: hidden;
            position: relative;
            transition: .10s ease-out;
        }
        .button .border .left-plane, .button .border .right-plane {
            position: absolute;
            background: white;
            height: 32px;
            width: 100px;
            transition: .15s ease-out;
        }
        .button .border .left-plane {
            left: 0;
            transform: translateX(-100%);
        }
        .button .border .right-plane {
            right: 0;
            transform: translateX(100%);
        }
        .button .text {
            position: absolute;
            left: 0;
            right: 0;
            top: 50%;
            transform: translateY(-50%);
            transition: .15s ease-out;
        }

        .x-mark {
            right: 10px;
            top: 10px;
            position: absolute;
            cursor: pointer;
            opacity: 0;
        }
        .x-mark:hover .right {
            transform: rotate(-45deg) scaleY(1.2);
        }
        .x-mark:hover .left {
            transform: rotate(45deg) scaleY(1.2);
        }
        .x-mark .container {
            position: relative;
            width: 20px;
            height: 20px;
        }
        .x-mark .left, .x-mark .right {
            width: 2px;
            height: 20px;
            background: white;
            position: absolute;
            border-radius: 3px;
            transition: .15s ease-out;
            margin: 0 auto;
            left: 0;
            right: 0;
        }
        .x-mark .right {
            transform: rotate(-45deg);
        }
        .x-mark .left {
            transform: rotate(45deg);
        }

        .sky-container {
            position: absolute;
            color: white;
            text-transform: uppercase;
            margin: 0 auto;
            right: 0;
            left: 0;
            top: 2%;
            text-align: center;
            opacity: 0;
        }
        @media screen and (min-width: 860px) {
            .sky-container {
                top: 18%;
                right: 12%;
                left: auto;
            }
        }
        .sky-container__left, .sky-container__right {
            display: inline-block;
            vertical-align: top;
            font-weight: bold;
        }
        .sky-container__left h2, .sky-container__right h2 {
            font-family: 'brandon-grotesque', sans-serif;
            font-size: 26px;
            line-height: 26px;
            margin: 0;
        }
        @media screen and (min-width: 860px) {
            .sky-container__left h2, .sky-container__right h2 {
                font-size: 72px;
                line-height: 68px;
            }
        }
        .sky-container__left {
            margin-right: 5px;
        }
        .sky-container .thirty-one {
            letter-spacing: 4px;
        }

        .text-right {
            text-align: right;
        }

        .text-left {
            text-align: left;
        }

        .twitter:hover a {
            transform: rotate(-45deg) scale(1.05);
        }
        .twitter:hover i {
            color: #21c2ff;
        }
        .twitter a {
            bottom: -40px;
            right: -75px;
            transform: rotate(-45deg);
        }
        .twitter i {
            bottom: 7px;
            right: 7px;
            color: #00ACED;
        }

        .social-icon a {
            position: absolute;
            background: white;
            color: white;
            box-shadow: -1px -1px 20px 0px rgba(0, 0, 0, 0.3);
            display: inline-block;
            width: 150px;
            height: 80px;
            transform-origin: 50% 50%;
            transition: .15s ease-out;
        }
        .social-icon i {
            position: absolute;
            pointer-events: none;
            z-index: 1000;
            transition: .15s ease-out;
        }

        .youtube:hover a {
            transform: rotate(45deg) scale(1.05);
        }
        .youtube:hover i {
            color: #ec4c44;
        }
        .youtube a {
            bottom: -40px;
            left: -75px;
            transform: rotate(45deg);
        }
        .youtube i {
            bottom: 7px;
            left: 7px;
            color: #E62117;
        }

    </style>

    <script src="js/prefixfree.min.js"></script>

</head>

<body>
<div class="x-mark">
    <div class="container">
        <div class="left"></div>
        <div class="right"></div>
    </div>
</div>
<div class="intro-container">

    <h1>河北省高尔夫俱乐部 <br>活动管理系统</h1>

    <div class="button shift-camera-button">
        <div class="border">
            <div class="left-plane"></div>
            <div class="right-plane"></div>
        </div>
        <div class="text">点击登陆</div>
    </div>
</div>
<div class="sky-container">
    <div class="page-container">
        <h1>登录</h1>
        <form id="login_form">
            <input type="text" name="usercode" class="usercode" placeholder="请输入您的用户名！">
            <input type="password" name="password" class="password" placeholder="请输入您的用户密码！">
            <button type="button" class="submit_button" id="btn">登陆</button>
            <div class="error"><span>+</span></div>
        </form>
    </div>
</div>


<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/TweenMax.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/three.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/index.js"></script>


</body>
<script>
    $("#btn").click(function(){
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/user/login",
            data:$("#login_form").serialize(),
            dataType:"json",
            error:function(error){
            },success:function(data){
                if(data!=null){
                    alert("登陆成功！")
                    location.href="${pageContext.request.contextPath}/jsps/ok1.jsp";
                    layer.close(index);
                }else{
                    alert(data.message)
                }
            }
        });
    })
    /* $(document).ready(function(){
        $('#login_btn').on('click', function(){
            var num=0;
            var str="";
            $("input[type$='text'],input[type$='password']").each(function(n){
                if($(this).val()=="")
                {
                    layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                        title: '提示框',
                        icon:0,
                    });
                    num++;
                    return false;
                }
            });
            if(num>0){  return false;}else{



            }

        });

        //用户名和密码 校验
       $("input[type='text'],input[type='password']").blur(function(){//失去焦点事件
          var $el = $(this);
          var $parent = $el.parent();
          $parent.attr('class','frame_style').removeClass(' form_error');
          if($el.val()==''){
              $parent.attr('class','frame_style').addClass(' form_error');
          }
      });

      $("input[type='text'],input[type='password']").focus(function(){//获取焦点事件
          var $el = $(this);
          var $parent = $el.parent();
          $parent.attr('class','frame_style').removeClass(' form_errors');
          if($el.val()==''){
              $parent.attr('class','frame_style').addClass(' form_errors');
          } else{
               $parent.attr('class','frame_style').removeClass(' form_errors');
          }
          });
        }) */

</script>
</html>
