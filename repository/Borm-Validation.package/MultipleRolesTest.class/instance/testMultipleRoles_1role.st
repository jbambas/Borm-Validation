tests
testMultipleRoles_1role
	| validation  |
	validation:=Valid new.
	validation aORD: (self ORDMultipleRoles: false).
	
	self assert: validation multipleRolesOfParticipant size equals: 0.