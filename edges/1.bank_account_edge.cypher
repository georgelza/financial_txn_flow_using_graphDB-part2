// Where they share the same tenantId

// Create (bank) -> [OWNS] -> (acc) edge
MATCH (bank:Bank)
MATCH (acc:Account)
WHERE bank.tenantId = acc.tenantId
MERGE (bank)-[:OWNS]->(acc);

