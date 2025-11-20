<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – payment_webhooks

Raw webhook payloads (deduplicated by payload_hash UNIQUE).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| payment_id | BIGINT | YES | — | Payment (FK payments.id), optional. |  |
| gateway_event_id | VARCHAR(255) | YES | — | Gateway event id, optional. |  |
| payload_hash | CHAR(64) | NO | — | Hash of payload for dedupe (UNIQUE). |  |
| payload | JSONB | YES | — | Original JSON payload. |  |
| from_cache | BOOLEAN | NO | FALSE | Marked if sourced from cache/retry. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Received at (UTC). |  |