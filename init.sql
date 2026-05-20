CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS regions (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(120) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS locations (
    postal_code INTEGER PRIMARY KEY,
    region VARCHAR(120),
    township VARCHAR(120),
    quarter_village_tract VARCHAR(120),
    region_id UUID REFERENCES regions(id),
    isdeleted BOOLEAN DEFAULT FALSE
);
