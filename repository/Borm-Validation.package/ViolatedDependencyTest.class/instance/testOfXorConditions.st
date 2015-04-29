tests
testOfXorConditions
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDDepPrincipleXor.
	
	self assert: validation dependencyPrinciple size equals: 0.