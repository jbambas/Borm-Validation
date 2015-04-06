validation
missingDataFlows

	^ (self getCommunications) select: [ :each | each dataFlows size = 0 ].