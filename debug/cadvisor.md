# Monitoring tools

Resource metrics track the utilization and availability of critical resources such as CPU, memory, and storage. Once Metrics Server is deployed, you can retrieve compact metric snapshots from the Metrics API using kubectl top. The kubectl top command returns current CPU and memory usage for a cluster’s pods or nodes, or for a particular pod or node if specified.

The kubelet translates each pod into its constituent containers and fetches individual container usage statistics from the container runtime through the container runtime interface.

## cAdvisor

cAdvisor (Container Advisor) provides container users an understanding of the resource usage and performance characteristics of their running containers. It is a running daemon that collects, aggregates, processes, and exports information about running containers. Specifically, for each container it keeps resource isolation parameters, historical resource usage, histograms of complete historical resource usage and network statistics. This data is exported by container and machine-wide.

The performance file in the system file system is used and watch its resource usage events and collect them into target data format. The system information is acquired by the utility
. The total cpu and memory data can be dipped from the device file. The current cpu load is gathered from the control group folder in the system file system. 

The block storage and network device can be extracted from the system file system. The monitor data can be read and parsed there. The system and process file system are available for data extraction. The cpu load, block storage, network interface and data can be gathered from the system and process file system.


