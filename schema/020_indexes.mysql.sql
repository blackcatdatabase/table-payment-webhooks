-- Auto-generated from schema-map-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  payment_webhooks

CREATE UNIQUE INDEX ux_payment_webhooks_payload ON payment_webhooks (payload_hash);
