VERSION := 1.0

web:
	docker build \
		-f kubernetes-intro/web/Dockerfile \
		-t web:$(VERSION) \
		.

dd:
	docker tag web:$(VERSION) ekod/web:$(VERSION)
	docker push ekod/web:$(VERSION)

apply:
	kubectl apply -f kubernetes-intro/web-pod.yaml

delete:
	kubectl delete -f kubernetes-intro/web-pod.yaml

logs:
	kubectl logs web

u: web dd apply

pf:
	kubectl port-forward --address 0.0.0.0 pod/web 8000:8000