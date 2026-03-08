**3-Tier Architecture Deployment using Terraform, Vagrant, Ansible with Monitoring** 
**Project Overview**

This project demonstrates the deployment of a 3-tier architecture using Infrastructure as Code and automation tools.
Infrastructure is provisioned using Terraform, virtual machines are managed using Vagrant, configuration is automated using Ansible, and monitoring is implemented using Prometheus and Grafana.

**Architecture Diagram**
               Client
                 |
                 |
         Load Balancer (Nginx)
            192.168.56.103
             /         \
            /           \
      web1 (Nginx)    web2 (Nginx)
     192.168.56.101  192.168.56.102

**Monitoring Layer**

Node Exporter → Prometheus → Grafana
**Tools & Technologies**
**Tool	Purpose**
Terraform=Infrastructure provisioning
Vagrant=Virtual machine lifecycle
VirtualBox=VM provider
Ansible=Configuration management
Nginx=Web server & load balancer
Prometheus=Metrics collection
Grafana=Monitoring dashboards
**Infrastructure Deployment**

Terraform provisions the infrastructure and triggers Vagrant to create the virtual machines.

Initialize Terraform
terraform init
Create Infrastructure
terraform apply

This creates three virtual machines:

web1
web2
loadbalancer
**Server Configuration with Ansible**

Ansible playbooks automate installation and configuration.

Playbooks used:

webserver.yml
loadbalancer.yml
monitoring.yml

Run the playbooks:

ansible-playbook webserver.yml
ansible-playbook loadbalancer.yml
ansible-playbook monitoring.yml
Web Server Deployment

Both web1 and web2 run Nginx and serve static webpages.

**Example output**:

Hello from web1
Hello from web2
Load Balancer

The load balancer uses Nginx as a reverse proxy.

**Traffic flow:**

Client → Load Balancer → web1 / web2

Refreshing the browser distributes traffic between servers.

Monitoring Setup

Monitoring tools are deployed using Ansible.

**Components:**

• Node Exporter
• Prometheus
• Grafana

Node Exporter collects system metrics from each server.

Prometheus scrapes the metrics and stores them.

Grafana visualizes the metrics through dashboards.

**Service Ports**
Service	Port
SSH-22
Web Serve-80
Node Exporter-9100
Prometheus-9090
Grafana-3000
**Access URLs**

Prometheus

http://192.168.56.103:9090

Grafana

http://192.168.56.103:3000

Default login

username: admin
password: admin
Grafana Dashboard

Import dashboard ID:

1860

This dashboard visualizes CPU, memory, disk, and network metrics.

**Project Workflow**
Terraform → Infrastructure provisioning
       ↓
Vagrant → VM management
       ↓
Ansible → Server configuration
       ↓
Nginx → Load balancing
       ↓
Prometheus → Metrics collection
       ↓
Grafana → Monitoring dashboards
**Project Structure**
sre-3tier-project
│
├── terraform
│   ├── main.tf
│   ├── variables.tf
│   └── Vagrantfile
│
├── ansible
│   ├── inventory.ini
│   ├── webserver.yml
│   ├── loadbalancer.yml
│   └── monitoring.yml
│
└── README.md
**Learning Outcomes**

This project demonstrates:

• Infrastructure as Code
• Configuration management automation
• Load balancing architecture
• Monitoring implementation
• DevOps workflow integration
