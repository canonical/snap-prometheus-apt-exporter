# snap-prometheus-apt-exporter
This snap provides a prometheus-apt-exporter, a text file based exporter for apt repositories.

The default port where the metrics are exposed is 8089. To change it, use the following command:
```
snap set prometheus-apt-exporter ports.http=<new-port>
```