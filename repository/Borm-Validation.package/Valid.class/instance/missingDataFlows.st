validation
missingDataFlows
	"vrací kolekci komunikací, které nemají žádný datový tok... když velikost kolekce nula, chyba v diagramu není..."

	^ (self getCommunications) select: [ :each | each dataFlows size = 0 ].