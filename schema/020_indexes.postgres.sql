-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  payment_webhooks

CREATE INDEX IF NOT EXISTS idx_payment_webhooks_payment ON payment_webhooks (payment_id);

CREATE INDEX IF NOT EXISTS idx_payment_webhooks_gw_id ON payment_webhooks (gateway_event_id);

CREATE UNIQUE INDEX IF NOT EXISTS ux_payment_webhooks_payload ON payment_webhooks (payload_hash);
