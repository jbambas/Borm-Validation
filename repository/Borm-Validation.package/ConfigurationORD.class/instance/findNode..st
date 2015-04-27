accessing
findNode: aNode 
	nodes do: [ :each | (each node==aNode)ifTrue: [^each] ]