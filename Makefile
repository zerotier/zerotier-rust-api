central:
	bash generate.sh central zerotier-central-api
	cd zerotier-central-api && cargo build && cargo clean

service:
	bash generate.sh service zerotier-one-api
	cd zerotier-one-api && cargo build && cargo clean

.PHONY: central service
