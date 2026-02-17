all: central service

central:
	curl -sSL https://docs.zerotier.com/openapi/central/v1.json > zerotier-central-api/openapi.json
	cd zerotier-central-api && cargo build

service:
	curl -sSL https://docs.zerotier.com/openapi/central/v1.json > zerotier-one-api/openapi.json
	cd zerotier-one-api && cargo build

audit:
	@if ! cargo-audit -h >/dev/null 2>&1; \
		then echo "Could not cargo-audit. (Hint: 'cargo install cargo-audit')"; \
	fi
	cargo audit

.PHONY: central service
