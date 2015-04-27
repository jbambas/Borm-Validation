accessing
getPredecessorsOf: aNodeStruct
	| predecessors predecessorsNodes |
	predecessors := OrderedCollection new.
	
	predecessorsNodes := aNodeStruct node incoming collect: [ :each | each source ].
	predecessorsNodes do: [ :each | predecessors add: (self findNode: each) ].
	
	^ predecessors.
