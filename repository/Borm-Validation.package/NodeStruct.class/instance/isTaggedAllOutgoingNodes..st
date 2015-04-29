auxiliar
isTaggedAllOutgoingNodes: configuration
	| values |
	values:=OrderedCollection new.
	node outgoing do:[ :each | values add: (((TempClass new)transition:each)tag:(configuration findNode: each target)tag) ].
	values do:[:each | (each tag=nil)ifTrue: [^ false]].
	^ true.