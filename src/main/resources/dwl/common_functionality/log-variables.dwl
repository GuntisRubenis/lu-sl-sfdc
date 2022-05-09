%dw 2.0
output application/json
fun composePrefix(cId) = "[CorrelationId: " ++ cId ++ "]"
---
{
	prefix: composePrefix(correlationId),
	api: app.name
}