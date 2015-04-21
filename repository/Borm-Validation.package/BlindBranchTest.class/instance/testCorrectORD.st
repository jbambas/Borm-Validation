tests
testCorrectORD
	| validation  |
	validation:=BormValidator new.
	validation aORD: self ORDMissingStartState.
	
	self assert: validation noPathFromProcessNodeToFinal size equals: 0.