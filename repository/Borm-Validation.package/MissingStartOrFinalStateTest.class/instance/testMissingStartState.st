tests
testMissingStartState
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDMissingStartState.
	
	self assert: validation missingStartOrFinalState size equals: 1. 