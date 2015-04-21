tests
testNoUnreachableNodes
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDUnreachableNodes.
	
	self assert: validation unreachableNodes size equals: 0.