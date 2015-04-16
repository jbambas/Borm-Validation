validation
noPathFromProcessNodeToFinal
	| DFSArray finals participants |
	
	"...todo..."
	
	DFSArray := OrderedCollection new.
	participants:=aORD participants select: [ :each | (self isServiceOrientedParticipant: each)not ].
	participants do: [ :each | DFSArray addAll: (self getDFSstructsForParticipant: each) ].
	finals := DFSArray select: [ :each | (each getNode className = 'BormState') and: [(each getNode isFinal)]  ].
	
	finals do: [ :each | self doReversBFS: DFSArray node: each ].
	^ (DFSArray select: [ :each | each isFresh ]) collect: [ :each | each getNode ].