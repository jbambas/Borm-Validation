tests
testOfAndConditions
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDDepPrincipleAnd.
	
	self assert: validation dependencyPrinciple size equals: 0.