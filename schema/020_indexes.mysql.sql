-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  payment_webhooks

CREATE UNIQUE INDEX ux_payment_webhooks_payload ON payment_webhooks (payload_hash);
