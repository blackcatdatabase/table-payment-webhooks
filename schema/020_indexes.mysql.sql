-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  payment_webhooks
CREATE UNIQUE INDEX ux_payment_webhooks_payload ON payment_webhooks (payload_hash);
