#!/bin/sh
cd /home/heart/MB_NOSQL/mongodb/ && docker compose down
cd /home/heart/projects/MB_NoSQL/redis && docker compose down
cd /home/heart/projects/MB_NoSQL/spark && docker compose down 
cd /home/heart/projects/MB_NoSQL/streamlit && docker compose down
