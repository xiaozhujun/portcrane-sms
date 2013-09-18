<%@ page import="portcrane.sms.SmsSent" %>
<meta name="layout" content="sms">

<div class="fieldcontain ${hasErrors(bean: smsSentInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="smsSent.title.label" default="Title" />

    </label>
    <g:textField name="title" value="${smsSentInstance?.title}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: smsSentInstance, field: 'receiverphone', 'error')} ">
	<label for="receiverphone">
		<g:message code="smsSent.receiverphone.label" default="Receiverphone" />
		
	</label>
	<g:textField name="receiverphone" value="${smsSentInstance?.receiverphone}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: smsSentInstance, field: 'createtime', 'error')} required">
    <label for="createtime">
        <g:message code="smsSent.createtime.label" default="Createtime" />
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="createtime" precision="day"  value="${smsSentInstance?.createtime}"  />
</div>
<div class="fieldcontain ${hasErrors(bean: smsSentInstance, field: 'messageBody', 'error')} ">
    <label for="messageBody">
        <g:message code="smsSent.messageBody.label" default="Message Body" />

    </label>
    %{--<g:textField name="messageBody" value="${smsSentInstance?.messageBody}"/>--}%
      <g:textArea name="messageBody" value="${smsSentInstance?.messageBody}"/>
</div>


