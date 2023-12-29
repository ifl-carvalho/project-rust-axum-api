-- Add migration script here
create table "users" (
    id uuid primary key default uuid_generate_v1mc(),
    email text unique not null,
    password_hash text not null,
    created_at timestamptz not null default now(),
    updated_at timestamptz
);

SELECT trigger_updated_at('"users"');