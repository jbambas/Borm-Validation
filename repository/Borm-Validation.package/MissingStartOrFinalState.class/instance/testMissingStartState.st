tests
testMissingStartState
	| validation  |
	validation:=Valid new.
	validation aORD: ORDMissingStartState.
	
	self assert: validation missingStartOrFinalState size equals: 1. 