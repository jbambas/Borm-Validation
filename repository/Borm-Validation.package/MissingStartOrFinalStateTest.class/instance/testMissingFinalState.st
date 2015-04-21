tests
testMissingFinalState
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDMissingFinalState.
	
	self assert: validation missingStartOrFinalState size equals: 1. 