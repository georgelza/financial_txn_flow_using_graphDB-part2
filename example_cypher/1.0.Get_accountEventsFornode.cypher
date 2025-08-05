// Simple query to return accountEvents for a specified fspiAgentAccountId
//
MATCH (n:AccountEvents {fspiAgentAccountId:"BOFIIE2D-51052432413"}) 
RETURN 
	n.fspiAgentAccountId 		 AS fspiAgentAccountId,
	n.counterpartyAgentAccountId AS counterpartyAgentAccountId,
	n.eventId 					 AS eventId, 
	n.prevEventId 				 AS prevEventId,
	n.eventTime 				 AS eventTime, 
	n.direction 				 AS direction,
	n.accountEventCounter 		 AS accountEventCounter;

