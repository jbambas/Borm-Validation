tests
testServicedOrientPartic
	| validation |
	validation:=Valid new.
	validation aORD: ORDCommunicationsInSamePart.
	self assert: validation communicationsInSameParticipant isEmpty.