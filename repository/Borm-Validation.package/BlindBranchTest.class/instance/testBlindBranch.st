tests
testBlindBranch
	| validation  |
	validation:=BormValidator new.
	validation aORD: self ORDBlindBranch.
	
	self assert: validation noPathFromProcessNodeToFinal size equals: 1.