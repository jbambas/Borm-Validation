tests
testCorrectORD
	| validation  |
	validation:=Valid new.
	validation aORD: self ORDMissingStartState.
	
	self assert: validation noPathFromProcessNodeToFinal size equals: 0.