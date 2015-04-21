tests
testCommunicationsInSameParticipant
	| validation |
	validation:=BormValidator new.
	validation aORD: ORDCommunicationsInSamePart.
	ORDCommunicationsInSamePart participants do: [ :each | each add: BormState new ].
	self assert: validation communicationsInSameParticipant size equals: 1.