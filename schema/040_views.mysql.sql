-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-10-24T09:19:46Z)
-- engine: mysql
-- table:  payment_webhooks
-- Contract view for [payment_webhooks]
-- Hides raw payload JSON; exposes hash and identifiers.
CREATE OR REPLACE VIEW vw_payment_webhooks AS
SELECT
  id,
  payment_id,
  gateway_event_id,
  payload_hash,
  from_cache,
  created_at
FROM payment_webhooks;
