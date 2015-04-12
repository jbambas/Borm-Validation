validation
missingStartOrFinalState
	| results initials finals initsInORD finalsInORD |
	
	"Algorithm to checking, if in ORD are Initial and Final states, and if participants miss initial or final state"
	
	results := OrderedCollection new.
	initsInORD := 0.
	finalsInORD := 0.
	
	(aORD participants select: [ :each | (self isServiceOrientedParticipant: each)=false ]) do: [ :each | 
			initials := self getNumberOfStartsState: each.
			finals := self getNumberOfFinalsState: each.
			(finals=0)ifTrue: [ results add: each ].
			initsInORD := initsInORD + initials.
			finalsInORD := finalsInORD + finals.
	 ].
	
	(initsInORD = 0)|(finalsInORD = 0)
		ifTrue: [ 
			results removeAll. 
			results addAll: (aORD participants) 
		].
	^ results.