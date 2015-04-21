tests
testMultipleRoles_2InitialStates
	| validation nodes states |
	validation:=BormValidator new.
	validation aORD: ORDMultipleRoles.
	
	nodes:=OrderedCollection new.
	
	validation aORD participants do: [ :each | nodes addAll: each nodes ].
	states:= nodes select: [ :each | each className = 'BormState' ].
	states do: [ :each | each isInitial: true ].
	
	self assert: validation multipleRolesOfParticipant size equals: 1.