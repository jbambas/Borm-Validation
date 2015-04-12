auxiliar
getNumberOfFinalsState: aParticipant
	"method to determine the number of final states in aParticipant"
	^ (aParticipant nodes select: [ :each | each className = 'BormState' and: [ each isFinal ] ]) size