CREATE TABLE IF NOT EXISTS property_videos (
    id BIGSERIAL PRIMARY KEY,

    property_id BIGINT NOT NULL
        REFERENCES properties(id) ON DELETE CASCADE,

    video_url TEXT NOT NULL,

    video_title VARCHAR(255),

    thumbnail_url TEXT,

    created_at TIMESTAMPTZ DEFAULT NOW()
);