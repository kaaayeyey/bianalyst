-- Table: public.usage

-- DROP TABLE IF EXISTS public.usage;

CREATE TABLE IF NOT EXISTS public.usage
(
    salesforce_id text COLLATE pg_catalog."default",
    usage_date date,
    is_test boolean,
    search_type text COLLATE pg_catalog."default",
    quantity numeric
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.usage
    OWNER to postgres;