%dw 2.0
output application/json skipNullOn="everywhere"
---
{
	"X-Channel" : vars.inboundAttributes['X-Channel'],
	"X-Correlation-id" : vars.inboundAttributes['X-Correlation-id'],
	"X-Session" : vars.inboundAttributes['X-Session'],
	"X-User" : vars.inboundAttributes['X-User'],
	"X-Consumer" : vars.inboundAttributes['X-Consumer'],
	"X-Location" : vars.inboundAttributes['X-Location'],
	"X-Location-id" : vars.inboundAttributes['X-Location-id'],
	"X-Campaign-id" : vars.inboundAttributes['X-Campaign-id']
}