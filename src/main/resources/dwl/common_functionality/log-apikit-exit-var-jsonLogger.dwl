%dw 2.0
output application/json
var transactionEndTime = now()
---
{
	"appName": app.name,
	"transactionStage": "APIKIT-EXIT",
	"transactionId": correlationId,
	"transactionStartTime": vars.transactionStartTime,
	"transactionEndTime": transactionEndTime,
	"transactionLatency": (transactionEndTime as Number {unit: "milliseconds"}) - (vars.transactionStartTime as Number {unit: "milliseconds"}),
	("httpResponseStatus": vars.httpResponse) if (!isEmpty(vars.httpResponse))
}