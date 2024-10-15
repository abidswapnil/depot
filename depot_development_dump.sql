--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.2)
-- Dumped by pg_dump version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.2)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO root;

--
-- Name: carts; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.carts (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.carts OWNER TO root;

--
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.carts_id_seq OWNER TO root;

--
-- Name: carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;


--
-- Name: line_items; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.line_items (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    cart_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    quantity integer
);


ALTER TABLE public.line_items OWNER TO root;

--
-- Name: line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.line_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.line_items_id_seq OWNER TO root;

--
-- Name: line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.line_items_id_seq OWNED BY public.line_items.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    title character varying,
    description text,
    image_url character varying,
    price numeric,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO root;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO root;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO root;

--
-- Name: users; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    password_digest character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: carts id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);


--
-- Name: line_items id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.line_items ALTER COLUMN id SET DEFAULT nextval('public.line_items_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-10-06 08:58:17.407224	2024-10-06 08:58:17.407233
\.


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.carts (id, created_at, updated_at) FROM stdin;
1	2024-10-14 09:14:12.092911	2024-10-14 09:14:12.092911
\.


--
-- Data for Name: line_items; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.line_items (id, product_id, cart_id, created_at, updated_at, quantity) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.products (id, title, description, image_url, price, created_at, updated_at) FROM stdin;
10	BMW M 1000 RR	The BMW M 1000 RR is BMW's flagship superbike, designed for high performance both on the track and the road. It's the first M model in BMW Motorrad’s lineup, bringing motorsport DNA to two wheels. The bike is based on the S 1000 RR but with significant upgrades to maximize speed, handling, and aerodynamics.\n\nKey features include a 999cc, inline-4 engine producing 212 horsepower and 113 Nm of torque. This power, combined with a lightweight design (weighing around 192 kg), allows for incredible acceleration and a top speed of over 300 km/h. The M 1000 RR comes with carbon fiber winglets for enhanced stability at high speeds, and its chassis is designed for precision cornering and handling.	bmw.jpg	40000.0	2024-10-09 02:37:09.022606	2024-10-09 02:37:09.022606
1	Suzuki hayabusa	The Honda CBR series has long been a staple in the world of sport bikes, and the Honda CBR in particular continues to be a highly regarded model for riders who crave a mix of performance, agility, and reliability. Developed by the Japanese manufacturer Honda, the CBR lineup is known for its sport-oriented design, advanced engineering, and competitive price point.	hayabusa.jpg	1500000.0	2024-10-06 09:04:00.606567	2024-10-07 10:57:01.369243
6	Ducati streetfighter v4	The Fighter V4 stands as a symbol of power, precision, and performance. Built with cutting-edge technology and aggressive styling, this beast is designed for riders who crave speed and control. With a roaring 998cc V4 engine, it delivers an unmatched 200+ horsepower, offering a thrilling ride every time you twist the throttle. The lightweight aluminum frame and aerodynamic bodywork ensure superior handling and stability, whether you're on the track or the street.\n\nEquipped with state-of-the-art electronics, including advanced traction control, customizable riding modes, and seamless quick-shift capabilities, the Fighter V4 keeps you in command in every situation. The premium suspension and braking systems offer razor-sharp responsiveness, making it perfect for both racing enthusiasts and daily riders.	fighter.jpg	30000.78678657863476	2024-10-08 02:22:37.340562	2024-10-14 09:59:59.009856
8	Suzuki Gixxer	The Suzuki Gixxer is a popular motorcycle known for its sporty design and performance. Launched in 2014, it features a sleek, aggressive styling that appeals to young riders. The Gixxer is powered by a 155cc, single-cylinder, air-cooled engine, delivering impressive performance and fuel efficiency.	bmw.jpg	3000.0	2024-10-08 08:53:00.291945	2024-10-15 06:19:39.911143
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.schema_migrations (version) FROM stdin;
20241006084948
20241008113408
20241009041651
20241009061424
20241015052136
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.users (id, name, password_digest, created_at, updated_at) FROM stdin;
1	rahim	$2a$12$1YhMylhYky4FrY7FtWnaaeOpoI/K.7bfhPmXPd5c2TAYhT.K8RAQ2	2024-10-15 05:28:24.696619	2024-10-15 05:41:43.60258
7	Arif	$2a$12$4FjaRxkWOpGYsitc6cre8uYTX9zTGXwJt2QGl67nGZ.dh/icm3ZlG	2024-10-15 05:58:18.39922	2024-10-15 05:58:55.327087
4	Raihan	$2a$12$GPJ9BbRjCOZMgpvEgA3mSOj4wZTzEjkE/FB/p1ZCdd2LmVaZhBuxK	2024-10-15 05:39:13.947311	2024-10-15 05:59:26.960624
8	wasim	$2a$12$MiW7DNZyulVkuVDL6dRhs.zFgDIWR6Ik/wIbv6kXJDoUaLWS9Gzna	2024-10-15 06:00:45.8939	2024-10-15 06:00:45.8939
9	era	$2a$12$h5J76kg176cRf6.3M1.yluc7T.scIUpzTgKrhaEpxEBzdRYJNcHgK	2024-10-15 06:01:11.733957	2024-10-15 06:01:11.733957
10	moshiur	$2a$12$enqY7J7a8nmS4l2q4oulHeOxgGyqkjhyNNBSPobUk7btyEm05HF92	2024-10-15 06:01:29.318931	2024-10-15 06:01:29.318931
12	diba	$2a$12$CkXoyJZ4hPlUenw9zY6m7uUpyp8bE6pkqSNTrF3L3Cq8Rsgauf/3y	2024-10-15 08:38:58.419308	2024-10-15 08:38:58.419308
14	rafi	$2a$12$FS5NznOZnBEm1bWWvDCR4uU20caj8j9oE3.Nk8223oudlcLUs9Vf6	2024-10-15 08:59:05.274311	2024-10-15 08:59:22.919518
3	Hasibul	$2a$12$IPgGTAr8ZlFRA/ixoQerlu63BveVBCGwj6nLSWahDowpnQyhZ18A.	2024-10-15 05:38:52.777587	2024-10-15 09:17:32.604953
\.


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.carts_id_seq', 1, true);


--
-- Name: line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.line_items_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.products_id_seq', 12, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.users_id_seq', 15, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- Name: line_items line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT line_items_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_line_items_on_cart_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_line_items_on_cart_id ON public.line_items USING btree (cart_id);


--
-- Name: index_line_items_on_product_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX index_line_items_on_product_id ON public.line_items USING btree (product_id);


--
-- Name: line_items fk_rails_11e15d5c6b; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT fk_rails_11e15d5c6b FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: line_items fk_rails_af645e8e5f; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT fk_rails_af645e8e5f FOREIGN KEY (cart_id) REFERENCES public.carts(id);


--
-- PostgreSQL database dump complete
--

