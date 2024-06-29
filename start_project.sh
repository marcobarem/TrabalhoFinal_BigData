#!/bin/sh
cd /home/heart/MB_NOSQL/mongodb/ && docker compose up -d
cd /home/heart/projects/MB_NoSQL/redis && docker compose up -d
cd /home/heart/projects/MB_NoSQL/spark && docker compose up -d 
cd /home/heart/projects/MB_NoSQL/streamlit && docker compose up -d
