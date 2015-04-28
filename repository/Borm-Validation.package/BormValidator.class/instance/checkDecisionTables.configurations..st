auxiliar
checkDecisionTables: aNodes configurations: configurations


	aNodes do:[:each | 
		configurations do: [ :i | Transcript show: (i findNode: each)node;cr. ]	
	].
^configurations.