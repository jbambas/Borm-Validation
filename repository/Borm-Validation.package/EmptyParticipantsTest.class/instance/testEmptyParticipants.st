tests
testEmptyParticipants
	| validation |
	validation:=BormValidator new.
	validation aORD: ORDEmptyParticipants.
	self assert: validation emptyParticipants size equals: 1.
	self deny: validation emptyParticipants isEmpty.