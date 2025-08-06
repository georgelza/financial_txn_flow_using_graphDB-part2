## Financial Transaction Flow 


Ok, so in our previous blog, part 1 we created our basic GraphDB model with synthentic data of banks, accounts, corporates, people and their associated information like addresses, mobile devices, land line numbers etc.

We will now proceed a little further down our rabbit hole and add that phase 3 note, by introducing a time based view onto our events, commonly referred to as a temporal view. 

First up will be financial transactions. Every transaction (accountEvent) already have a eventTime as a property so you might ask whats up... 

Easiest way to think about this... Twitter which just happens to be a very BIG user of Graph database platforms. 
If we now consider what they do... 

They have their user and all his/her attributes mapped out as nodes, and then have each twitter post created as a node... into the node they label the node as current, but also add a 2nd attribute pointing to the previous posting. Creating a sort of lineage line of tweets.

And well, thats what we're going to do, we will "store the current" transaction (accountEvent) and then point that to the previous transaction for our account, be that a outbound or inbound event. In the end creating a time line/lineage of all events on our account.


**ToDo**

I"m not promising, but, anything is possible, eventually:

Phase 4:

Well there is always more: thinking about adding a temporal view for merge commands made on our other nodes, thus showing how they changed over time.

Pahse 5:

How about running the accountEvents through an embedding process, aka calculating vectors values using AI/ML referencing an accountEvent (transaction) in comparison to the previous and say future 5, with the 5th being the current last event. We will store the vector value in our GraphDB, enabling us to use Graph Neural Networking and Social Network Analysis etc for analysis.

Phase xxx:

Well maybe refactor our project into a stream of events, creating nodes and re-creating (re-discovering) our edges/links. 


**NOTE:**

1. I did quite a bit of refactoring around the nodes and their properties: 
   
- `1.banks`, 
- `2.accounts`, 
- `3.accountHolders`
- `4.corporate.cypher`
- `5.1.person*.cypher`

2. Refactored `nodes/10.AccEvents.cypher` from a `MERGE` to a `CREATE` and then back to a `MERGE` with the sub `MATCH` block.

3. Added `edges/11.acountLineage_edge.cypher` as part of the new refactored `node/10.AccEvents.cypher` commands.

4. We are also now creating various unique & standard indexes to provide for a more stable scalability as our dataset grows, see `constraints/constraints.cypher`.


**Medium Articles:** 

- For part 1, see [Fraud Analytics using a different approach, GraphDB data platform (part 1)](https://medium.com/@georgelza/fraud-analytics-using-a-different-approach-graphdb-data-platform-part-1-807c68d03bff) for the associated Blog article.


- For part 2 (this one), see [Fraud Analytics using a different approach, GraphDB data platform (part 2)]()


**GIT Repo:** 

- [financial_txn_flow_using_graphDB - part 1](https://github.com/georgelza/financial_txn_flow_using_graphDB-part1)

- [financial_txn_flow_using_graphDB - part 2](https://github.com/georgelza/financial_txn_flow_using_graphDB-part2)


### To run

- `vi .env`    -> modify the REPO_NAME name
- `cd [project_root]/devlab/connect`
- `make pullall`
- `make build`
- `cd [project_root]/devlab`
- `make run`


You can now execute in the order of the script names/numbering the code from `nodes/` followed by `contstraints/` and `edges/` as per the `README.md` that can be found in each of the previous directories.


## References  

- [Transaction and Account Data Model](https://neo4j.com/developer/industry-use-cases/data-models/AccountEvents/AccountEvents-base-model/?_gl=1*d43n9l*_gcl_au*MTc2MjA3MzA3NS4xNzUzMjY3Mzc5*_ga*NzU1MTc3ODQwLjE3NTMyNjczNzk.*_ga_DL38Q8KGQC*czE3NTMyNjczNzkkbzEkZzEkdDE3NTMyNzM2MzIkajYwJGwwJGgw*_ga_DZP8Z65KK4*czE3NTMyNjczNzkkbzEkZzEkdDE3NTMyNzM2MzIkajYwJGwwJGgw)


- [Third-party payment to high-risk jurisdiction](https://neo4j.com/developer/industry-use-cases/finserv/retail-banking/transaction-monitoring/rules/transaction-monitoring-high-risk-jurisdictions/)

- [Mastering Fraud Detection With Temporal Graph Modeling](https://neo4j.com/blog/developer/mastering-fraud-detection-temporal-graph/)

- [A Comprehensive Guide to Temporal Graphs in Data Science](https://www.analyticsvidhya.com/blog/2023/12/a-comprehensive-guide-to-temporal-graphs-in-data-science/)

- [temporal-connected-components-with-neo4j](https://github.com/halftermeyer/temporal-connected-components-with-neo4j/tree/main)

- [Theoretical Computer Science: Temporally connected components](https://www.sciencedirect.com/science/article/pii/S0304397524003748)


### Cypher Example (with Markdown enabled via the VSCode Cypher add in)

```cypher
MATCH (n) RETURN n
```



By: George Leonard

- georgelza@gmail.com
- https://www.linkedin.com/in/george-leonard-945b502/
- https://medium.com/@georgelza