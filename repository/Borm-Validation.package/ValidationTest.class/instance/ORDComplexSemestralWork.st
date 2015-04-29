testing - instance creation
ORDComplexSemestralWork
	| participantA participantB participantC participantD participantE aORD s1 s2 s3 a1 a2 a3 t1 t2 t3 t4 t5 t6 
	s11
	|
	aORD:=BormDiagram new.
	participantA := BormParticipant new. aORD add: participantA.
	participantB := BormParticipant new. aORD add: participantB.
	participantC := BormParticipant new. aORD add: participantC.
	participantD := BormParticipant new. aORD add: participantD.
	participantE := BormParticipant new. aORD add: participantE.
	
	s1 := BormState new. participantA add: s1. s1 isInitial: true.
	s2 := BormState new. participantA add: s2.
	s3 := BormState new. participantA add: s3. s3 isFinal: true.
	a1 := BormActivity new. participantA add: a1.
	a2 := BormActivity new. participantA add: a2.
	a3 := BormActivity new. participantA add: a3.
	
	t1 := BormTransition new. t1 from: s1 to: a1. s1 addTransition: t1. a1 addTransition: t1. t1 constraint: BormConstraint new.
	t2 := BormTransition new. t2 from: s1 to: a2. s1 addTransition: t2. a2 addTransition: t2. t2 constraint: BormConstraint new.
	t3 := BormTransition new. t3 from: a1 to: s3. a1 addTransition: t3. s3 addTransition: t3.
	t4 := BormTransition new. t4 from: a2 to: s2. a2 addTransition: t4. s2 addTransition: t4.
	t5 := BormTransition new. t5 from: s2 to: a3. s2 addTransition: t5. a3 addTransition: t5.
	t6 := BormTransition new. t6 from: a3 to: s3. a3 addTransition: t6. s3 addTransition: t6.
	
	"..............konec participanta 1........................................"
	
	s11 := BormActivity new. s11 isInitial: true. participantB add: s11.
	

	
	^ aORD.
