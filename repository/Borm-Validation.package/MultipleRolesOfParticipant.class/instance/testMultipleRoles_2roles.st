tests
testMultipleRoles_2roles
	| validation  |
	validation:=Valid new.
	validation aORD: ORDMultipleRoles.
	
	self assert: validation multipleRolesOfParticipant size equals: 1.