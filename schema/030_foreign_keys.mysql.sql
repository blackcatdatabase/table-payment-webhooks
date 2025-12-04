-- Auto-generated from schema-map-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  payment_webhooks

ALTER TABLE payment_webhooks ADD CONSTRAINT fk_payment_webhooks_payment FOREIGN KEY (payment_id) REFERENCES payments(id) ON DELETE SET NULL;
