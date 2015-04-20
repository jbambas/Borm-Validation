tests
testUnreachableActivity
	| validation  |
	validation:=Valid new.
	validation aORD: ORDUnreachableNodes.
	
	validation aORD participants do: [ :each | each add: BormActivity new ].
	
	self assert: validation unreachableNodes size equals: 1.