// 

MERGE (n:Account {accountEntityId: "ULSBIE2D-437570486"})
ON CREATE SET n = {
    accountEntityId: "ULSBIE2D-437570486",
    accountId: "437570486",
    tenantId: "ULSBIE2D",
    accountAgentId: "ULSBIE2D",
    accountType: "Savings",
    createOn: "2000/05/02"
}
RETURN n;

MERGE (n:Account {accountEntityId: "ULSBIE2D-427570486"})
ON CREATE SET n = {
    accountEntityId: "ULSBIE2D-427570486",
    accountId: "427570486",
    tenantId: "ULSBIE2D",
    accountAgentId: "ULSBIE2D",
    accountType: "Savings",
    createOn: "1998/05/14"
}
RETURN n;


MERGE (n:Account {accountEntityId: "ULSBIE2D-427570487"})
ON CREATE SET n = {
    accountEntityId: "ULSBIE2D-427570487",
    accountId: "427570487",
    tenantId: "ULSBIE2D",
    accountAgentId: "ULSBIE2D",
    accountType: "Savings",
    createOn: "2001/04/10"
}
RETURN n;


MERGE (n:Account {accountEntityId: "ULSBIE2D-427570488"})
ON CREATE SET n = {
    accountEntityId: "ULSBIE2D-427570488",
    accountId: "427570488",
    tenantId: "ULSBIE2D",
    accountAgentId: "ULSBIE2D",
    accountType: "Savings",
    createOn: "2012/07/22"
}
RETURN n;


MERGE (n:Account {accountEntityId: "ULSBIE2D-427570489"})
ON CREATE SET n = {
    accountEntityId: "ULSBIE2D-427570489",
    accountId: "427570489",
    tenantId: "ULSBIE2D",
    accountAgentId: "ULSBIE2D",
    accountType: "Transaction",
    createOn: "1996/04/30"
}
RETURN n;


// Bank 2
MERGE (n:Account {accountEntityId: "IPTSIEDD-427570488"})
ON CREATE SET n = {
    accountEntityId: "IPTSIEDD-427570488",
    accountId: "427570488",
    tenantId: "IPTSIEDD",
    accountAgentId: "IPTSIEDD",
    accountType: "Cheque",
    createOn: "2006/02/15"
}
RETURN n;


MERGE (n:Account {accountEntityId: "IPTSIEDD-527570498"})
ON CREATE SET n = {
    accountEntityId: "IPTSIEDD-527570498",
    accountId: "527570498",
    tenantId: "IPTSIEDD",
    accountAgentId: "IPTSIEDD",
    accountType: "PlusPlan",
    createOn: "2005/01/05"
}
RETURN n;


MERGE (n:Account {accountEntityId: "IPTSIEDD-724570489"})
ON CREATE SET n = {
    accountEntityId: "IPTSIEDD-724570489",
    accountId: "724570489",
    tenantId: "IPTSIEDD",
    accountAgentId: "IPTSIEDD",
    accountType: "Transaction",
    createOn: "2002/11/28"
}
RETURN n;


// Bank 3
MERGE (n:Account {accountEntityId: "BOFIIE2D-51052432413"})
ON CREATE SET n = {
    accountEntityId: "BOFIIE2D-51052432413",
    accountId: "51052432413",
    tenantId: "BOFIIE2D",
    accountAgentId: "BOFIIE2D",
    accountType: "Cheque",
    createOn: "1982/08/26"
}
RETURN n;


MERGE (n:Account {accountEntityId: "BOFIIE2D-51052432503"})
ON CREATE SET n = {
    accountEntityId: "BOFIIE2D-51052432503",
    accountId: "51052432503",
    tenantId: "BOFIIE2D",
    accountAgentId: "BOFIIE2D",
    accountType: "Cheque",
    createOn: "1980/09/10"
}
RETURN n;


MERGE (n:Account {accountEntityId: "BOFIIE2D-51062432403"})
ON CREATE SET n = {
    accountEntityId: "BOFIIE2D-51062432403",
    accountId: "51062432403",
    tenantId: "BOFIIE2D",
    accountAgentId: "BOFIIE2D",
    accountType: "Transactional",
    createOn: "1984/03/13"
}
RETURN n;


MERGE (n:Account {accountEntityId: "BOFIIE2D-52052432403"})
ON CREATE SET n = {
    accountEntityId: "BOFIIE2D-52052432403",
    accountId: "52052432403",
    tenantId: "BOFIIE2D",
    accountAgentId: "BOFIIE2D",
    accountType: "Transactional",
    createOn: "1998/10/14"
}
RETURN n;

// Note this only populates the fields in the OnCreate at first.
// accountType and createdOn is only added if it is executed and a previous record is found, then the ON MATCH block executes
MERGE (n:Account {accountEntityId: "BOFIIE2D-51052432423"})
ON CREATE SET n = {
    accountEntityId: "BOFIIE2D-51052432423",
    accountId: "51052432423",
    tenantId: "BOFIIE2D",
    accountAgentId: "BOFIIE2D"}
ON MATCH SET n += {
    accountType: "Transactional",
    createOn: "1996/08/14"
}
RETURN n;

