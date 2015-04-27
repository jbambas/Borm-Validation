auxiliar
makeConfigurations: configurations
	configurations do: [ :configuration | 
		configuration doBFS: configurations
	].
	
	



	"configurations add: ((configurations at: 1) copyOfConfiguration )."
	^configurations 