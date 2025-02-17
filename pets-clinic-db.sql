--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-02-17 16:14:56

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
-- TOC entry 218 (class 1259 OID 16436)
-- Name: clients_tb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients_tb (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    owner character varying(100) NOT NULL,
    description character varying(250),
    date timestamp without time zone
);


ALTER TABLE public.clients_tb OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16435)
-- Name: clients_tb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_tb_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clients_tb_id_seq OWNER TO postgres;

--
-- TOC entry 4867 (class 0 OID 0)
-- Dependencies: 217
-- Name: clients_tb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_tb_id_seq OWNED BY public.clients_tb.id;


--
-- TOC entry 220 (class 1259 OID 16563)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16562)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4700 (class 2604 OID 16439)
-- Name: clients_tb id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_tb ALTER COLUMN id SET DEFAULT nextval('public.clients_tb_id_seq'::regclass);


--
-- TOC entry 4701 (class 2604 OID 16566)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4859 (class 0 OID 16436)
-- Dependencies: 218
-- Data for Name: clients_tb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients_tb (id, name, owner, description, date) FROM stdin;
60	Zuikis	Tom	Kui	2025-02-14 18:04:00
34	Zvairyssdsssssssss	Jonas	Negali matyti	2025-02-20 06:37:00
63	Kiskis	Laura	negali judeti	2025-02-07 14:21:00
\.


--
-- TOC entry 4861 (class 0 OID 16563)
-- Dependencies: 220
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, email, created_at) FROM stdin;
1	tadas	$2b$10$7ew98oLpQX.kIOLiFqc5neruAjqjefP3veZSgLjLwhoVExliLQmq6	tadas@gmail.com	2025-02-17 12:47:19.688393
2	tadas1	$2b$10$xVwH3Z6IKBGvFU1x1rSZ6OeIn08vPuhY8pP6cn5aUlfxLxtPmfYi.	tadas1@gmail.com	2025-02-17 12:48:18.202348
\.


--
-- TOC entry 4869 (class 0 OID 0)
-- Dependencies: 217
-- Name: clients_tb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_tb_id_seq', 63, true);


--
-- TOC entry 4870 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- TOC entry 4704 (class 2606 OID 16443)
-- Name: clients_tb clients_tb_owner_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_tb
    ADD CONSTRAINT clients_tb_owner_key UNIQUE (owner);


--
-- TOC entry 4706 (class 2606 OID 16441)
-- Name: clients_tb clients_tb_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_tb
    ADD CONSTRAINT clients_tb_pkey PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 16575)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4710 (class 2606 OID 16571)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4712 (class 2606 OID 16573)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


-- Completed on 2025-02-17 16:14:56

--
-- PostgreSQL database dump complete
--

