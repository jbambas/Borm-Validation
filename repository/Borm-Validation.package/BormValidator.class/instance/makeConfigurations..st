auxiliar
makeConfigurations: configurations

	[ self isDoneAllConfigurations:configurations ] whileFalse:[
		configurations do: [ :i | i doBFS: configurations.]
	].

	^configurations 