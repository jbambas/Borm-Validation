tests
testValidORD
	| validation results |
	validation:=BormValidator new.
	validation aORD: ORDComplexValid.
	results:=validation run.
	self assert: results listOfFailures isEmpty.