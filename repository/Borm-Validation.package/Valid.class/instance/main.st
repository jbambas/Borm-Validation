initialization
main
Transcript show: 'prazdni participanti>>  '.
Transcript show: (self emptyParticipants); cr; cr.

Transcript show: 'chybejici datove toky>>  '.
Transcript show: (self missingDataFlows); cr; cr.

Transcript show: 'chybejici podminky>>  '.
Transcript show: (self missingConditions); cr; cr.

Transcript show: 'komunikace v jednom participantovi>>  '.
Transcript show: (self communicationsInSameParticipant); cr; cr.