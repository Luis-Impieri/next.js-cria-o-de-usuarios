--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE meu_usuario;
ALTER ROLE meu_usuario WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:bubTir6EInznx3KO6DE49g==$T4VFIHVMEwZO+sG6KdiBsyrnYOuqINYBIEf048/cfLo=:o/EYOGr4w05de413jPzaDfcgumpdC+ZpZ5tGNdXLXtU=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:JOcx6OiZ9OKMitaFg6D8OQ==$xndeaUJhIDW1Qttcmp1diftWJakQd2Vxn9K0BU45sjk=:MH4BMX2T+yur5Ql67un7bcvu3zWbtrviyyxOZqAf7QE=';

--
-- User Configurations
--








--
-- PostgreSQL database cluster dump complete
--

