tests
testNonEmptyParticipants
	| validation |
	validation:=Valid new.
	validation aORD: ORDEmptyParticipants.
	ORDEmptyParticipants participants do: [ :each | each add: BormState new ].
	self assert: validation emptyParticipants isEmpty.