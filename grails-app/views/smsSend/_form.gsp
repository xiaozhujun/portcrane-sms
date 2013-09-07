<%@ page import="portcrane.sms.SmsSend" %>
<meta name="layout" content="sms">
<div class="fieldcontain ${hasErrors(bean: smsSendInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="smsSend.title.label" default="Title" />

    </label>
    <g:textField name="title" value="${smsSendInstance?.title}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: smsSendInstance, field: 'createtime', 'error')} required">
    <label for="createtime">
        <g:message code="smsSend.createtime.label" default="Createtime" />
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="createtime" precision="day"  value="${smsSendInstance?.createtime}"  />
</div>
<div class="fieldcontain ${hasErrors(bean: smsSendInstance, field: 'receiverphone', 'error')} ">
	<label for="receiverphone">
		<g:message code="smsSend.receiverphone.label" default="Receiverphone" />
		
	</label>
	<g:textField name="receiverphone" value="${smsSendInstance?.receiverphone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: smsSendInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="smsSend.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${smsSendInstance?.status}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: smsSendInstance, field: 'messageBody', 'error')} ">
    <label for="messageBody">
        <g:message code="smsSend.messageBody.label" default="Message Body" />

    </label>
    <g:textField name="messageBody" value="${smsSendInstance?.messageBody}"/>
</div>


