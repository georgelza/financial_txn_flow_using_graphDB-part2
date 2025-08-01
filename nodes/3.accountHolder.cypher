// Bank 1
MERGE (n:AccountHolder {accountEntityId: "ULSBIE2D-437570486"})
ON CREATE SET n = {
    accountEntityId: "ULSBIE2D-437570486",
    accountEntityType: "individual",
    pps: "9572840J"
    }
RETURN n;

MERGE (n:AccountHolder {accountEntityId: "ULSBIE2D-427570486"})
ON CREATE SET n = {
    accountEntityId: "ULSBIE2D-427570486",
    accountEntityType: "individual",
    pps: "1234567A"
}
RETURN n;                                                                                              

MERGE (n:AccountHolder {accountEntityId: "ULSBIE2D-427570487"})
ON CREATE SET n = {
    accountEntityId: "ULSBIE2D-427570487",
    accountEntityType: "individual",
    pps: "2847639B"
}
RETURN n;

MERGE (n:AccountHolder {accountEntityId: "ULSBIE2D-427570488"})
ON CREATE SET n = {
    accountEntityId: "ULSBIE2D-427570488",
    accountEntityType: "individual",
    pps: "3519274C"
}
RETURN n;

// Corporate
// AeroMat
MERGE (n:AccountHolder {accountEntityId: "ULSBIE2D-427570489"})
ON CREATE SET n = {
    accountEntityId: "ULSBIE2D-427570489",
    accountEntityType: "corporate",
    regId: "1978/0001/1022"
}
RETURN n;


// Bank 2
MERGE (n:AccountHolder {accountEntityId: "IPTSIEDD-427570488"})
ON CREATE SET n = {
    accountEntityId: "IPTSIEDD-427570488",
    accountEntityType: "individual",
    pps: "5746392E"
}
RETURN n;


MERGE (n:AccountHolder {accountEntityId: "IPTSIEDD-527570498"})
ON CREATE SET n = {
    accountEntityId: "IPTSIEDD-527570498",
    accountEntityType: "individual",
    pps: "6283947F"
}
RETURN n;


MERGE (n:AccountHolder {accountEntityId: "IPTSIEDD-724570489"})
ON CREATE SET n = {
    accountEntityId: "IPTSIEDD-724570489",
    accountEntityType: "individual",
    pps: "6283947F"
}
RETURN n;


// Bank 3
MERGE (n:AccountHolder {accountEntityId: "BOFIIE2D-51052432413"})
ON CREATE SET n = {
    accountEntityId: "BOFIIE2D-51052432413",
    accountEntityType: "individual",
    pps: "6283947F"
}
RETURN n;

MERGE (n:AccountHolder {accountEntityId: "BOFIIE2D-51052432503"})
ON CREATE SET n = {
    accountEntityId: "BOFIIE2D-51052432503",
    accountEntityType: "individual",
    pps: "7395168G"
}
RETURN n;


MERGE (n:AccountHolder {accountEntityId: "BOFIIE2D-51062432403"})
ON CREATE SET n = {
    accountEntityId: "BOFIIE2D-51062432403",
    accountEntityType: "individual",
    pps: "8461725H"
}
RETURN n;


MERGE (n:AccountHolder {accountEntityId: "BOFIIE2D-52052432403"})
ON CREATE SET n = {
    accountEntityId: "BOFIIE2D-52052432403",
    accountEntityType: "individual",
    pps: "8461725H"
}
RETURN n;

// Corporate
// Alu Engineerings
MERGE (n:AccountHolder {accountEntityId: "BOFIIE2D-51052432423"})
ON CREATE SET n = {
    accountEntityId: "BOFIIE2D-51052432423",
    accountEntityType: "corporate",
    regId: "2011/0201/1185"
}
RETURN n;
