central:
	@DESCRIPTION="OpenAPI bindings to the ZeroTier Central (https:\/\/my.zerotier.com) service" bash generate.sh central zerotier-central-api

service:
	@DESCRIPTION="OpenAPI bindings to the ZeroTierOne JSON API" bash generate.sh service zerotier-one-api

.PHONY: central service
