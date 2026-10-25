-- CREATE DATABASE chat_request_v1_db;    <--- Thy shall run this line separetely
CREATE TABLE freemium_requests (
    id bigserial primary key,
    name varchar(150) not null,
    phone_number varchar(20) unique not null,
    email varchar(255) unique not null,
    request_note text not null,
    requested_at timestamptz default current_timestamp
);
CREATE TABLE premium_requests (
    id bigserial primary key,
    name varchar(150) not null,
    phone_number varchar(20) unique not null,
    email varchar(255) unique not null,
    request_note text not null,
    requested_at timestamptz default current_timestamp
);