tests
testMissingConditions
	| validation |
	validation:=BormValidator new.
	validation aORD: ORDMissingConditions.
	
	self assert: validation missingConditions size equals: 1.
