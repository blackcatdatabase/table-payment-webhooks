-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  payment_webhooks

CREATE UNIQUE INDEX ux_payment_webhooks_payload ON payment_webhooks (payload_hash);
