<%--
  Created by IntelliJ IDEA.
  User: hyl11
  Date: 2022/10/16
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>疫情防控调查问卷</title>
</head>
<body>
<h1 >疫情防控调查问卷</h1>
</td>
<span style="font-size: medium; ">请输入您的学号</span>
<br>
<input type="text" align="center" size="30" maxlength="30" value=""
       style="height: 30px;width: 200px">
<br>
<span style="font-size: medium; ">选择以下自己出现的症状</span>
<p>
    <input type="checkbox" value="fever" name="symptoms">发热
    <input type="checkbox" value="cough" name="symptoms">咳嗽
    <input type="checkbox" value="fatigue" name="symptoms">乏力
    <input type="checkbox" value="diarrhea" name="symptoms">腹泻
    <input type="checkbox" value="asymptomatic" name="symptoms">无症状
</p>
<br>
<span style="font-size: medium; ">近十四天，是否有中高风险地区人员接触史</span>
<p>
    <input type="radio" value="yes" name="ContactHistory">是
    <input type="radio" value="no" name="ContactHistory">否
</p>
<br>
<span style="font-size: medium; ">健康码有无异常</span>
<p>
    <input type="radio" value="yes" name="abnormal">是
    <input type="radio" value="no" name="abnormal">否
</p>
<br>
<span style="font-size: medium; ">您去了郑州哪些地区</span>
<p>
    <select name="" size="6" multiple="multiple" style="height: 80px;width: 200px">
        <option value="">高新区</option>
        <option value="">二七区</option>
        <option value="">郑东新区</option>
        <option value="">管城回族区</option>
        <option value="">惠济区</option>
        <option value="">金水区</option>
        <option value="">中原区</option>
        <option value="">上街区</option>
    </select>
</p>
<button style="height: 60px;width: 100px">提交</button>

</body>
</html>
