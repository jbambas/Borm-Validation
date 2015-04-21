tests
testMultipleProcessFlow_1flow
	| validation  |
	validation:=BormValidator new.
	validation aORD: (self ORDMultipleProcessFlow: false).
	
	self assert: validation multipleProcessFlow = 1.