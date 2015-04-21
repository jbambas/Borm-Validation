tests
testMultipleRoles_2roles
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDMultipleRoles.
	
	self assert: validation multipleRolesOfParticipant size equals: 1.