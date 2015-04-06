tests
testCommunicationsInSameParticipant
	| validation |
	validation:=Valid new.
	validation aORD: ORDCommunicationsInSamePart.
	ORDCommunicationsInSamePart participants do: [ :each | each add: BormState new ].
	self assert: validation communicationsInSameParticipant size equals: 1.