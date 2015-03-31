auxiliar
validConditionsInNode:  aNode
	"pomocná metoda, vraci false, když nekterý z přechodů uzlu má constraint a nekterý ne..."
	| noConstraint |
	noConstraint:=aNode outgoing select: [ :each | each constraint ='' ].
	(noConstraint size=aNode outgoing  size) ifTrue: [ ^ true ].
	(noConstraint size=0) ifTrue: [ ^ true ].
	^ false.