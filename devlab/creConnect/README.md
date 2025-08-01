## Some Kafka Connect Topics Sink Notes

Simple, all our sink and eventually source jobs will be defined here.

These require the json payloads be posted onto the kafka topic, which will result as a sink into Neo4J.

### Topics

- create_corp_node_sink     -> Sink corp topic into Neo4J as defined Corporates.

- create_person_node_sink   -> Sink our person topic into Neo4J as defined People.

- create_txn_node_sink -> This sinks our Transaction events into Neo4J as a inbound and outbound node. to then be linked to each other and to the respective inbound and outbound account.


- Might define the ib_txn and ob_edge's to create as a payloads on the topic to be actioned.