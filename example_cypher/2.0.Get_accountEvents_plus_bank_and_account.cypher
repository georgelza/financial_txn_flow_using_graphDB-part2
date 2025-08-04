//
// Working
MATCH (n:AccountEvents {fspiAgentAccountId:"BOFIIE2D-51052432413"})
MATCH (acc:Account {fspiAgentAccountId: n.fspiAgentAccountId})
RETURN
    // AccountEvents fields
    n.fspiAgentAccountId         AS fspiAgentAccountId,
    n.counterpartyAgentAccountId AS counterpartyAgentAccountId,
    n.eventId                    AS eventId,
    n.prevEventId                AS prevEventId,
    n.eventTime                  AS eventTime,
    n.direction                  AS direction,
    n.accountEventCounter        AS accountEventCounter,
    
    // Account fields
    acc.accountId   AS accountId,
    acc.accountType AS accountType,
    acc.createOn    AS accountCreatedOn;


// Not returning any records:
MATCH (n:AccountEvents {fspiAgentAccountId:"BOFIIE2D-51052432413"})
MATCH (acc:Account {fspiAgentAccountId: n.fspiAgentAccountId})
MATCH (bank:Bank {fspiId: acc.fspiId})
RETURN
    // AccountEvents fields
    n.fspiAgentAccountId         AS fspiAgentAccountId,
    n.counterpartyAgentAccountId AS counterpartyAgentAccountId,
    n.eventId                    AS eventId,
    n.prevEventId                AS prevEventId,
    n.eventTime                  AS eventTime,
    n.direction                  AS direction,
    n.accountEventCounter        AS accountEventCounter,
    
    // Account fields
    acc.accountId   AS accountId,
    acc.accountType AS accountType,
    acc.createOn    AS accountCreatedOn,
    
    // Bank fields
    bank.displayName    AS bankDisplayName;