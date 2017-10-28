<%@page pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	response.sendRedirect(basePath+"index");
%>
<html lang="zh-cn">
<body>
	666
</body>

</body>
</html>