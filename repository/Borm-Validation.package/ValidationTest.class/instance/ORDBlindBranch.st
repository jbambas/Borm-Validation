testing - instance creation
ORDBlindBranch
	| aORD participantA s1 s2 a1 a2 t1 t2 t3 |
	
	aORD:=BormDiagram new.
	participantA:=BormParticipant new.
	aORD add: participantA. 
	
	a1:=BormActivity new. a2:=BormActivity new.
	s1:=BormState new. s2:=BormState new. s1 isInitial: true. s2 isFinal: true.
	t1:=BormTransition new. t2:=BormTransition new. t3:=BormTransition new.
	
	participantA add: s1. participantA add: s2. participantA add: a1. participantA add:a2.

	t1 from: s1 to: a1.
	t2 from: a1 to: s2.
	t3 from: s1 to: a2.
	
	a1 addTransition: t1. a1 addTransition: t2. 
	s1 addTransition: t1. s2 addTransition: t2. 
	s1 addTransition: t3. a2 addTransition: t3.
	^ aORD.	