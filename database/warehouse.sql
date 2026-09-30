--
-- PostgreSQL database dump
--

\restrict qcQeQtFRimfOfBthZRzvkvlNHVhtjjJ5S8OkRZ9PNtbagPMcfOtlz0vIJ3bAOLI

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-12-15 15:45:10

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
-- TOC entry 224 (class 1259 OID 16845)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16844)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO postgres;

--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 223
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 222 (class 1259 OID 16836)
-- Name: contractors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contractors (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    phone character varying(50),
    address character varying(250)
);


ALTER TABLE public.contractors OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16835)
-- Name: contractors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contractors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contractors_id_seq OWNER TO postgres;

--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 221
-- Name: contractors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contractors_id_seq OWNED BY public.contractors.id;


--
-- TOC entry 220 (class 1259 OID 16824)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    position_id integer,
    last_name character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    patronymic character varying(150)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16823)
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_id_seq OWNER TO postgres;

--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 219
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- TOC entry 228 (class 1259 OID 16864)
-- Name: operation_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.operation_types (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.operation_types OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16863)
-- Name: operation_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.operation_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.operation_types_id_seq OWNER TO postgres;

--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 227
-- Name: operation_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.operation_types_id_seq OWNED BY public.operation_types.id;


--
-- TOC entry 230 (class 1259 OID 16871)
-- Name: operations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.operations (
    id integer NOT NULL,
    product_id integer,
    employee_id integer,
    contractor_id integer,
    operation_type_id integer,
    quantity integer NOT NULL,
    date timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.operations OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16870)
-- Name: operations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.operations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.operations_id_seq OWNER TO postgres;

--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 229
-- Name: operations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.operations_id_seq OWNED BY public.operations.id;


--
-- TOC entry 218 (class 1259 OID 16817)
-- Name: positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.positions (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    salary numeric(10,2)
);


ALTER TABLE public.positions OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16816)
-- Name: positions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.positions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.positions_id_seq OWNER TO postgres;

--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 217
-- Name: positions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.positions_id_seq OWNED BY public.positions.id;


--
-- TOC entry 226 (class 1259 OID 16852)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    category_id integer,
    name character varying(200) NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16851)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 225
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 4775 (class 2604 OID 16848)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 4774 (class 2604 OID 16839)
-- Name: contractors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contractors ALTER COLUMN id SET DEFAULT nextval('public.contractors_id_seq'::regclass);


--
-- TOC entry 4773 (class 2604 OID 16827)
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- TOC entry 4777 (class 2604 OID 16867)
-- Name: operation_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operation_types ALTER COLUMN id SET DEFAULT nextval('public.operation_types_id_seq'::regclass);


--
-- TOC entry 4778 (class 2604 OID 16874)
-- Name: operations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operations ALTER COLUMN id SET DEFAULT nextval('public.operations_id_seq'::regclass);


--
-- TOC entry 4772 (class 2604 OID 16820)
-- Name: positions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.positions ALTER COLUMN id SET DEFAULT nextval('public.positions_id_seq'::regclass);


--
-- TOC entry 4776 (class 2604 OID 16855)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 4952 (class 0 OID 16845)
-- Dependencies: 224
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name) FROM stdin;
1	Бытовая техника
2	Электроника
3	Строительные материалы
4	Офисные товары
5	Хозяйственные товары
6	Продукты питания
7	Инструменты
8	Мебель
9	Автотовары
10	Упаковка
\.


--
-- TOC entry 4950 (class 0 OID 16836)
-- Dependencies: 222
-- Data for Name: contractors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contractors (id, name, phone, address) FROM stdin;
1	ООО Альфа	+7-900-111-11-11	г. Москва, ул. Ленина, 1
2	ООО Бета	+7-900-222-22-22	г. Санкт-Петербург, Невский пр., 10
3	ИП Смирнов	+7-900-333-33-33	г. Казань, ул. Баумана, 5
4	ООО Гамма	+7-900-444-44-44	г. Самара, ул. Победы, 15
5	ООО Дельта	+7-900-555-55-55	г. Уфа, ул. Мира, 8
6	ИП Кузнецов	+7-900-666-66-66	г. Пермь, ул. Советская, 20
7	ООО Омега	+7-900-777-77-77	г. Омск, ул. Центральная, 3
8	ООО Вектор	+7-900-888-88-88	г. Тюмень, ул. Полевая, 12
9	ООО Спектр	+7-900-999-99-99	г. Воронеж, ул. Южная, 7
10	ИП Орлов	+7-901-000-00-00	г. Ростов-на-Дону, ул. Донская, 9
\.


--
-- TOC entry 4948 (class 0 OID 16824)
-- Dependencies: 220
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, position_id, last_name, first_name, patronymic) FROM stdin;
2	2	Петров	Пётр	Петрович
3	3	Сидорова	Анна	Сергеевна
4	4	Кузнецов	Алексей	Владимирович
5	1	Иванов	Иван	Иванович
8	1	тест	тест	тест
1	1	Иванов	Иван	Иванович1
\.


