CREATE TABLE IF NOT EXISTS property_images (
    id BIGSERIAL PRIMARY KEY,

    property_id BIGINT NOT NULL
        REFERENCES properties(id) ON DELETE CASCADE,

    image_url TEXT NOT NULL,

    image_title VARCHAR(255),

    is_cover BOOLEAN DEFAULT FALSE,

    display_order INTEGER DEFAULT 1,

    created_at TIMESTAMPTZ DEFAULT NOW()
);