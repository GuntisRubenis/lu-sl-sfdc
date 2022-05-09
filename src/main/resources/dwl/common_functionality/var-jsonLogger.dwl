output application/json skipNullOn = "everywhere"
---
{
	"appName": app.name,
	"transactionStage": "CALL-ENTRY",
	"transactionId": correlationId,
	"transactionStartTime": vars.transactionStartTime,
	"resourcePath": attributes.requestUri,
	"httpMethod": attributes.method,
	"httpMethodOverride": attributes.headers.'x-http-method-override',
	("httpHeaders": vars.outboundHeaders) if(vars.outboundHeaders != null)
}