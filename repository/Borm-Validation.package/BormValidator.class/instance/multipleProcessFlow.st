validation
multipleProcessFlow
	| DFSArray counter |
	"Algorithm to find number of component in ORD (number of process flows), return the number of process flows and if the counter is greater than 1, it adds error to list of failures."
	DFSArray := OrderedCollection new.
	aORD participants do: [ :each | DFSArray addAll: (self getDFSstructsForParticipant: each) ].
	counter := 0.
	
	DFSArray do: [ :each | (each isFresh) 
		ifTrue: [ counter:=counter+1. self doDFS: DFSArray state: each counter: counter]
	].

	(counter>1)ifTrue: [ listOfFailures add: ((MultipleProcessFlow new addCollection: DFSArray) numberOfFlows:counter)].
	^ counter.
	
	
