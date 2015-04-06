tests
testMissingDataFlow
 	| validation |
	validation:=Valid new.
	validation aORD: ORDMissingDataFlows.
	self assert: validation missingDataFlows size equals: 1.
	self deny: validation missingDataFlows isEmpty.