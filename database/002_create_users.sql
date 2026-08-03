CREATE TABLE IF NOT EXISTS users (
    id BIGSERIAL PRIMARY KEY,

    role_id BIGINT NOT NULL REFERENCES roles(id),

    full_name VARCHAR(150) NOT NULL,

    mobile VARCHAR(20) UNIQUE,

    email VARCHAR(255) UNIQUE,

    password_hash TEXT NOT NULL,

    profile_photo TEXT,

    is_verified BOOLEAN NOT NULL DEFAULT FALSE,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    last_login TIMESTAMPTZ,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);