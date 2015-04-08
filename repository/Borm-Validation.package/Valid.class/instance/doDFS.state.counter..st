auxiliar
doDFS: DFSArray state: aState counter: aCounter
	| neighbor |
	
	"method to perform DFS algorithm over processNodes connected by transitions and communications"
	
	aState setOpen.
	aState setComponent: aCounter.
	neighbor:=self getNeighborWithCommunication: aState Array: DFSArray.
	neighbor do: [ :each | (each isFresh) ifTrue: [ self doDFS: DFSArray state: each counter: aCounter ] ].
	aState setClose.