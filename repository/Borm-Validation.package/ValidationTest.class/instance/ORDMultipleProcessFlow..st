testing - instance creation
ORDMultipleProcessFlow: expresion
	| aORD participantA participantB s1 s2 s3 s4 a1 a2 t1 t2 t3 t4 c1 |
	
	aORD:=BormDiagram new.
	participantA:=BormParticipant new.
	participantB:=BormParticipant new.
	
	aORD add: participantA. 
	aORD add: participantB.
	
	a1:=BormActivity new. a2:=BormActivity new.
	s1:=BormState new. s2:=BormState new. s3:=BormState new. s4:=BormState new. s1 isInitial: true. s3 isInitial: true. s2 isFinal: true. s4 isFinal: true.
	t1:=BormTransition new. t2:=BormTransition new. t3:=BormTransition new. t4:=BormTransition new. 
	
	participantA add: s1. participantA add: s2. participantA add: a1.
	participantB add: s3. participantB add: s4. participantB add: a2.
	
	t1 source: s1. t1 target: a1.
	t2 source: a1. t2 target: s2.
	t3 source: s3. t3 target: a2.
	t4 source: a2. t4 target: s4.
	
	a1 addTransition: t1. a1 addTransition: t2. a2 addTransition: t3. a2 addTransition: t4. 
	s1 addTransition: t1. s2 addTransition: t2. s3 addTransition: t3. s4 addTransition: t4.	
		
	(expresion) ifFalse: [ c1:=BormCommunication new. a1 send: c1. a2 receive: c1. ].
	^aORD.
