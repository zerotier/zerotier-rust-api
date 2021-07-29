central:
	@DESCRIPTION="OpenAPI bindings to the ZeroTier Central (https:\/\/my.zerotier.com) service" bash generate.sh central zerotier-central-api
	cd zerotier-central-api && cargo build && cargo clean

service:
	@DESCRIPTION="OpenAPI bindings to the ZeroTierOne JSON API" bash generate.sh service zerotier-one-api
	cd zerotier-one-api && cargo build && cargo clean

.PHONY: central service
