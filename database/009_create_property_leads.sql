CREATE TABLE IF NOT EXISTS property_leads (

    id BIGSERIAL PRIMARY KEY,

    property_id BIGINT
        REFERENCES properties(id) ON DELETE SET NULL,

    customer_name VARCHAR(150) NOT NULL,

    mobile VARCHAR(20) NOT NULL,

    email VARCHAR(255),

    city VARCHAR(100),

    requirement TEXT,

    budget NUMERIC(15,2),

    source VARCHAR(100),

    assigned_to BIGINT
        REFERENCES users(id),

    status VARCHAR(50) DEFAULT 'New',

    remarks TEXT,

    created_at TIMESTAMPTZ DEFAULT NOW()
);