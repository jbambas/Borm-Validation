auxiliar
controlCheckingTable: checkingTable ofNode: node
	| decisionColumn counterOfTrues counterOfFalses |
	counterOfTrues := 0.
	counterOfFalses := 0.
	decisionColumn:=(node outputDecisionTable findExp2: node outputConditions)values.
	1 to: decisionColumn size do: [ :index | 
		((decisionColumn at: index)and: [checkingTable at: index]) ifTrue:[ counterOfTrues := counterOfTrues + 1 ].
		((decisionColumn at: index)and: [(checkingTable at: index)not]) ifTrue:[ ^ false ].
		(((decisionColumn at: index) not )and: [checkingTable at: index]) ifTrue:[ counterOfFalses := counterOfFalses + 1 ].
		(((decisionColumn at: index)not) and: [(checkingTable at: index)not])ifTrue:[].
	].
	(counterOfFalses = 0) ifTrue: [ ^ true ]
	ifFalse:[ ((counterOfTrues + counterOfFalses) = (decisionColumn size)) ifTrue: [ ^ true ] ].
	^ false.