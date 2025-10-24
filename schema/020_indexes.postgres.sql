-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  payment_webhooks
CREATE INDEX idx_payment_webhooks_payment ON payment_webhooks (payment_id);

CREATE INDEX idx_payment_webhooks_gw_id ON payment_webhooks (gateway_event_id);

CREATE INDEX idx_payment_webhooks_hash ON payment_webhooks (payload_hash);
