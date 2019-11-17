# Logging from Docker to Elasticsearch

Demo to show how to setup filebeat as docker container to collect and ship docker logs to Elasticsearch.

## How to use


To view the log files in Kibana, open http://localhost:5601,
- Click Discover 
- Configure an index pattern as `filebeat-*`
- Add fields "container.name" + "message"

