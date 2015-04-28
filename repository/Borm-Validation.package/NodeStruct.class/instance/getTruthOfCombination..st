auxiliar
getTruthOfCombination: configuration
	| values indexes tmp |
	values:=OrderedCollection new.
	node outgoing do:[ :each | values add: (((TempClass new)transition:each)tag:(configuration findNode: each target)tag) ].
	indexes:=OrderedCollection new.
	
	values do:[:each | (each tag=nil)ifTrue: [^nil]].
	
	node outputDecisionTable columns do: [ :each | (each expression className='BormExVariable')
		ifTrue:[
			values do: [:i|(i transition=each expression transition) 
				ifTrue: [ 1 to: (each values size) do: [ :a | ((each values at:a)=(i tag))ifTrue:[indexes add: a] ] ] ]]	
	].
	
	1 to: (node outputDecisionTable columns first values size) do: [ :i | (indexes occurrencesOf: i)=(node outgoing size) ifTrue:[tmp:=i]].
	
	^ ((node outputDecisionTable findExp2: node outputConditions) values at: tmp).
	