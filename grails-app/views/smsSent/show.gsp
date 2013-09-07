
<%@ page import="portcrane.sms.SmsSent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sms">
		<g:set var="entityName" value="${message(code: 'smsSent.label', default: 'SmsSent')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-smsSent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-smsSent" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list smsSent">
			
				<g:if test="${smsSentInstance?.createtime}">
				<li class="fieldcontain">
					<span id="createtime-label" class="property-label"><g:message code="smsSent.createtime.label" default="Createtime" /></span>
					
						<span class="property-value" aria-labelledby="createtime-label"><g:formatDate date="${smsSentInstance?.createtime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${smsSentInstance?.messageBody}">
				<li class="fieldcontain">
					<span id="messageBody-label" class="property-label"><g:message code="smsSent.messageBody.label" default="Message Body" /></span>
					
						<span class="property-value" aria-labelledby="messageBody-label"><g:fieldValue bean="${smsSentInstance}" field="messageBody"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${smsSentInstance?.receiverphone}">
				<li class="fieldcontain">
					<span id="receiverphone-label" class="property-label"><g:message code="smsSent.receiverphone.label" default="Receiverphone" /></span>
					
						<span class="property-value" aria-labelledby="receiverphone-label"><g:fieldValue bean="${smsSentInstance}" field="receiverphone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${smsSentInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="smsSent.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${smsSentInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${smsSentInstance?.id}" />
					<g:link class="edit" action="edit" id="${smsSentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
