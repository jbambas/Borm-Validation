setup
setUp
	ORDEmptyParticipants := self ORDEmptyParticipants.
	ORDCommunicationsInSamePart := self ORDCommunicationsInSamePart.
	ORDMissingConditions := self ORDMissingConditions.
	ORDMissingDataFlows := self ORDMissingDataFlows.
	ORDMultipleProcessFlow := self ORDMultipleProcessFlow: true.
	ORDMultipleRoles := self ORDMultipleRoles: true.
	ORDUnreachableNodes := self ORDUnreachableNodes.
	ORDMissingFinalState := self ORDMissingFinalState.
	ORDMissingStartState := self ORDMissingStartState.
	ORDBlindBranch := self ORDBlindBranch.
