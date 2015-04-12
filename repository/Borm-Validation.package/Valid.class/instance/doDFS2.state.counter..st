auxiliar
doDFS2: DFSArray state: aState counter: aCounter
	| neighbor |
	
	"method to perform DFS algorithm over processNodes connected only by transitions"
	
	aState setComponent: aCounter.
	neighbor:=self getNeighborByTransitions: aState Array: DFSArray.
	neighbor do: [ :each | self doDFS2: DFSArray state: each counter: aCounter ].
	aState setClose.