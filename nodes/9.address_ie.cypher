// BUSINESS ADDRESSES (4 total) - Limerick County

// Business Address 1 - Limerick City Centre
MERGE (n:Address {parcel: 1001})
ON CREATE SET n = {
  street_1: "3rd Floor, 125 O'Connell Street",
  street_2: "City Quarter Building",
  suburb: "City Centre",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 C9P8",
  countryCode: "IE",
  parcel: 1001
}
ON MATCH SET n = {
  street_1: "3rd Floor, 125 O'Connell Street",
  street_2: "City Quarter Building",
  suburb: "City Centre",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 C9P8",
  countryCode: "IE"
}
RETURN n;

// Business Address 2 - Castletroy
MERGE (n:Address {parcel: 1002})
ON CREATE SET n = {
  street_1: "Ground Floor, Plassey Technology Park",
  street_2: "National Technology Park",
  suburb: "Castletroy",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 C928",
  countryCode: "IE",
  parcel: 1002
}
ON MATCH SET n = {
  street_1: "Ground Floor, Plassey Technology Park",
  street_2: "National Technology Park",
  suburb: "Castletroy",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 C928",
  countryCode: "IE"
}
RETURN n;

// Business Address 3 - Dooradoyle
MERGE (n:Address {parcel: 1003})
ON CREATE SET n = {
  street_1: "Unit 15, Crescent Shopping Centre",
  street_2: "Dooradoyle Road",
  suburb: "Dooradoyle",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 W8N2",
  countryCode: "IE",
  parcel: 1003
}
ON MATCH SET n = {
  street_1: "Unit 15, Crescent Shopping Centre",
  street_2: "Dooradoyle Road",
  suburb: "Dooradoyle",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 W8N2",
  countryCode: "IE"
}
RETURN n;

// Business Address 4 - Newcastle West
MERGE (n:Address {parcel: 1004})
ON CREATE SET n = {
  street_1: "Bishop Street Business Park",
  street_2: "Unit 7",
  suburb: "Newcastle West",
  city: "Newcastle West",
  province: "Munster",
  postal_code: "V42 N293",
  countryCode: "IE",
  parcel: 1004
}
ON MATCH SET n = {
  street_1: "Bishop Street Business Park",
  street_2: "Unit 7",
  suburb: "Newcastle West",
  city: "Newcastle West",
  province: "Munster",
  postal_code: "V42 N293",
  countryCode: "IE"
}
RETURN n;

// RESIDENTIAL ADDRESSES (46 total) - Limerick County

// Limerick City Residential Areas

