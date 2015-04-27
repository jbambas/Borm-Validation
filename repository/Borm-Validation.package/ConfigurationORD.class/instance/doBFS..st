accessing
doBFS: collectionOfConfigurations
	| node predecessors tmp |
	
	[BFSQueue isEmpty] whileFalse: [ 
		(BFSQueue first node className='BormState' and: [BFSQueue first node hasInputConditions])
		ifTrue: [  
			node:=BFSQueue removeFirst. 
			node getIndexesOfValidCombinations do: [ :index | 
				tmp:=self copyOfConfiguration.
				collectionOfConfigurations addLast: tmp.
				node node inputDecisionTable columns do:[ :each | 
					(each expression className='BormExVariable') ifTrue: [ 
						tmp BFSQueue addLast: ((tmp findNode:(each expression transition source))setTag:(each values at: index)).
						]
					].
			].collectionOfConfigurations remove: self.
		]
	
		ifFalse:[
			node:=BFSQueue removeFirst.
			predecessors := self getPredecessorsOf: node.
			predecessors do: [ :each | 
				(each tag isNil)ifTrue:[ BFSQueue addLast: each. (node tag)ifTrue: [ each setTagTrue ]ifFalse:[ each setTagFalse ] ]. 
				(each tag=false & node tag=true)ifTrue: [ each setTagTrue. BFSQueue addLast: each. ].
				
			]
		]	
	 ]