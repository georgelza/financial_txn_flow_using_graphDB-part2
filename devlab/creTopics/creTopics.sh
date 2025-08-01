#!/bin/bash

export COMPOSE_PROJECT_NAME=graph

# Retension is set to 1 day below
docker compose exec broker kafka-topics \
    --create -topic full_payload \
    --bootstrap-server localhost:9092 \
    --partitions 1 \
    --replication-factor 1 \
    --if-not-exists \
    --config retention.ms=3600000 \
    2>/dev/null

# AccountHolders / Nodes
docker compose exec broker kafka-topics \
    --create -topic accounts \
    --bootstrap-server localhost:9092 \
    --partitions 1 \
    --replication-factor 1 \
    --if-not-exists \
    --config retention.ms=604800000 \
    2>/dev/null

docker compose exec broker kafka-topics \
    --create -topic accounts_holder \
    --bootstrap-server localhost:9092 \
    --partitions 1 \
    --replication-factor 1 \
    --if-not-exists \
    --config retention.ms=604800000 \
    2>/dev/null

 docker compose exec broker kafka-topics \
    --create -topic person \
    --bootstrap-server localhost:9092 \
    --partitions 1 \
    --replication-factor 1 \
    --if-not-exists \
    --config retention.ms=604800000 \
    2>/dev/null

 docker compose exec broker kafka-topics \
    --create -topic corporate \
    --bootstrap-server localhost:9092 \
    --partitions 1 \
    --replication-factor 1 \
    --if-not-exists \
    --config retention.ms=604800000 \
    2>/dev/null


# AccountEvents / Edges
docker compose exec broker kafka-topics \
    --create -topic ob_txn \
    --bootstrap-server localhost:9092 \
    --partitions 1 \
    --replication-factor 1 \
    --if-not-exists \
    --config retention.ms=3600000 \
    2>/dev/null

 docker compose exec broker kafka-topics \
    --create -topic ib_txn \
    --bootstrap-server localhost:9092 \
    --partitions 1 \
    --replication-factor 1 \
    --if-not-exists \
    --config retention.ms=3600000 \
    2>/dev/null


# Catch all errors payloads
docker compose exec broker kafka-topics \
    --create -topic err_payload \
    --bootstrap-server localhost:9092 \
    --partitions 1 \
    --replication-factor 1 \
    --if-not-exists \
    --config retention.ms=3600000 \
    2>/dev/null

# Lets list topics, excluding the default Confluent Platform topics
docker compose exec broker kafka-topics \
 --bootstrap-server localhost:9092 \
 --list | grep -v '_confluent' |grep -v '__' |grep -v '_schemas' | grep -v 'default' | grep -v 'docker-connect'

