tests
testOfNestingConditions2
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDDepPrincipleNesting2.
	
	self assert: validation dependencyPrinciple size equals: 0.