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
	ORDDepPrincipleAnd := self ORDDepPrincipleAnd.
	ORDDepPrincipleOr := self ORDDepPrincipleOr.
	ORDDepPrincipleXor := self ORDDepPrincipleXor.
	ORDDepPrincipleFail1 := self ORDDepPrincipleFail1.
	ORDDepPrincipleFail2 := self ORDDepPrincipleFail2.
	ORDDepPrincipleNesting1 := self ORDDepPrincipleNesting1.
	ORDDepPrincipleNesting2 := self ORDDepPrincipleNesting2.
	ORDComplexInvalid := self ORDComplexInvalid.
	ORDComplexSemestralWork := self ORDComplexSemestralWork.
	ORDComplexValid := self ORDComplexValid.