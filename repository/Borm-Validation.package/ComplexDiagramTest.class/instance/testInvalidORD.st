tests
testInvalidORD
	| validation results |
	validation:=BormValidator new.
	validation aORD: ORDComplexInvalid.
	results:=validation run.
	Transcript show: results.
	self assert: results size=9.