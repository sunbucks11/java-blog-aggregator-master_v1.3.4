<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" name="viewport"
	content="width=device-width, initial-scale=1">
<title>Spring MVC + Dropzone.js Example</title>

<link rel="stylesheet" type="text/css"
	href='<c:url value="./resources/libs/bootstrap-3.1.1/css/bootstrap.min.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="./resources/libs/bootstrap-dialog/css/bootstrap-dialog.min.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="./resources/css/style.css"/>'>

</head>
<body>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading text-center">
				<h3>Spring MVC + Dropzone.js Example</h3>
			</div>
			<div class="panel-body">

				<a class="btn btn-primary" href="${pageContext.request.contextPath}">
					<span class="glyphicon glyphicon-chevron-left"></span> Go Back</a> <br>
				<br>
				<h4>List of All Uploaded Files</h4>

			</div>
			<table class="table table-hover table-condensed">
				<thead>
					<tr>
						<th width="5%">S.N</th>
						<th width="40%">File Name</th>
						<th width="20%">File Type</th>
						<th width="15%">File Size</th>
						<th width="10%">Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${fileList}" var="dataFile" varStatus="loopCounter">
						<tr>
							<td><c:out value="${loopCounter.count}" /></td>
							<td><c:out value="${dataFile.name}" /></td>
							<td><c:out value="${dataFile.type}" /></td>
							
							<td>
								<c:choose>
									<c:when test="${(dataFile.size < 1024)}">
										${dataFile.size/(1024 * 1.0)} Bytes
									</c:when>
									<c:when
										test="${(dataFile.size >= 1024) && (dataFile.size < 1024*1024)}">
										<fmt:formatNumber value="${dataFile.size/(1024 * 1.0)}"
											maxFractionDigits="2" /> KB
									</c:when>
									<c:when test="${(dataFile.size >= 1024*1024)}">
										<fmt:formatNumber value="${dataFile.size/(1024 * 1024 * 1.0)}"
											maxFractionDigits="2" /> MB
									</c:when>
								</c:choose>
							</td>
							
							<td>
								<a class="btn btn-primary" href="${pageContext.request.contextPath}/get/${dataFile.id}">
									<span class="glyphicon glyphicon-download"></span> Download
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<img alt="Kangoo_image" src="data:image/jpeg;base64,${image}" />
		
<%-- 		<img src="data:image/jpg;base64,<c:out value='${image}'/>" /> --%>
		
<%-- 		<img alt="img" src="data:image/jpg;base64,${image}"/> --%>
		
<%-- 		<div><img src="/getImage.action?imageId=${1}"/></div> --%>

<%--        <img img src="data:image/jpg;base64,<c:out value='${image}'/>" height="75px" width="75px" align="left" /> --%>
		
<%-- 		<img src="data:image/jpg;base64,<c:out value='${image}'/>" /> --%>
		
		
	</div>

	<script type="text/javascript" src='<c:url value="./resources/libs/jquery/jquery-2.1.1.js"/>'></script>
	<script type="text/javascript" src='<c:url value="./resources/libs/bootstrap-3.1.1/js/bootstrap.js"/>'></script>
</body>

</html>