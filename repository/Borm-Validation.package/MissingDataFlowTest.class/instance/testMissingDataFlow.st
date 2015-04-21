tests
testMissingDataFlow
 	| validation |
	validation:=BormValidator new.
	validation aORD: ORDMissingDataFlows.
	self assert: validation missingDataFlows size equals: 1.