auxiliar
getNumberOfStartsState: aParticipant
	"method to determine the number of initial states in aParticipant"
	^ (aParticipant nodes select: [ :each | each className = 'BormState' and: [ each isInitial ] ]) size