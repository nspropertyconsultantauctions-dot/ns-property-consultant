CREATE TABLE IF NOT EXISTS property_documents (
    id BIGSERIAL PRIMARY KEY,

    property_id BIGINT NOT NULL
        REFERENCES properties(id) ON DELETE CASCADE,

    document_type VARCHAR(100) NOT NULL,

    document_url TEXT NOT NULL,

    remarks TEXT,

    verified BOOLEAN DEFAULT FALSE,

    created_at TIMESTAMPTZ DEFAULT NOW()
);