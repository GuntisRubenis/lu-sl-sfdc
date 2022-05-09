%dw 2.0
output application/json skipNullOn="everywhere"
---
{
	'client_id': attributes.headers['client_id'],
	'X-Channel': attributes.headers['X-Channel'],
	'X-Correlation-id': 
		(if (isEmpty(attributes.headers['X-Correlation-id']))
			correlationId
		else 
			attributes.headers['X-Correlation-id']	
	), 
	'X-Session': attributes.headers['X-Session'],
	'X-User': attributes.headers['X-User'],
	'X-Consumer': attributes.headers['X-Consumer'],
	'X-Location': attributes.headers['X-Location'],
	'X-Location-id': attributes.headers['X-Location-id'],
	'X-Campaign-id': attributes.headers['X-Campaign-id'],
	(vars.additionalAttributes)
}