--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 14.5

-- Started on 2022-10-03 04:37:41 UTC

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

--
-- TOC entry 3311 (class 1262 OID 24589)
-- Name: skanestas; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE skanestas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE skanestas OWNER TO postgres;

\connect skanestas

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
-- TOC entry 209 (class 1259 OID 24590)
-- Name: trade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trade (
    bid_00 integer,
    ask_00 integer,
    bid_01 integer,
    ask_01 integer,
    bid_02 integer,
    ask_02 integer,
    bid_03 integer,
    ask_03 integer,
    bid_04 integer,
    ask_04 integer,
    bid_05 integer,
    ask_05 integer,
    bid_06 integer,
    ask_06 integer,
    bid_07 integer,
    ask_07 integer,
    bid_08 integer,
    ask_08 integer,
    bid_09 integer,
    ask_09 integer,
    bid_10 integer,
    ask_10 integer,
    bid_11 integer,
    ask_11 integer,
    bid_12 integer,
    ask_12 integer,
    bid_13 integer,
    ask_13 integer,
    bid_14 integer,
    ask_14 integer,
    bid_15 integer,
    ask_15 integer,
    bid_16 integer,
    ask_16 integer,
    bid_17 integer,
    ask_17 integer,
    bid_18 integer,
    ask_18 integer,
    bid_19 integer,
    ask_19 integer,
    bid_20 integer,
    ask_20 integer,
    bid_21 integer,
    ask_21 integer,
    bid_22 integer,
    ask_22 integer,
    bid_23 integer,
    ask_23 integer,
    bid_24 integer,
    ask_24 integer,
    bid_25 integer,
    ask_25 integer,
    bid_26 integer,
    ask_26 integer,
    bid_27 integer,
    ask_27 integer,
    bid_28 integer,
    ask_28 integer,
    bid_29 integer,
    ask_29 integer,
    bid_30 integer,
    ask_30 integer,
    bid_31 integer,
    ask_31 integer,
    bid_32 integer,
    ask_32 integer,
    bid_33 integer,
    ask_33 integer,
    bid_34 integer,
    ask_34 integer,
    bid_35 integer,
    ask_35 integer,
    bid_36 integer,
    ask_36 integer,
    bid_37 integer,
    ask_37 integer,
    bid_38 integer,
    ask_38 integer,
    bid_39 integer,
    ask_39 integer,
    bid_40 integer,
    ask_40 integer,
    bid_41 integer,
    ask_41 integer,
    bid_42 integer,
    ask_42 integer,
    bid_43 integer,
    ask_43 integer,
    bid_44 integer,
    ask_44 integer,
    bid_45 integer,
    ask_45 integer,
    bid_46 integer,
    ask_46 integer,
    bid_47 integer,
    ask_47 integer,
    bid_48 integer,
    ask_48 integer,
    bid_49 integer,
    ask_49 integer,
    stats json,
    asctime timestamp without time zone
);


ALTER TABLE public.trade OWNER TO postgres;

--
-- TOC entry 3305 (class 0 OID 24590)
-- Dependencies: 209
-- Data for Name: trade; Type: TABLE DATA; Schema: public; Owner: postgres
--



-- Completed on 2022-10-03 04:37:41 UTC

--
-- PostgreSQL database dump complete
--