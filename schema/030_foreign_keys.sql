-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: payment_webhooks
ALTER TABLE payment_webhooks ADD CONSTRAINT fk_payment_webhooks_payment FOREIGN KEY (payment_id) REFERENCES payments(id) ON DELETE SET NULL;
