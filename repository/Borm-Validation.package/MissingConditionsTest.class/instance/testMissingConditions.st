tests
testMissingConditions
	| validation |
	validation:=Valid new.
	validation aORD: ORDMissingConditions.
	
	self assert: validation missingConditions size equals: 1.
