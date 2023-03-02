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
    url text NOT NULL,
    short_url character varying(21) NOT NULL,
    user_id integer NOT NULL,
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
    email character varying(150) NOT NULL,
    name character varying(200) NOT NULL,
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



--
-- Data for Name: urls; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (2, 'asalucasasa@gmail.com', 'lucas', '$2b$10$VDRv.A/5uStnA5rBixtJc.SQgwIOXxK1L/WEhy16V2cklZn0Z6k3.', '2023-02-26 18:11:11.30988');
INSERT INTO public.users VALUES (1, 'lucas@gmail.com', 'lucas', '$2b$10$yqSmncLPzL.FGinEic6KyO9PYo191tGr9.IFZbCLqL9Kf.ofvChS6', '2023-02-25 22:13:11.273395');
INSERT INTO public.users VALUES (3, 'rassandri0@techcrunch.com', 'Rhianon Assandri', '4ghaADGlmzew', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (4, 'lprate1@ezinearticles.com', 'Linette Prate', 'DDDnfl', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (5, 'esreenan2@github.io', 'Evangelina Sreenan', 'jmwo2bqqaf', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (6, 'gvan3@tripadvisor.com', 'Garey Van Driel', '2ITmyylq', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (7, 'arandall4@goo.ne.jp', 'Andres Randall', 'PQWolhcaBvN', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (8, 'bisbell5@biglobe.ne.jp', 'Bryn Isbell', 'lJIlO83X8', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (9, 'rgerrelt6@omniture.com', 'Randal Gerrelt', 'nDrVgt5Jn5tg', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (10, 'isafe7@marketwatch.com', 'Issi Safe', 'NZhXX95Yg0', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (11, 'bbearn8@cbsnews.com', 'Birch Bearn', 'PTIKt5ippY', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (12, 'sflay9@1688.com', 'Shirline Flay', 'sQXVEwz9k', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (13, 'mpasmorea@wufoo.com', 'Mose Pasmore', 'dPNbQMeNl1JO', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (14, 'navramovskyb@rediff.com', 'Nicholle Avramovsky', 'AVza2Wx6', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (15, 'jkiddiec@pen.io', 'Jens Kiddie', 'yd0PxMypcmGf', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (16, 'rhoneyghand@netlog.com', 'Rubi Honeyghan', 'YT8InX5Q', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (17, 'shalwelle@wiley.com', 'Shayla Halwell', 'DSUClAHHL3o', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (18, 'ahardwichf@sitemeter.com', 'Allan Hardwich', 'TYxGi2A', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (19, 'gknathg@wufoo.com', 'George Knath', 'U6bsONpS', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (20, 'jdafyddh@accuweather.com', 'Joey Dafydd', 'yJCLcrJ', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (21, 'blytllei@histats.com', 'Brendan Lytlle', 'wmynvx9M', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (22, 'jcastillonj@vinaora.com', 'Janaye Castillon', 'pw1lPzK', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (23, 'jmontgomeryk@reuters.com', 'Jean Montgomery', 'qaZtPzQcZE5v', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (24, 'kmooneyl@illinois.edu', 'Kirbie Mooney', '264jqGjEDwoF', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (25, 'pleupoldm@slideshare.net', 'Pat Leupold', 'jurhQAJ', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (26, 'lhaguen@cbc.ca', 'Lottie Hague', 'JHrWOSmAzs', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (27, 'tanderero@webs.com', 'Tansy Anderer', '9u5Wps0', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (28, 'byabsleyp@w3.org', 'Bettine Yabsley', '7IJlcb', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (29, 'hsmalridgeq@google.cn', 'Hedwig Smalridge', 'Afmj5YSl', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (30, 'ghardwichr@google.es', 'Gabriella Hardwich', 'mAXMuh', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (31, 'mkilmartins@wunderground.com', 'Meredith Kilmartin', 'vPURY3Yf', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (32, 'ekeepingt@skype.com', 'Essa Keeping', 'KKoiMw1ML599', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (33, 'ryatemanu@arizona.edu', 'Rainer Yateman', 'c0z58dq', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (34, 'pbletsorv@ifeng.com', 'Pauline Bletsor', 'WfUvsmNy', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (35, 'lmcraveyw@ca.gov', 'Lissa McRavey', '1aqhV2xVNb', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (36, 'kklimczakx@ibm.com', 'Keith Klimczak', 'GaayhJOmlRVm', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (37, 'omagraney@slate.com', 'Ogden Magrane', 'ct7LyClGf3', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (38, 'lcardez@psu.edu', 'Lorette Carde', 'MTOBLZ', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (39, 'bboeter10@aol.com', 'Bendix Boeter', 'vcvnywfT', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (40, 'jmcisaac11@homestead.com', 'Jeannie McIsaac', 'OV6uo8r', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (41, 'vleamon12@posterous.com', 'Vite Leamon', 'sQlhLWZ', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (42, 'lstackbridge13@dell.com', 'Lockwood Stackbridge', '6r7bFs', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (43, 'rlarrington14@ucoz.com', 'Roxie Larrington', '8V7n7k6', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (44, 'olorman15@ezinearticles.com', 'Oralla Lorman', 'SzLL0xuQ9iW', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (45, 'skearney16@spotify.com', 'Salaidh Kearney', 'JMwMYt5d', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (46, 'rbream17@latimes.com', 'Raquela Bream', 'MmUc5Qb', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (47, 'hgaddas18@yandex.ru', 'Harlin Gaddas', 'gisBw70Gso', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (48, 'sghent19@ning.com', 'Salvador Ghent', 'dzG2FDo1', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (49, 'mduro1a@fastcompany.com', 'Mel Duro', 'rXZ7L4', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (50, 'vjanes1b@kickstarter.com', 'Vaughan Janes', 'QCKDApnAXpZ', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (51, 'emorris1c@amazon.com', 'Erskine Morris', 'gynvfhb', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (52, 'wloachhead1d@live.com', 'Winni Loachhead', 'MiKT0jA', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (53, 'hspeerman1e@sciencedirect.com', 'Hy Speerman', 'QiM4yzoeC', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (54, 'ustichel1f@vk.com', 'Ulla Stichel', 'YPC522IQ1yi', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (55, 'ddressel1g@ning.com', 'Dyanne Dressel', 'kBnge9AatH1s', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (56, 'equene1h@mashable.com', 'Eleen Quene', 'N9ZzOFLK', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (57, 'kfennell1i@mapy.cz', 'Kayle Fennell', 'cCI8c4ItCQ', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (58, 'dible1j@spiegel.de', 'Deeyn Ible', '9vdFUzb', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (59, 'icoye1k@ed.gov', 'Inez Coye', 'SI3Wscu3', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (60, 'lslaght1l@com.com', 'Lemuel Slaght', 'OkYl120f0Z54', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (61, 'jbaylis1m@yandex.ru', 'Jerad Baylis', 'owoELm9Aqkme', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (62, 'afancet1n@vkontakte.ru', 'Albie Fancet', 'eVwPcZs', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (63, 'sheskin1o@walmart.com', 'Sheelah Heskin', 'cix5KvC', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (64, 'esybe1p@wufoo.com', 'Eugine Sybe', 'fIskmIJy1fPW', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (65, 'btuttle1q@walmart.com', 'Bendick Tuttle', 'ZrlwthOWvJb8', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (66, 'coldland1r@ucsd.edu', 'Conchita Oldland', 'UsNRIKxZbm', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (67, 'smouat1s@jimdo.com', 'Sheilah Mouat', 'hIGfRLAVpKw', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (68, 'bmeatcher1t@jiathis.com', 'Byram Meatcher', '2iZCCwMU', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (69, 'aallridge1u@jalbum.net', 'Anna-diane Allridge', 'z3XWBuuFst', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (70, 'btoxell1v@who.int', 'Brenn Toxell', 'EbGq57CXrT', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (71, 'dfulstow1w@histats.com', 'Darline Fulstow', 'bNyIAc24', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (72, 'aargente1x@engadget.com', 'Ase Argente', 'VvCBA1k', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (73, 'bvodden1y@harvard.edu', 'Berkley Vodden', 'FKvT2mCg0', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (74, 'wverillo1z@samsung.com', 'Willi Verillo', 'QkVIvuh0', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (75, 'nissacov20@ifeng.com', 'Nadeen Issacov', 'KredRYuD5', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (76, 'operdue21@nationalgeographic.com', 'Osgood Perdue', '6UFMpQH2HE', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (77, 'adarker22@independent.co.uk', 'Allix Darker', 'L0ud3xY8', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (78, 'jgillies23@infoseek.co.jp', 'Job Gillies', 'uGjWdZebUsU', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (79, 'olabat24@i2i.jp', 'Oberon Labat', 'x4shHGb', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (80, 'ckovnot25@aol.com', 'Corena Kovnot', 'Dpjg8wb', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (81, 'hkilfeder26@ucoz.com', 'Hans Kilfeder', 'JqC3umdBLS', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (82, 'bsongest27@narod.ru', 'Brennen Songest', 'EUcnVwr', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (83, 'bviger28@pbs.org', 'Bron Viger', 'MKLqHvABAwhz', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (84, 'mphillpotts29@mapy.cz', 'Meredith Phillpotts', 'hY0NdYoDOl', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (85, 'aegel2a@go.com', 'Abbot Egel', 'cZbY9m5d', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (86, 'dnorrie2b@chron.com', 'Dana Norrie', '4SaqJwV5Kxs', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (87, 'fbanaszewski2c@photobucket.com', 'Flory Banaszewski', 'uK3FIFEGnL', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (88, 'abelham2d@tripod.com', 'Alasdair Belham', 'vdMc9IwrBNeb', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (89, 'lgrafham2e@shinystat.com', 'Luce Grafham', 'n5M6JCfBc40', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (90, 'belcoate2f@e-recht24.de', 'Brose Elcoate', 'nYlh51d4mJl', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (91, 'lcampos2g@odnoklassniki.ru', 'Lizzie Campos', 'ZoQLLw74OMa', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (92, 'yjowle2h@hugedomains.com', 'Yorke Jowle', 'DJKQeFf', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (93, 'mgenner2i@vinaora.com', 'Marcelia Genner', 'Kuz3kiPPN3gw', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (94, 'aicom2j@tmall.com', 'Avictor Icom', 'nf7b7CEdg', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (95, 'sweathey2k@etsy.com', 'Sabrina Weathey', 'pNU1Nc', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (96, 'abeals2l@ox.ac.uk', 'Aida Beals', 'LiLdEK9fo8o', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (97, 'lmaywood2m@parallels.com', 'Lola Maywood', 'Sxthqu', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (98, 'vbrugmann2n@ox.ac.uk', 'Vivienne Brugmann', 'w42Luy', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (99, 'tfrodsam2o@cnet.com', 'Toddie Frodsam', '1bv9NNTylj', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (100, 'gjessard2p@upenn.edu', 'Guthry Jessard', 'nfXe4fKsi', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (101, 'lwadhams2q@paginegialle.it', 'Lindsay Wadhams', 'GFmX6Rd', '2023-02-26 19:42:18.7728');
INSERT INTO public.users VALUES (102, 'rhullett2r@icq.com', 'Ray Hullett', 'ZVhK8PxyY', '2023-02-26 19:42:18.7728');


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 3, true);


--
-- Name: urls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.urls_id_seq', 100, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 102, true);


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
-- Name: sessions sessions_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_user_id_key UNIQUE (user_id);


--
-- Name: urls urls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


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

