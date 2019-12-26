<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="elements/head.jsp"  %>
<body>
<div id="main">
	<div class="mainbox">
		<div class="title myMessage png"></div>		
		<div class="menu">
			<span>当前用户：<a href="MsgServlet?action=list">${sessionScope.loginuser}</a></span>
			<span><a href="UserServlet?action=findUsers">发短消息</a></span>
			<span><a href="UserServlet?action=logout">退出</a></span>
		</div>
		<div id="error">${error}</div>
		<div class="content messageList">
			<ul>
			 	<c:forEach var="msg" items="${ msgs }">
			 		<c:if test="${ msg.state == 0 }">
			 			<li class="unReaded">
			 		</c:if>
			 		<c:if test="${ msg.state == 1 }">
			 			<li>
			 		</c:if>
			 		<em><c:out value="${ msg.title }" /></em>
			 		<em><a href=${"UserServlet?action=findUsers&sendto="}${msg.username}${"&state="}${msg.state}>回信</a></em>
			 		<em><a href=${"MsgServlet?action=del&msgid="}${msg.msgid}>删除</a></em>
			 		<p>
			 			<strong><a href=${"MsgServlet?action=read&msgid="}${msg.msgid}${"&state="}${msg.state}><c:out value="${msg.title}"/></a></strong>
			 			<c:out value="${msg.content}"/>
			 		</p>
			 	</c:forEach>
			 </ul>
			 <c:if test="${totalpages!=0}">
			 	当前页数：[${pageIndex}/${totalpages}]
			 </c:if>		 
			  <c:if test="${ pageIndex>1}">    <!-- 控制页面显示风格 -->
			 	<a href="./MsgServlet?pageIndex=1&action=list">首页</a>&nbsp;
    		 	<a href="./MsgServlet?pageIndex=${pageIndex-1}&action=list">上一页</a>
			 </c:if>
			 <c:if test="${ pageIndex<totalpages}">
			    <a href="./MsgServlet?pageIndex=${pageIndex+1}&action=list">下一页</a>
    			<a href="./MsgServlet?pageIndex=${totalpages}&action=list">末页</a>
    		</c:if>
		</div>
	</div>
</div>
</body>
</html>
