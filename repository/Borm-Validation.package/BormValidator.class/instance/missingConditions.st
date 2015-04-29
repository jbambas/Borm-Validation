validation
missingConditions
	| nodes |
	
	"Algorithm to find missing conditions in decision making, return collection of processNodes, which have any outgoing transitions conditional and other not"
	
	nodes:=OrderedCollection new.
	
	aORD participants do: [ :each | nodes addAll: each nodes ].
	^ nodes select: [ :each | (self validConditionsInNode: each)not ].

