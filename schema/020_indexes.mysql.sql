-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  payment_webhooks

CREATE UNIQUE INDEX ux_payment_webhooks_payload ON payment_webhooks (payload_hash);
