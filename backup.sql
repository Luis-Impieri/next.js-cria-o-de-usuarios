--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: meu_usuario
--

CREATE TABLE public.users (
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    senha character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO meu_usuario;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: meu_usuario
--

COPY public.users (username, email, senha) FROM stdin;
Luis	exemplo@gmail.com	$2a$10$5wOHJDFtOJh38rp7m7BxHePcnVa/YmdgWgcWYFPBEJDbT5GJa8YJq
eu	outro@gmail.com	$2a$10$QcNYeHbhuIzBtYosCznuVed32pFAla0VKYxlIJdIodDtaiEkjAFqK
alalalala	maisum@gmail.com	$2a$10$LgNNXhsF2fxOigzU8sBPYub4/GbxwsNBgZLk6Zoo46lTUyLySApX.
\.


--
-- PostgreSQL database dump complete
--

