tests
testAddEmptyParticipants
	| validation |
	validation:=Valid new.
	validation aORD: ORDEmptyParticipants.
	ORDEmptyParticipants participants do: [ :each | each add: BormState new ].
	self assert: validation emptyParticipants isEmpty.
	ORDEmptyParticipants add: BormParticipant new.
	self assert: validation emptyParticipants size equals:1.