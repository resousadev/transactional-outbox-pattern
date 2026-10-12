CREATE TABLE orders (
    id UUID PRIMARY KEY,
    customer_id VARCHAR(100) NOT NULL,
    total_amount DECIMAL(19, 2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE
);
