CREATE DATABASE requests_db;

CREATE TABLE freemium_requests (
    id                  bigserial primary key,
    name                varchar(100) not null,
    phone_number        varchar(20) unique not null,
    email               varchar(255) unique not null,
    request_note        text not null,
    created_at          timestamptz default current_timestamp
);

CREATE TABLE premium_requests (
    id                  bigserial primary key,
    name                varchar(100) not null,
    phone_number        varchar(20) unique not null,
    email               varchar(255) unique not null,
    request_note        text not null,
    created_at          timestamptz default current_timestamp
);


CREATE TABLE IF NOT EXISTS public.premium_requests
(
    id                  bigserial NOT NULL,
    name                character varying(100) COLLATE pg_catalog."default" NOT NULL,
    phone_number        character varying(20) COLLATE pg_catalog."default" NOT NULL,
    email               character varying(255) COLLATE pg_catalog."default" NOT NULL,
    request_note        text COLLATE pg_catalog."default" NOT NULL,
    created_at          timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT          premium_requests_pkey PRIMARY KEY (id),
    CONSTRAINT          premium_requests_email_key UNIQUE (email),
    CONSTRAINT          premium_requests_phone_number_key UNIQUE (phone_number)
);