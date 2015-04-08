auxiliar
getNeighborWithCommunication: aState Array: DFSArray
	| aNode neighbors transitions communications  |
	
	"method to find and return neighboring nodes connected with 'aState' by output and input transitions and communications"
	
	neighbors := OrderedCollection new.
	communications := OrderedCollection new.
	transitions := OrderedCollection new.
	aNode:=aState getNode.
	
	transitions addAll: aNode outgoing.
	transitions addAll: aNode incoming.
	
	transitions do: [ :each | neighbors add: each source. neighbors add: each target. ]."upravit aby se do seznamu nepridaval sam stav..."

	(aNode className='BormActivity') 
		ifTrue: [ communications addAll: aNode received. communications addAll: aNode sent ].
	
	communications do: [ :each | neighbors add: each sender. neighbors add: each receiver ].
	
	^ DFSArray select: [ :each | neighbors includes: (each getNode) ]