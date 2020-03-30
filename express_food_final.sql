--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-03-26 12:54:41 EDT

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
-- TOC entry 3198 (class 0 OID 17466)
-- Dependencies: 205
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account (account_id, email, phone, first_name, last_name) FROM stdin;
0	aaa@aaa.com	+13039495588	john	johnny
1	john@john.com\n	+13034485772	Jon	jony
2	tom@tom.com	+12039496733	tom	tommy
3	jim@jim.com	+12937574402	jim	jimmy
4	bob@bob.com	+12038485576	bob	bobby
\.


--
-- TOC entry 3202 (class 0 OID 17493)
-- Dependencies: 209
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.address (address_id, account_id, street, house_number, city, apt_number, zip_code) FROM stdin;
0	0	blahblah	7	DENVER	12	80020
1	1	WYNKOOP	5	DENVER	34	80020
2	2	wazee	18	denver	56	80020
3	3	broadway	56	denver	78	80020
4	4	broadway	12	denver	90	80020
\.


--
-- TOC entry 3199 (class 0 OID 17475)
-- Dependencies: 206
-- Data for Name: delivery_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.delivery_person (delivery_id, bike_number, clock_in, clock_out, delivery_longitude, delivery_latitude) FROM stdin;
0	0	2020-10-20 12:14:01	2020-10-20 18:00:32	69.0102	142.3304
1	1	2020-10-21 09:30:00	2020-10-21 17:07:30	71.3233	141.2005
2	2	2020-10-18 10:21:29	2020-10-18 15:00:40	70.1122	141.1423
3	3	2020-10-22 11:40:11	2020-10-22 18:13:20	71.6547	141.2207
4	4	2020-10-24 09:48:11	2020-10-24 20:01:43	71.8374	141.3028
\.


--
-- TOC entry 3195 (class 0 OID 17451)
-- Dependencies: 202
-- Data for Name: dish; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dish (dish_id, menu_item_id, name, description, type, price, active) FROM stdin;
0	0	Lasagna	Lasagne are a type of wide, flat pasta, possibly one of the oldest types of pasta.	main	5	t
1	1	Spaghetti	Spaghetti is a long, thin, solid, cylindrical pasta. It is a staple food of traditional Italian cuisine.	main	6	f
2	2	Fish	A fish is something that swims around or something	main	5	t
3	3	Ice cream	This is a frozen dessert	dessert	3	t
4	4	Cake	Some sort of pastry thing	dessert	4	f
\.


--
-- TOC entry 3196 (class 0 OID 17459)
-- Dependencies: 203
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menu (menu_item_id, dish_id, date) FROM stdin;
0	2	2020-03-27
1	4	2020-03-27
2	3	2020-03-26
3	1	2020-03-28
4	0	2020-03-27
\.


--
-- TOC entry 3203 (class 0 OID 17502)
-- Dependencies: 210
-- Data for Name: order_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_1 (order_id, account_id, delivery_id, order_created, order_status, order_eta, payment_status, delivered, address_id, delivery_status) FROM stdin;
0	0	0	2020-10-21 10:35:12	completed	10:38:12	completed	2020-10-21 10:38:12	0	delivered
1	1	1	2020-10-21 11:15:12	in_process	11:19:10	completed	2020-10-21 11:19:10	1	delivered
2	2	2	2020-10-21 12:20:18	rejected	12:25:18	rejected	2020-10-21 12:25:14	2	rejected
3	3	3	2020-10-21 14:31:45	completed	14:37:45	completed	2020-10-21 14:37:45	3	delivered
4	4	4	2020-10-21 17:41:05	completed	17:46:08	completed	2020-10-21 17:46:53	4	delivered
\.


--
-- TOC entry 3204 (class 0 OID 17510)
-- Dependencies: 211
-- Data for Name: order_line; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_line (dish_id, order_id, quantity) FROM stdin;
0	0	3
1	1	2
2	2	7
3	3	4
4	4	3
3	2	2
\.


--
-- TOC entry 3200 (class 0 OID 17483)
-- Dependencies: 207
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment (account_id, card_number, name_on_card, expiration_date, security_code) FROM stdin;
0	2834627547500021	john johnny	2020-04-22	232
1	7400591172334999	tom tommy	2020-04-21	334
2	5574002944827778	jim jimmy	2020-04-20	412
3	0112928845012134	bob bobby	2020-08-22	998
4	9920391633888897	tim timm	2020-04-28	321
\.


--
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 204
-- Name: account_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_account_id_seq', 1, false);


--
-- TOC entry 3213 (class 0 OID 0)
-- Dependencies: 208
-- Name: address_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_address_id_seq', 1, false);


-- Completed on 2020-03-26 12:54:42 EDT

--
-- PostgreSQL database dump complete
--

