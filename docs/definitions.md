# payment_webhooks

Raw webhook payloads (deduplicated by payload_hash UNIQUE).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Received at (UTC). |
| from_cache | BOOLEAN | NO | 0 | Marked if sourced from cache/retry. |
| gateway_event_id | VARCHAR(255) | YES |  | Gateway event id, optional. |
| id | BIGINT | NO |  | Surrogate primary key. |
| payload | JSON | YES |  | Original JSON payload. |
| payload_hash | CHAR(64) | NO |  | Hash of payload for dedupe (UNIQUE). |
| payment_id | BIGINT | YES |  | Payment (FK payments.id), optional. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_payment_webhooks_payload | payload_hash |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_payment_webhooks_gw_id | gateway_event_id | INDEX idx_payment_webhooks_gw_id (gateway_event_id) |
| idx_payment_webhooks_payment | payment_id | INDEX idx_payment_webhooks_payment (payment_id) |
| ux_payment_webhooks_payload | payload_hash | CREATE UNIQUE INDEX ux_payment_webhooks_payload ON payment_webhooks (payload_hash) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_payment_webhooks_payment | payment_id | payments(id) | ON DELETE SET |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_payment_webhooks_payload | payload_hash |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_payment_webhooks_gw_id | gateway_event_id | CREATE INDEX IF NOT EXISTS idx_payment_webhooks_gw_id ON payment_webhooks (gateway_event_id) |
| idx_payment_webhooks_payment | payment_id | CREATE INDEX IF NOT EXISTS idx_payment_webhooks_payment ON payment_webhooks (payment_id) |
| ux_payment_webhooks_payload | payload_hash | CREATE UNIQUE INDEX IF NOT EXISTS ux_payment_webhooks_payload ON payment_webhooks (payload_hash) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_payment_webhooks_payment | payment_id | payments(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_payment_webhooks | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_payment_webhooks | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
