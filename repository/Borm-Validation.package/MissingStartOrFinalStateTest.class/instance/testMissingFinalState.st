tests
testMissingFinalState
	| validation  |
	validation:=Valid new.
	validation aORD: ORDMissingFinalState.
	
	self assert: validation missingStartOrFinalState size equals: 1. 