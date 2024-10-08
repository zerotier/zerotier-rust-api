central:
	curl -sSL https://docs.zerotier.com/openapi/centralv1.json > zerotier-central-api/openapi.json
	cd zerotier-central-api && cargo build && cargo clean

service:
	curl -sSL https://github.com/zerotier/zerotier-one-api-spec/releases/latest/download/openapi.yaml > zerotier-one-api/openapi.yaml
	cd zerotier-one-api && cargo build && cargo clean

.PHONY: central service
