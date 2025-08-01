## Financial Transaction Flow 

Our little exploration into the world of GraphDB's and how they defined objects/nodes/records and then create edges/links/relationships between them.

See []() for the associated Blog article.

GIT Repo: [financial_txn_flow_using_graphDB - part 1](https://github.com/georgelza/financial_txn_flow_using_graphDB)

### Phase 1

Define Nodes:

  - Banks
  - Accounts
  - AccountHolders
  - Corporate's
  - Person's
- 
  - Mobile Devices
  - Landline Numbers
  - Address

  - AccountEvents (transactions)
    - Inbound
    - Outbound

I've also added mappings defining nodes for continents and countries, and then muldiple edge models as per classifications.
  - continents
  - Countries
    - Africa
    - Asia
    - Europe
    - North America
    - South America
    - Oceana
  - classifications


### Phase 2

Create basic edges:

  - Bank ->           Account
  - Account ->        AccountHolder
  - AccountHolder ->  Corporate
    - Corporate ->    Person
  - AccountHolder ->  Person
  - Person ->         Mobile Numbers
  - Person ->         Landline Numbers
  - Corporate ->      Landline Numbers
  - Address ->        Person
  - Address ->        Corporate
  - accEvent ->       Account
    - As a outbound and inbound edge.
  
  - Country ->        Continent         -> Added files, have not coded import or edges
  - Country ->        Classification's  -> Added files, have not coded import or edges
  - Address ->        Country           -> Added files, have not coded import or edges

As far as accountEvents -> is concerned, see blog-doc/diagrams/Account_accountEvent_Account_edge.png for a depiction how this has been modelled.

  - outbound
    - (ob Account) -> [Paid_Funds_To] -> (ob AccountEvents) the outbound transaction is modelled as a node

  - inbound
    - (ib Account) <- [Received_Funds_To] - (ib AccountEvents) the inbound transaction is also modelled as a node

  - (ob AccountEvents) -> [Same_TxnEvent] -> (ib AccountEvents)  Here we now associated the ob accountEvent with the ib accountEvent based on them having the same transactionId.
    - This is done as a edge for both directions.


### Phase 3 - TO BE DONE

Figure out how to introduce temporal concepts between Account Events (for now it will be on inbound and outbound AccountEvents only), linking one to next in a chain, think link list, also allowing n+1 to reference. Basically creating a time travel chain of events for the account.


### Additional Data Products required

1. Banks provide (if individual) accountEntityId => pps
2. Banks provide (if corporate) accountEntityId => regId
3. National Business Registry provide regId => Company Owners/ppss
4. National Department of Home Affairs/Home Office provide pps => Personal records, name, surname, sex, dob, ...

5. Possible (stretching wishes), Mobile Telco's Operators provide pps => mobiledevice_number
6. Reported Fraud provide know offenders and known victim ppss.


### Kafka Connect Sinks

This will be a seperate Blog. Will update this section with the link to the GIT repo once completed.


### To run

- `vi .env`    -> modify the REPO_NAME name
- `cd [project_root]/devlab/connect`
- `make pullall`
- `make build`
- `cd [project_root]/devlab`
- `make run`


## References
  

- [Transaction and Account Data Model](https://neo4j.com/developer/industry-use-cases/data-models/AccountEvents/AccountEvents-base-model/?_gl=1*d43n9l*_gcl_au*MTc2MjA3MzA3NS4xNzUzMjY3Mzc5*_ga*NzU1MTc3ODQwLjE3NTMyNjczNzk.*_ga_DL38Q8KGQC*czE3NTMyNjczNzkkbzEkZzEkdDE3NTMyNzM2MzIkajYwJGwwJGgw*_ga_DZP8Z65KK4*czE3NTMyNjczNzkkbzEkZzEkdDE3NTMyNzM2MzIkajYwJGwwJGgw)


- [Mastering Fraud Detection With Temporal Graph Modeling](https://neo4j.com/blog/developer/mastering-fraud-detection-temporal-graph/)

- [A Comprehensive Guide to Temporal Graphs in Data Science](https://www.analyticsvidhya.com/blog/2023/12/a-comprehensive-guide-to-temporal-graphs-in-data-science/)

- [temporal-connected-components-with-neo4j](https://github.com/halftermeyer/temporal-connected-components-with-neo4j/tree/main)

- [Theoretical Computer Science: Temporally connected components](https://www.sciencedirect.com/science/article/pii/S0304397524003748)


### Cypher Example (with Markdown enabled via the VSCode Cypher add in)

```cypher
MATCH (n) RETURN n
```


By:
George Leonard
georgelza@gmail.com
https://www.linkedin.com/in/george-leonard-945b502/
https://medium.com/@georgelza