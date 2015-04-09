testing - instance creation
ORDMultipleRoles: expresion
	| aORD participantA s1 s2 a1 t1 t2 |
	
	aORD:=BormDiagram new.
	participantA:=BormParticipant new.
	aORD add: participantA. 
	
	a1:=BormActivity new.
	s1:=BormState new. s2:=BormState new. s1 isInitial: true. s2 isFinal: true.
	t1:=BormTransition new. t2:=BormTransition new.
	
	participantA add: s1. participantA add: s2. participantA add: a1. 
	(expresion)ifTrue: [ participantA add: BormActivity new ].

	t1 source: s1. t1 target: a1.
	t2 source: a1. t2 target: s2.
	
	a1 addTransition: t1. a1 addTransition: t2. 
	s1 addTransition: t1. s2 addTransition: t2. 
	^ aORD.	