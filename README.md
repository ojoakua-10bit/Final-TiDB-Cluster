# Final-TiDB-Cluster <!-- omit in toc -->

Name: Deddy Aditya P.  
NRP: 05111640000069

## Table of Content <!-- omit in toc -->

- [System Architechture](#system-architechture)
  - [Diagram](#diagram)
  - [System Specification](#system-specification)
- [Deployment](#deployment)
- [Load Testing](#load-testing)
  - [Web Performance](#web-performance)
  - [Database Performance](#database-performance)
- [Failover Testing](#failover-testing)

## System Architechture

<!-- TODO: explain about architechtural design -->

### Diagram

![architechtural](img/arch.png)

### System Specification

Hostname | IP | OS | Memory | Running Services
----|----|----|----|----
pd-server-1 | 192.168.16.69 | CentOS 8 | 1024 MB | Webserver (nginx), TiDB, PD1, Prometheus, Grafana, node-exporter
pd-server-2 | 192.168.16.70 | CentOS 8 | 512 MB | PD2, node-exporter
pd-server-3 | 192.168.16.71 | CentOS 8 | 512 MB | PD3, node-exporter
kv-server-1 | 192.168.16.72 | CentOS 8 | 512 MB | TiKV1, node-exporter
kv-server-2 | 192.168.16.73 | CentOS 8 | 512 MB | TiKV2, node-exporter
kv-server-3 | 192.168.16.74 | CentOS 8 | 512 MB | TiKV3, node-exporter

## Deployment

<!-- TODO: explain about deployment process -->

## Load Testing

### Web Performance

<!-- TODO: explain about JMeter test -->

### Database Performance

<!-- TODO: explain about Sysbench test -->

## Failover Testing

<!-- TODO: explain about Failover test -->