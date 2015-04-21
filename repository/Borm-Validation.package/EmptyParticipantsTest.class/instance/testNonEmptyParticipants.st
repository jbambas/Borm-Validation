tests
testNonEmptyParticipants
	| validation |
	validation:=BormValidator new.
	validation aORD: ORDEmptyParticipants.
	ORDEmptyParticipants participants do: [ :each | each add: BormState new ].
	self assert: validation emptyParticipants isEmpty.