testing - instance creation
ORDMissingDataFlows
	| aORD participant a1 a2 communication |
aORD:=BormDiagram new.
participant:=BormParticipant new.
aORD add: participant.
a1:=BormActivity new.
a2:=BormActivity new.
participant add: a1.
participant add: a2.
communication:=BormCommunication new.
a1 send: communication.
a2 receive: communication.
^aORD.