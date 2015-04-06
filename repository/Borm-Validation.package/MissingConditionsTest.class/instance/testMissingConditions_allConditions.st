tests
testMissingConditions_allConditions
	| validation |
	validation:=Valid new.
	validation aORD: ORDMissingConditions.
	ORDMissingConditions participants do: [ :each | each nodes do: [ :i | i outgoing do: [ :tmp | tmp constraint: 'constraint' ] ] ].
	self assert: validation missingConditions isEmpty.
