## Basic environment for GraphDB MVP/LAB/Blog


This will spin up the basic bits using docker-compose for our GraphDB Lab

Before we can do a `make run` we need to build a updated Kafka Connect image that includes the neo4j sink connector.
To do that :

- `make pullall`
- `cd connect`
- `make build`
- `cd ..`
- `make run`

At this point you can changed directory into nodes and follow the instructions in `README.md`, followed by `cd edges` and following the `README.md`.
