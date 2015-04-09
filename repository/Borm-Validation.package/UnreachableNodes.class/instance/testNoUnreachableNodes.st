tests
testNoUnreachableNodes
	| validation  |
	validation:=Valid new.
	validation aORD: ORDUnreachableNodes.
	
	self assert: validation unreachableNodes size equals: 0.