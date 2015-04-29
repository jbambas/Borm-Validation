testing - instance creation
ORDDepPrincipleXor
	| s1 s2 a1 a2 t1 t2 t3 t4 participant aORD vyrazA promeneA promenaA |
	aORD:=BormDiagram new.
	participant := BormParticipant new.
	aORD add: participant.
	s1 := BormState new. s1 isInitial: true. participant add: s1.
	s2 := BormState new. s2 isFinal: true. participant add: s2.
	a1 := BormActivity new. participant add: a1.
	a2 := BormActivity new. participant add: a2.
	
	t1 := BormTransition new. t1 from: s1 to: a1. s1 addTransition: t1. a1 addTransition: t1. 
	t2 := BormTransition new. t2 from: s1 to: a2. s1 addTransition: t2. a2 addTransition: t2.
	t3 := BormTransition new. t3 from: a1 to: s2. a1 addTransition: t3. s2 addTransition: t3.
	t4 := BormTransition new. t4 from: a2 to: s2. a2 addTransition: t4. s2 addTransition: t4.
	
	vyrazA:=BormExClause new.
	promeneA:=OrderedCollection new.
	promenaA:=BormExVariable new.
	promenaA transition: t1.
	promeneA add: promenaA.
	promenaA:=BormExVariable new.
	promenaA transition: t2.
	promeneA add: promenaA.
	vyrazA operator: OpOne.
	vyrazA expressions: promeneA.
	s1 outputConditions: vyrazA. s1 fillTable.
	
	vyrazA:=BormExClause new.
	promeneA:=OrderedCollection new.
	promenaA:=BormExVariable new.
	promenaA transition: t3.
	promeneA add: promenaA.
	promenaA:=BormExVariable new.
	promenaA transition: t4.
	promeneA add: promenaA.
	vyrazA operator: OpOne.
	vyrazA expressions: promeneA.
	s2 inputConditions: vyrazA. s2 fillTable.
	
	^ aORD.