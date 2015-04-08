auxiliar
isServiceOrientedParticipant: aParticipant
	
	"method to control, if 'aParticipant' is service oriented participant, ie. without states"

	^ (aParticipant nodes select: [ :each | each className='BormState' ])size=0