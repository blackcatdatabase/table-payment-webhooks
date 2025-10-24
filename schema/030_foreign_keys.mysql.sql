-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-10-24T09:13:35Z)
-- engine: mysql
-- table:  payment_webhooks
ALTER TABLE payment_webhooks ADD CONSTRAINT fk_payment_webhooks_payment FOREIGN KEY (payment_id) REFERENCES payments(id) ON DELETE SET NULL;
