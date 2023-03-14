--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)

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
-- Name: add_column_to_comments; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.add_column_to_comments (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.add_column_to_comments OWNER TO tadesse;

--
-- Name: add_column_to_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.add_column_to_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.add_column_to_comments_id_seq OWNER TO tadesse;

--
-- Name: add_column_to_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.add_column_to_comments_id_seq OWNED BY public.add_column_to_comments.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO tadesse;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    project_id bigint NOT NULL,
    text character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.comments OWNER TO tadesse;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO tadesse;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    name character varying,
    status character varying,
    description character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.projects OWNER TO tadesse;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO tadesse;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO tadesse;

--
-- Name: update_histories; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.update_histories (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    project_id bigint NOT NULL,
    status character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.update_histories OWNER TO tadesse;

--
-- Name: update_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.update_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.update_histories_id_seq OWNER TO tadesse;

--
-- Name: update_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.update_histories_id_seq OWNED BY public.update_histories.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: tadesse
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO tadesse;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: tadesse
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO tadesse;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tadesse
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: add_column_to_comments id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.add_column_to_comments ALTER COLUMN id SET DEFAULT nextval('public.add_column_to_comments_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: update_histories id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.update_histories ALTER COLUMN id SET DEFAULT nextval('public.update_histories_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: add_column_to_comments; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.add_column_to_comments (id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-03-14 12:43:16.406499	2023-03-14 12:43:16.406499
schema_sha1	38aa48af17cf1422a82b65c5217db12933f568e7	2023-03-14 12:43:16.432	2023-03-14 12:43:16.432
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.comments (id, project_id, text, created_at, updated_at, user_id) FROM stdin;
1	1	What is the project type we are working on? , This is the first question because I believe there are a lot of features related to it. This also determining what the status of a project could possibly be. The importance of project management in organizations can't be overstated. When it's done right, it helps every part of the business run more smoothly.... [MY ANSWER] I consider its a general purpose project that can be active or inactive. The app is flexible in a way that we can update it in a future to allow other status types	2023-03-14 12:43:58.748667	2023-03-14 12:43:58.748667	1
2	1	Are we considering a single project, or should i consider adding multiple project? This is the second question that comes to mind. Of course its mandatory to have a temple first, This allows us to mimic this template for all the project we are going to have... [MY ANSWER] I consider I should only consider a single page application that can be used as a template	2023-03-14 12:43:58.759385	2023-03-14 12:43:58.759385	1
3	1	Should  I be worried about the style?  Style is good to make the app looks nice. I think about it a couple of time about how much stile I should be adding. [MY ANSWER] Since there is nothing mentioned about the styling in the requirement specification I consider showing I'm capable of styling with the company tech stack is enough. Thant is why I have used  [tailwindcss]	2023-03-14 12:43:58.767902	2023-03-14 12:43:58.767902	1
4	1	sdfsdfsdf	2023-03-14 12:47:44.292315	2023-03-14 12:47:44.292315	1
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.projects (id, user_id, name, status, description, created_at, updated_at) FROM stdin;
1	1	This is the very first project we are working on 	Active	This is the first project	2023-03-14 12:43:58.719995	2023-03-14 12:43:58.719995
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.schema_migrations (version) FROM stdin;
20230314105731
20230314063019
20230314064356
20230314064443
20230314070015
20230314070352
\.


--
-- Data for Name: update_histories; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.update_histories (id, user_id, project_id, status, created_at, updated_at) FROM stdin;
1	1	1	\N	2023-03-14 12:43:58.781331	2023-03-14 12:43:58.781331
2	1	1	\N	2023-03-14 12:43:58.794468	2023-03-14 12:43:58.794468
3	1	1	\N	2023-03-14 12:43:58.811155	2023-03-14 12:43:58.811155
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: tadesse
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
1	userone@gamil.com	$2a$12$YcJlcyz.AT6UykD/8iuN.OcsQf98.5.8VXyCwupcTlEsUT.jlV6aS	\N	\N	\N	2023-03-14 12:43:48.986868	2023-03-14 12:43:48.986868
\.


--
-- Name: add_column_to_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.add_column_to_comments_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.comments_id_seq', 4, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.projects_id_seq', 1, true);


--
-- Name: update_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.update_histories_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tadesse
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: add_column_to_comments add_column_to_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.add_column_to_comments
    ADD CONSTRAINT add_column_to_comments_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: update_histories update_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.update_histories
    ADD CONSTRAINT update_histories_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_add_column_to_comments_on_user_id; Type: INDEX; Schema: public; Owner: tadesse
--

CREATE INDEX index_add_column_to_comments_on_user_id ON public.add_column_to_comments USING btree (user_id);


--
-- Name: index_comments_on_project_id; Type: INDEX; Schema: public; Owner: tadesse
--

CREATE INDEX index_comments_on_project_id ON public.comments USING btree (project_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: tadesse
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_projects_on_user_id; Type: INDEX; Schema: public; Owner: tadesse
--

CREATE INDEX index_projects_on_user_id ON public.projects USING btree (user_id);


--
-- Name: index_update_histories_on_project_id; Type: INDEX; Schema: public; Owner: tadesse
--

CREATE INDEX index_update_histories_on_project_id ON public.update_histories USING btree (project_id);


--
-- Name: index_update_histories_on_user_id; Type: INDEX; Schema: public; Owner: tadesse
--

CREATE INDEX index_update_histories_on_user_id ON public.update_histories USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: tadesse
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: tadesse
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: update_histories fk_rails_2d007e3d36; Type: FK CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.update_histories
    ADD CONSTRAINT fk_rails_2d007e3d36 FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: update_histories fk_rails_5a662806c4; Type: FK CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.update_histories
    ADD CONSTRAINT fk_rails_5a662806c4 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: comments fk_rails_8e3f130030; Type: FK CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_8e3f130030 FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: projects fk_rails_b872a6760a; Type: FK CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT fk_rails_b872a6760a FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: add_column_to_comments fk_rails_e1fa187928; Type: FK CONSTRAINT; Schema: public; Owner: tadesse
--

ALTER TABLE ONLY public.add_column_to_comments
    ADD CONSTRAINT fk_rails_e1fa187928 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

