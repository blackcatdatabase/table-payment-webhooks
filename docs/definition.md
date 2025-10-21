<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – payment_webhooks

Raw webhook payloads (deduplicated by payload_hash).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | NO | — | Surrogate primary key. |  |
| payment_id | BIGINT UNSIGNED | YES | — | Payment (FK payments.id), optional. |  |
| gateway_event_id | VARCHAR(255) | YES | — | Gateway event id, optional. |  |
| payload_hash | CHAR(64) | NO | — | Hash of payload for dedupe. |  |
| payload | JSON | YES | — | Original JSON payload. |  |
| from_cache | BOOLEAN | NO | 0 | Marked if sourced from cache/retry. |  |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Received at (UTC). |  |
