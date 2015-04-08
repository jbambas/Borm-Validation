validation
missingConditions
	| nodes result |
	
	"Algorithm to find missing conditions in decision making, return collection of processNodes, which have any outgoing transitions conditional and other not"
	
	nodes:=OrderedCollection new.
	result:=OrderedCollection new.
	
	aORD participants do: [ :each | nodes addAll: each nodes ].
	nodes do: [ :each | (self validConditionsInNode: each)=false ifTrue: [ result add: each ] ].
	
	^ result.
