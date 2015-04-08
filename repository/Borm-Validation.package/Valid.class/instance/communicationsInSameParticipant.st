validation
communicationsInSameParticipant
	| communications |
	
	"algorithm for finding communications that are between activities of one participant, return collection of this communications"
	
	communications:=self getCommunications.
	^ communications select: [ :each | 
		(each sender owner==each receiver owner) & ((self isServiceOrientedParticipant: each sender owner)not) ].
	