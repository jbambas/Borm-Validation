tests
testMissingBothStates
	| validation  |
	validation:=BormValidator new.
	validation aORD: ORDMissingFinalState.
	ORDMissingFinalState participants do: [ :each | each nodes do: [ :i | (i className='BormState') ifTrue: [ i isInitial: false ] ] ].
	
	self assert: validation missingStartOrFinalState size equals: 1. 