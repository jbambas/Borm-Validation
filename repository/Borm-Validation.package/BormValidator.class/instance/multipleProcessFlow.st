validation
multipleProcessFlow
	| DFSArray counter |
	
	"Algorithm to find number of component in ORD (number of process flows), return ..."
	
	DFSArray := OrderedCollection new.
	aORD participants do: [ :each | DFSArray addAll: (self getDFSstructsForParticipant: each) ].
	counter := 0.
	
	DFSArray do: [ :each | (each isFresh) 
		ifTrue: [ counter:=counter+1. self doDFS: DFSArray state: each counter: counter]
	].

	^ DFSArray. "^counter."
	
	
