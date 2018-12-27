# druid-helm
Helm chart for druid (https://github.com/druid-io) . This is inspired from work of krallistic/druid-kubernetes . This has been tested on minikube and deploys 3 zookeeper containers and individual containers for each of druid services. All the druid containers use the same druid image and starts their repective Druid service using start-druid command. MY-SQL has been used as metadata. Here's the deployment instructions:
1. Dowload all the files 
2. You can either have Zookeeper deployed separately or have it deployed as a dependency , both ways works. If you want to deploy zookeeper as part of druid dependency , uncomment the lines ij file requirements.yaml

3. 'helm lint druid' #run this command to check if all yaml files are syntactically right
4. 'helm dep update' # run this only if you have uncommented the lines in requirements.yaml , else skip . This will bring zookeeper in charts folder.
5. If you change anything , package the code using : 'helm package druid'
6. 'helm install druid-0.1.0.tgz'
