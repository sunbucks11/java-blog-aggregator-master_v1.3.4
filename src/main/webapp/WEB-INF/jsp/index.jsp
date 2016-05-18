<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>

<!-- <span style="float: right">Language : <a href="?language=en">English</a>|<a href="?language=zh_CN">Chinese</a> </span> -->

<!-- <h1>Latest news from the Java world:</h1> -->
<%-- <h2>welcome.springmvc : <spring:message code="welcome.springmvc" text="welcome.springmvc" /></h2> --%>
<%-- Current Locale : ${pageContext.response.locale} --%>

<div class="container">
<div class="wrapper">



<h1><spring:message code="index.title" text=" Title" /></h1>

<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr>
<!-- 	  <th>date</th>
		  <th>item</th> -->
		  <th><spring:message code="index.date" text=" Date" /></th>
		  <th><spring:message code="index.item" text=" Item" /></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${items}" var="item">
			<tr>
				<td>
					<c:out value="${item.publishedDate}" />
					<br />
					<c:out value="${item.blog.name}" />
				</td>
				<td>
					<strong>
						<a href="<c:out value="${item.link}" />" target="_blank">
							<c:out value="${item.title}" />
						</a>
					</strong>
					<br />
					${item.description}
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>

</div>