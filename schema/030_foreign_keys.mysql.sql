-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  payment_webhooks

ALTER TABLE payment_webhooks ADD CONSTRAINT fk_payment_webhooks_payment FOREIGN KEY (payment_id) REFERENCES payments(id) ON DELETE SET NULL;
