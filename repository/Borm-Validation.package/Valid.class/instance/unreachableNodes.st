validation
unreachableNodes
	| DFSArray initials |
	
	"Algorithm to find processNodes that are unreachable from initial states, return collection of this nodes."
	
	DFSArray := OrderedCollection new.
	
	aORD participants do: [ :each | DFSArray addAll: (self getDFSstructsForParticipant: each) ].
	initials := DFSArray select: [ :each | (each getNode className = 'BormState') and: [(each getNode isInitial)]  ].
	initials do: [ :each | self doBFS: DFSArray node: each ].
	^ (DFSArray select: [ :each | each isFresh ]) collect: [ :each | each getNode ].