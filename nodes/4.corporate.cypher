
MERGE (n:Corporate {regId: "1978/0001/1022"})
ON CREATE SET n = {
    regId: "1978/0001/1022",
    corpName: "AeroMat",
    estDate: "1978/01/23"
}
ON MATCH SET n += {
    parcel: null,
    address: 1001
}
RETURN n;

MERGE (n:Corporate {regId: "2011/0201/1185"})
ON CREATE SET n = {
    regId: "2011/0201/1185",
    corpName: "Alu Engineerings",
    estDate: "2011/02/25"
}
ON MATCH SET n += {
    parcel: null,
    address: 1002
}
RETURN n;

MERGE (n:Corporate {regId: "1987/0401/1785"})
ON CREATE SET n = {
    regId: "1987/0401/1785",
    corpName: "TopSpec's Workshop",
    estDate: "1987/04/2035"
}
ON MATCH SET n += {
    parcel: null,
    address: 1003
}
RETURN n;