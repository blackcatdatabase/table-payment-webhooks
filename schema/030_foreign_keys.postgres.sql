-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  payment_webhooks

ALTER TABLE payment_webhooks ADD CONSTRAINT fk_payment_webhooks_payment FOREIGN KEY (payment_id) REFERENCES payments(id) ON DELETE SET NULL;
