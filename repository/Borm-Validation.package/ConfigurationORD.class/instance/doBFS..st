accessing
doBFS: collectionOfConfigurations
	| node predecessors |
	
	[BFSQueue isEmpty] whileFalse: [ 
		(BFSQueue first node className='BormState' and: [BFSQueue first node hasInputConditions])
		ifTrue: [ "kdyz obsahuje input podminku, je nutne provest rozdeleni na nove konfigurace..." BFSQueue removeFirst. ]
		ifFalse:[
			node:=BFSQueue removeFirst.
			predecessors := self getPredecessorsOf: node.
			predecessors do: [ :each | 
				(each tag isNil)ifTrue:[ BFSQueue addLast: each. (node tag)ifTrue: [ each setTagTrue ]ifFalse:[ each setTagFalse ] ]. 
				(each tag=false & node tag=true)ifTrue: [ each setTagTrue. BFSQueue addLast: each. ].
				
			]
		]
		
	 ]