auxiliar
isServiceOrientedParticipant: aParticipant
	^ (aParticipant nodes select: [ :each | each className='BormState' ])size=0