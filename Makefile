central:
	curl -sSL https://docs.zerotier.com/redocusaurus/plugin-redoc-0.yaml > zerotier-central-api/openapi.yaml
	cd zerotier-central-api && cargo build && cargo clean

service:
	curl -sSL https://github.com/zerotier/zerotier-one-api-spec/releases/latest/download/openapi.yaml > zerotier-one-api/openapi.yaml
	cd zerotier-one-api && cargo build && cargo clean

.PHONY: central service
