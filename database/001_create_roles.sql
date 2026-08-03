-- ==========================================
-- NS Property Consultant
-- 001_create_roles.sql
-- ==========================================

CREATE TABLE IF NOT EXISTS roles (
    id BIGSERIAL PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO roles (role_name, description)
VALUES
('Super Admin','Complete system access'),
('Admin','Administrative access'),
('Manager','Department manager'),
('Staff','Office staff'),
('Buyer','Property buyer'),
('Seller','Property seller'),
('Agent','Sales agent'),
('Channel Partner','Business partner'),
('Construction Partner','Construction contractor'),
('Home Loan Partner','Banking and finance partner'),
('BBMP Work Partner','Government approval partner'),
('Home Decor Partner','Interior and decor partner'),
('Land Acquisition Partner','Land acquisition specialist'),
('Lawyer','Legal verification'),
('Builder','Property builder'),
('Accountant','Finance and accounts')
ON CONFLICT (role_name) DO NOTHING;