validation
run
	| temp |
	temp:=self communicationsInSameParticipant.
	(temp size>0)ifTrue: [ listOfFailures add: (CommunicationInSameParticipant new addCollection: temp)].
	
	temp:=self emptyParticipants.
	(temp size>0)ifTrue: [ listOfFailures add: (EmptyParticipants new addCollection: temp)].
	
	temp:=self missingConditions.
	(temp size>0)ifTrue: [ listOfFailures add: (MissingConditions new addCollection: temp)].
	
	temp:=self missingDataFlows.
	(temp size>0)ifTrue: [ listOfFailures add: (MissingDataFlows new addCollection: temp)].
	
	temp:=self missingStartOrFinalState.
	(temp size>0)ifTrue: [ listOfFailures add: (MissingStartOrFinalState new addCollection: temp)].
	
	temp:=self multipleProcessFlow.
	(temp size>0)ifTrue: [ listOfFailures add: (MultipleProcessFlow new addCollection: temp)].
	
	temp:=self multipleRolesOfParticipant.
	(temp size>0)ifTrue: [ listOfFailures add: (EmptyParticipants new addCollection: temp)].
	
	temp:=self noPathFromProcessNodeToFinal.
	(temp size>0)ifTrue: [ listOfFailures add: (NodesOfBlindBranches new addCollection: temp)].
	
	temp:=self unreachableNodes.
	(temp size>0)ifTrue: [ listOfFailures add: (UnreachableNodes new addCollection: temp)].
	
	"temp:=self dependencyPrinciple
	(temp size>0)ifTrue: [ listOfFailures add: (NotCorrectIOConditions new addCollection: temp)]."