tests
testMultipleProcessFlow_2flows
	| validation  |
	validation:=Valid new.
	validation aORD: ORDMultipleProcessFlow.
	
	self assert: validation multipleProcessFlow = 2.