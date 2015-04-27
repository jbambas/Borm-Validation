auxiliar
getIndexesOfValidCombinations: aNode
	| tmp indexes |
	tmp:=OrderedCollection new.
	indexes:=OrderedCollection new.
	tmp addAll: (aNode inputDecisionTable findExp: (aNode inputConditions) )values .
	1 to: tmp size do: [ :i | (tmp at: i) ifTrue: [ indexes add: i ] ].
	^indexes.
