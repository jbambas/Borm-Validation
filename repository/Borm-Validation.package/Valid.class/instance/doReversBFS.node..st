auxiliar
doReversBFS: DFSArray node: aNode
	| aQueue neighbors node|
	
	"method to perform BFS algorithm in reverse order, from final state to initial state"
	
	aQueue:=OrderedCollection new.
	aQueue addLast: aNode.
	aNode setOpen.
	
	[aQueue isEmpty] whileFalse: [
			node:=aQueue removeFirst.
			neighbors := self getForegoingNeighbors: node Array: DFSArray.
			neighbors do: [ :each | (each isFresh) ifTrue: [aQueue addLast: each. each setOpen.] ].
			aNode setClose.
	].
