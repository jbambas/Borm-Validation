tests
testOfConditionsFail2
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDDepPrincipleFail2.
	
	self assert: validation dependencyPrinciple size equals: 1.