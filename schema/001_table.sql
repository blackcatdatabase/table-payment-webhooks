-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: payment_webhooks
CREATE TABLE IF NOT EXISTS payment_webhooks (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  payment_id BIGINT UNSIGNED NULL,
  gateway_event_id VARCHAR(255) NULL,
  payload_hash CHAR(64) NOT NULL,
  payload JSON NULL,
  from_cache BOOLEAN NOT NULL DEFAULT 0,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  INDEX idx_payment_webhooks_payment (payment_id),
  INDEX idx_payment_webhooks_gw_id (gateway_event_id),
  INDEX idx_payment_webhooks_hash (payload_hash)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
