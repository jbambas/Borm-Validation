testing - instance creation
ORDMissingConditions
	| aORD participant s1 a1 a2 t1 t2 |
aORD:=BormDiagram new.
participant:=BormParticipant new.
aORD add: participant.
s1:=BormState new.
a1:=BormActivity new.
a2:=BormActivity new.

participant add: s1.
participant add: a1.
participant add: a2.

t1:=BormTransition new.
t2:=BormTransition new.
t1 constraint: BormConstraint new.

t1 source: s1.
t1 target: a1.
t2 source: s1.
t2 target: a2.
s1 addTransition: t1.
s1 addTransition: t2.
a1 addTransition: t1.
a2 addTransition: t2.

^aORD.