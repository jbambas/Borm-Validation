auxiliar
getCommunications
	| communications nodes activities |
	
	"method to find and return all communications in ORD"
	
	communications:=OrderedCollection new.
	nodes:=OrderedCollection new.
	activities:=OrderedCollection new.
	
	aORD participants 	do: [ :each | nodes addAll: each nodes ].
	activities:= nodes select: [ :each | each className = 'BormActivity' ].
	activities do: [ :each | communications addAll: each sent ].
	^ communications.