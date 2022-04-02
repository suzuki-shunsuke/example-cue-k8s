package kube

deployment: app2: #DeploymentProd & {
	spec: {
		replicas: 2
		template: {
			spec: containers: [{
				image: "nginx"
				name:  "nginx"
			}]
		}
	}
}
