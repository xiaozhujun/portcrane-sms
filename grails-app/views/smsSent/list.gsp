
<%@ page import="portcrane.sms.SmsSent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sms">
		<g:set var="entityName" value="${message(code: 'smsSent.label', default: 'SmsSent')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-smsSent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
                <li><span class="btitle"><g:message code="default.list.label" args="[entityName]" /></span></li>
           </ul>
		</div>
		<div id="list-smsSent" class="content scaffold-list" role="main">

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
                     <g:sortableColumn property="title" title="${message(code: 'smsSent.title.label', default: 'Title')}" />

						<g:sortableColumn property="messageBody" title="${message(code: 'smsSent.messageBody.label', default: 'Message Body')}" />
					
						<g:sortableColumn property="receiverphone" title="${message(code: 'smsSent.receiverphone.label', default: 'Receiverphone')}" />

                      <g:sortableColumn property="createtime" title="${message(code: 'smsSent.createtime.label', default: 'Createtime')}" />
                    </tr>
				</thead>
				<tbody>
				<g:each in="${smsSentInstanceList}" status="i" var="smsSentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                      <td>${fieldValue(bean: smsSentInstance, field: "title")}</td>

						<td>${fieldValue(bean: smsSentInstance, field: "messageBody")}</td>
					
						<td>${fieldValue(bean: smsSentInstance, field: "receiverphone")}</td>

                     <td><g:link action="show" id="${smsSentInstance.id}">${fieldValue(bean: smsSentInstance, field: "createtime")}</g:link></td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${smsSentInstanceTotal}" />
                <div class="nav" role="navigation">
                    <ul>
                        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                    </ul>
                </div>
			</div>
		</div>
	</body>
</html>
