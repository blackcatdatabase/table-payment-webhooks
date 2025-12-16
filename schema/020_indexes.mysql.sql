-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  payment_webhooks

CREATE UNIQUE INDEX ux_payment_webhooks_payload ON payment_webhooks (payload_hash);
