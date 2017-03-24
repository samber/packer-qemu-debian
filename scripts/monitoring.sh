
NODE_EXPORTER_VERSION=0.13.0
CADVISOR_VERSION=0.24.1

# node exporter
curl -L https://github.com/prometheus/node_exporter/releases/download/v${NODE_EXPORTER_VERSION}/node_exporter-${NODE_EXPORTER_VERSION}.linux-amd64.tar.gz -o /tmp/node_exporter.tar.gz
tar zxf /tmp/node_exporter.tar.gz
mv /tmp/node_exporter-${NODE_EXPORTER_VERSION}.linux-amd64/node_exporter /usr/local/bin/node_exporter
rm -r /tmp/node_exporter.tar.gz /tmp/node_exporter-${NODE_EXPORTER_VERSION}.linux-amd64
chmod +x /usr/local/bin/node_exporter
cp /tmp/initfiles/node-exporter.service /etc/systemd/system/node-exporter.service
systemctl enable node-exporter

# cadvisor
curl -L -o /usr/local/bin/cadvisor https://github.com/google/cadvisor/releases/download/v${CADVISOR_VERSION}/cadvisor
chmod +x /usr/local/bin/cadvisor
cp /tmp/initfiles/cadvisor.service /etc/systemd/system/cadvisor.service
systemctl enable cadvisor