// Georgian Quarter
MERGE (n:Address {parcel: 2001})
ON CREATE SET n = {
  street_1: "15 Pery Square",
  street_2: null,
  suburb: "Georgian Quarter",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 E8K3",
  countryCode: "IE",
  parcel: 2001
}
ON MATCH SET n = {
  street_1: "15 Pery Square",
  street_2: null,
  suburb: "Georgian Quarter",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 E8K3",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 2002})
ON CREATE SET n = {
  street_1: "42 Barrington Street",
  street_2: null,
  suburb: "Georgian Quarter",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 E8K3",
  countryCode: "IE",
  parcel: 2002
}
ON MATCH SET n = {
  street_1: "42 Barrington Street",
  street_2: null,
  suburb: "Georgian Quarter",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 E8K3",
  countryCode: "IE"
}
RETURN n;

// Castletroy
MERGE (n:Address {parcel: 2003})
ON CREATE SET n = {
  street_1: "78 Millfield",
  street_2: null,
  suburb: "Castletroy",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 C928",
  countryCode: "IE",
  parcel: 2003
}
ON MATCH SET n = {
  street_1: "78 Millfield",
  street_2: null,
  suburb: "Castletroy",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 C928",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 2004})
ON CREATE SET n = {
  street_1: "23 Elm Park",
  street_2: null,
  suburb: "Castletroy",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 C928",
  countryCode: "IE",
  parcel: 2004
}
ON MATCH SET n = {
  street_1: "23 Elm Park",
  street_2: null,
  suburb: "Castletroy",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 C928",
  countryCode: "IE"
}
RETURN n;

// Raheen
MERGE (n:Address {parcel: 2005})
ON CREATE SET n = {
  street_1: "56 Raheen Square",
  street_2: null,
  suburb: "Raheen",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 K2P8",
  countryCode: "IE",
  parcel: 2005
}
ON MATCH SET n = {
  street_1: "56 Raheen Square",
  street_2: null,
  suburb: "Raheen",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 K2P8",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 2006})
ON CREATE SET n = {
  street_1: "134 Clonmacken Road",
  street_2: null,
  suburb: "Raheen",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 K2P8",
  countryCode: "IE",
  parcel: 2006
}
ON MATCH SET n = {
  street_1: "134 Clonmacken Road",
  street_2: null,
  suburb: "Raheen",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 K2P8",
  countryCode: "IE"
}
RETURN n;

// Dooradoyle
MERGE (n:Address {parcel: 2007})
ON CREATE SET n = {
  street_1: "89 Dooradoyle Road",
  street_2: null,
  suburb: "Dooradoyle",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 W8N2",
  countryCode: "IE",
  parcel: 2007
}
ON MATCH SET n = {
  street_1: "89 Dooradoyle Road",
  street_2: null,
  suburb: "Dooradoyle",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 W8N2",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 2008})
ON CREATE SET n = {
  street_1: "12 Crescent Avenue",
  street_2: null,
  suburb: "Dooradoyle",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 W8N2",
  countryCode: "IE",
  parcel: 2008
}
ON MATCH SET n = {
  street_1: "12 Crescent Avenue",
  street_2: null,
  suburb: "Dooradoyle",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 W8N2",
  countryCode: "IE"
}
RETURN n;

// Corbally
MERGE (n:Address {parcel: 2009})
ON CREATE SET n = {
  street_1: "67 Old Cratloe Road",
  street_2: null,
  suburb: "Corbally",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 P2H8",
  countryCode: "IE",
  parcel: 2009
}
ON MATCH SET n = {
  street_1: "67 Old Cratloe Road",
  street_2: null,
  suburb: "Corbally",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 P2H8",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 2010})
ON CREATE SET n = {
  street_1: "245 Corbally Road",
  street_2: null,
  suburb: "Corbally",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 P2H8",
  countryCode: "IE",
  parcel: 2010
}
ON MATCH SET n = {
  street_1: "245 Corbally Road",
  street_2: null,
  suburb: "Corbally",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 P2H8",
  countryCode: "IE"
}
RETURN n;

// Ballinacurra Weston
MERGE (n:Address {parcel: 2011})
ON CREATE SET n = {
  street_1: "34 Childers Road",
  street_2: null,
  suburb: "Ballinacurra Weston",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 R2K8",
  countryCode: "IE",
  parcel: 2011
}
ON MATCH SET n = {
  street_1: "34 Childers Road",
  street_2: null,
  suburb: "Ballinacurra Weston",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 R2K8",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 2012})
ON CREATE SET n = {
  street_1: "91 Shelbourne Road",
  street_2: null,
  suburb: "Ballinacurra Weston",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 R2K8",
  countryCode: "IE",
  parcel: 2012
}
ON MATCH SET n = {
  street_1: "91 Shelbourne Road",
  street_2: null,
  suburb: "Ballinacurra Weston",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 R2K8",
  countryCode: "IE"
}
RETURN n;

// Ennis Road
MERGE (n:Address {parcel: 2013})
ON CREATE SET n = {
  street_1: "156 Ennis Road",
  street_2: null,
  suburb: "Ennis Road",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 T8K3",
  countryCode: "IE",
  parcel: 2013
}
ON MATCH SET n = {
  street_1: "156 Ennis Road",
  street_2: null,
  suburb: "Ennis Road",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 T8K3",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 2014})
ON CREATE SET n = {
  street_1: "73 Clancy Strand",
  street_2: null,
  suburb: "Ennis Road",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 T8K3",
  countryCode: "IE",
  parcel: 2014
}
ON MATCH SET n = {
  street_1: "73 Clancy Strand",
  street_2: null,
  suburb: "Ennis Road",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 T8K3",
  countryCode: "IE"
}
RETURN n;

// Southill
MERGE (n:Address {parcel: 2015})
ON CREATE SET n = {
  street_1: "28 O'Malley Park",
  street_2: null,
  suburb: "Southill",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 H2K8",
  countryCode: "IE",
  parcel: 2015
}
ON MATCH SET n = {
  street_1: "28 O'Malley Park",
  street_2: null,
  suburb: "Southill",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 H2K8",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 2016})
ON CREATE SET n = {
  street_1: "105 Carew Park",
  street_2: null,
  suburb: "Southill",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 H2K8",
  countryCode: "IE",
  parcel: 2016
}
ON MATCH SET n = {
  street_1: "105 Carew Park",
  street_2: null,
  suburb: "Southill",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 H2K8",
  countryCode: "IE"
}
RETURN n;

// Garryowen
MERGE (n:Address {parcel: 2017})
ON CREATE SET n = {
  street_1: "47 Rosbrien Road",
  street_2: null,
  suburb: "Garryowen",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 F2K8",
  countryCode: "IE",
  parcel: 2017
}
ON MATCH SET n = {
  street_1: "47 Rosbrien Road",
  street_2: null,
  suburb: "Garryowen",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 F2K8",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 2018})
ON CREATE SET n = {
  street_1: "82 Greenfields",
  street_2: null,
  suburb: "Garryowen",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 F2K8",
  countryCode: "IE",
  parcel: 2018
}
ON MATCH SET n = {
  street_1: "82 Greenfields",
  street_2: null,
  suburb: "Garryowen",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 F2K8",
  countryCode: "IE"
}
RETURN n;

// Moyross
MERGE (n:Address {parcel: 2019})
ON CREATE SET n = {
  street_1: "19 Delmege Park",
  street_2: null,
  suburb: "Moyross",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 D2K8",
  countryCode: "IE",
  parcel: 2019
}
ON MATCH SET n = {
  street_1: "19 Delmege Park",
  street_2: null,
  suburb: "Moyross",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 D2K8",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 2020})
ON CREATE SET n = {
  street_1: "63 Pineview Gardens",
  street_2: null,
  suburb: "Moyross",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 D2K8",
  countryCode: "IE",
  parcel: 2020
}
ON MATCH SET n = {
  street_1: "63 Pineview Gardens",
  street_2: null,
  suburb: "Moyross",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 D2K8",
  countryCode: "IE"
}
RETURN n;

// King's Island
MERGE (n:Address {parcel: 2021})
ON CREATE SET n = {
  street_1: "124 King's Island",
  street_2: null,
  suburb: "King's Island",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 A2K8",
  countryCode: "IE",
  parcel: 2021
}
ON MATCH SET n = {
  street_1: "124 King's Island",
  street_2: null,
  suburb: "King's Island",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 A2K8",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 2022})
ON CREATE SET n = {
  street_1: "37 St. Mary's Park",
  street_2: null,
  suburb: "King's Island",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 A2K8",
  countryCode: "IE",
  parcel: 2022
}
ON MATCH SET n = {
  street_1: "37 St. Mary's Park",
  street_2: null,
  suburb: "King's Island",
  city: "Limerick",
  province: "Munster",
  postal_code: "V94 A2K8",
  countryCode: "IE"
}
RETURN n;

// County Limerick Towns and Villages

// Adare
MERGE (n:Address {parcel: 3001})
ON CREATE SET n = {
  street_1: "45 Main Street",
  street_2: null,
  suburb: "Adare",
  city: "Adare",
  province: "Munster",
  postal_code: "V94 N6K2",
  countryCode: "IE",
  parcel: 3001
}
ON MATCH SET n = {
  street_1: "45 Main Street",
  street_2: null,
  suburb: "Adare",
  city: "Adare",
  province: "Munster",
  postal_code: "V94 N6K2",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 3002})
ON CREATE SET n = {
  street_1: "78 Station Road",
  street_2: null,
  suburb: "Adare",
  city: "Adare",
  province: "Munster",
  postal_code: "V94 N6K2",
  countryCode: "IE",
  parcel: 3002
}
ON MATCH SET n = {
  street_1: "78 Station Road",
  street_2: null,
  suburb: "Adare",
  city: "Adare",
  province: "Munster",
  postal_code: "V94 N6K2",
  countryCode: "IE"
}
RETURN n;

MERGE (n:Address {parcel: 3003})
ON CREATE SET n = {
  street_1: "156 Killarney Road",
  street_2: null,
  suburb: "Adare",
  city: "Adare",
  province: "Munster",
  postal_code: "V94 N6K2",
  countryCode: "IE",
  parcel: 3003
}
ON MATCH SET n = {
  street_1: "156 Killarney Road",
  street_2: null,
  suburb: "Adare",
  city: "Adare",
  province: "Munster",
  postal_code: "V94 N6K2",
  countryCode: "IE"
}
RETURN n;

// Newcastle West
MERGE (n:Address {parcel: 3004})
ON CREATE SET n = {
  street_1: "23 The Square",
  street_2: null,
  suburb: "Newcastle West",
  city: "Newcastle West",
  province: "Munster",
  postal_code: "V42 N293",
  countryCode: "IE",
  parcel: 3004
}
ON MATCH SET n = {
  street_1: "23 The Square",
  street_2: null,
  suburb: "Newcastle West",
  city: "Newcastle West",
  province: "Munster",
  postal_code: "V42 N293",
  countryCode: "IE"
}