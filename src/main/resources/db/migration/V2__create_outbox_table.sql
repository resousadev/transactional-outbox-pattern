CREATE TABLE outbox_event (
    id UUID PRIMARY KEY,
    aggregate_type VARCHAR(100) NOT NULL,
    aggregate_id VARCHAR(100) NOT NULL,
    event_type VARCHAR(100) NOT NULL,
    payload JSONB NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL,
    published_at TIMESTAMP WITH TIME ZONE,
    attempt_count INT NOT NULL DEFAULT 0,
    next_attempt_at TIMESTAMP WITH TIME ZONE NOT NULL,
    last_error TEXT,
    correlation_id VARCHAR(100)
);

CREATE INDEX idx_outbox_event_status_next_attempt 
ON outbox_event (status, next_attempt_at);
