tests
testSemestralProjectORD
	| validation results |
	validation:=BormValidator new.
	validation aORD: ORDComplexSemestralWork.
	results:=validation run.
	self assert: results listOfFailures isEmpty not.