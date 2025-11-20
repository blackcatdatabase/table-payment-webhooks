-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  payment_webhooks
-- Contract view for [payment_webhooks]
-- Hides raw payload JSON; exposes presence.
CREATE OR REPLACE VIEW vw_payment_webhooks AS
SELECT
  id,
  payment_id,
  gateway_event_id,
  payload_hash,
  (payload IS NOT NULL) AS has_payload,
  from_cache,
  created_at
FROM payment_webhooks;
