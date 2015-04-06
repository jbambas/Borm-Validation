tests
testNotMissingDataFlow
 	| validation |
	validation:=Valid new.
	validation aORD: ORDMissingDataFlows.
	validation getCommunications do: [ :each | each addDataFlow: BormDataFlow new ].
	self assert: validation missingDataFlows isEmpty.