auxiliar
doDFS: DFSArray state: aState counter: aCounter
	| neighbor |
	
	"method to perform DFS algorithm over processNodes connected by transitions and communications"
	
	aState setComponent: aCounter.
	neighbor:=self getNeighborWithCommunication: aState Array: DFSArray.
	neighbor do: [ :each | self doDFS: DFSArray state: each counter: aCounter ].
	aState setClose.