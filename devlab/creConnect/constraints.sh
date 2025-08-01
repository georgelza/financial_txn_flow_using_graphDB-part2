#!/bin/bash

# =============================================================================
# 1. 
# =============================================================================

echo "Creating Constraints and Indexes..."
docker compose exec --interactive --tty neo4j cypher-shell -u neo4j -p dbpassword -f constraints.cypher
