// Where they share the same accountEntityId

// Create (Account) -> [ACCOCIATED_WITH] -> (AccountHolder) edge
MATCH (acc:Account)
MATCH (ah:AccountHolder)
WHERE acc.accountEntityId = ah.accountEntityId
MERGE (acc)-[:ACCOCIATED_WITH]->(ah);

// Create (AccountHolder) -> [ROOTED_WITH] -> (Account) edge
MATCH (ah:AccountHolder)
MATCH (acc:Account)
WHERE acc.accountEntityId = ah.accountEntityId
MERGE (ah)-[:ROOTED_WITH]->(acc);