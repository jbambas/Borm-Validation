tests
testNotMissingStates
	| validation  |
	validation:=Valid new.
	validation aORD: ORDMissingFinalState.
	ORDMissingFinalState participants do: [ :each | each nodes do: [ :i | (i className='BormState') ifTrue: [ i isFinal: true ] ] ].
	
	self assert: validation missingStartOrFinalState size equals: 0. 