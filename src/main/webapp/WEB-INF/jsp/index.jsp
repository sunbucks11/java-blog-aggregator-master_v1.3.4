<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>

<div class="container">
<div class="wrapper">

  <div class="jumbotron">
    <h1><spring:message code="index.banner.h1" text=" " /></h1>
    <p><spring:message code="index.banner.h2" text=" " /></p>
    <p>
        <a class="btn btn-default btn-primary btn-sm" href="/admin-tool/help"><spring:message code="index.btn.learn-more" text=" " /> &raquo;</a>
        <a class="btn btn-default btn-primary btn-sm" href="/admin-tool/faq"><spring:message code="index.btn.faq" text=" " /> &raquo;</a>
    </p>
  </div>

  <div class="page-header">
          <h2><spring:message code="index.headline" text=" " /> <small>&nbsp;<spring:message code="index.subheadline" text=" " /></small></h2>
  </div>
  
  <div class="row">
        <div class="col-md-3">
          <label>
            <h3><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> <a href="/RolesManagement"><spring:message code="index.roles.h1" text=" " /></a></h3>
            <p><spring:message code="index.roles.h2" text=" " /></p>
          </label>
        </div>
        
        <div class="col-md-3">
          <label>
            <h3><span class="glyphicon glyphicon-user" aria-hidden="true"></span> <a href="/UserManagement"><spring:message code="index.members.h1" text=" " /></a></h3>
            <p><spring:message code="index.members.h2" text=" " /></p>
          </label>
        </div>
        
        <div class="col-md-3">
          <label>
            <h3><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> <a href="/FieldsManagement"><spring:message code="index.fields.h1" text=" " /></a></h3>
            <p><spring:message code="index.fields.h2" text=" " /></p>
          </label>
        </div>
        
        <div class="col-md-3">
          <label>
            <h3><span class="glyphicon glyphicon-th" aria-hidden="true"></span> <a href="/DomainsManagement"><spring:message code="index.domains.h1" text=" " /></a> <small class="muted">*</small></h3>
            <p><spring:message code="index.domains.h2" text=" " /></p>
          </label>
          <p class="muted"><strong>*</strong> <spring:message code="index.domains.h3" text=" " /></p>        
        </div>
      </div> <!-- /row -->
      
      
      <div class="row">
        <div class="col-md-3">
          <label>
            <h3><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> <a href="/audit"><spring:message code="index.audit.h1" text=" " /></a> <small class="muted">*</small></h3>
            <p><spring:message code="index.audit.h2" text=" " /></p>
          </label>
          <p class="muted"><strong>*</strong><spring:message code="index.audit.h3" text=" " /></p>        
        </div>
        
        <div class="col-md-3">
          <label>
            <h3><span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span> <a href="/tools"><spring:message code="index.tools.h1" text=" " /></a></h3>
            <p><spring:message code="index.tools.h2" text=" " /></p>
          </label>
        </div>
        <div class="col-md-3">
          <label>
            <h3><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> <a href="/settings"><spring:message code="index.settings.h1" text=" " /></a></h3>
            <p><spring:message code="index.settings.h2" text=" " /></p>
          </label>
        </div>
        <div class="col-md-3">
          <label>
            <h3><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> <a href="/api"><spring:message code="index.api.h1" text=" " /></a></h3>
            <p><spring:message code="index.api.h2" text=" " /></p>
          </label>
        </div>
      </div> <!-- /row -->
     <div class="row">
        <div class="col-md-3">
          <label>
            <h3><span class="glyphicon glyphicon-book" aria-hidden="true"></span> <a href="/help"><spring:message code="index.help.h1" text=" " /></a></h3>
            <p><spring:message code="index.help.h2" text=" " /></p>
          </label>
        </div>
        <div class="col-md-3">
          <label>
            <h3><span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span> <a href="/faq"><spring:message code="index.faq.h1" text=" " /></a></h3>
            <p><spring:message code="index.faq.h2" text=" " /></p>
          </label>
       </div>
  </div> <!-- /row -->
 
        </div><!--/.fluid-container-->
        <div class="push"><!--//--></div>
    </div>
    
    

















<!-- 
<h1><spring:message code="index.title" text=" Title" /></h1>

<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr>
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
 -->
