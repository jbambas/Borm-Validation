validation
emptyParticipants
	"vrátí kolekci obsahující participanty bez uzlů, tzn. bez aktivit a stavů... když je kolekce prázdná, tato chyba v diagramu není..."
	 ^ aORD participants select: [ :each | each nodes size=0]

	
