auxiliar
auxiliaryMethodNode: node configurations: configurations table: table
	| decisionColumn tmp index |
	decisionColumn:=(node outputDecisionTable findExp2: node outputConditions)values.
	1 to: decisionColumn size do: [ : i | table add: false ].
	
	configurations do: [ :configuration | 
		tmp:=configuration findNode: node.
		(tmp isTaggedAllOutgoingNodes:configuration) ifTrue: [ 
				index:=tmp getIndexOfTruthOfCombination: configuration.
				table at: index put: true.				
		]
		
	 ].