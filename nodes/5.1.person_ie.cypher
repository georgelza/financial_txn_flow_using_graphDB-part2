// Create/Update
//
// Some Irish Name/Surname combinations.
//
// Male Names (7):
//
// Seán O'Brien     (classic Irish first name + common surname)
// Cian Murphy      (modern Irish name + very common surname)
// Liam Kelly       (popular name + widespread surname)
// Oisín McCarthy   (traditional Irish name + Cork/Munster surname)
// Darragh Walsh    (contemporary Irish name + common surname)
// Conor Byrne      (very popular Irish name + Dublin/Leinster surname)
// Padraig O'Connor (traditional Irish name + widespread surname)

// Female Names (3):
//
// Siobhán O'Sullivan   (classic Irish name + common Kerry/Cork surname)
// Aoife Ryan           (very popular modern Irish name + common surname)
// Niamh Fitzgerald     (traditional Irish name + Norman-Irish surname)

// Notes:
//
// Pronunciation guide: 
//  Padraig: (PAW-drig) is the Irish form of Patrick
//  Siobhán (shi-VAWN), 
//  Aoife (EE-fa), 
//  Niamh (NEE-av), 
//  Cian (KEE-an), 
//  Oisín (oh-SHEEN)
//
// These surnames are among the most common in Ireland
// The names mix traditional Gaelic names with anglicized versions
// All are authentic Irish names you'd commonly find in Limerick County and throughout Ireland

// Bank 1
// Setting a value to null removes the tag.
MERGE (n:Person {pps: "1234567A"})
ON CREATE SET n = {
    pps: "1234567A",
    fullName: "Seán O'Brien",
    dob: "1998/05/12",
    address: 2002
}
ON MATCH SET n += {
    dob: "1998/05/12",
    address: 2002
}
RETURN n;

MERGE (n:Person { pps: "2847639B"})
ON CREATE SET n = {
    pps: "2847639B",
    fullName: "Liam Kelly",
    dob: "1989/07/21", 
    address: 2004
}
ON MATCH SET n+= {
    dob: "1989/07/21", 
    address: 2004
}
RETURN n;

MERGE (n:Person { pps: "3519274C"})
ON CREATE SET n = {
    pps: "3519274C",
    fullName: "Cian Murphy",
    dob: "1984/07/21",
    address: 2006
}
ON MATCH SET n += {
    dob: "1984/07/21",
    address: 2006
}
RETURN n;

// Corporate
// AeroMat
MERGE (n:Person { pps: "4682851D"})
ON CREATE SET n = {
    pps: "4682851D",
    fullName: "Oisín McCarthy",
    regId: "1978/0001/1022",
    dob: "2000/07/21", 
    address: 2009
}
ON MATCH SET n += {
    dob: "2000/07/21", 
    address: 2009
}
RETURN n;

// Corporate
// AeroMat
MERGE (n:Person {pps: "5746392E"})
ON CREATE SET n = {
    pps: "5746392E",
    fullName: "Darragh Walsh",
    regId: "1978/0001/1022",
    dob: "1998/04/30",
    address: 2009    
}
ON MATCH SET n += {
    dob: "1998/04/30",
    address: 2009
}
RETURN n;

MERGE (n:Person {pps: "6283947F"})
ON CREATE SET n = {
    pps: "6283947F",
    fullName: "Conor Byrne",
    dob: "1992/05/10",
    address: 2014
}
ON MATCH SET n += {
    dob: "1992/05/10",
    address: 2014
}
RETURN n;

MERGE (n:Person {pps: "7395168G"})
ON CREATE SET n = {
    pps: "7395168G",
    fullName: "Cian Murphy",
    dob: "1978/08/26",
    address: 2017
}
ON MATCH SET n += {
    dob: "1978/08/26",
    address: 2017
}
RETURN n;

MERGE (n:Person {pps: "8461725H"})
ON CREATE SET n = {
    pps: "8461725H",
    fullName: "Padraig O'Connor ",
    regId: "2011/0201/1185",
    dob: "1945/02/20",
    address: 3001
}
ON MATCH SET n += {
    dob: "1945/02/20",
    address: 3001
}
RETURN n;

 
MERGE (n:Person {pps: "6297815Q"})
ON CREATE SET n = {
    pps: "6297815Q",
    fullName: "Ben o Bruyan",
    regId: "2011/0201/1185",
    dob: "1945/09/16",
    address: 3003
}
ON MATCH SET n += {
    dob: "1945/09/16",
    address: 3003
}
RETURN n;

MERGE (n:Person {pps: "9572840J"})
ON CREATE SET n = {
    pps: "9572840J",
    fullName: "Niamh Fitzgerald",
    regId: "2011/0201/1185",
    dob: "1972/12/24",
    address: 3003
}
ON MATCH SET n += {
    dob: "1972/12/24",
    address: 3003
}
RETURN n;
