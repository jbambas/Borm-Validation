validation
emptyParticipants

	"Algorithm to find participants without states and activities, return collection of this empty participants"

	 ^ aORD participants select: [ :each | each nodes size = 0]

	
