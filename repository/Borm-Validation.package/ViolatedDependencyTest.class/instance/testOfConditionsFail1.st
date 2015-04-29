tests
testOfConditionsFail1
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDDepPrincipleFail1.
	
	self assert: validation dependencyPrinciple size equals: 1.