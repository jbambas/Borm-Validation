testing - instance creation
ORDComplexValid 
	| transition aORD participant1 participant2 participant3 participant4 state1 state2 state3 state4 state6 activity1 activity3 activity4 activity5 activity6 
	activity7 activity8 activity9 activity10 activity11 activity12 state7 state8 state16 activity0 state0 state5 activity2 communication vyrazA vyrazB promenaA 
	promene |
	aORD := BormDiagram new.
	participant1 := BormParticipant new.
	participant2 := BormParticipant new.
	participant3 := BormParticipant new.
	participant4 := BormParticipant new.
	aORD add: participant1. aORD add: participant2. aORD add: participant3. aORD add: participant4.
	
	"........participant1................"
	state1 := BormState new. state1 isInitial:true.participant1 add: state1.
	state2 := BormState new.participant1 add: state2.
	state3 := BormState new.participant1 add: state3.
	state4 := BormState new.participant1 add: state4.
	state6 := BormState new. state6 isFinal: true.participant1 add: state6.
	
	activity1 := BormActivity new.participant1 add: activity1.
	activity3 := BormActivity new.participant1 add: activity3.
	activity4 := BormActivity new.participant1 add: activity4.
	activity5 := BormActivity new.participant1 add: activity5.
	activity6 := BormActivity new.participant1 add: activity6.
	
	transition := BormTransition new. transition from: state1 to: activity1. state1 addTransition: transition. activity1 addTransition: transition.
	transition := BormTransition new. transition from: activity1 to: state2. state2 addTransition: transition. activity1 addTransition: transition.
	transition := BormTransition new. transition from: state2 to: activity3. state2 addTransition: transition. activity3 addTransition: transition. transition constraint: BormConstraint new.
	transition := BormTransition new. transition from: state2 to: activity4. state2 addTransition: transition. activity4 addTransition: transition. transition constraint: BormConstraint new.
	transition := BormTransition new. transition from: activity3 to: state4. state4 addTransition: transition. activity3 addTransition: transition.
	transition := BormTransition new. transition from: activity4 to: state3. state3 addTransition: transition. activity4 addTransition: transition.
	transition := BormTransition new. transition from: state4 to: activity5. state4 addTransition: transition. activity5 addTransition: transition.
	transition := BormTransition new. transition from: state3 to: activity6. state3 addTransition: transition. activity6 addTransition: transition.
	transition := BormTransition new. transition from: activity5 to: state6. state6 addTransition: transition. activity5 addTransition: transition.
	transition := BormTransition new. transition from: activity6 to: state6. state6 addTransition: transition. activity6 addTransition: transition.
	".......end of participant1.........."

	"........participant2................"
	activity7 := BormActivity new.participant2 add: activity7.
	activity8 := BormActivity new.participant2 add: activity8.
	".......end of participant2.........."
	
	"........participant3................"
	activity9 := BormActivity new.participant3 add: activity9.
	activity10 := BormActivity new.participant3 add: activity10.
	activity11 := BormActivity new.participant3 add: activity11.
	activity12 := BormActivity new.participant3 add: activity12.
	
	state7 := BormState new. participant3 add: state7.
	state8 := BormState new. participant3 add: state8.
	state16 := BormState new. participant3 add: state16.state16 isFinal: true.
	
	transition := BormTransition new. transition from: activity9 to: state7. state7 addTransition: transition. activity9 addTransition: transition.
	transition := BormTransition new. transition from: state7 to: activity11. state7 addTransition: transition. activity11 addTransition: transition.transition constraint: BormConstraint new.
	transition := BormTransition new. transition from: state7 to: activity10. state7 addTransition: transition. activity10 addTransition: transition.transition constraint: BormConstraint new.
	transition := BormTransition new. transition from: activity11 to: state8. state8 addTransition: transition. activity11 addTransition: transition.
	transition := BormTransition new. transition from: activity10 to: state8. state8 addTransition: transition. activity10 addTransition: transition.
	transition := BormTransition new. transition from: state8 to: activity12. state8 addTransition: transition. activity12 addTransition: transition.
	transition := BormTransition new. transition from: activity12 to: state16.state16 addTransition: transition.activity12 addTransition: transition.
	
	communication:=BormCommunication new. activity1 send: communication. activity9 receive: communication. communication addDataFlow: BormDataFlow new.	
	communication:=BormCommunication new. activity5 send: communication. activity8 receive: communication. communication addDataFlow: BormDataFlow new.
	communication:=BormCommunication new. activity6 send: communication. activity7 receive: communication. communication addDataFlow: BormDataFlow new.
	".......end of participant3.........."
	
	"........participant4................"
	state0 := BormState new.participant4 add: state0.
	state1 := BormState new.participant4 add: state1.
	state2 := BormState new.participant4 add: state2.
	state3 := BormState new.participant4 add: state3.
	state4 := BormState new.participant4 add: state4.
	state5 := BormState new.participant4 add: state5.state5 isFinal: true.
	
	activity0 := BormActivity new. participant4 add: activity0.
	activity1 := BormActivity new. participant4 add: activity1.
	activity2 := BormActivity new. participant4 add: activity2.
	activity3 := BormActivity new. participant4 add: activity3.
	activity4 := BormActivity new. participant4 add: activity4.
	
	transition:=BormTransition new. transition from: activity4 to:state0. activity4 addTransition: transition. state0 addTransition: transition.
	transition:=BormTransition new. transition from: state0 to:activity0. activity0 addTransition: transition. state0 addTransition: transition.
	transition:=BormTransition new. transition from: state0 to:activity1. activity1 addTransition: transition. state0 addTransition: transition.
	transition:=BormTransition new. transition from: activity0 to:state1. activity0 addTransition: transition. state1 addTransition: transition.
	transition:=BormTransition new. transition from: state1 to:state5. state1 addTransition: transition. state5 addTransition: transition.
	transition:=BormTransition new. transition from: activity1 to:state2. activity1 addTransition: transition. state2 addTransition: transition.
	transition:=BormTransition new. transition from: state2 to:activity2. activity2 addTransition: transition. state2 addTransition: transition.
	transition:=BormTransition new. transition from: state2 to:activity3. activity3 addTransition: transition. state2 addTransition: transition.
	transition:=BormTransition new. transition from: activity2 to:state3. activity2 addTransition: transition. state3 addTransition: transition.
	transition:=BormTransition new. transition from: activity3 to:state4. activity3 addTransition: transition. state4 addTransition: transition.
	transition:=BormTransition new. transition from: state3 to:state5. state3 addTransition: transition. state5 addTransition: transition.
	transition:=BormTransition new. transition from: state4 to:state5. state4 addTransition: transition. state5 addTransition: transition.
	
	communication:=BormCommunication new. activity12 send: communication. activity4 receive: communication. communication addDataFlow: BormDataFlow new.
	
	
	vyrazA := BormExClause new.
	promene := OrderedCollection new.
	promenaA := BormExVariable new.
	promenaA transition: (state0 outgoing at:1).
	promene add: promenaA.
	promenaA := BormExVariable new.
	promenaA transition: (state0 outgoing at:2).
	promene add: promenaA.
	vyrazA operator: OpOne.
	vyrazA expressions: promene.
	state0 outputConditions: vyrazA.
	
		
	vyrazA := BormExClause new.
	promene := OrderedCollection new.
	promenaA := BormExVariable new.
	promenaA transition: (state2 outgoing at:1).
	promene add: promenaA.
	promenaA := BormExVariable new.
	promenaA transition: (state2 outgoing at:2).
	promene add: promenaA.
	vyrazA operator: OpAll.
	vyrazA expressions: promene.
	state2 outputConditions: vyrazA.
	
	
	vyrazA := BormExClause new.
	promene := OrderedCollection new.
	promenaA := BormExVariable new.
	promenaA transition: (state5 incoming at:2).
	promene add: promenaA.
	promenaA := BormExVariable new.
	promenaA transition: (state5 incoming at:3).
	promene add: promenaA.
	vyrazA operator: OpAll.
	vyrazA expressions: promene.

	
	
	vyrazB := BormExClause new.
	promene := OrderedCollection new.
	promenaA := BormExVariable new.
	promenaA transition: (state5 incoming at:1).
	promene add: promenaA.
	promene add: vyrazA.
	vyrazB operator: OpOne.
	vyrazB expressions: promene.
	state5 inputConditions: vyrazB.
	
	".......end of participant4.........."	
	

	^aORD.