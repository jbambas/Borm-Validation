tests
testUnreachable2States
	| validation  |
	validation:=Valid new.
	validation aORD: ORDUnreachableNodes.
	validation aORD add: BormParticipant new.
	validation aORD participants do: [ :each | each add: BormState new ].

	
	self assert: validation unreachableNodes size equals: 2.