tests
testMultipleProcessFlow_emptyORD
	| validation  |
	validation:=Valid new.
	validation aORD: BormDiagram new.
	
	self assert: validation multipleProcessFlow = 0.