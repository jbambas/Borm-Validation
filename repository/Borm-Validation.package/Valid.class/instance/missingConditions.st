validation
missingConditions
	| nodes result |
	nodes:=OrderedCollection new.
	result:=OrderedCollection new.
	
	aORD participants do: [ :each | nodes addAll: each nodes ].
	nodes do: [ :each | (self validConditionsInNode: each)=false ifTrue: [ result add: each ] ].
	
	^ result.
