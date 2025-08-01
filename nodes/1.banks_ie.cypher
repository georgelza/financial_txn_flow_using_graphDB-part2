// Irish Bank SWIFT Codes:
//
// Bank of Ireland (BOI):       BOFIIE2D
// Allied Irish Banks (AIB):    AIBKIE2D
// Permanent TSB (PTSB):        IPTSIEDD
// Ulster Bank Ireland (UBI):   ULSBIE2D
//
// Code Breakdown:
//
// BOFI + IE + 2D = Bank of Ireland + Ireland + Dublin
// AIBK + IE + 2D = AIB + Ireland + Dublin
// IPTS + IE + DD = Permanent TSB + Ireland + Dublin
// ULSB + IE + 2D = Ulster Bank + Ireland + Dublin

// 4 letters: Bank identifier
// 2 letters: Country code (IE for Ireland)
// 2 characters: Location code (2D/DD for Dublin)

MERGE (n:Bank {tenantId: "BOFIIE2D"})
ON CREATE SET n = {
    tenantId: "BOFIIE2D",
    accountAgentId: "BOFIIE2D",
    memberName: "Bank of Ireland plc", 
    displayName: "Bank of Ireland",
    bicfi: "BOFIIE2D", 
    memberNo: "210001", 
    sponsoredBy: "210001", 
    eft: true, 
    rpp: false, 
    rtc: true, 
    ac: true, 
    branchStart: 410000, 
    branchEnd: 419999, 
    mnemonic: "ACC",
    acg: "universal",
    swift_code:  "BOFIIE2D"
}
ON MATCH SET n += {
    accountAgentId: "BOFIIE2D",
    memberName: "Bank of Ireland plc", 
    displayName: "Bank of Ireland",
    bicfi: "BOFIIE2D", 
    memberNo: "210001", 
    sponsoredBy: "210001", 
    eft: true, 
    rpp: false, 
    rtc: true, 
    ac: true, 
    branchStart: 410000, 
    branchEnd: 419999, 
    mnemonic: "ACC",
    acg: "universal",
    swift_code:  "BOFIIE2D"
}
RETURN n;

MERGE (n:Bank {tenantId: "AIBKIE2D"})
ON CREATE SET n = {
    tenantId: "AIBKIE2D",
    accountAgentId: "AIBKIE2D",
    memberName: "Allied Irish Banks plc", 
    displayName: "AIB",
    bicfi: "AIBKIE2D", 
    memberNo: "210002", 
    sponsoredBy: "210002", 
    eft: true, 
    rpp: false, 
    rtc: true, 
    ac: true, 
    branchStart: 420000, 
    branchEnd: 429999, 
    mnemonic: "ACC",
    acg: "universal",
    swift_code:  "AIBKIE2D"
}
ON MATCH SET n += {
    accountAgentId: "AIBKIE2D",
    memberName: "Allied Irish Banks plc", 
    displayName: "AIB",
    bicfi: "AIBKIE2D", 
    memberNo: "210002", 
    sponsoredBy: "210002", 
    eft: true, 
    rpp: false, 
    rtc: true, 
    ac: true, 
    branchStart: 420000, 
    branchEnd: 429999, 
    mnemonic: "ACC",
    acg: "universal",
    swift_code:  "AIBKIE2D"
}
RETURN n;


MERGE (n:Bank {tenantId: "IPTSIEDD"})
ON CREATE SET n = {
    tenantId: "IPTSIEDD",
    accountAgentId: "IPTSIEDD",
    memberName: "Permanent TSB plc", 
    displayName: "PTSB",
    bicfi: "IPTSIEDD", 
    memberNo: "210003", 
    sponsoredBy: "210002", 
    eft: true, 
    rpp: false, 
    rtc: true, 
    ac: true, 
    branchStart: 430000, 
    branchEnd: 439999, 
    mnemonic: "ACC",
    acg: "universal",
    swift_code:  "IPTSIEDD"
}
ON MATCH SET n += {
    accountAgentId: "IPTSIEDD",
    memberName: "Permanent TSB plc", 
    displayName: "PTSB",
    bicfi: "IPTSIEDD", 
    memberNo: "210003", 
    sponsoredBy: "210002", 
    eft: true, 
    rpp: false, 
    rtc: true, 
    ac: true, 
    branchStart: 430000, 
    branchEnd: 439999, 
    mnemonic: "ACC",
    acg: "universal",
    swift_code:  "IPTSIEDD"
}
RETURN n;

// Create/Update  - If you wanted to update more than just a bit...
MERGE (n:Bank { tenantId: "ULSBIE2D"})
ON CREATE SET n = {
    tenantId: "ULSBIE2D",
    accountAgentId: "ULSBIE2D",
    memberName: "Ulster Bank Ireland DAC",
    displayName: "UBI",
    bicfi: "ULSBIE2D", 
    memberNo: "210004", 
    sponsoredBy: "210004", 
    eft: true, 
    rpp: false, 
    rtc: true, 
    ac: true, 
    branchStart: 440000, 
    branchEnd: 449999, 
    mnemonic: "ACC",
    acg: "universal",
    swift_code:  "ULSBIE2D"
}
ON MATCH SET n += {
    accountAgentId: "ULSBIE2D",
    memberName: "Ulster Bank Ireland DAC",
    displayName: "UBI",
    bicfi: "ULSBIE2D", 
    memberNo: "210004", 
    sponsoredBy: "210004", 
    eft: true, 
    rpp: false, 
    rtc: true, 
    ac: true, 
    branchStart: 440000, 
    branchEnd: 449999, 
    mnemonic: "ACC",
    acg: "universal",
    swift_code:  "ULSBIE2D"
}
RETURN n;