tests
testOfOrConditions
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDDepPrincipleOr.
	
	self assert: validation dependencyPrinciple size equals: 0.