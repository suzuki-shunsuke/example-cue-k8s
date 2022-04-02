package kube

deployment: [ID=_]: #Deployment & {
	metadata: {
		labels: app: ID
		name: ID
	}
	spec: selector: matchLabels: app: ID
	spec: template: metadata: labels: app: ID
	spec: replicas: int
}

#Deployment: {
	apiVersion: "apps/v1"
	kind:       "Deployment"
	...
}

#DeploymentProd: #Deployment & {
	spec: replicas: int & >2
	spec: {
		...
	}
	...
}
