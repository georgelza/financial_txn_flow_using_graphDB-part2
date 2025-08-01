
.DEFAULT_GOAL := help
include .env

define HELP

Available commands:

- run: This will call core.
- cypher:

- stop: Stop the project.
- start: Start a stopped project.
- down: Tear down the project, clean directories.
- ps: Show all running containers.

- logs: Show/tail logs.
- logsf: Stream logs.
- watch: Watch logs.


endef

export HELP
help:
	@echo "$$HELP"
.PHONY: help


#	docker rmi $(docker images -q --filter "dangling=true")

run:
	docker compose -f docker-compose.yml -p graph up -d \
		broker schema-registry  control-center connect \
		neo4j \
		--remove-orphans 



 # https://neo4j.com/docs/operations-manual/current/docker/operations/#docker-neo4j-plugins
	
createtopics:
	./creTopics/creTopics.sh


cypher:
	docker compose exec --interactive --tty neo4j cypher-shell -u ${NEO4J_USERNAME} -p ${NEO4J_PASSWORD}


# This will/can create supporting constraints
constraints:
	docker compose exec --interactive --tty neo4j cypher-shell -u ${NEO4J_USERNAME} -p ${NEO4J_PASSWORD} -f /connect/constraints.cypher


pullall:
	docker pull neo4j:latest
	docker pull confluentinc/cp-kafka:7.9.1
	docker pull confluentinc/cp-schema-registry:7.9.1
	docker pull confluentinc/cp-enterprise-control-center:7.9.1
	docker pull confluentinc/cp-kafka-connect-base:7.9.1


stop:
	docker compose stop

start:
	docker compose start

down:	
	docker compose down 
	cd data/; rm -rf neo4j_db
	cd data/; rm -rf confluent.d

ps:
	docker compose ps

logs:
	docker compose logs

logsf:
	docker compose logs -f

watch:
	watch docker compose ps
