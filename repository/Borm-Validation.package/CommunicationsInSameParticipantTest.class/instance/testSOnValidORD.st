tests
testSOnValidORD
	| validation |
	validation:=BormValidator new.
	validation aORD: (self ORDMultipleProcessFlow: false).
	self assert: validation communicationsInSameParticipant isEmpty.