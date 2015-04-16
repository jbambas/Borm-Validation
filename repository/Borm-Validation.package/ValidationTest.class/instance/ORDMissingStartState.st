testing - instance creation
ORDMissingStartState
	| aORD aParticipant s1 s2 a1 t1 t2 |
	aORD := BormDiagram new.
	aParticipant := BormParticipant new.
	aORD add: aParticipant.
	s1 := BormState new. s2 := BormState new. s2 isFinal: true.
	a1 := BormActivity new.
	
	aParticipant add: s1. aParticipant add: s2. aParticipant add: a1.
	t1 := BormTransition new. t2 := BormTransition new.
	t1 source: s1. t1 target: a1.
	t2 source: a1. t2 target: s2.
	s1 addTransition: t1.
	a1 addTransition: t1.
	a1 addTransition: t2.
	s2 addTransition: t2.
	
	^ aORD.	