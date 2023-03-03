--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Ubuntu 14.7-1.pgdg22.04+1)
-- Dumped by pg_dump version 14.7 (Ubuntu 14.7-1.pgdg22.04+1)

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
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    token character varying(36) NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: urls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.urls (
    id integer NOT NULL,
    user_id integer NOT NULL,
    url text NOT NULL,
    short_url character varying(16) NOT NULL,
    visit_count integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: urls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: urls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.urls_id_seq OWNED BY public.urls.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(255) NOT NULL,
    password text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: urls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls ALTER COLUMN id SET DEFAULT nextval('public.urls_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sessions VALUES (5, 52, 'bdaf46cb-e854-4043-97a7-a6c88931e2cc', '2023-03-02 21:25:20.488561');


--
-- Data for Name: urls; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.urls VALUES (5, 18, 'http://dummyimage.com/169x100.png/5fa2dd/ffffff', 'V9pEhJP6w3AP', 96, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (6, 4, 'http://dummyimage.com/164x100.png/5fa2dd/ffffff', 'nYlLcv8a1yR6', 75, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (7, 43, 'http://dummyimage.com/126x100.png/5fa2dd/ffffff', 'ZK41dqKp', 65, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (8, 38, 'http://dummyimage.com/104x100.png/ff4444/ffffff', 'H9lRwLe', 92, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (9, 42, 'http://dummyimage.com/215x100.png/5fa2dd/ffffff', 'ZlWb04VJ1Fe', 31, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (10, 19, 'http://dummyimage.com/213x100.png/dddddd/000000', 'XpKDMv0Gcf8', 36, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (11, 24, 'http://dummyimage.com/108x100.png/cc0000/ffffff', 'FOh5ZvSK', 86, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (12, 30, 'http://dummyimage.com/135x100.png/ff4444/ffffff', 'uloSedFJnIq', 80, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (13, 4, 'http://dummyimage.com/203x100.png/dddddd/000000', 'xQe79quEFj7', 63, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (14, 24, 'http://dummyimage.com/103x100.png/cc0000/ffffff', 'c9fkBJOB', 90, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (15, 38, 'http://dummyimage.com/103x100.png/5fa2dd/ffffff', 'x6xZ99OKbz', 28, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (16, 20, 'http://dummyimage.com/181x100.png/ff4444/ffffff', 'AGhCiG2g7s', 67, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (17, 10, 'http://dummyimage.com/223x100.png/5fa2dd/ffffff', 'VTrH6p', 48, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (18, 2, 'http://dummyimage.com/248x100.png/cc0000/ffffff', 'UpNvp27rM', 92, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (19, 7, 'http://dummyimage.com/231x100.png/5fa2dd/ffffff', '5yAgM6', 16, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (20, 31, 'http://dummyimage.com/142x100.png/5fa2dd/ffffff', 'NUjbtmA7', 17, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (21, 31, 'http://dummyimage.com/154x100.png/ff4444/ffffff', 'DkzGkg', 52, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (22, 50, 'http://dummyimage.com/146x100.png/cc0000/ffffff', 'K1IipAX', 47, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (23, 8, 'http://dummyimage.com/107x100.png/cc0000/ffffff', 'zZgOy2rqOnA', 57, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (24, 39, 'http://dummyimage.com/229x100.png/ff4444/ffffff', 'UdkNKHOM6', 95, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (25, 24, 'http://dummyimage.com/155x100.png/5fa2dd/ffffff', 'xph41IWEjEM', 21, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (26, 3, 'http://dummyimage.com/143x100.png/5fa2dd/ffffff', '6lVHkE', 45, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (27, 43, 'http://dummyimage.com/239x100.png/dddddd/000000', 'UnJnyskh', 18, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (28, 14, 'http://dummyimage.com/125x100.png/dddddd/000000', 'CQMRVPUMJxI7', 14, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (29, 43, 'http://dummyimage.com/165x100.png/dddddd/000000', '5VSnv0qv', 47, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (30, 25, 'http://dummyimage.com/123x100.png/dddddd/000000', 'MiD89e', 56, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (31, 22, 'http://dummyimage.com/231x100.png/cc0000/ffffff', 'l1QzK4VV', 62, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (32, 27, 'http://dummyimage.com/125x100.png/5fa2dd/ffffff', 'HZ6BqE', 43, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (33, 13, 'http://dummyimage.com/196x100.png/ff4444/ffffff', 'd9MvJcRTKFfC', 75, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (34, 35, 'http://dummyimage.com/209x100.png/5fa2dd/ffffff', 'Wquqmw', 3, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (35, 41, 'http://dummyimage.com/158x100.png/cc0000/ffffff', 'TY1Mrt9QEj', 57, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (36, 15, 'http://dummyimage.com/228x100.png/cc0000/ffffff', 'CZFmf7s', 60, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (37, 39, 'http://dummyimage.com/155x100.png/ff4444/ffffff', 'L6lgpK', 73, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (38, 28, 'http://dummyimage.com/207x100.png/5fa2dd/ffffff', 'EyWlXwaRlZsC', 22, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (39, 6, 'http://dummyimage.com/109x100.png/dddddd/000000', '0B9S1w384Kj7', 5, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (40, 44, 'http://dummyimage.com/213x100.png/dddddd/000000', 'pI5OrJlor1', 43, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (41, 12, 'http://dummyimage.com/210x100.png/cc0000/ffffff', 'j5GsirPvq', 15, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (42, 3, 'http://dummyimage.com/234x100.png/cc0000/ffffff', 'HIoFiEL7BSA4', 37, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (43, 25, 'http://dummyimage.com/133x100.png/5fa2dd/ffffff', 'VAJE5jkZ4', 4, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (44, 17, 'http://dummyimage.com/151x100.png/dddddd/000000', '2H3W2SKJ45cQ', 53, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (45, 11, 'http://dummyimage.com/249x100.png/dddddd/000000', 'aaRJOV', 97, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (46, 23, 'http://dummyimage.com/241x100.png/cc0000/ffffff', 'FvwdrtpX', 27, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (47, 36, 'http://dummyimage.com/221x100.png/cc0000/ffffff', 'NVihhrl', 97, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (48, 3, 'http://dummyimage.com/201x100.png/5fa2dd/ffffff', 'psxAFKz', 51, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (49, 20, 'http://dummyimage.com/206x100.png/5fa2dd/ffffff', 'UBpHT79Ej', 89, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (50, 43, 'http://dummyimage.com/185x100.png/5fa2dd/ffffff', 'XSKdaYOxb', 71, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (51, 41, 'http://dummyimage.com/165x100.png/5fa2dd/ffffff', 'lZFtUFxtgWGJ', 84, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (52, 39, 'http://dummyimage.com/231x100.png/cc0000/ffffff', 'a79oRu2Gxo', 76, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (53, 41, 'http://dummyimage.com/211x100.png/ff4444/ffffff', 'gELeoQ29BLPr', 59, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (54, 13, 'http://dummyimage.com/127x100.png/cc0000/ffffff', 'XqTmy8j9', 29, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (55, 22, 'http://dummyimage.com/212x100.png/cc0000/ffffff', 'RCy5wGoR', 77, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (56, 13, 'http://dummyimage.com/146x100.png/cc0000/ffffff', 'AzHGeI9', 45, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (57, 43, 'http://dummyimage.com/129x100.png/dddddd/000000', 'jQGSWlxNF9K', 32, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (58, 2, 'http://dummyimage.com/160x100.png/ff4444/ffffff', 'N2cMVPh', 26, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (59, 48, 'http://dummyimage.com/211x100.png/5fa2dd/ffffff', 'q5dUCTgn9kIZ', 78, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (60, 35, 'http://dummyimage.com/130x100.png/5fa2dd/ffffff', '1wL1ZeSJFW7', 94, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (61, 34, 'http://dummyimage.com/223x100.png/dddddd/000000', 'plJDlchVT', 5, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (62, 34, 'http://dummyimage.com/147x100.png/dddddd/000000', 'GPPsxQo6wQF', 79, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (63, 3, 'http://dummyimage.com/197x100.png/ff4444/ffffff', 'RhzqzPIAYiq', 64, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (64, 41, 'http://dummyimage.com/234x100.png/cc0000/ffffff', 'dYm5ZXaj', 18, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (65, 11, 'http://dummyimage.com/193x100.png/dddddd/000000', 'iOLgRus', 90, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (66, 4, 'http://dummyimage.com/161x100.png/cc0000/ffffff', 'GVzoYUH0H', 3, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (67, 3, 'http://dummyimage.com/126x100.png/ff4444/ffffff', 'WldpPW3O', 7, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (68, 42, 'http://dummyimage.com/154x100.png/dddddd/000000', 'b5vI45FO25Q', 19, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (69, 14, 'http://dummyimage.com/238x100.png/ff4444/ffffff', 'QSYPvr55M', 90, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (70, 48, 'http://dummyimage.com/139x100.png/ff4444/ffffff', 'EbCM2s', 81, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (71, 13, 'http://dummyimage.com/205x100.png/cc0000/ffffff', 'akcB8BGn', 65, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (72, 23, 'http://dummyimage.com/189x100.png/5fa2dd/ffffff', 'UK8qA4C2tQYk', 69, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (73, 20, 'http://dummyimage.com/236x100.png/5fa2dd/ffffff', 'bhIsEi8nwq8', 15, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (74, 18, 'http://dummyimage.com/191x100.png/5fa2dd/ffffff', 'tp01ju', 63, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (75, 38, 'http://dummyimage.com/182x100.png/dddddd/000000', 'GSqi5Ihn', 47, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (76, 5, 'http://dummyimage.com/125x100.png/cc0000/ffffff', '5X9azGfyvk', 28, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (77, 15, 'http://dummyimage.com/141x100.png/5fa2dd/ffffff', 'CZlG4L1', 28, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (78, 45, 'http://dummyimage.com/146x100.png/ff4444/ffffff', 'qFDExff', 84, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (79, 20, 'http://dummyimage.com/125x100.png/5fa2dd/ffffff', 'WRH3t1gIeH', 36, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (80, 7, 'http://dummyimage.com/171x100.png/ff4444/ffffff', 'rKok58', 4, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (81, 47, 'http://dummyimage.com/240x100.png/dddddd/000000', 'pS2WujU8', 83, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (82, 5, 'http://dummyimage.com/132x100.png/dddddd/000000', 'GgHgP4P4nPf', 11, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (83, 20, 'http://dummyimage.com/107x100.png/dddddd/000000', 'uAfYjr', 100, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (84, 21, 'http://dummyimage.com/136x100.png/ff4444/ffffff', 'j6K2epwf6z', 79, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (85, 34, 'http://dummyimage.com/227x100.png/5fa2dd/ffffff', 'xsocArhIPQV', 83, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (86, 44, 'http://dummyimage.com/134x100.png/dddddd/000000', 'e0QQdKoPbP', 83, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (87, 19, 'http://dummyimage.com/160x100.png/5fa2dd/ffffff', 'HP8k1WzhYH12', 75, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (88, 32, 'http://dummyimage.com/212x100.png/ff4444/ffffff', 'jfPDKDC', 71, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (89, 34, 'http://dummyimage.com/249x100.png/5fa2dd/ffffff', '0Bdo21', 40, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (90, 4, 'http://dummyimage.com/120x100.png/dddddd/000000', 'bWoc6g', 100, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (91, 30, 'http://dummyimage.com/218x100.png/ff4444/ffffff', 'B64L5Cl', 50, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (92, 8, 'http://dummyimage.com/171x100.png/ff4444/ffffff', 'U8YgINrld', 80, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (93, 41, 'http://dummyimage.com/150x100.png/ff4444/ffffff', 'ivhAf2su5', 3, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (94, 31, 'http://dummyimage.com/148x100.png/cc0000/ffffff', 'WES68RKPcycT', 97, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (95, 17, 'http://dummyimage.com/208x100.png/5fa2dd/ffffff', 'YwfR52NKhETg', 18, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (96, 19, 'http://dummyimage.com/205x100.png/cc0000/ffffff', 'FNBJwCOi45w', 13, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (97, 32, 'http://dummyimage.com/156x100.png/5fa2dd/ffffff', 'XBahVg', 51, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (98, 34, 'http://dummyimage.com/157x100.png/5fa2dd/ffffff', 'v34ATrlO7oM', 43, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (99, 26, 'http://dummyimage.com/197x100.png/ff4444/ffffff', '3donGa', 88, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (100, 15, 'http://dummyimage.com/124x100.png/dddddd/000000', 'wMfCfhvo', 6, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (101, 29, 'http://dummyimage.com/150x100.png/cc0000/ffffff', 'm9b5wXbd', 36, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (102, 5, 'http://dummyimage.com/142x100.png/dddddd/000000', 'mSELWZnVegQ', 8, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (103, 22, 'http://dummyimage.com/151x100.png/5fa2dd/ffffff', 'SfJD9hBb', 30, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (104, 7, 'http://dummyimage.com/225x100.png/5fa2dd/ffffff', 'bXJvcb53gL', 32, '2023-03-02 21:25:02.07627');
INSERT INTO public.urls VALUES (105, 52, 'http://www.google.com', 'OrFtKG_RBibx1Vfm', 2, '2023-03-02 21:30:26.25176');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (2, 'Dillon Camidge', 'dcamidge0@apple.com', 'sDPBStrXTY3', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (3, 'Deck Evesque', 'devesque1@mapy.cz', 'cd5use', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (4, 'Barbette McNaughton', 'bmcnaughton2@instagram.com', 'NSdKO1BfvXq', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (5, 'Blanca Schusterl', 'bschusterl3@ehow.com', 'XZ40eF', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (6, 'Sophi De Rechter', 'sde4@yolasite.com', '8FBWMEBmy8wL', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (7, 'Christoph Patshull', 'cpatshull5@cnbc.com', '5hX8JfDzeKs', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (8, 'Norean Beacroft', 'nbeacroft6@reference.com', 'AfXd7dJt', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (9, 'Kerianne Praten', 'kpraten7@paginegialle.it', 'PlSiYhK7', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (10, 'Jed Miko', 'jmiko8@ca.gov', 'OuwXyi8', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (11, 'Dita McOwan', 'dmcowan9@thetimes.co.uk', 'iZs4euK', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (12, 'Creight Fudge', 'cfudgea@nsw.gov.au', '8GxvVVodd', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (13, 'Janean Naish', 'jnaishb@foxnews.com', 'lK9jqZcNQiC', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (14, 'Kirstin Clyant', 'kclyantc@europa.eu', 'SkjZ8c', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (15, 'Portie Curtin', 'pcurtind@cnet.com', 'uqkKRbz', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (16, 'Vassili Sommerlie', 'vsommerliee@indiatimes.com', 'ftVWfXIjhUT', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (17, 'Ricardo Heffron', 'rheffronf@apple.com', 'SmDUHXb', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (18, 'Sigfrid Mawman', 'smawmang@sina.com.cn', '9RLNjl41zzoo', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (19, 'Bellina Gawn', 'bgawnh@wikispaces.com', '8ckAsk1q', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (20, 'Dinnie Vasenkov', 'dvasenkovi@prnewswire.com', 'qiOuoPKLXD', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (21, 'Wyatt Pidgeley', 'wpidgeleyj@redcross.org', 'ROOePsJMTZz', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (22, 'Murielle Cottom', 'mcottomk@tripod.com', 'daO1JL6lAaz1', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (23, 'Gunther Donson', 'gdonsonl@amazon.com', 'US4i1mf', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (24, 'Spencer Grainge', 'sgraingem@tripod.com', 'CzfElI6IJGK', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (25, 'Cherey Lemary', 'clemaryn@meetup.com', 'jIpWUwDzMu', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (26, 'Matthiew Soper', 'msopero@google.com.hk', 'bLqtu5WuSC', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (27, 'Therese Reames', 'treamesp@networksolutions.com', 'BNsx9Sj21M', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (28, 'Maximilian Barkly', 'mbarklyq@marketwatch.com', '5qEXuCaXKDRY', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (29, 'Abbey McGeorge', 'amcgeorger@forbes.com', 'dAyCmcV2TOs', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (30, 'Hermon Morgue', 'hmorgues@prweb.com', 'nfVKT8Hxad1Q', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (31, 'Kaylee MacCoughen', 'kmaccoughent@de.vu', 'XunmEUa4fUc6', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (32, 'Dawna Kenwood', 'dkenwoodu@wufoo.com', 'qpIv7tTv0Te', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (33, 'Libbi Smoughton', 'lsmoughtonv@dot.gov', 'fe5iBQ', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (34, 'Luz Edelheit', 'ledelheitw@topsy.com', '9axOs7', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (35, 'Eba Clifforth', 'eclifforthx@about.me', 'qn8spE0gh', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (36, 'Betteanne Thirsk', 'bthirsky@exblog.jp', '1WMd8Sl', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (37, 'Julius Cooper', 'jcooperz@unicef.org', 'WRZMV3gsPj', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (38, 'Marmaduke Nimmo', 'mnimmo10@usa.gov', 'z6YZDDwL', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (39, 'Nessie Whorf', 'nwhorf11@google.co.uk', '1gIYI30ot', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (40, 'Rochell Simenot', 'rsimenot12@answers.com', '2fsjFf', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (41, 'Nicolle Burless', 'nburless13@1688.com', 'Vihv3d2cnz', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (42, 'Susanetta Buddock', 'sbuddock14@indiegogo.com', 'IhHqfd9vJ', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (43, 'Abe Kew', 'akew15@shinystat.com', 'Y6AwIjm', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (44, 'Malissia McConigal', 'mmcconigal16@fotki.com', 'Rema9W7qi', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (45, 'Debora Yerrill', 'dyerrill17@so-net.ne.jp', 'c3L1T22nZ', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (46, 'Vikky Furber', 'vfurber18@prnewswire.com', 's8pmWv', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (47, 'Jasmine Salisbury', 'jsalisbury19@wikispaces.com', 'ghwgpnAy', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (48, 'Ripley Medley', 'rmedley1a@odnoklassniki.ru', 'wUsATj', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (49, 'Bernardine Brinkman', 'bbrinkman1b@craigslist.org', 'OobxOP2s6Xa', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (50, 'Rip Trent', 'rtrent1c@mashable.com', 'jfJulE2kNJHt', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (51, 'Marigold Kelinge', 'mkelinge1d@posterous.com', 'E6Gri9ydtxGY', '2023-03-02 21:20:25.600719');
INSERT INTO public.users VALUES (52, 'lucas', 'lucas@gmail.com', '$2b$10$x9KB8gEGsjCkNeuOccSoWepJfgp5TIslWZbCOGm/bseHToC9I63eK', '2023-03-02 21:25:20.486098');


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 5, true);


--
-- Name: urls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.urls_id_seq', 105, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 52, true);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_token_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_token_key UNIQUE (token);


--
-- Name: urls urls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);


--
-- Name: urls urls_short_url_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_short_url_key UNIQUE (short_url);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: urls urls_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

