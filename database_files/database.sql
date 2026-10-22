-- CREATE DATABASE chat_request_v1_db;    <--- Thy shall run this line separetely
CREATE TABLE freemium_requests (
    id bigserial primary key,
    name varchar(150) not null,
    phone_number varchar(20) unique not null,
    email varchar(255) unique not null,
    request_note text not null,
    requested_at timestamptz default current_timestamp,
    CONSTRAINT freemium_requests_pkey primary key (id),
    CONSTRAINT freemium_requests_phone_number_key unique (phone_number),
    CONSTRAINT freemium_requests_email_key unique (email)
);
CREATE TABLE premium_requests (
    id bigserial primary key,
    name varchar(150) not null,
    phone_number varchar(20) unique not null,
    email varchar(255) unique not null,
    request_note text not null,
    requested_at timestamptz default current_timestamp,
    CONSTRAINT premium_requests_pkey primary key (id),
    CONSTRAINT premium_requests_phone_number_key unique (phone_number),
    CONSTRAINT premium_requests_email_key unique (email)
);
CREATE TABLE IF NOT EXISTS public.premium_requests (
    id bigserial NOT NULL,
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    phone_number character varying(20) COLLATE pg_catalog."default" NOT NULL,
    email character varying(255) COLLATE pg_catalog."default" NOT NULL,
    request_note text COLLATE pg_catalog."default" NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT premium_requests_pkey PRIMARY KEY (id),
    CONSTRAINT premium_requests_email_key UNIQUE (email),
    CONSTRAINT premium_requests_phone_number_key UNIQUE (phone_number)
);