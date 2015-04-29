tests
testInvalidORD
	| validation results |
	validation:=BormValidator new.
	validation aORD: ORDComplexInvalid.
	results:=validation run.
	self assert: results listOfFailures isEmpty not.