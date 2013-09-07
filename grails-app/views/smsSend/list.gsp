
<%@ page import="portcrane.sms.SmsSend" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sms">
		<g:set var="entityName" value="${message(code: 'smsSend.label', default: 'SmsSend')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-smsSend" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
                <li><span class="btitle"><g:message code="default.list.label" args="[entityName]" /></span></li>
			</ul>
		</div>
		<div id="list-smsSend" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
                      <g:sortableColumn property="title" title="${message(code: 'smsSend.title.label', default: 'Title')}" />

						<g:sortableColumn property="messageBody" title="${message(code: 'smsSend.messageBody.label', default: 'Message Body')}" />
					
						<g:sortableColumn property="receiverphone" title="${message(code: 'smsSend.receiverphone.label', default: 'Receiverphone')}" />

                      <g:sortableColumn property="createtime" title="${message(code: 'smsSend.createtime.label', default: 'Createtime')}" />

                      <g:sortableColumn property="status" title="${message(code: 'smsSend.status.label', default: 'Status')}" />
					  <th>操作</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${smsSendInstanceList}" status="i" var="smsSendInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                      <td>${fieldValue(bean: smsSendInstance, field: "title")}</td>

						<td>${fieldValue(bean: smsSendInstance, field: "receiverphone")}</td>

                     <td><g:link action="show" id="${smsSendInstance.id}">${fieldValue(bean: smsSendInstance, field: "createtime")}</g:link></td>

                     <td>${fieldValue(bean: smsSendInstance, field: "status")}</td>

                     <td>${fieldValue(bean: smsSendInstance, field: "messageBody")}</td>
					    <td>
                            <g:form>
                                <fieldset class="buttons">
                                    <g:hiddenField name="id" value="${smsSendInstance?.id}" />
                                    <g:link class="edit" action="edit" id="${smsSendInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                </fieldset>
                            </g:form>
					    </td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${smsSendInstanceTotal}" />
                <div class="nav" role="navigation">
                    <ul>
                        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                    </ul>
                </div>
			</div>
		</div>
	</body>
</html>
