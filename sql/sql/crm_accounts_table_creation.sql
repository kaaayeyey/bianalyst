-- Table: public.crm_accounts

-- DROP TABLE IF EXISTS public.crm_accounts;

CREATE TABLE IF NOT EXISTS public.crm_accounts
(
    account_id text COLLATE pg_catalog."default",
    industry text COLLATE pg_catalog."default",
    region text COLLATE pg_catalog."default",
    country text COLLATE pg_catalog."default",
    use_case text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.crm_accounts
    OWNER to postgres;