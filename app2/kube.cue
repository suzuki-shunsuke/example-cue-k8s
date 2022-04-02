package kube

deployment: app2: #DeploymentProd & {
	spec: {
		replicas: 3
		template: {
			spec: containers: [{
				image: "nginx"
				name:  "nginx"
			}]
		}
	}
}
