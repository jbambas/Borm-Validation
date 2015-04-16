auxiliar
getForegoingNeighbors: aState Array: DFSArray
	| aNode neighbors transitions |

	"method to find and return neighboring nodes connected with 'aState' in the opposite direction of transitions"

	neighbors := OrderedCollection new.
	transitions := OrderedCollection new.
	aNode:=aState getNode.
	
	transitions addAll: aNode incoming.
	transitions do: [ :each | neighbors add: each source. ].

	^ DFSArray select: [ :each | neighbors includes: (each getNode) ]