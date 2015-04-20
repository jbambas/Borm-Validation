tests
testBlindBranch
	| validation  |
	validation:=Valid new.
	validation aORD: self ORDBlindBranch.
	
	self assert: validation noPathFromProcessNodeToFinal size equals: 1.