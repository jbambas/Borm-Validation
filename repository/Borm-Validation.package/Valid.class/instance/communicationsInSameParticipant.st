validation
communicationsInSameParticipant
	| communications |
	
	communications:=self getCommunications.
	^ communications select: [ :each | 
		(each sender owner==each receiver owner) & ((self isServiceOrientedParticipant: each sender owner)not) ].
	