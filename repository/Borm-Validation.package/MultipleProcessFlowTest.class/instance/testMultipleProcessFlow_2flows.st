tests
testMultipleProcessFlow_2flows
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDMultipleProcessFlow.
	
	self assert: validation multipleProcessFlow = 2.