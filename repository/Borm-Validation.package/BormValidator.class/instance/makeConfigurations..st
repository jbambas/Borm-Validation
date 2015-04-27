auxiliar
makeConfigurations: configurations
	| startSize |
	startSize:=0.
	[ startSize=configurations size ] whileFalse:[
		startSize := configurations size.
		configurations do: [ :i | i doBFS: configurations.]
	].

	^configurations 