tests
testMultipleProcessFlow_1flow
	| validation  |
	validation:=Valid new.
	validation aORD: (self ORDMultipleProcessFlow: false).
	
	self assert: validation multipleProcessFlow = 1.