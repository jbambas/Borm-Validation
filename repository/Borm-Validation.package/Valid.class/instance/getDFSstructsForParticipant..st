auxiliar
getDFSstructsForParticipant: aParticipant
	| DFSArray |
	
	"method to transfer of processNodes of aParticipant to array of DFS structure"
	
	DFSArray := OrderedCollection new.

	aParticipant nodes do: [ :each | DFSArray add: (DFSStruct new setNode: each) ].
	^ DFSArray.
	