accessing
copyOfConfiguration
	| nextConfig |
	nextConfig := ConfigurationORD new.
	nextConfig inputConditionNode: self inputConditionNode.
	nodes do: [ :each | (each tag isNil) 
		ifFalse: [ nextConfig addNode: each ]  
		ifTrue: [ nextConfig addNode: ((NodeStruct new)node:(each node)).  ]
		].
	
	"BFSQueue do: [ :each | nextConfig BFSQueue add: (nextConfig findNode: (each node)) ]."
	nextConfig BFSQueue addAll: self BFSQueue.
	^ nextConfig.