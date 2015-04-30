testing - instance creation
ORDComplexSemestralWork
	| participantA participantB participantC participantD participantE aORD s1 s2 s3 a1 a2 a3 t1 t2 t3 t4 t5 t6 
	s11 s12 s13 s14 s15 s16 s17 a11 a12 a13 a14 a15 a16 t7 t8 t9 t10 t11 t12 t13
	a21 a31 tmp a41 a42 a43 s41 s42 s43
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
	
	"..............konec participanta A........................................"
	
	s11 := BormState new. s11 isInitial: true. participantB add: s11.
	s12 := BormState new. participantB add: s12.
	s13 := BormState new. participantB add: s13.
	s14 := BormState new. participantB add: s14.
	s15 := BormState new. participantB add: s15.
	s16 := BormState new. participantB add: s16.
	s17 := BormState new. s17 isFinal: true. participantB add: s17.
	
	a11 := BormActivity new. participantB add: a11.
	a12 := BormActivity new. participantB add: a12.
	a13 := BormActivity new. participantB add: a13.
	a14 := BormActivity new. participantB add: a14.
	a15 := BormActivity new. participantB add: a15.
	a16 := BormActivity new. participantB add: a16.
	
	tmp:=BormCommunication new. a2 send: tmp. a12 receive: tmp.
	
	t1:=BormTransition new. t1 constraint: BormConstraint new. t1 from: s11 to: a11. s11 addTransition: t1. a11 addTransition: t1.
	t2:=BormTransition new. t2 constraint: BormConstraint new. t2 from: s11 to: a12. s11 addTransition: t2. a12 addTransition: t2.
	t3:=BormTransition new. t3 from: a11 to: s12. a11 addTransition: t3. s12 addTransition: t3.
	t4:=BormTransition new. t4 from: a12 to: s13. a12 addTransition: t4. s13 addTransition: t4.
	t5:=BormTransition new. t5 from: s12 to: a13. s12 addTransition: t5. a13 addTransition: t5.
	t6:=BormTransition new. t6 from: s13 to: a14. s13 addTransition: t6. a14 addTransition: t6.
	t7:=BormTransition new. t7 from: a13 to: s14. a13 addTransition: t7. s14 addTransition: t7.
	t8:=BormTransition new. t8 from: a14 to: s15. a14 addTransition: t8. s15 addTransition: t8.
	t9:=BormTransition new. t9 from: s14 to: a15. s14 addTransition: t9. a15 addTransition: t9.
	t10:=BormTransition new. t10 from: s15 to: a16. s15 addTransition: t10. a16 addTransition: t10.
	t11:=BormTransition new. t11 from: a16 to: s16. a16 addTransition: t11. s16 addTransition: t11.
	t12:=BormTransition new. t12 from: s16 to: a15. s16 addTransition: t12. a15 addTransition: t12.
	t13:=BormTransition new. t13 from: a15 to: s17. a15 addTransition: t13. s17 addTransition: t13.
	
	tmp:=BormCommunication new. a13 send: tmp. a3 receive: tmp.
	

	
	"..............dodelat participanta B..............................."
	
	a21:=BormActivity new. participantC add: a21.
	tmp:=BormCommunication new. a15 send: tmp. a21 receive: tmp.
	
	"..............konec participanta C............."
	
	a31:=BormActivity new. participantD add: a31.
	tmp:=BormCommunication new. a21 send: tmp. a31 receive: tmp.
	"................konec participanta D.........................."

	a41:=BormActivity new. participantE add: a41.
	a42:=BormActivity new. participantE add: a42.
	a43:=BormActivity new. participantE add: a43.
	s41:=BormState new. participantE add: s41.
	s42:=BormState new. participantE add: s42.
	s43:=BormState new. s43 isFinal: true. participantE add: s43.
	tmp:=BormCommunication new. a42 send: tmp. a1 receive: tmp. 
	tmp:=BormTransition new. tmp from: a41 to: s41. a41 addTransition: tmp. s41 addTransition: tmp.
	tmp:=BormTransition new. tmp from: s41 to: a42. s41 addTransition: tmp. a42 addTransition: tmp.
	tmp:=BormTransition new. tmp from: a42 to: s42. a42 addTransition: tmp. s42 addTransition: tmp.
	tmp:=BormTransition new. tmp from: s42 to: a43. a43 addTransition: tmp. s42 addTransition: tmp.
	tmp:=BormTransition new. tmp from: a43 to: s43. a43 addTransition: tmp. s43 addTransition: tmp.
	tmp:=BormCommunication new. a14 send: tmp. a41 receive: tmp. tmp addDataFlow: BormDataFlow new.
	tmp:=BormCommunication new. a43 send: tmp. a16 receive: tmp. tmp addDataFlow: BormDataFlow new. tmp addDataFlow: BormDataFlow new.
	
	"................konec participanta E.................."

	
	^ aORD.
