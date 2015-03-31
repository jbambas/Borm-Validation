auxiliar
getCommunications
	| communications nodes activities |
	communications:=OrderedCollection new.
	nodes:=OrderedCollection new.
	activities:=OrderedCollection new.
	
	aORD participants 	do: [ :each | nodes addAll: each nodes ].
	activities:= nodes select: [ :each | each className = 'BormActivity' ].
	activities do: [ :each | communications addAll: each sent ].
	^ communications.