auxiliar
checkDecisionTables: aNodes configurations: configurations
	| results checkingTable |
	results:=OrderedCollection new.
	aNodes do: [ :each | 
		checkingTable := OrderedCollection new.
		self auxiliaryMethodNode: each configurations: configurations table: checkingTable. 
		(self controlCheckingTable: checkingTable ofNode: each)ifFalse: [ results add: each ]
	].
	^ results.






	"| checkTable results values decisionTable |
	results:=OrderedCollection new.
	
	aNodes do: [ :node | 
		decisionTable:=node outputDecisionTable. 
		checkTable :=OrderedCollection new.
		configurations do: [ :configuration |  
					values:=OrderedCollection new.
					node outgoing do: [ :i |  values add:(((TempClass new)transition:i)tag:(configuration findNode: i target) tag)].
					values do:[:a | Transcript show:a tag]."
					"...nalezt v decision table kombinaci z values, kdyz je tag stejny jako u nodu, odskrtnout jako true, jinak jako false a jit na dalsi konfig"
			
		"]
		
	].


^configurations."