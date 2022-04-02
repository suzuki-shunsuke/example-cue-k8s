package kube

deployment: app: {
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
