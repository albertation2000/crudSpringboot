--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6 (Ubuntu 11.6-1.pgdg19.04+1)
-- Dumped by pg_dump version 11.6 (Ubuntu 11.6-1.pgdg19.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: empleado; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nombre character varying(50),
    id_empresa integer
);


ALTER TABLE public.empleado OWNER TO usuario2;

--
-- Name: empresa; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.empresa (
    id_empresa integer NOT NULL,
    nombre character varying(255)
);


ALTER TABLE public.empresa OWNER TO usuario2;

--
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.empleado (id_empleado, nombre, id_empresa) FROM stdin;
\.


--
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.empresa (id_empresa, nombre) FROM stdin;
\.


--
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);


--
-- Name: empresa empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id_empresa);


--
-- Name: empleado empleado_id_empresa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_id_empresa_fkey FOREIGN KEY (id_empresa) REFERENCES public.empresa(id_empresa);


--
-- PostgreSQL database dump complete
--

