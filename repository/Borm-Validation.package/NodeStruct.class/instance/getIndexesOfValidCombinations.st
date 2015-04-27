auxiliar
getIndexesOfValidCombinations
	| tmp indexes |
	tmp:=OrderedCollection new.
	indexes:=OrderedCollection new.
	tmp addAll: ( node inputDecisionTable findExp2: ( node inputConditions) )values .
	1 to: tmp size do: [ :i | (tmp at: i) ifTrue: [ indexes add: i ] ].
	^indexes.
