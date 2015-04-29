testing - instance creation
ORDDepPrincipleNesting1
	| s1 s2 s3 s4 a1 a2 a3 a4 t1 t2 t3 t4 t5 t6 t7 t8 t9 participant aORD vyrazA promeneA promenaA tmp |
	aORD:=BormDiagram new.
	participant := BormParticipant new.
	aORD add: participant.
	s1 := BormState new. s1 isInitial: true. participant add: s1.
	s2 := BormState new. participant add: s2.
	s3 := BormState new. participant add: s3.
	s4 := BormState new. s4 isFinal: true. participant add: s4.
	a1 := BormActivity new. participant add: a1.
	a2 := BormActivity new. participant add: a2.
	a3 := BormActivity new. participant add: a3.
	a4 := BormActivity new. participant add: a4.
	
	
	t1 := BormTransition new. t1 from: s1 to: a1. s1 addTransition: t1. a1 addTransition: t1. 
	t2 := BormTransition new. t2 from: s1 to: a2. s1 addTransition: t2. a2 addTransition: t2.
	t3 := BormTransition new. t3 from: a1 to: s2. a1 addTransition: t3. s2 addTransition: t3.
	t4 := BormTransition new. t4 from: a2 to: s3. a2 addTransition: t4. s3 addTransition: t4.
	t5 := BormTransition new. t5 from: s2 to: s4. s2 addTransition: t5. s4 addTransition: t5.
	t6 := BormTransition new. t6 from: s3 to: a3. s3 addTransition: t6. a3 addTransition: t6.
	t7 := BormTransition new. t7 from: s3 to: a4. s3 addTransition: t7. a4 addTransition: t7.
	t8 := BormTransition new. t8 from: a3 to: s4. a3 addTransition: t8. s4 addTransition: t8.
	t9 := BormTransition new. t9 from: a4 to: s4. a4 addTransition: t9. s4 addTransition: t9.
	
	
	
	vyrazA:=BormExClause new.
	promeneA:=OrderedCollection new.
	promenaA:=BormExVariable new.
	promenaA transition: t1.
	promeneA add: promenaA.
	promenaA:=BormExVariable new.
	promenaA transition: t2.
	promeneA add: promenaA.
	vyrazA operator: OpAll.
	vyrazA expressions: promeneA.
	s1 outputConditions: vyrazA.
	
	vyrazA:=BormExClause new.
	promeneA:=OrderedCollection new.
	promenaA:=BormExVariable new.
	promenaA transition: t6.
	promeneA add: promenaA.
	promenaA:=BormExVariable new.
	promenaA transition: t7.
	promeneA add: promenaA.
	vyrazA operator: OpOne.
	vyrazA expressions: promeneA.
	s3 outputConditions: vyrazA.
	
	
	vyrazA:=BormExClause new.
	promeneA:=OrderedCollection new.
	promenaA:=BormExVariable new.
	promenaA transition: t8.
	promeneA add: promenaA.
	promenaA:=BormExVariable new.
	promenaA transition: t9.
	promeneA add: promenaA.
	vyrazA operator: OpOne.
	vyrazA expressions: promeneA.
	
	tmp:=BormExClause new.
	promeneA:=OrderedCollection new.
	promenaA:=BormExVariable new.
	promenaA transition: t5.
	promeneA add: promenaA.
	promeneA add: vyrazA.
	tmp operator: OpAll.
	tmp expressions: promeneA.
	s4 inputConditions: tmp.

	^ aORD.