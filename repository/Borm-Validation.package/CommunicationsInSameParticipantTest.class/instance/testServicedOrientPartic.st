tests
testServicedOrientPartic
	| validation |
	validation:=BormValidator new.
	validation aORD: ORDCommunicationsInSamePart.
	self assert: validation communicationsInSameParticipant isEmpty.