all: build push

DOCKERREPO       := kubeforge/lb-haproxy

build:
				docker build -t $(DOCKERREPO) -f Dockerfile .

push: build
			docker push $(DOCKERREPO)
