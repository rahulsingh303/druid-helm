# druid-helm
Helm chart for druid (https://github.com/druid-io) . This is inspired from work of krallistic/druid-kubernetes . This has been tested on minikube and deploys 3 zookeeper containers and individual containers for each of druid services. All the druid containers use the same druid image and starts their repective Druid service using start-druid command. MY-SQL has been used as metadata. Here's the deployment instructions:

