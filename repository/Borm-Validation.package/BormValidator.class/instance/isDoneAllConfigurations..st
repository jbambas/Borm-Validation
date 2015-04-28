auxiliar
isDoneAllConfigurations: configurations
	configurations do: [ :each | each isEmptyBFSQueue ifFalse: [^false] ].
	^true.