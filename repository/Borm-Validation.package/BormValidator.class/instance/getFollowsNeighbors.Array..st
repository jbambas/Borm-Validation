auxiliar
getFollowsNeighbors: aState Array: DFSArray
	| aNode neighbors transitions communications  |

	"method to find and return neighboring nodes connected with 'aState' in direction of communications and transitions"

	neighbors := OrderedCollection new.
	communications := OrderedCollection new.
	transitions := OrderedCollection new.
	aNode:=aState getNode.
	
	transitions addAll: aNode outgoing.
	transitions do: [ :each | neighbors add: each target. ].

	(aNode className='BormActivity') 
		ifTrue: [ communications addAll: aNode sent ].
	
	communications do: [ :each | neighbors add: each receiver ].
	^ DFSArray select: [ :each | neighbors includes: (each getNode) ]