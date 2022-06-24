VERSION := 1.0

web:
	docker build \
		-f kubernetes-intro/web/Dockerfile \
		-t web:$(VERSION) \
		--build-arg BUILD_REF=$(VERSION) \
		--build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
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

u: delete web dd apply