tests
testSemestralProjectORD
	| validation results |
	validation:=BormValidator new.
	validation aORD: ORDComplexSemestralWork.
	results:=validation run.
	self assert: results size equals:1.
	self assert: (results at:1) className = 'MissingDataFlows' .