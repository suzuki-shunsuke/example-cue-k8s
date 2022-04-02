package kube

deployment: app: {
	apiVersion: "apps/v1"
	kind:       "Deployment"
	metadata: {
		labels: app: "app"
		name: "app"
	}
	spec: {
		replicas: 3
		selector: matchLabels: app: "app"
		template: {
			metadata: labels: app: "app"
			spec: containers: [{
				image: "nginx"
				name:  "nginx"
			}]
		}
	}
}