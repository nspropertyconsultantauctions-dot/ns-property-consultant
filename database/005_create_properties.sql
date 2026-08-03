CREATE TABLE IF NOT EXISTS properties (
    id BIGSERIAL PRIMARY KEY,

    property_code VARCHAR(50) UNIQUE NOT NULL,

    seller_id BIGINT REFERENCES users(id),

    agent_id BIGINT REFERENCES users(id),

    property_title VARCHAR(255) NOT NULL,

    property_type VARCHAR(100) NOT NULL,

    category VARCHAR(100),

    purpose VARCHAR(50) NOT NULL,

    state VARCHAR(100),

    district VARCHAR(100),

    city VARCHAR(100),

    locality VARCHAR(150),

    address TEXT,

    pincode VARCHAR(10),

    latitude DECIMAL(10,7),

    longitude DECIMAL(10,7),

    land_area DECIMAL(15,2),

    builtup_area DECIMAL(15,2),

    area_unit VARCHAR(20),

    bedrooms INTEGER,

    bathrooms INTEGER,

    balconies INTEGER,

    floors INTEGER,

    facing VARCHAR(50),

    parking INTEGER,

    furnishing VARCHAR(50),

    property_age INTEGER,

    expected_price NUMERIC(18,2),

    negotiable BOOLEAN DEFAULT TRUE,

    auction_enabled BOOLEAN DEFAULT FALSE,

    auction_start TIMESTAMPTZ,

    auction_end TIMESTAMPTZ,

    description TEXT,

    approval_status VARCHAR(30) DEFAULT 'Pending',

    featured BOOLEAN DEFAULT FALSE,

    verified BOOLEAN DEFAULT FALSE,

    is_active BOOLEAN DEFAULT TRUE,

    created_at TIMESTAMPTZ DEFAULT NOW(),

    updated_at TIMESTAMPTZ DEFAULT NOW()
);