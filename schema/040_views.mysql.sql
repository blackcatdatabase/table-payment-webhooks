-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  payment_webhooks
-- Contract view for [payment_webhooks]
-- Hides raw payload JSON; exposes presence.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_payment_webhooks AS
SELECT
  id,
  payment_id,
  gateway_event_id,
  payload_hash,
  CAST(payload IS NOT NULL AS UNSIGNED) AS has_payload,
  from_cache,
  created_at
FROM payment_webhooks;
