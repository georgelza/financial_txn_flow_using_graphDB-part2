// Unique constraints on nodes, used for MERGE update statements as the datastore grow.
CREATE CONSTRAINT bank_node_fspiId_uidx IF NOT EXISTS
FOR (a:Bank) 
REQUIRE a.fspiId IS UNIQUE;

CREATE CONSTRAINT Account_node_fspiAgentAccountId_uidx IF NOT EXISTS
FOR (a:Account) 
REQUIRE a.fspiAgentAccountId IS UNIQUE;

CREATE CONSTRAINT AccountHolder_node_fspiAgentAccountId_uidx IF NOT EXISTS
FOR (a:AccountHolder) 
REQUIRE a.fspiAgentAccountId IS UNIQUE;

CREATE CONSTRAINT Corporate_node_regId_uidx IF NOT EXISTS
FOR (a:Corporate) 
REQUIRE a.regId IS UNIQUE;

CREATE CONSTRAINT Person_node_pps_uidx IF NOT EXISTS
FOR (a:Person) 
REQUIRE a.pps IS UNIQUE;

CREATE CONSTRAINT Mobile_device_node_mobile_number_uidx IF NOT EXISTS
FOR (a:Mobile_device) 
REQUIRE a.mobile_number IS UNIQUE;

CREATE CONSTRAINT LandLine_number_node_phone_number_uidx IF NOT EXISTS
FOR (a:LandLine_number) 
REQUIRE a.phone_number IS UNIQUE;

CREATE CONSTRAINT Address_node_parcel_uidx IF NOT EXISTS
FOR (a:Address) 
REQUIRE a.parcel IS UNIQUE;