--
-- TOC entry 4956 (class 0 OID 16864)
-- Dependencies: 228
-- Data for Name: operation_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.operation_types (id, name) FROM stdin;
1	Поступление
2	Отгрузка
3	Списание
4	Поступление
\.


--
-- TOC entry 4958 (class 0 OID 16871)
-- Dependencies: 230
-- Data for Name: operations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.operations (id, product_id, employee_id, contractor_id, operation_type_id, quantity, date) FROM stdin;
2	1	1	\N	3	2	2025-12-14 14:17:45.076313
3	1	1	1	1	10	2025-12-14 15:11:10.329844
4	10	2	2	1	100	2025-12-14 15:25:44.254619
5	10	3	1	1	1000	2025-12-14 15:26:50.283915
6	11	4	5	2	1	2025-12-14 15:28:14.657002
8	6	2	5	1	100	2025-12-14 15:31:56.880674
9	10	2	\N	1	88	2025-12-14 16:17:00
10	13	2	3	1	10	2025-12-15 11:35:00
11	6	2	2	3	500	2025-12-15 14:33:00
12	10	5	2	2	100	2025-12-15 14:30:00
\.


--
-- TOC entry 4946 (class 0 OID 16817)
-- Dependencies: 218
-- Data for Name: positions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.positions (id, name, salary) FROM stdin;
3	Менеджер по персоналу	55000.00
4	Администратор склада	65000.00
5	Тест-должность	50000.00
1	Менеджер	65000.00
2	Кладовщик	44000.00
\.


--
-- TOC entry 4954 (class 0 OID 16852)
-- Dependencies: 226
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, category_id, name, quantity) FROM stdin;
3	2	Ноутбук	20
4	2	Смартфон	50
5	3	Цемент М500	200
7	5	Моющее средство	120
8	6	Сахар	300
9	7	Электродрель	40
2	1	Микроволновая печь1	30
1	1	Холодильник	23
11	1	Тест-товар	8
13	9	Тест	12
6	4	Бумага А4	100
10	10	Картонная коробка	2088
\.


--
-- TOC entry 4971 (class 0 OID 0)
-- Dependencies: 223
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 12, true);


--
-- TOC entry 4972 (class 0 OID 0)
-- Dependencies: 221
-- Name: contractors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contractors_id_seq', 13, true);


--
-- TOC entry 4973 (class 0 OID 0)
-- Dependencies: 219
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_id_seq', 8, true);


--
-- TOC entry 4974 (class 0 OID 0)
-- Dependencies: 227
-- Name: operation_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operation_types_id_seq', 4, true);


--
-- TOC entry 4975 (class 0 OID 0)
-- Dependencies: 229
-- Name: operations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operations_id_seq', 12, true);


--
-- TOC entry 4976 (class 0 OID 0)
-- Dependencies: 217
-- Name: positions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.positions_id_seq', 5, true);


--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 225
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 13, true);


--
-- TOC entry 4787 (class 2606 OID 16850)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 4785 (class 2606 OID 16843)
-- Name: contractors contractors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contractors
    ADD CONSTRAINT contractors_pkey PRIMARY KEY (id);


--
-- TOC entry 4783 (class 2606 OID 16829)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- TOC entry 4791 (class 2606 OID 16869)
-- Name: operation_types operation_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operation_types
    ADD CONSTRAINT operation_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4793 (class 2606 OID 16877)
-- Name: operations operations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operations
    ADD CONSTRAINT operations_pkey PRIMARY KEY (id);


--
-- TOC entry 4781 (class 2606 OID 16822)
-- Name: positions positions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_pkey PRIMARY KEY (id);


--
-- TOC entry 4789 (class 2606 OID 16857)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4794 (class 2606 OID 16830)
-- Name: employees employees_position_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_position_id_fkey FOREIGN KEY (position_id) REFERENCES public.positions(id);


--
-- TOC entry 4796 (class 2606 OID 16888)
-- Name: operations operations_contractor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operations
    ADD CONSTRAINT operations_contractor_id_fkey FOREIGN KEY (contractor_id) REFERENCES public.contractors(id);


--
-- TOC entry 4797 (class 2606 OID 16883)
-- Name: operations operations_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operations
    ADD CONSTRAINT operations_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(id);


--
-- TOC entry 4798 (class 2606 OID 16893)
-- Name: operations operations_operation_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operations
    ADD CONSTRAINT operations_operation_type_id_fkey FOREIGN KEY (operation_type_id) REFERENCES public.operation_types(id);


--
-- TOC entry 4799 (class 2606 OID 16878)
-- Name: operations operations_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operations
    ADD CONSTRAINT operations_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4795 (class 2606 OID 16858)
-- Name: products products_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


-- Completed on 2025-12-15 15:45:10

--
-- PostgreSQL database dump complete
--

\unrestrict qcQeQtFRimfOfBthZRzvkvlNHVhtjjJ5S8OkRZ9PNtbagPMcfOtlz0vIJ3bAOLI

