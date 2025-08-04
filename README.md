## Financial Transaction Flow 

## Financial Transaction Flow 

Ok, so in part 1 we created our basic GraphDB model with synthentic data of banks, accounts, corporates, people and their associated information like addresses, mobile devices, land line numbers etc.

We will now proceed a little further down our rabbit hole and add that phase 3 note, by introducing a time based view onto our events, commonly referred to as a temporal view. 

First up will be financial transactions. Now every transaction already have a eventTime as a property so you might ask whats up... 

Easiest way to think about this... Twitter which just happens to be a very BIG user of Graph database platforms. 
If we now consider what they do... 

They have their user and all his/her attributes mapped out as nodes, and then have each twitter post created as a node... into the node they lavel the node as current, but also add a 2nd attribute pointing to the previous posting.

And well, thats what we're going to do, we will "store the current" transaction and then point that to the previous transaction for our account, be that a outbound or inbound event. creating a time line/thread of all financtial events on our account.


NOTE: 

1. I did quite a bit of refactoring around the property labels for `1.banks`, `2.accounts`, `3.accountHolders` nodes, as also used in `4.corporate.cypher` and `5.1.person*.cypher` nodes.

2. aaa


3. We're also no introducing creating unique and normal indexes to provide for stable scalability as the entire dataset grows, see `constraints/constraints.cypher`.



For part 1, see [Fraud Analytics using a different approach, GraphDB data platform (part 1)](https://medium.com/@georgelza/fraud-analytics-using-a-different-approach-graphdb-data-platform-part-1-807c68d03bff) for the associated Blog article.


For part 2 (this one), see []()


GIT Repo: 

- [financial_txn_flow_using_graphDB - part 1](https://github.com/georgelza/financial_txn_flow_using_graphDB-part1)

- [financial_txn_flow_using_graphDB - part 2](https://github.com/georgelza/financial_txn_flow_using_graphDB-part2)


### Phase 3 - TO BE DONE

Figure out how to introduce temporal concepts between Account Events (for now it will be on inbound and outbound AccountEvents only), linking one to next in a chain, think link list, also allowing n+1 to reference. Basically creating a time travel chain of events for the account.



### To run

- `vi .env`    -> modify the REPO_NAME name
- `cd [project_root]/devlab/connect`
- `make pullall`
- `make build`
- `cd [project_root]/devlab`
- `make run`


You can now execute in the order of the script names/numbering the code from `nodes/` followed by `contstraints/` and `edges/` as per the `README.md's` that can be found in each of the previous directories.


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