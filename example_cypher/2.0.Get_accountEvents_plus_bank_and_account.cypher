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



// Expanded query to include Bank, Account, and AccountEvents nodes
MATCH (n:AccountEvents {fspiAgentAccountId:"BOFIIE2D-51052432413"})
MATCH (acc:Account {fspiAgentAccountId: n.fspiAgentAccountId})
MATCH (bank:Bank {fspiId: acc.fspiId})
RETURN
    // AccountEvents fields
    n.fspiAgentAccountId AS fspiAgentAccountId,
    n.counterpartyAgentAccountId as counterpartyAgentAccountId,
    n.eventId AS eventId,
    n.prevEventId as prevEventId,
    n.eventTime AS eventTime,
    n.direction AS direction,
    n.accountEventCounter as accountEventCounter,
    
    // Account fields
    acc.accountId AS accountId,
    acc.accountType AS accountType,
    acc.createOn AS accountCreatedOn,
    
    // Bank fields
    bank.memberName AS bankMemberName,
    bank.displayName AS bankDisplayName,
    bank.bicfi AS bankBicfi,
    bank.memberNo AS bankMemberNo,
    bank.swiftCode AS bankSwiftCode,
    bank.branchStart AS bankBranchStart,
    bank.branchEnd AS bankBranchEnd;

// Alternative version using explicit relationship traversal
// (if you want to leverage the OWNS relationship)
MATCH (n:AccountEvents {fspiAgentAccountId:"BOFIIE2D-51052432413"})
MATCH (acc:Account {fspiAgentAccountId: n.fspiAgentAccountId})
MATCH (bank:Bank)-[:OWNS]->(acc)
RETURN
    // AccountEvents fields
    n.fspiAgentAccountId AS fspiAgentAccountId,
    n.counterpartyAgentAccountId as counterpartyAgentAccountId,
    n.eventId AS eventId,
    n.prevEventId as prevEventId,
    n.eventTime AS eventTime,
    n.direction AS direction,
    n.accountEventCounter as accountEventCounter,
    
    // Account fields
    acc.accountId AS accountId,
    acc.accountType AS accountType,
    acc.createOn AS accountCreatedOn,
    
    // Bank fields
    bank.memberName AS bankMemberName,
    bank.displayName AS bankDisplayName,
    bank.bicfi AS bankBicfi,
    bank.memberNo AS bankMemberNo,
    bank.swiftCode AS bankSwiftCode,
    bank.branchStart AS bankBranchStart,
    bank.branchEnd AS bankBranchEnd;