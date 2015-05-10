tests
testValidORD
	| validation results |
	validation:=BormValidator new.
	validation aORD: ORDComplexValid.
	results:=validation run.
	Transcript show: results.
	self assert: results isEmpty.