validation
dependencyPrinciple
	| inputConditionsNodes outputConditionsNodes nodes configurations initialConfig| 
	configurations:=OrderedCollection new.
	nodes:=OrderedCollection new.
	aORD participants do: [ :each | nodes addAll: (each nodes) ].
	
	inputConditionsNodes := nodes select: [ :each | (each className = 'BormState') and: [ each hasInputConditions ] ].
	outputConditionsNodes := nodes select: [ :each | (each className = 'BormState') and: [ each hasOutputConditions ] ].
	
	inputConditionsNodes do: [ :each | each fillTable ].
	outputConditionsNodes do: [ :each | each fillTable ].

	inputConditionsNodes do: [ :each | 
		initialConfig := ConfigurationORD new.	
		nodes do: [ : i | initialConfig addNode: ((NodeStruct new)node:i)].
		initialConfig inputConditionNode: ((initialConfig findNode: each)setTagTrue).
		initialConfig BFSQueue addLast: (initialConfig findNode: each).
		configurations add: initialConfig .
		 ].

	self makeConfigurations: configurations.
	^ self checkDecisionTables: outputConditionsNodes configurations: configurations.
