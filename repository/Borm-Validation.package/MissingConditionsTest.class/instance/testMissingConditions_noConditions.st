tests
testMissingConditions_noConditions
	| validation |
	validation:=Valid new.
	validation aORD: ORDMissingConditions.
	ORDMissingConditions participants do: [ :each | each nodes do: [ :i | i outgoing do: [ :tmp | tmp constraint: BormConstraint new. ] ] ].
	self assert: validation missingConditions isEmpty.
