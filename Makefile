VERSION_TAG ?=`cat TAG`
IMAGE ?=nicor88/dbt

build:
	docker build -t ${IMAGE}:${VERSION_TAG} .

test-build: build
	docker run -it ${IMAGE}:${VERSION_TAG} dbt --version

dhub-login:
	docker login

dhub-publish: build test-build dhub-login
	docker push ${IMAGE}:${VERSION_TAG}
