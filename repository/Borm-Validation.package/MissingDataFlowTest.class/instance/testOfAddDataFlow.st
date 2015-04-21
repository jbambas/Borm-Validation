tests
testOfAddDataFlow
 	| validation |
	validation:=BormValidator new.
	validation aORD: ORDMissingDataFlows.
	self assert: validation missingDataFlows size equals: 1.
	validation getCommunications do: [ :each | each addDataFlow: BormDataFlow new ].
	self assert: validation missingDataFlows isEmpty.