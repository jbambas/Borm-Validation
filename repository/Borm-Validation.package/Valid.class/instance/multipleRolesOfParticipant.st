validation
multipleRolesOfParticipant
	| results counter DFSArray |
	
	"Algorithm to find participants which can be divided into more participants, return collection of this participants."
	
	results:=OrderedCollection new.

	aORD participants do: [ :each | (self isServiceOrientedParticipant: each) ifFalse: [ 
				DFSArray:=self getDFSstructsForParticipant: each.
				counter:=0.
				DFSArray do: [ : i | (i isFresh) 
					ifTrue: [i setOpen. counter:=counter+1. self doDFS2: DFSArray state: i counter: counter]
				].
				(counter>1) ifTrue: [ results add: each ]
				ifFalse:[
					((DFSArray select: [ :i | (i getNode className = 'BormState') and: [(i getNode isInitial)] ])size>1)
					"if number of initial states in participant is bigger than 1, add to results"
					ifTrue:[ results add: each ].
				].
	 ] ].
	^ results.