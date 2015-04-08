auxiliar
validConditionsInNode:  aNode

	"Method to check whether all outgoing transitions from the node are conditional or not, if is some conditional and some unconditional, it returns false."
	
	| noConstraint |
	noConstraint:=aNode outgoing select: [ :each | each constraint ='' ].
	((noConstraint size)=(aNode outgoing  size)) ifTrue: [ ^ true ].
	(noConstraint size=0) ifTrue: [ ^ true ].
	^ false.