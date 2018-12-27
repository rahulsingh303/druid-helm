# druid-helm
Helm chart for druid (https://github.com/druid-io) . This is inspired from work of krallistic/druid-kubernetes . This has been tested on minikube and deploys 3 zookeeper containers and individual containers for each of druid services. All the druid containers use the same druid image and starts their respective Druid service using start-druid command. MY-SQL has been used as metadata. Here's the deployment instructions:
1. Build druid image using Dockerfile in druid/docker. `docker build --tag druid:v1.0 .`
2. You can either have Zookeeper deployed separately or have it deployed as a dependency , both ways works. If you want to deploy zookeeper as part of druid dependency , uncomment the lines in file requirements.yaml . If you're deploying zookeeper separately then first deploy [zookeeper] (https://github.com/helm/charts/tree/master/incubator/zookeeper) : `helm install incubator/zookeeper`
3. Create PV folders , in values.yaml file , under volumes section , make sure correct host folder is mentioned.
4. `helm lint druid` #run this command to check if all yaml files are syntactically right
5. `helm dep update` # run this only if you have uncommented the lines in requirements.yaml , else skip . This will bring zookeeper in charts folder.
6. If you change anything , package the code using : `helm package druid`
7. `helm install druid-0.1.0.tgz`
