--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

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

SET default_table_access_method = heap;

--
-- Name: shorturl; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shorturl (
    id integer NOT NULL,
    iduseronline integer,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer NOT NULL
);


--
-- Name: shorturl_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shorturl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shorturl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shorturl_id_seq OWNED BY public.shorturl.id;


--
-- Name: userme; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.userme (
    id integer NOT NULL,
    idname integer,
    idvisita integer,
    allshorturls integer
);


--
-- Name: userme_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.userme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: userme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.userme_id_seq OWNED BY public.userme.id;


--
-- Name: useronline; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.useronline (
    id integer NOT NULL,
    iduser integer,
    token text NOT NULL
);


--
-- Name: useronline_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.useronline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: useronline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.useronline_id_seq OWNED BY public.useronline.id;


--
-- Name: usersignup; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usersignup (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


--
-- Name: usersignup_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.usersignup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: usersignup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.usersignup_id_seq OWNED BY public.usersignup.id;


--
-- Name: shorturl id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shorturl ALTER COLUMN id SET DEFAULT nextval('public.shorturl_id_seq'::regclass);


--
-- Name: userme id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userme ALTER COLUMN id SET DEFAULT nextval('public.userme_id_seq'::regclass);


--
-- Name: useronline id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.useronline ALTER COLUMN id SET DEFAULT nextval('public.useronline_id_seq'::regclass);


--
-- Name: usersignup id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usersignup ALTER COLUMN id SET DEFAULT nextval('public.usersignup_id_seq'::regclass);


--
-- Data for Name: shorturl; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.shorturl VALUES (3, 1, '65fJ1', 'https://www.globo.com/', 0);
INSERT INTO public.shorturl VALUES (4, 1, 'N00sw', 'https://www.globo.com/', 0);
INSERT INTO public.shorturl VALUES (5, 1, 'jJ--a', 'https://www.globo.com/', 0);
INSERT INTO public.shorturl VALUES (6, 1, 'flxrLk', 'https://www.globo.com/', 0);
INSERT INTO public.shorturl VALUES (7, 1, 'JZyBgJ', 'https://www.globo.com/', 3);
INSERT INTO public.shorturl VALUES (8, 1, 'fZVj5v', 'https://www.globo.com/', 0);
INSERT INTO public.shorturl VALUES (9, 1, 'xSdqxr', 'https://www.youtube.com/', 0);
INSERT INTO public.shorturl VALUES (10, 1, '8DrJT0', 'https://www.youtube.com/', 0);
INSERT INTO public.shorturl VALUES (11, 1, 'cux6RX', 'https://www.youtube.com/', 0);
INSERT INTO public.shorturl VALUES (12, 2, 'kF8X91', 'http://kosher-collard.net', 0);


--
-- Data for Name: userme; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: useronline; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.useronline VALUES (1, 3, '165da3eb-3511-4b48-8473-a60027b72de3');
INSERT INTO public.useronline VALUES (2, 4, 'd847a712-b859-479f-a468-567bdad44e6d');


--
-- Data for Name: usersignup; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.usersignup VALUES (3, 'João', 'joao@driven.com.br', '$2b$10$8LF29fbWb6uMi7/o5gHCIeCymaGwvcz.02dM9a6WrqRYJsgMo4f1m');
INSERT INTO public.usersignup VALUES (4, 'alan', 'alan@gmail.com', '$2b$10$62Vdozc8I20iFUIcMqQFIujJFhvILVVzaJNLDbOl36eodzVNMqCzq');


--
-- Name: shorturl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shorturl_id_seq', 12, true);


--
-- Name: userme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.userme_id_seq', 1, false);


--
-- Name: useronline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.useronline_id_seq', 2, true);


--
-- Name: usersignup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.usersignup_id_seq', 4, true);


--
-- Name: shorturl shorturl_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shorturl
    ADD CONSTRAINT shorturl_pkey PRIMARY KEY (id);


--
-- Name: userme userme_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userme
    ADD CONSTRAINT userme_pkey PRIMARY KEY (id);


--
-- Name: useronline useronline_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.useronline
    ADD CONSTRAINT useronline_pkey PRIMARY KEY (id);


--
-- Name: usersignup usersignup_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usersignup
    ADD CONSTRAINT usersignup_pkey PRIMARY KEY (id);


--
-- Name: shorturl shorturl_iduseronline_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shorturl
    ADD CONSTRAINT shorturl_iduseronline_fkey FOREIGN KEY (iduseronline) REFERENCES public.useronline(id);


--
-- Name: userme userme_allshorturls_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userme
    ADD CONSTRAINT userme_allshorturls_fkey FOREIGN KEY (allshorturls) REFERENCES public.shorturl(id);


--
-- Name: userme userme_idname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userme
    ADD CONSTRAINT userme_idname_fkey FOREIGN KEY (idname) REFERENCES public.useronline(id);


--
-- Name: userme userme_idvisita_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userme
    ADD CONSTRAINT userme_idvisita_fkey FOREIGN KEY (idvisita) REFERENCES public.shorturl(id);


--
-- Name: useronline useronline_iduser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.useronline
    ADD CONSTRAINT useronline_iduser_fkey FOREIGN KEY (iduser) REFERENCES public.usersignup(id);


--
-- PostgreSQL database dump complete
--

