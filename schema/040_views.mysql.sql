-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  payment_webhooks
-- Contract view for [payment_webhooks]
-- Hides raw payload JSON; exposes presence.
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_payment_webhooks AS
SELECT
  id,
  payment_id,
  gateway_event_id,
  payload_hash,
  (payload IS NOT NULL) AS has_payload,
  from_cache,
  created_at
FROM payment_webhooks;
