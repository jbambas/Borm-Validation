tests
testNotMissingDataFlow
 	| validation |
	validation:=BormValidator new.
	validation aORD: ORDMissingDataFlows.
	validation getCommunications do: [ :each | each addDataFlow: BormDataFlow new ].
	self assert: validation missingDataFlows isEmpty.