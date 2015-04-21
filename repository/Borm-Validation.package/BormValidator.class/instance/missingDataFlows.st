validation
missingDataFlows

	"Algorithm to find communication that are not associated data flow, return collection of this communications"

	^ (self getCommunications) select: [ :each | each dataFlows size = 0 ].