#!/bin/bash
dropdb $1
bundle exec rake db:create
psql -d $1 -f db/functions/functions.sql
psql -d $1 -c "CREATE EXTENSION btree_gist"
bundle exec rake db:migrate
