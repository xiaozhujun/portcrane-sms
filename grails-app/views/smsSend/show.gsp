
<%@ page import="portcrane.sms.SmsSend" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sms">
		<g:set var="entityName" value="${message(code: 'smsSend.label', default: 'SmsSend')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-smsSend" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-smsSend" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list smsSend">
                <g:if test="${smsSendInstance?.title}">
                    <li class="fieldcontain">
                        <span id="title-label" class="property-label"><g:message code="smsSend.title.label" default="Title" /></span>
                        <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${smsSendInstance}" field="title"/></span>
                    </li>
                </g:if>
				<g:if test="${smsSendInstance?.createtime}">
				<li class="fieldcontain">
					<span id="createtime-label" class="property-label"><g:message code="smsSend.createtime.label" default="Createtime" /></span>
					
						<span class="property-value" aria-labelledby="createtime-label"><g:formatDate date="${smsSendInstance?.createtime}" /></span>
				</li>
				</g:if>
                <g:if test="${smsSendInstance?.receiverphone}">
                    <li class="fieldcontain">
                        <span id="receiverphone-label" class="property-label"><g:message code="smsSend.receiverphone.label" default="Receiverphone" /></span>

                        <span class="property-value" aria-labelledby="receiverphone-label"><g:fieldValue bean="${smsSendInstance}" field="receiverphone"/></span>
                    </li>
                </g:if>
                <g:if test="${smsSendInstance?.status}">
                    <li class="fieldcontain">
                        <span id="status-label" class="property-label"><g:message code="smsSend.status.label" default="Status" /></span>

                        <span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${smsSendInstance}" field="status"/></span>

                    </li>
                </g:if>
                <g:if test="${smsSendInstance?.messageBody}">
				<li class="fieldcontain">
					<span id="messageBody-label" class="property-label"><g:message code="smsSend.messageBody.label" default="Message Body" /></span>
					
						<span class="property-value" aria-labelledby="messageBody-label"><g:fieldValue bean="${smsSendInstance}" field="messageBody"/></span>
				</li>
				</g:if>
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${smsSendInstance?.id}" />
					<g:link class="edit" action="edit" id="${smsSendInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
