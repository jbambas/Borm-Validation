tests
testOfNestingConditions1
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDDepPrincipleNesting1.
	
	self assert: validation dependencyPrinciple size equals: 0.