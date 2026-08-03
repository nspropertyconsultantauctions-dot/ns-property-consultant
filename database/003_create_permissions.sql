CREATE TABLE IF NOT EXISTS permissions (
    id BIGSERIAL PRIMARY KEY,
    permission_name VARCHAR(150) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO permissions (permission_name, description)
VALUES
('dashboard.view','View Dashboard'),
('users.create','Create Users'),
('users.edit','Edit Users'),
('users.delete','Delete Users'),
('properties.create','Add Properties'),
('properties.edit','Edit Properties'),
('properties.delete','Delete Properties'),
('properties.approve','Approve Properties'),
('buyers.manage','Manage Buyers'),
('sellers.manage','Manage Sellers'),
('agents.manage','Manage Agents'),
('channel_partners.manage','Manage Channel Partners'),
('construction_partners.manage','Manage Construction Partners'),
('home_loan_partners.manage','Manage Home Loan Partners'),
('bbmp_partners.manage','Manage BBMP Work Partners'),
('home_decor_partners.manage','Manage Home Decor Partners'),
('land_acquisition.manage','Manage Land Acquisition Partners'),
('auctions.manage','Manage Auctions'),
('payments.manage','Manage Payments'),
('reports.view','View Reports'),
('settings.manage','Manage Settings')
ON CONFLICT (permission_name) DO NOTHING;