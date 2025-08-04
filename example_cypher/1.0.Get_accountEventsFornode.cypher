
MATCH (n:AccountEvents {fspiAgentAccountId:"BOFIIE2D-51052432413"}) 
RETURN 
	n.fspiAgentAccountId AS fspiAgentAccountId,
	n.counterpartyAgentAccountId as counterpartyAgentAccountId,
	n.eventId AS eventId, 
	n.prevEventId as prevEventId,
	n.eventTime AS eventTime, 
	n.direction AS direction,
	n.accountEventCounter as accountEventCounter;