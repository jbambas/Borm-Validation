tests
testMultipleProcessFlow_emptyORD
	| validation  |
	validation:=BormValidator new.
	validation aORD: BormDiagram new.
	
	self assert: validation multipleProcessFlow = 0.