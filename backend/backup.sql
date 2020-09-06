--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE my_database;




--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md5f669773c3bc40401c00685cf2f9c4ca2';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg100+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "my_database" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg100+1)

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
-- Name: my_database; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE my_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE my_database OWNER TO postgres;

\connect my_database

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
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.city (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying(300) NOT NULL,
    "languagesId" uuid,
    "frameworksId" uuid,
    "stateId" uuid
);


ALTER TABLE public.city OWNER TO postgres;

--
-- Name: city-state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."city-state" (
    city_id uuid NOT NULL,
    state_id uuid NOT NULL
);


ALTER TABLE public."city-state" OWNER TO postgres;

--
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying(300) NOT NULL,
    "languagesId" uuid,
    "frameworksId" uuid
);


ALTER TABLE public.country OWNER TO postgres;

--
-- Name: frameworks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.frameworks (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    "React" integer DEFAULT 0 NOT NULL,
    "Rails" integer DEFAULT 0 NOT NULL,
    "Angular" integer DEFAULT 0 NOT NULL,
    "Django" integer DEFAULT 0 NOT NULL,
    "Symfony" integer DEFAULT 0 NOT NULL,
    "Laravel" integer DEFAULT 0 NOT NULL,
    "Spring" integer DEFAULT 0 NOT NULL,
    "Vue" integer DEFAULT 0 NOT NULL,
    "Flask" integer DEFAULT 0 NOT NULL,
    "jQuery" integer DEFAULT 0 NOT NULL,
    "Node.js" integer DEFAULT 0 NOT NULL,
    "ASP.NET" integer DEFAULT 0 NOT NULL,
    "Nodejs" integer DEFAULT 0 NOT NULL,
    "ASPNET" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.frameworks OWNER TO postgres;

--
-- Name: languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.languages (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    "Java" integer DEFAULT 0 NOT NULL,
    "JavaScript" integer DEFAULT 0 NOT NULL,
    "Ruby" integer DEFAULT 0 NOT NULL,
    "Python" integer DEFAULT 0 NOT NULL,
    "Cpp" integer DEFAULT 0 NOT NULL,
    "Csharp" integer DEFAULT 0 NOT NULL,
    "Golang" integer DEFAULT 0 NOT NULL,
    "TypeScript" integer DEFAULT 0 NOT NULL,
    "Dart" integer DEFAULT 0 NOT NULL,
    "Haskell" integer DEFAULT 0 NOT NULL,
    "PHP" integer DEFAULT 0 NOT NULL,
    "Swift" integer DEFAULT 0 NOT NULL,
    "Perl" integer DEFAULT 0 NOT NULL,
    "Kotlin" integer DEFAULT 0 NOT NULL,
    "Rust" integer DEFAULT 0 NOT NULL,
    "Scala" integer DEFAULT 0 NOT NULL,
    "Objective-C" integer DEFAULT 0 NOT NULL,
    "ObjectiveC" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.languages OWNER TO postgres;

--
-- Name: location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.location (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying(300) NOT NULL,
    type integer NOT NULL,
    "languagesId" uuid,
    "frameworksId" uuid
);


ALTER TABLE public.location OWNER TO postgres;

--
-- Name: migration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migration (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.migration OWNER TO postgres;

--
-- Name: migration_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migration_id_seq OWNER TO postgres;

--
-- Name: migration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migration_id_seq OWNED BY public.migration.id;


--
-- Name: state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.state (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying(300) NOT NULL,
    "languagesId" uuid,
    "frameworksId" uuid,
    "countryId" uuid
);


ALTER TABLE public.state OWNER TO postgres;

--
-- Name: state-country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."state-country" (
    state_id uuid NOT NULL,
    country_id uuid NOT NULL
);


ALTER TABLE public."state-country" OWNER TO postgres;

--
-- Name: migration id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migration ALTER COLUMN id SET DEFAULT nextval('public.migration_id_seq'::regclass);


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.city (id, name, "languagesId", "frameworksId", "stateId") FROM stdin;
\.


--
-- Data for Name: city-state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."city-state" (city_id, state_id) FROM stdin;
\.


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.country (id, name, "languagesId", "frameworksId") FROM stdin;
\.


--
-- Data for Name: frameworks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.frameworks (id, "React", "Rails", "Angular", "Django", "Symfony", "Laravel", "Spring", "Vue", "Flask", "jQuery", "Node.js", "ASP.NET", "Nodejs", "ASPNET") FROM stdin;
9706cbac-8176-4eb3-917e-2ac9e88c1a7d	0	0	0	0	0	0	0	0	0	0	0	0	0	0
79a59690-15ab-4966-8b57-f46e2ee7a9e2	0	0	0	0	0	0	0	0	0	0	0	0	0	0
135964c0-2fcc-444c-b065-272082f2c842	0	0	0	0	0	0	0	0	0	0	0	0	0	0
e97b2730-602a-4207-b1e8-071c68f04025	1	1	1	1	1	1	1	1	1	1	0	0	1	1
16098eda-ec04-4456-8183-60dd909ba5af	1	1	1	1	1	1	1	1	1	1	0	0	1	1
fd22d08b-377a-4341-ba5d-aca2562dd682	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a7197562-ea55-4c62-b877-aa43c4914454	1	1	1	1	1	1	1	1	1	1	0	0	1	1
5df05d46-d2c9-4eda-9594-9e8859428d47	4	4	4	4	4	4	4	4	4	4	0	0	4	4
d69e0158-8982-49ff-bd7d-d2f5d3bb2277	1	1	1	1	1	1	1	1	1	1	0	0	1	1
4596e755-d5cf-4d71-a32c-b841428ef00e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
4ed405a8-9b51-4115-a26a-b4e5a74858ff	1	1	1	1	1	1	1	1	1	1	0	0	1	1
05f21403-32b9-4ff6-b986-9fcb35a6c60c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d0c6d83b-1b16-4715-ab8a-10d609669508	1	1	1	1	1	1	1	1	1	1	0	0	1	1
1ca7960d-c0b6-45f9-850b-ab844bc76e39	1	1	1	1	1	1	1	1	1	1	0	0	1	1
246c9456-f898-4fe3-af06-bd7446d122a1	1	1	1	1	1	1	1	1	1	1	0	0	1	1
0d36defe-b928-4f5d-aa23-2796b17c7bdd	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c62c1ba5-0cdb-4d2b-bd3a-7538ff50555c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
97321373-da75-4d42-9587-500e894ab434	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c8ece6e0-f8ed-4ad1-9077-316a4874b082	1	1	1	1	1	1	1	1	1	1	0	0	1	1
e4653eb1-4078-4e5a-87cc-3f86c6f5eb99	1	1	1	1	1	1	1	1	1	1	0	0	1	1
28415f60-3f79-490b-a253-ccd0ba200a5d	1	1	1	1	1	1	1	1	1	1	0	0	1	1
6e6d0f44-3130-4ba8-b896-f62ad6b5946b	11	11	11	11	11	11	11	11	11	11	0	0	11	11
7d9afad4-03a3-4258-a51f-f48385e181ee	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c42d4cf1-261f-4c6d-83ad-8a0efda6754c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
49d4c793-cac4-45a8-8c71-0b9d3c3992df	1	1	1	1	1	1	1	1	1	1	0	0	1	1
05b6d808-691f-48d1-a733-5794837ef5b7	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d09fca2c-7fc1-42dc-83e2-51141da77737	1	1	1	1	1	1	1	1	1	1	0	0	1	1
b1a079d5-ecfc-4680-bdb5-becb0a62bde7	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c9422381-5308-495a-a7c8-d445793c5273	1	1	1	1	1	1	1	1	1	1	0	0	1	1
32464d34-10b7-4fc8-99aa-ca53174e778a	1	1	1	1	1	1	1	1	1	1	0	0	1	1
53a4b858-38a0-4da9-9521-e8d1ebde8cb2	1	1	1	1	1	1	1	1	1	1	0	0	1	1
534ad2b3-a723-4bfa-b276-ec4706b7c934	1	1	1	1	1	1	1	1	1	1	0	0	1	1
0776e97f-60f1-4d90-b12e-43e7c3da36a4	1	1	1	1	1	1	1	1	1	1	0	0	1	1
58d99149-a3a9-47ab-9c18-9bb76580b222	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a1a5ecb9-8c8f-4264-aecb-5a87e635bb12	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d23ab7bb-3408-48b8-8f7a-c1bddd0abe62	1	1	1	1	1	1	1	1	1	1	0	0	1	1
1e0646cc-b1e6-4272-bd17-6930e53f7657	1	1	1	1	1	1	1	1	1	1	0	0	1	1
88a32ba7-a9e1-4469-b6a5-9fee0d7ce226	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a64b1385-ed30-442a-bae8-9bffb3120eb8	1	1	1	1	1	1	1	1	1	1	0	0	1	1
fa2c0a55-f80d-43fa-b2f1-8bd7354ee36c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
681bb103-f674-4c33-8cec-f2ac51c51bc2	1	1	1	1	1	1	1	1	1	1	0	0	1	1
dfd66971-a560-48da-b7ec-7b3aaf8152d9	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c425a509-d8f4-4a6e-ae2d-5b477ac0ed4e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
b5c3b3e7-73c5-4eb5-96b0-1160fffabc60	1	1	1	1	1	1	1	1	1	1	0	0	1	1
5569fd17-d685-4366-915e-186e3576ca4c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
9016339d-0739-4413-ae52-43decd7265dc	1	1	1	1	1	1	1	1	1	1	0	0	1	1
085b33f3-18ad-485e-9542-e0aac73a1124	1	1	1	1	1	1	1	1	1	1	0	0	1	1
e6c36f32-82c6-44ff-b03b-43423f025b86	1	1	1	1	1	1	1	1	1	1	0	0	1	1
17671a0e-99a4-45f7-b5c9-e1c001ee1c44	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d7449191-8e74-4b8c-bc95-0605ee33e5b3	1	1	1	1	1	1	1	1	1	1	0	0	1	1
15572a7a-fda0-4957-b6d4-ef23ee6e5e41	1	1	1	1	1	1	1	1	1	1	0	0	1	1
5e9161b1-6df2-4694-ab0c-5c20ebf2f729	1	1	1	1	1	1	1	1	1	1	0	0	1	1
09db84e0-40d7-4214-9e86-a48ab1ee70cb	1	1	1	1	1	1	1	1	1	1	0	0	1	1
87979ad8-f06c-4c8f-a859-24974e5b4f10	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a979e28f-b5ab-4ad0-8a8f-2c2044573ebc	1	1	1	1	1	1	1	1	1	1	0	0	1	1
841bdd0b-96f7-4a51-8684-3b738c3b3e58	1	1	1	1	1	1	1	1	1	1	0	0	1	1
5a42ada1-83db-4d21-9762-05467200fc0e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
8ffc23cc-5c12-4a9d-9a6a-d5c443de81f3	1	1	1	1	1	1	1	1	1	1	0	0	1	1
da3f6327-9297-46a9-8d5d-cdfc51f74d9f	1	1	1	1	1	1	1	1	1	1	0	0	1	1
9fcd9d4e-6d01-45e7-b3b1-520383f0fec0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
23d2e3a2-2810-4b71-b80d-d98669316b3b	1	1	1	1	1	1	1	1	1	1	0	0	1	1
09e4550c-7691-4839-b7d5-2ae9de2475fe	1	1	1	1	1	1	1	1	1	1	0	0	1	1
94a24437-9f07-4003-8ab4-dc3f8eab5f93	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a42ff08a-38cc-4267-a0de-150c547bca64	1	1	1	1	1	1	1	1	1	1	0	0	1	1
acb8c90a-d281-4928-851c-33ff6519a8f0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
88e05f28-e3fe-4de9-b280-46731562fe90	1	1	1	1	1	1	1	1	1	1	0	0	1	1
0e96e6cd-9251-4ea1-9d02-fbc1aa4f126c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
132e5c63-ccfd-416f-923d-afdef000c1b0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
22b70192-d5f4-45a9-ab59-62e5fb013e08	1	1	1	1	1	1	1	1	1	1	0	0	1	1
7e37068f-6377-4f14-955a-19bbe2baacdd	1	1	1	1	1	1	1	1	1	1	0	0	1	1
3f78b47a-f0b6-4d3c-af79-81bb72fcf5d1	1	1	1	1	1	1	1	1	1	1	0	0	1	1
8e26ad71-f2ca-4b69-92be-9679fc7afef2	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f4895e9d-2493-4822-be6e-3835a667556b	1	1	1	1	1	1	1	1	1	1	0	0	1	1
79e56f9e-219a-438f-b54f-6a8b4ce0fc6c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
488ace88-7055-4384-a09f-c680c94faa5b	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c4e94cd1-f94c-4409-ad90-4faeac8fdf72	1	1	1	1	1	1	1	1	1	1	0	0	1	1
46d260c7-54de-424b-9e65-9ed4a91d360b	1	1	1	1	1	1	1	1	1	1	0	0	1	1
1f4d462e-59b3-4aac-9014-91e543f1bd2d	1	1	1	1	1	1	1	1	1	1	0	0	1	1
de075a8b-bd28-4fe0-a61e-9b61c64d0f60	1	1	1	1	1	1	1	1	1	1	0	0	1	1
6a08af1b-5dfe-4b94-bb23-f56eed416efb	12	12	12	12	12	12	12	12	12	12	0	0	12	12
bc787b91-7b5f-4706-801e-6048a9e11633	1	1	1	1	1	1	1	1	1	1	0	0	1	1
629a7882-1d45-4fdf-8e67-8b539bf1add0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
3915e5e0-06ff-4f06-aa91-506512cc25e6	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f45d8480-b9db-4ddd-a672-87f0e74e9218	1	1	1	1	1	1	1	1	1	1	0	0	1	1
9baee745-dd28-410c-b272-904bee399f62	1	1	1	1	1	1	1	1	1	1	0	0	1	1
bf5d2853-fd8b-4e9d-b2d8-32e75b801adf	1	1	1	1	1	1	1	1	1	1	0	0	1	1
db186851-f08d-4256-9b91-b0aeb3004bd4	1	1	1	1	1	1	1	1	1	1	0	0	1	1
8c2082b8-e04a-467d-be2a-c81a52d8c23f	1	1	1	1	1	1	1	1	1	1	0	0	1	1
2450b8cf-ec91-4c8c-bf8d-5ab6212d3802	1	1	1	1	1	1	1	1	1	1	0	0	1	1
946aa42a-5f1f-4fce-99dc-3cf7eadc47e1	1	1	1	1	1	1	1	1	1	1	0	0	1	1
95af6d39-84ae-43d8-97c8-bec6eb981b59	1	1	1	1	1	1	1	1	1	1	0	0	1	1
51f45730-e4f7-414d-b810-8433244f15ba	2	2	2	2	2	2	2	2	2	2	0	0	2	2
585d2446-afe5-40b8-bcff-7cb67f387065	1	1	1	1	1	1	1	1	1	1	0	0	1	1
397f2a0b-f95d-4071-9e3a-47efb474dd4e	2	2	2	2	2	2	2	2	2	2	0	0	2	2
045a0141-d3f7-40a7-8689-d53d11d2fa1e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c235be9e-cc55-4f98-adcb-6f9985a7dc97	10	10	10	10	10	10	10	10	10	10	0	0	10	10
bcef2756-56fd-40b1-a70f-5cf5c8b1b5a0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c2ac94ac-840e-4d03-bbf9-34ddf1163c7e	5	5	5	5	5	5	5	5	5	5	0	0	5	5
21975dd3-a12f-41dc-8469-b52e0fd69da5	1	1	1	1	1	1	1	1	1	1	0	0	1	1
efd1d705-f387-4825-a82b-9520c59553e2	1	1	1	1	1	1	1	1	1	1	0	0	1	1
8de65a14-2030-4c95-91c4-a49a42e9fcba	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a9f9999c-0f21-458c-90ad-803eed692d83	1	1	1	1	1	1	1	1	1	1	0	0	1	1
35c635fc-f2e8-4fec-ab90-9e7a02f71ce1	1	1	1	1	1	1	1	1	1	1	0	0	1	1
7e3e8969-1953-4d6d-aafb-87a59b1f94ae	1	1	1	1	1	1	1	1	1	1	0	0	1	1
60d643c9-ab01-4668-ab89-14db4e8f412f	1	1	1	1	1	1	1	1	1	1	0	0	1	1
b12eb5d5-6ebc-4dd5-8d63-5c870dde6c81	1	1	1	1	1	1	1	1	1	1	0	0	1	1
12867404-15de-473a-a3fb-580b27cd11fe	1	1	1	1	1	1	1	1	1	1	0	0	1	1
16989835-42eb-46fb-a1e9-5c023f68e0df	1	1	1	1	1	1	1	1	1	1	0	0	1	1
787f15bf-248b-4c67-b14c-409df87ecfe2	1	1	1	1	1	1	1	1	1	1	0	0	1	1
b45f2348-4ad3-4161-a2f4-f6f28f580157	1	1	1	1	1	1	1	1	1	1	0	0	1	1
588b6575-ee5b-479e-a4b3-00eeee03d6eb	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c2b1dc56-9ed1-4460-83a7-0ff1207aefbb	1	1	1	1	1	1	1	1	1	1	0	0	1	1
2f532881-73cc-4004-bc19-424d3f16cdc6	1	1	1	1	1	1	1	1	1	1	0	0	1	1
754a126e-c5c5-49b3-baf9-da578515de66	1	1	1	1	1	1	1	1	1	1	0	0	1	1
369ea3eb-ac79-4bed-94f8-a329c0d755db	1	1	1	1	1	1	1	1	1	1	0	0	1	1
52746bc1-71b8-4fa7-b71d-8a7bc8f53021	1	1	1	1	1	1	1	1	1	1	0	0	1	1
db192e3c-2987-4185-8fe7-6fa4f11916e8	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f9470e3d-45f0-477a-a1d1-7cc4a54df295	4	4	4	4	4	4	4	4	4	4	0	0	4	4
d7706a2b-8554-46a4-83f3-3fbb4206ff59	5	5	5	5	5	5	5	5	5	5	0	0	5	5
7d2f259a-4c25-4d1a-a431-fbd310c55a55	1	1	1	1	1	1	1	1	1	1	0	0	1	1
58e3b220-cfd0-436a-8d1f-f61f2116719b	1	1	1	1	1	1	1	1	1	1	0	0	1	1
49d25f20-8e84-4136-99dd-86d295f4cc2c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
5c22203d-ed9d-46b3-b846-63f5bce4cf54	1	1	1	1	1	1	1	1	1	1	0	0	1	1
e061d60c-7788-4856-afd0-3f920abda803	1	1	1	1	1	1	1	1	1	1	0	0	1	1
51c9a5ba-8545-497e-aab5-294bb5ba41ca	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f0072526-8765-46b8-a35b-5c475612ebed	1	1	1	1	1	1	1	1	1	1	0	0	1	1
df7e7e38-cf25-4f56-a901-77614803a5cf	1	1	1	1	1	1	1	1	1	1	0	0	1	1
8086a09a-e998-42f6-8e3f-4605428a139e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
119caae7-cd66-4624-aaff-df9911157b15	1	1	1	1	1	1	1	1	1	1	0	0	1	1
823dec3b-05ff-4f06-8dec-ae44f8d66244	1	1	1	1	1	1	1	1	1	1	0	0	1	1
96869298-5af4-4087-b7b5-44a14b79d7ac	4	4	4	4	4	4	4	4	4	4	0	0	4	4
541ee1e5-1cc1-40e6-a4fc-c59274c3986a	1	1	1	1	1	1	1	1	1	1	0	0	1	1
4a6a7f83-0b49-4b82-805c-00b9558c36ce	1	1	1	1	1	1	1	1	1	1	0	0	1	1
84d49c6c-5876-4710-a772-b372ebe76700	1	1	1	1	1	1	1	1	1	1	0	0	1	1
cc950018-0db9-4bf5-8a28-9745be0c4d5c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
57e64e23-58ec-4ffc-82a1-9aee9917fbdf	38	38	38	38	38	38	38	38	38	38	0	0	38	38
6873305e-120e-48f0-9bd4-8d9aa8a62242	1	1	1	1	1	1	1	1	1	1	0	0	1	1
439d0a7e-3edd-4f7b-b49f-943d13f2a055	1	1	1	1	1	1	1	1	1	1	0	0	1	1
83e1a211-2f2d-4e39-a76f-f9a7e2d9a84b	3	3	3	3	3	3	3	3	3	3	0	0	3	3
266de812-b8ca-4b1b-b4b9-ec7972c49145	1	1	1	1	1	1	1	1	1	1	0	0	1	1
520c8726-3392-41a9-86fb-aa6c1bbed04d	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f1b412f8-2d14-4383-a438-67438c8dbae4	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a4d6a983-4a0a-456a-bcfb-803bc6270a15	1	1	1	1	1	1	1	1	1	1	0	0	1	1
bb5fc802-5373-4a39-87b6-dec434ecf03e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
db19d566-1ea2-4c0c-bceb-3b3fa9260031	1	1	1	1	1	1	1	1	1	1	0	0	1	1
4953d67e-ddcb-4c85-9601-c33e9acf05d4	1	1	1	1	1	1	1	1	1	1	0	0	1	1
8879d4cf-7935-4d87-98dc-3f5e73572ef4	1	1	1	1	1	1	1	1	1	1	0	0	1	1
61639fe0-d31c-4f1b-b27a-fbd5da9f5590	5	5	5	5	5	5	5	5	5	5	0	0	5	5
78bd1a2f-475a-459b-83bc-50ab0b2f5107	1	1	1	1	1	1	1	1	1	1	0	0	1	1
e3cb9a8d-c4ae-45a5-b5e8-d3c1130fab82	1	1	1	1	1	1	1	1	1	1	0	0	1	1
aac44b7b-f13e-4698-b5c7-c3f7ceb99e9a	1	1	1	1	1	1	1	1	1	1	0	0	1	1
79d0018d-2326-4d65-8b63-f87019d172d7	1	1	1	1	1	1	1	1	1	1	0	0	1	1
bf8f1e21-3b3a-4ff5-ad88-a91692d6ca7b	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c3e9d71c-4010-4cf5-92bb-3fa5734dce40	6	6	6	6	6	6	6	6	6	6	0	0	6	6
76b3bf55-81f0-43ec-a6af-553be77e55ee	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c8d3c3c8-437e-4114-8165-db123892d1b5	1	1	1	1	1	1	1	1	1	1	0	0	1	1
6df721bc-d050-4cc5-ae2e-4526d37bd743	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d2850c4b-563f-4396-b0c9-4f22716a9fb4	1	1	1	1	1	1	1	1	1	1	0	0	1	1
3aa1765c-4d72-4637-ae9c-92e0371328c8	1	1	1	1	1	1	1	1	1	1	0	0	1	1
5f6d6f1e-e82b-43d2-ba23-2c76c4016a28	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f86b49f8-89e4-4738-90ed-d4558560f5dd	1	1	1	1	1	1	1	1	1	1	0	0	1	1
4088077d-00e0-4a8b-b6a0-54b935ffad55	1	1	1	1	1	1	1	1	1	1	0	0	1	1
14ec1d2f-607c-4746-9953-0a937c163cb9	1	1	1	1	1	1	1	1	1	1	0	0	1	1
96dfa192-1c70-4c71-97f2-379c72bfdd0e	8	8	8	8	8	8	8	8	8	8	0	0	8	8
cd97005d-b727-49ed-a84d-c061ebfd4a8b	1	1	1	1	1	1	1	1	1	1	0	0	1	1
72ef28ff-34d4-4c70-97b0-8344338b3c4e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
e2311c2d-2896-4c67-95ea-f0c5d2419b23	1	1	1	1	1	1	1	1	1	1	0	0	1	1
050c29f1-d974-4e7b-8c20-0227e5cf3558	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f530cfe1-6db4-4e08-9c32-d3a557225723	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d929195a-b5a5-4167-a9e2-71b602ce1214	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f8bf3ece-859d-499a-a680-b4e2dd85e055	0	0	0	0	0	0	0	0	0	0	0	0	0	0
c7e4a919-aa6a-42c7-b7d6-b4f8cd8c48cd	1	1	1	1	1	1	1	1	1	1	0	0	1	1
035fc117-5256-4d12-a5f7-1fc70b331432	1	1	1	1	1	1	1	1	1	1	0	0	1	1
3ca68d46-a03b-4bca-aa29-9ecc79564b4b	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f90e6871-5996-4319-8bb7-0e3a03402ae5	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a99bc4ab-2adc-4470-ad73-861e31ab9028	1	1	1	1	1	1	1	1	1	1	0	0	1	1
3ca370aa-ae06-49d7-a19a-35a3689fbbed	1	1	1	1	1	1	1	1	1	1	0	0	1	1
50c999fd-f2c6-4a7f-9a4c-771b01b9a718	1	1	1	1	1	1	1	1	1	1	0	0	1	1
64ec9802-f553-411f-aeb6-4658a02f6bd4	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f3c8edb4-d05b-442d-9d12-7e323e8c6039	1	1	1	1	1	1	1	1	1	1	0	0	1	1
447f92d8-dc9c-4e18-aab2-9150c4b96b63	1	1	1	1	1	1	1	1	1	1	0	0	1	1
830b0f25-7772-4118-ad30-be1a6bf69bf0	3	3	3	3	3	3	3	3	3	3	0	0	3	3
d475cb7f-292b-44b5-9f17-0e1cd70b90cd	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a0274c5b-d1a2-45b8-8b7c-21e9192dbc29	1	1	1	1	1	1	1	1	1	1	0	0	1	1
109f87cc-3929-4d0c-a167-8c39a507242e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
1102b906-6091-42ec-91a0-d19d67ae6c68	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d9806735-0615-45ab-876e-a62ab7458b4e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
09b27f53-2c99-4c67-bba6-c59b75fbd852	1	1	1	1	1	1	1	1	1	1	0	0	1	1
4660b40a-06a0-45cc-916b-536fc4f72d54	1	1	1	1	1	1	1	1	1	1	0	0	1	1
14bcd9ef-9f34-4109-96a6-72ae5313182f	1	1	1	1	1	1	1	1	1	1	0	0	1	1
165cf869-b6f3-426b-882f-5e99cfc1ef27	1	1	1	1	1	1	1	1	1	1	0	0	1	1
87dd990b-1717-4552-a577-d56b8e032c76	4	4	4	4	4	4	4	4	4	4	0	0	4	4
cc3dbe55-9079-4b60-8bf2-c3f712595a79	3	3	3	3	3	3	3	3	3	3	0	0	3	3
47143f79-00aa-4ea4-a0b2-8317dbf9101f	1	1	1	1	1	1	1	1	1	1	0	0	1	1
282bc363-b29b-4ce9-8822-b037f6a8aa4d	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a089b382-aefb-4035-9df3-a590b39819f7	1	1	1	1	1	1	1	1	1	1	0	0	1	1
2be76aa9-da41-40ad-a082-02b69fed21f8	1	1	1	1	1	1	1	1	1	1	0	0	1	1
e8116dad-4aad-4acb-b357-865ab7281df5	1	1	1	1	1	1	1	1	1	1	0	0	1	1
86b3ed4d-8ca0-4958-97b0-62f7b3666e84	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a261bb52-4770-424f-bf95-08934602245e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f3ff52f5-79ea-4bc9-8f8e-8097dbd2b8f4	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d48cd88a-23ad-420e-8b2a-a71030d658e8	1	1	1	1	1	1	1	1	1	1	0	0	1	1
b1540114-23f1-41f1-a0cd-2fb6c9fd1662	1	1	1	1	1	1	1	1	1	1	0	0	1	1
eb5de823-e9b8-4739-afce-827d6b3bccec	1	1	1	1	1	1	1	1	1	1	0	0	1	1
8f150db5-9094-4444-ac00-c74dfa97cbcd	1	1	1	1	1	1	1	1	1	1	0	0	1	1
47da9d7a-fa3c-43b9-b960-6de0fa0defa0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
0788f753-97b9-4241-a8d4-2ae0518ff928	1	1	1	1	1	1	1	1	1	1	0	0	1	1
35f950f9-854c-41f4-b683-d39837787b7f	1	1	1	1	1	1	1	1	1	1	0	0	1	1
4d86e2d7-2a93-47fc-829d-6a20d7d52603	1	1	1	1	1	1	1	1	1	1	0	0	1	1
07021183-9d39-446e-ac28-db71cc164449	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d6aaae5e-bb4f-4018-9ca2-a932462654e0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
1a249a3f-525d-4f45-8510-0b6399f07bbd	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a9743e79-f700-4062-ac90-4faa9a87dea8	1	1	1	1	1	1	1	1	1	1	0	0	1	1
2a8bd710-fc70-48d1-9475-cc58fa5ab46a	0	0	0	0	0	0	0	0	0	0	0	0	0	0
9527d7b5-adb4-4008-945f-b8fcaebf7d9f	7	7	7	7	7	7	7	7	7	7	0	0	7	7
201dac7a-5ece-4a21-baff-c483906aa3e7	1	1	1	1	1	1	1	1	1	1	0	0	1	1
e07e0ee3-b9d6-4a13-9f48-805031880e5b	6	6	6	6	6	6	6	6	6	6	0	0	6	6
107bc6d8-dd9b-4e18-9d53-522c04d834fb	1	1	1	1	1	1	1	1	1	1	0	0	1	1
ba1fd63c-1962-4040-ab88-5a81924a387c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
ad33f382-6c31-493a-85a4-8e52e1c395cf	1	1	1	1	1	1	1	1	1	1	0	0	1	1
03f17284-830a-4d4d-8537-eaae9a2e2666	1	1	1	1	1	1	1	1	1	1	0	0	1	1
fe4ad785-748b-45f4-979b-e0092be72294	1	1	1	1	1	1	1	1	1	1	0	0	1	1
00f48af0-2010-4747-aad4-e906f6564cdb	1	1	1	1	1	1	1	1	1	1	0	0	1	1
2ae04ca1-db51-433a-8bce-fcb3b353e3e9	1	1	1	1	1	1	1	1	1	1	0	0	1	1
10b80af9-3e71-4781-a590-d59e29042bc8	1	1	1	1	1	1	1	1	1	1	0	0	1	1
cfb8eb4d-cc27-4aca-88f0-499dac949628	1	1	1	1	1	1	1	1	1	1	0	0	1	1
cc57a0bf-3a6c-4984-85e6-d12cb0ef7c22	1	1	1	1	1	1	1	1	1	1	0	0	1	1
80d9eafb-5a9f-43f4-bffa-3eb38639596e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
ddf9bfa9-661c-4915-8ccd-817294fefa47	1	1	1	1	1	1	1	1	1	1	0	0	1	1
9f7dc2c1-616e-4b17-98ee-64fd13a9682c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
7eb29a12-6260-4fca-b3e4-676c2b2959d4	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f6724152-6dca-48f7-b98e-425850402b36	1	1	1	1	1	1	1	1	1	1	0	0	1	1
6af2173c-0b66-4e88-acbb-02d799befdf0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
ca30f0ba-475f-4763-b413-965be32903e9	1	1	1	1	1	1	1	1	1	1	0	0	1	1
dc1d3be1-8845-4e41-b53c-13d671b7c342	1	1	1	1	1	1	1	1	1	1	0	0	1	1
b728cc4e-9595-48ce-a768-ec6ced3699ce	1	1	1	1	1	1	1	1	1	1	0	0	1	1
4155ceb8-26cc-4283-900d-700a2684b91c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
800b0571-f331-4d0e-aaa8-96753890a431	1	1	1	1	1	1	1	1	1	1	0	0	1	1
30dd2a56-6f3a-44b1-b7cc-a6f503c29c8a	1	1	1	1	1	1	1	1	1	1	0	0	1	1
725adea4-c99a-4930-8ad4-cbfada787b33	1	1	1	1	1	1	1	1	1	1	0	0	1	1
58d1195b-220e-44f2-8d86-2617159515a1	1	1	1	1	1	1	1	1	1	1	0	0	1	1
74305266-18d6-4d0e-a96e-b5e6b7c71d94	1	1	1	1	1	1	1	1	1	1	0	0	1	1
3386d3ee-1c4d-49ad-8d62-ec6f5abe4cf9	1	1	1	1	1	1	1	1	1	1	0	0	1	1
1e01aba6-f256-4f71-8098-3cdf9058a0c8	1	1	1	1	1	1	1	1	1	1	0	0	1	1
bbc7a207-d419-41fc-8df0-b4c6b2e34b95	6	6	6	6	6	6	6	6	6	6	0	0	6	6
99109c0a-36ba-459d-bf93-108b00724206	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f4f51bcb-930a-49fe-8e02-bd55ff1861e0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
4b1deeca-5f73-4b86-8895-c337a6ddf4bc	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f8011391-9784-4b1a-a890-b441a3868a6f	1	1	1	1	1	1	1	1	1	1	0	0	1	1
9c94c1dd-fd01-4064-bb9a-1bd6bf5b41b9	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c7bfb0ee-21a3-4e69-be67-7720cfbf2041	1	1	1	1	1	1	1	1	1	1	0	0	1	1
24d1e608-0e68-4fdc-bc35-c9a9b451ca08	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a6d1a50f-2f93-4da4-a084-9013a9b442a6	1	1	1	1	1	1	1	1	1	1	0	0	1	1
3ebbea0a-3854-4083-8b65-eabccd1ed638	1	1	1	1	1	1	1	1	1	1	0	0	1	1
62c8ee18-25b6-40e8-ae8c-bc5cfcd4c545	1	1	1	1	1	1	1	1	1	1	0	0	1	1
56cdb46b-9751-4de2-809d-ee099c3e1f52	1	1	1	1	1	1	1	1	1	1	0	0	1	1
fd45b4a3-cce3-4f5b-8166-17c6bf3b4764	1	1	1	1	1	1	1	1	1	1	0	0	1	1
b29cb3a1-1f37-4a5f-a188-ecd2d8cc39ac	1	1	1	1	1	1	1	1	1	1	0	0	1	1
301aa21a-93ca-4fd2-9276-7cfe4968d0ac	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c4f42482-10d3-42fe-b4ca-bc913b07d025	1	1	1	1	1	1	1	1	1	1	0	0	1	1
6f100d46-6cdc-4e3b-83cd-4bc5d2c7df09	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c5c8985b-7ef3-4904-8c4f-a11b9c3f3975	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d3195711-fc34-4f1e-9083-91faa26051d5	332	332	332	332	332	332	332	332	332	332	0	0	332	332
740a9dc5-db10-4472-8fe5-bc9c352a27a0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
829a5661-1055-4d20-98d7-a54c25e87607	1	1	1	1	1	1	1	1	1	1	0	0	1	1
2e5f1469-11e9-4b04-82d9-2cd2e00b62b2	1	1	1	1	1	1	1	1	1	1	0	0	1	1
87849fbd-7e78-45cf-a6ad-caf68f2433c3	1	1	1	1	1	1	1	1	1	1	0	0	1	1
ad8c4d75-afa7-4086-8d10-143d79f36c52	1	1	1	1	1	1	1	1	1	1	0	0	1	1
da5d29f5-8ab4-4c6e-840f-3b0cd7c07002	1	1	1	1	1	1	1	1	1	1	0	0	1	1
ffe03b08-87ef-4622-8b18-e173679ae6bd	1	1	1	1	1	1	1	1	1	1	0	0	1	1
57ff5190-b3c2-41ba-b367-8b8e4949221e	26	26	26	26	26	26	26	26	26	26	0	0	26	26
d3591dcb-dfa6-4c56-8a22-820f103c481e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c625981c-72ec-4608-aa67-3dcddc9c84a2	9	9	9	9	9	9	9	9	9	9	0	0	9	9
cc9783d9-2965-43ea-b55a-17af0475230f	1	1	1	1	1	1	1	1	1	1	0	0	1	1
7777a6f5-f086-45ee-a1b3-819627dfc3e0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
9950fc89-2ca8-456b-9c4a-bbad8cf64cd1	1	1	1	1	1	1	1	1	1	1	0	0	1	1
79a2d195-47c3-4b07-837e-532af4fc5dea	1	1	1	1	1	1	1	1	1	1	0	0	1	1
bcd8cdcd-091e-48f0-8499-3e2ed4ed8598	3	3	3	3	3	3	3	3	3	3	0	0	3	3
0b353cff-48e5-4213-9cd0-6491ee9789ee	1	1	1	1	1	1	1	1	1	1	0	0	1	1
bf14a6a9-aabf-4c94-89db-6b29e696bc71	1	1	1	1	1	1	1	1	1	1	0	0	1	1
18c10ca2-b2bd-4d1a-b858-897269d25e6d	1	1	1	1	1	1	1	1	1	1	0	0	1	1
1985858b-1811-4453-92bf-a6029046c9fd	1	1	1	1	1	1	1	1	1	1	0	0	1	1
ddfb7180-4cc1-4356-a760-a797c4d198b5	1	1	1	1	1	1	1	1	1	1	0	0	1	1
62b0bf67-8880-4044-9d00-8019546ece1d	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c38bed00-d0f3-4249-a3ef-391f2fb03b72	1	1	1	1	1	1	1	1	1	1	0	0	1	1
984e7047-fe87-4c7b-a998-8d23c8f157d4	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d9907a5b-a59b-4f0e-9e88-3228c9133768	1	1	1	1	1	1	1	1	1	1	0	0	1	1
5974c0e6-8c3c-4284-a633-d7976f31cdf8	1	1	1	1	1	1	1	1	1	1	0	0	1	1
2ee0741c-132b-44c8-8637-9f41ce10e7f9	1	1	1	1	1	1	1	1	1	1	0	0	1	1
ca266c7f-c490-4801-8798-7c80a3381bec	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f4aa6339-cf5c-4987-a5c1-337c2472dade	1	1	1	1	1	1	1	1	1	1	0	0	1	1
1e3b6fb7-0e35-478a-990e-39a3ae4d8705	4	4	4	4	4	4	4	4	4	4	0	0	4	4
a9422f46-66af-4194-a0e6-53e4e81ac41e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
4d75ba6c-24dc-4023-bf3c-35a4d59f476c	8	8	8	8	8	8	8	8	8	8	0	0	8	8
b5af1a12-9035-47c2-ba8d-ecf8a46456ab	1	1	1	1	1	1	1	1	1	1	0	0	1	1
6e2ac54d-49a4-44c2-aa22-8dc32f934a82	1	1	1	1	1	1	1	1	1	1	0	0	1	1
b5dc686e-3e84-4bd4-be3a-24b29c3aac10	77	77	77	77	77	77	77	77	77	77	0	0	77	77
43a5be47-2803-4db3-a694-a866dc30219c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
2670ea22-0760-4f64-a721-21dfc80b42e5	6	6	6	6	6	6	6	6	6	6	0	0	6	6
223dedc0-5c2b-4c9d-ba26-f412062753ae	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c29b42fd-302b-4dbc-a02e-ef005373257e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
001a94e6-3f2c-4f7b-820f-0ada601ddee5	1	1	1	1	1	1	1	1	1	1	0	0	1	1
053ecc3a-f5ad-450e-b057-81f85c21f9a5	1	1	1	1	1	1	1	1	1	1	0	0	1	1
0ce94d50-d49a-4737-8296-f732b4e83258	1	1	1	1	1	1	1	1	1	1	0	0	1	1
5b406ce3-a55d-4dcc-be70-bc0184d734f5	1	1	1	1	1	1	1	1	1	1	0	0	1	1
485fefb1-bd08-46f0-aa3c-e000541ed396	4	4	4	4	4	4	4	4	4	4	0	0	4	4
3d105b9b-816c-41ae-8af5-cbdcb0fc5273	1	1	1	1	1	1	1	1	1	1	0	0	1	1
baedeba5-f05d-432b-b95d-f7343e6a2997	1	1	1	1	1	1	1	1	1	1	0	0	1	1
e9f56758-2566-4102-9718-5ddafe6e13af	1	1	1	1	1	1	1	1	1	1	0	0	1	1
7e6977c5-25e5-4cdb-a010-f3cdb36e6523	1	1	1	1	1	1	1	1	1	1	0	0	1	1
389e1aea-42be-4a15-ac6e-36121edee85e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
9adf5e6e-dac5-42d7-9dec-e8e627ad292d	5	5	5	5	5	5	5	5	5	5	0	0	5	5
d7e6c0bc-381c-4372-9bb8-a6706da39a24	1	1	1	1	1	1	1	1	1	1	0	0	1	1
1eb5da75-bf41-425e-925e-def013b9c6c6	1	1	1	1	1	1	1	1	1	1	0	0	1	1
169e5d72-6543-4327-a1d4-da9fc1ce24b6	1	1	1	1	1	1	1	1	1	1	0	0	1	1
04a97ec9-30df-4a4c-a319-903da96de674	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a6814b0a-98e4-42a3-a1e8-4d50418a429d	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d8cc795b-a9f6-4123-8838-d5d713243716	1	1	1	1	1	1	1	1	1	1	0	0	1	1
720b4cd6-ad04-46dc-bd03-6764267d54b9	1	1	1	1	1	1	1	1	1	1	0	0	1	1
3b403c68-3c20-4e53-a5d5-ac95b32b9b60	1	1	1	1	1	1	1	1	1	1	0	0	1	1
7c85c2f6-e91c-4517-8ac9-399c76ac429b	1	1	1	1	1	1	1	1	1	1	0	0	1	1
84e11101-ea1a-46b4-8f58-445835042469	1	1	1	1	1	1	1	1	1	1	0	0	1	1
076dfc00-a693-4344-b688-337a261a8505	0	0	0	0	0	0	0	0	0	0	0	0	0	0
175a1c89-e824-4903-b2aa-763ab4fce1c4	9	9	9	9	9	9	9	9	9	9	0	0	9	9
b8ebcfcd-35fa-480a-bdad-2167aaa568e0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0efd620e-f387-4c01-b560-751bde06ea10	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a10251d4-1176-46d6-86b7-9801e50eb5a6	1	1	1	1	1	1	1	1	1	1	0	0	1	1
7915e315-f0db-4cb3-8cbb-465c7401229d	1	1	1	1	1	1	1	1	1	1	0	0	1	1
475d31d8-3164-45be-8c10-7068d227a876	1	1	1	1	1	1	1	1	1	1	0	0	1	1
e6381830-9898-4130-9c8e-35fb745fe341	0	0	0	0	0	0	0	0	0	0	0	0	0	0
de44a50f-0df2-479f-86a0-4276bfd083bf	1	1	1	1	1	1	1	1	1	1	0	0	1	1
8ceb162f-5510-494d-8d4d-f2c03357d2f9	1	1	1	1	1	1	1	1	1	1	0	0	1	1
bd3cce36-bc4a-4f25-b30c-de76344a0756	1	1	1	1	1	1	1	1	1	1	0	0	1	1
625afffa-3d16-487b-8f94-64901c2c0f55	1	1	1	1	1	1	1	1	1	1	0	0	1	1
53f8d8e4-edd5-4db9-8046-27590402b8fe	1	1	1	1	1	1	1	1	1	1	0	0	1	1
905d5b29-2654-48d9-9ecd-4b3df9151f0d	1	1	1	1	1	1	1	1	1	1	0	0	1	1
ff34d4e4-bf57-4f1b-9c80-c3aca8a73848	1	1	1	1	1	1	1	1	1	1	0	0	1	1
e538032e-9a3b-424a-a21f-44850696058e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
262e61f7-fcfa-4a92-b25e-57ee28271ba6	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f9981e41-3eff-4aaa-869c-f9ad635508a9	1	1	1	1	1	1	1	1	1	1	0	0	1	1
ebdf64c4-d6c3-4052-a2e0-b2394976afe9	1	1	1	1	1	1	1	1	1	1	0	0	1	1
2fcffde1-de0c-4380-9c8c-49fb62e48f10	1	1	1	1	1	1	1	1	1	1	0	0	1	1
9a562b91-5572-4704-9187-866c595137a4	1	1	1	1	1	1	1	1	1	1	0	0	1	1
4a20dd6d-de8b-4d56-a89f-077829dab900	7	7	7	7	7	7	7	7	7	7	0	0	7	7
5558a5a1-6fb6-49a1-98c0-b33e03f2e932	1	1	1	1	1	1	1	1	1	1	0	0	1	1
10c825b1-b4d1-41c4-9fbd-e7da8ff797f5	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c4a00345-4a0a-413f-892d-b7597e11d97c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
db28d4b7-dcf3-419f-974f-35c692b30003	1	1	1	1	1	1	1	1	1	1	0	0	1	1
34c9415d-3385-4178-b1e6-f1557d8b247e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
84d51fc4-337e-4194-9776-ef0a835d19d8	1	1	1	1	1	1	1	1	1	1	0	0	1	1
72cc8e9b-d3f3-4c63-81ec-2b2000205b5a	1	1	1	1	1	1	1	1	1	1	0	0	1	1
04f1be5b-3a98-4900-aed0-d77da203ba4b	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f2ee0247-1f45-4c99-b886-08110d53adfb	1	1	1	1	1	1	1	1	1	1	0	0	1	1
00629e8c-7d39-4360-a82a-ee5256302fe0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
01af1578-abcc-4ba9-a43a-ac14c9b86652	1	1	1	1	1	1	1	1	1	1	0	0	1	1
374e246c-f5d4-4168-9dd6-39818c39eb38	1	1	1	1	1	1	1	1	1	1	0	0	1	1
7b5f13de-ac0e-4c05-97dd-ae2461d8e2d3	1	1	1	1	1	1	1	1	1	1	0	0	1	1
17404b42-3c1a-4902-8e15-64376b17a4a2	1	1	1	1	1	1	1	1	1	1	0	0	1	1
35ccdade-5914-42ca-8c12-ae4febc3d473	1	1	1	1	1	1	1	1	1	1	0	0	1	1
b6a6c6bf-3e7b-4800-97cc-caee8d6bf519	1	1	1	1	1	1	1	1	1	1	0	0	1	1
93874bc4-e86f-43e0-92de-666050c29869	0	0	0	0	0	0	0	0	0	0	0	0	0	0
e6cb5d67-dc4f-4f5a-8777-3512a8e10d3a	1	1	1	1	1	1	1	1	1	1	0	0	1	1
65f984ec-0f36-40b0-8947-eb90e8286a6c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f37265e2-a2c3-4e11-bee7-e2c0a01bb96f	1	1	1	1	1	1	1	1	1	1	0	0	1	1
3d2cbc7f-33a5-4fb7-8f5d-19e15e1f8522	1	1	1	1	1	1	1	1	1	1	0	0	1	1
3ce13d4f-61ab-4338-a7dd-7f4694ffe570	1	1	1	1	1	1	1	1	1	1	0	0	1	1
89d625a5-f556-4ddc-9dc9-e8d3288b74b1	1	1	1	1	1	1	1	1	1	1	0	0	1	1
711042b5-cb9a-4121-8bf8-18a1561cc170	1	1	1	1	1	1	1	1	1	1	0	0	1	1
01c2750d-6a62-4305-90ab-d940eee8e9d0	1	1	1	1	1	1	1	1	1	1	0	0	1	1
d8f90ced-9cdb-457b-b700-345fa8d3c00c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
fbe21a7a-1875-418b-a666-54ceced6408e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
e256c55f-7145-471e-b946-c5b7c4deaab4	1	1	1	1	1	1	1	1	1	1	0	0	1	1
08fd650e-d3e7-44f4-ad32-cdda1eada270	8	8	8	8	8	8	8	8	8	8	0	0	8	8
f2b792cb-a21c-4672-bb7e-e73eab37c717	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f8dc9fe0-1581-4094-b99a-dac5d45aa94d	1	1	1	1	1	1	1	1	1	1	0	0	1	1
c603b6a1-2880-4953-98bc-ef525d46c4f3	1	1	1	1	1	1	1	1	1	1	0	0	1	1
5d5530ad-9e55-41fa-b786-e0382b1316d8	6	6	6	6	6	6	6	6	6	6	0	0	6	6
46771fbb-038d-455a-b1ce-22757dc36705	1	1	1	1	1	1	1	1	1	1	0	0	1	1
a04a248b-6ca8-4c7b-9206-466ca10c55ea	1	1	1	1	1	1	1	1	1	1	0	0	1	1
ab9e88df-3a21-4088-b493-434f51a7b9e7	1	1	1	1	1	1	1	1	1	1	0	0	1	1
e8f6a412-08bb-4e9e-bb4f-0f4c96fd2717	1	1	1	1	1	1	1	1	1	1	0	0	1	1
845e08c1-e3ce-4ac5-8f72-25d5cd7293cb	1	1	1	1	1	1	1	1	1	1	0	0	1	1
5094d6cd-36da-46de-825a-1364a3f7f9c6	1	1	1	1	1	1	1	1	1	1	0	0	1	1
35a2640a-5694-4693-b2c4-1b5f7c138c3e	1	1	1	1	1	1	1	1	1	1	0	0	1	1
acab5b4c-e491-4d4a-88de-c12c2d823d1f	1	1	1	1	1	1	1	1	1	1	0	0	1	1
4f762cd0-4685-47f7-98a0-611a8fef157c	1	1	1	1	1	1	1	1	1	1	0	0	1	1
f71bc207-25b2-4907-ade6-5911b1f5b05b	1	1	1	1	1	1	1	1	1	1	0	0	1	1
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.languages (id, "Java", "JavaScript", "Ruby", "Python", "Cpp", "Csharp", "Golang", "TypeScript", "Dart", "Haskell", "PHP", "Swift", "Perl", "Kotlin", "Rust", "Scala", "Objective-C", "ObjectiveC") FROM stdin;
63fa2aab-e82f-4dd4-b345-bc986a6c4e48	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
b303196a-0a55-4a9b-88de-2ae4d98aa1bf	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
088cd1b4-53d1-457c-be16-6d1c14e21e3c	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
5cf2c945-3ac4-4eda-8d12-a22e570a694d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
d9a6920d-8846-4dbb-9f7b-a019a26e00b1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
8cb06f04-d72d-433d-8cbd-4bcab7f8935d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
19cc6978-2bcf-4f29-a00b-9b5445e8f59f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
76780a1e-7cf0-4f48-9b33-a7b637436bd0	4	4	4	4	4	4	4	4	4	4	4	4	4	4	4	4	0	4
94d54af8-449c-4cec-8010-a00a15ef9b70	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4625364d-d6c5-459e-83e3-3bc79dd764ed	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
5a931dd6-398b-4e27-b29f-677c264d2432	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
0a8cc91d-d591-4593-9c43-d806a4b68ca0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
58fb73d7-74b6-4610-92e2-97bc92d3bd84	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
5ac522c7-4081-42ce-bbad-6d40ef192d14	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
bfa3a4a8-ae89-4621-b377-e2222824637a	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
9b33adc7-69d6-48b8-ba35-e8e87cc92b70	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
08da6699-a4d5-405d-b7f9-11a316e25d0c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
07d0de44-4b85-4547-b802-31e8aa6201e6	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
c13f75a7-f9f5-4832-bd55-71174e850c6c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
1c7843d3-6c71-41cd-b5c9-2188d5631944	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
8687e79b-0f25-4759-898e-b297f754bf14	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
81b38980-72e1-4aaf-88c4-d4bf806c41a5	11	11	11	11	11	11	11	11	11	11	11	11	11	11	11	11	0	11
5a7a120e-0e5c-4d72-b4f1-fa3987529574	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
fe2c1821-3f7b-495d-8444-60af944c10a9	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4ee7b74e-94f1-4bc2-b707-f7e085224cc1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
5e063c78-6371-4b9f-8ea5-ece3653a9bed	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
de603559-ae49-4ac2-b960-1f509acc61a5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
234cb053-41bd-4a32-bd64-1cf87e5d7e23	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
9be6ad28-7ecc-452d-a45d-6ccf5a39201f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
17b35149-9c61-4e22-8ba0-fe8add8efa19	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
2b53df53-9b15-4f50-909f-0f9e0bcab637	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e90f13b5-b295-4015-83ec-d0c7678d4968	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
a3a98d4d-4ebf-49d7-b6a0-13cf6ccdf0b0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4a8af26d-4fe3-4c74-b500-eba1c084a36a	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
a8bb9037-0815-4462-8275-714e206dbdb5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
691e120a-3d74-429c-ae8c-893c92bcbe29	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
3cc33119-6fe2-44e2-9af4-e8e4836640ad	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
fe5d4a47-1ce9-4fef-a058-9aa9e9cb7501	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
cd95ae90-dee8-4518-8b9c-f0c0b96c249b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
648e020a-3660-4eb5-93df-30417386ed4e	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e3ed8cae-c44c-476d-90aa-6b101fc1137a	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
219551ba-3f5b-4493-bb75-952ff50f9695	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
cbf1f59c-dd87-48b8-9458-059995436f3b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
f7b86391-5e85-4f73-be73-ef053a91875c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
c80d93ab-aab0-4214-a43f-a0c96452e5a7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
2533a69e-bada-4f8f-ad34-0a70dd2e415c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e4d6aea3-99bb-4437-a46d-f5b4f5f75ea5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e8db79c6-5f11-4605-8c8c-8d831dcab825	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
59837f4b-0d6d-4edc-a6b0-bdcb6d1a36d0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e3544808-7168-4e4d-b56f-3a2ba55c0472	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
6f585125-a53f-4334-8db2-51fd8301ad3c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e48d2c31-9f57-4b51-8e5b-a925dc28e6e9	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
9b0e6128-eadf-46ec-b12f-645430819786	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4b6b441f-04fc-4118-8c7c-2a2170c2628d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b7d8833c-c36a-4ce0-9539-3d19c0358c3d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
47f65f42-b33a-47da-8eed-60ed272ab9b9	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
7a02f5b9-42cc-485f-8830-0c1ed4add430	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
0f2d3fd0-371d-422e-a95f-6be93f5d252e	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4ecbec4e-38e7-4ed6-b91f-c35ba0bcab0b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
000c7fec-5b7b-4d02-a2a7-d10654d0508a	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
a67894fa-6d08-4170-b276-037c678d3033	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
6338e8ed-cc19-495c-a129-fa392fb5660e	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e4d83561-844d-454b-a5c6-f03a81fe4a26	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
bf432f24-9cfc-43bf-aabb-b25341c0d344	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
066fc0cf-e39f-4abe-8b4e-9849f5081fd4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
59d842bc-e383-4b99-a6d6-2e84d7de2ccf	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
cdd2bc35-7a3f-495a-94c7-c2f982653c19	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
d343d0d4-50f8-4d05-86c8-e3c4b52c1ad4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e151fb42-4ad5-47af-86ba-d23986b3400f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
8373f45a-1a66-4490-a010-c430d2b2d5f5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
42bc5113-a3b7-4dbe-8611-36ffb5eb723d	12	12	12	12	12	12	12	12	12	12	12	12	12	12	12	12	0	12
e5bd895b-076f-49f0-aeb8-fd81d6664076	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
2ad08043-6f6a-4146-9ed4-798c00a5f9d8	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
091aaa35-96e8-4977-a2b6-41ea70582bce	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
196a8065-b785-4b22-bea4-c6136647dacb	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
a8694567-4b2e-4190-ba13-29283c8ef7ee	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
5a42b435-6881-4b2e-a0e8-61da32509eb5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
ec91fb8f-1843-4837-8e5e-57b866b9025f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
44583d27-7d89-433b-b8b6-85b356ab7e41	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
c1acc885-7d9b-457f-894e-a080649b3c5d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
d6efab9d-b333-4220-9c47-cbac9df25fd8	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
eb287180-5ca1-44fe-8aed-4fba08b5d668	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
67f9c840-19ca-4a7d-9089-9c14a01198d0	2	2	2	2	2	2	2	2	2	2	2	2	2	2	2	2	0	2
fb05c6f0-c539-41ba-9619-5c353fb33614	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
7e18ad21-c561-4dfe-8538-452d43b25846	2	2	2	2	2	2	2	2	2	2	2	2	2	2	2	2	0	2
f296b309-594b-4fc4-9518-d4635661ebe7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
723c9643-8efd-4bc7-b02e-c0cca7ffde4b	10	10	10	10	10	10	10	10	10	10	10	10	10	10	10	10	0	10
ac7ac2d5-13f1-4fd5-a25d-b9560cb402f5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
3afa92fe-b316-4947-8b88-37e1a9790014	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	0	5
cf444610-fdbd-40a8-9893-30b135b4a213	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
987a7a3b-77e4-4f37-b75a-a8000d377172	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
6a596b74-89ac-4f96-aacc-0f96a1391f7c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
8e3bd194-1d8f-4b3b-ad27-6215d39e61ad	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
33439dc9-c34c-4bf7-8e70-1ea2c6536af3	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
66d009df-8f9b-4289-96b8-c56000d1b1f9	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
ca6675f1-2840-474a-ab72-407f1f6a7b26	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
28d10273-708d-44c5-92d9-08de2eb8caca	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
55dde18f-8dbf-474a-8688-648b1d9ea0a5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
edb19209-f741-45de-8140-20e4930e111e	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
849cf2ab-8e64-448d-8529-98ad9ead777f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
8eceeec7-a0ab-477b-af37-0df1074a16b5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
74891d28-e62e-4205-b6f3-b27978749dda	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
f8000315-812d-41a4-8db9-27b1261f7de7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
d04a180c-d353-40da-a149-52adcd4139ed	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
69d8e2f9-e59c-4043-aebf-9840cd7f8949	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
6c8d25ac-3ae3-451c-a342-fc6a7b2e41f7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4f3b1109-57e6-41e6-afb1-f8eec693c822	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
ac0ddacf-7cc3-456b-ba0c-03eff60cfc3f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
68e831bb-b824-4db7-8e16-e161367ca909	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
1255dbd6-0a39-4562-973a-5e1f823a264b	4	4	4	4	4	4	4	4	4	4	4	4	4	4	4	4	0	4
68637775-869f-44c6-84af-a896b18816b5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	0	5
4d772383-cbc6-4d9e-b969-0d133a042f85	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
f182a257-3382-481c-9067-f1fd7379db2c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
40507846-6b1c-49eb-b41d-b3370614db9d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4e4aefc0-a7b4-46f2-bb3a-d93bda292216	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
0ab56371-427d-47ec-89b0-451783a977c4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
356aab81-dfc2-4ead-8398-456d48377b15	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
45313a4a-bb50-4134-bcc0-cfc64c53c253	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
68c6a839-4b3a-4b67-a467-550e70cf3583	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
569a3cc7-3e8f-4a2a-81c5-bf553ad3a6f1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
2407fb8c-edbc-4c7a-bdd3-723fd05f9196	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
14aa1031-3a5e-45f8-908e-1e4fb8b75056	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
046c802a-6bd7-4ef9-878c-a28d6826213b	4	4	4	4	4	4	4	4	4	4	4	4	4	4	4	4	0	4
3db031c4-735c-4b85-81a1-d96153f23591	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
85c2d05d-4c93-4f9a-a214-dd47bbe9a2ea	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
fe681548-de28-4c03-984a-7306f5637ba4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
da33ad18-81f5-42c4-8bff-d0355324455c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
a0d1216f-de3f-418c-aad6-b47839489bf5	38	38	38	38	38	38	38	38	38	38	38	38	38	38	38	38	0	38
8c11acb4-92cf-42f3-b083-c1a7bcebdeb7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
ccf95e1a-b8d1-4fbb-a20d-ff70b06f120e	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b8ee4196-b62e-4839-b15e-6ee067bc0669	3	3	3	3	3	3	3	3	3	3	3	3	3	3	3	3	0	3
53ce8f80-97f5-448a-8786-d0d6cf22a7ba	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
028773c2-6514-45ef-a20f-f2a266b82937	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
6644946c-7c8b-4bbe-a059-863cc2d6bf7d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
0cf89639-8f68-48b8-b450-45ff09432f9d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
ca640035-c3e2-4836-a84d-60ed55f2a3aa	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b03def9d-c997-4b96-b80d-73fd7e46bc40	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
bcf444b1-fc1b-4878-9246-ca75467b902f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
8ca6d52f-936a-485a-8c80-2f68526eaffd	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
324b5111-6a31-4729-85ff-28910d2339ed	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
73fabdd9-17ad-4b72-b6d2-14040ebcc47d	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	0	5
c4ae5949-f25d-470c-b489-b3092765903e	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
6ab7ac3b-0859-40e1-8f59-734ff673082f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
eaf98a9b-cf40-417f-97b4-d0ce5c528228	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
d0a3a2e2-19f9-4804-a83b-36012b13ace2	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
76a17c00-9256-47f4-a89c-9f00a4d20a95	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
d966b8b5-2104-4a83-b014-da95a4993a43	6	6	6	6	6	6	6	6	6	6	6	6	6	6	6	6	0	6
170567fe-779d-41c4-978b-7c6f90fbbe49	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
96fe36fc-96b7-438b-883b-768a8f3e7324	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
ff9d3f22-589f-4214-9ed8-efb5ba0fe09b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
05015e02-3318-40b3-a124-c97dc47f8c46	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
af9d5218-db3b-45dd-baa6-c891775a86b3	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
7294d0ea-1dbb-4edc-b14b-a6863a117c41	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
174f418a-91df-4735-ab67-a246e16c74f4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
afefb4f5-0bd0-41d3-b6f3-044b3ddee6c5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
15b0735d-6059-474c-be0e-4069157af585	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
a1b9ea91-c201-4d7e-84c9-27ce276e346a	8	8	8	8	8	8	8	8	8	8	8	8	8	8	8	8	0	8
7cf4d9d6-d1c2-4797-a707-8cdf70d064fd	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
052676a3-663d-4131-9d0f-8ee9ad5305c6	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4237d9c8-9491-42c8-a817-a01eac2d917b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
48655a57-a6a6-4df6-9a28-ead285f17da5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
6a0d0eb4-0c05-4d5e-a308-4d0631578724	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
08a454c3-6a3d-4418-bc65-e050d88feafd	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e28af9a4-fd1c-463a-9d2b-3f5ca8cb899a	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
f9883907-44df-40e2-b4f1-e207a4cb4ac2	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
60c8e9b7-5910-4f9a-8f4d-97af3de2032d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
81f967d9-950b-40ba-91f7-c7e2ff5f00b4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
d7962179-c42d-4e87-869f-4b297c0187dd	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
643c0fd3-e8b1-4cf3-a6b6-50581a0cf684	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
a7bdd585-42ee-4c85-9ba8-f4d7106075a5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
88b5f6b0-87a2-4332-a6d7-d63ecd006d67	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
429d5878-5392-4b3c-b016-94453c21ea48	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b340b1a0-ef61-4b71-b2c3-e1cebd04a981	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
771ab874-e3af-4da0-9fd5-549e55e96bd3	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
62c13b71-20e1-4baa-bfc4-edfa9332ba2a	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
6caa0523-3b29-43a2-a11e-68c00092b279	3	3	3	3	3	3	3	3	3	3	3	3	3	3	3	3	0	3
ced20c0b-fc3e-4cfa-8eb6-26039b60aaf7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
6e8aee7b-d115-4618-beb0-bb37b42cc0e4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
6291b0c2-72cb-4215-9456-edb388e1fe5f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
dbeab8a3-2d11-4c8b-a019-c27cb3faf48d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
da145671-c253-4ad1-91d7-6deb030837d9	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
7a6a2e62-ccbe-4b4d-b6a4-81bc39b15e95	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
250c5bc1-5a51-4317-9f5e-7da96798b487	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
f1b4d811-dfa6-4be3-a046-7430af18ad23	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
9c189574-d90a-4c46-9845-31ee6ca91b06	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
1465ef76-5c60-475e-86c9-458a5fc38f24	4	4	4	4	4	4	4	4	4	4	4	4	4	4	4	4	0	4
4b3e249b-9bf7-4170-be96-2dd3822dabe7	3	3	3	3	3	3	3	3	3	3	3	3	3	3	3	3	0	3
a94d913e-afe0-441a-9bdd-0e298829c43d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
41effb1f-ce9b-457e-9e2f-8857506597fa	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
2146ffd7-f419-47af-8198-b823d1dc9ce2	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
0f879bea-1070-46b5-b346-fc13b093a05c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
43a6009d-de46-4819-82a2-bc1702bc0522	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
dac42517-29bf-421f-bd31-579670a86acc	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
73bec132-4534-4ede-b686-8d5ce6a8919f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
2adb170d-aed5-4194-a3a8-0adc9dfd27a9	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
317a74f4-a4dc-4afd-9eba-35c5778529f0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
71cdff44-7633-40e3-ac2a-4feb49d9c419	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
a590767c-e80b-4aca-b408-77807ed30072	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
8172af92-9879-4b61-891d-9a6fee30eb00	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
39bdaefc-54ac-4bd6-985e-ebcf34218db6	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
11c2a518-b06f-4a74-b588-3cd855114ed7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
f3883f65-56a3-4bef-a62f-5ee14ff7b0da	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b87b1bea-ec9d-4816-8212-2e1fd0181fe5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
7699e7a1-c396-4df2-8fdd-5a9160a76cb7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
17587535-9c85-49e5-a75d-1761dd565bf3	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4a095228-c9c9-4d90-9bc2-6d74b9d0c27c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
a8648c48-8423-467f-8e58-cd11b2b15b61	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
09538b57-9d39-40b7-97e6-06db0b8cc240	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
800ab4a9-8ea7-4fd0-9fbf-7164da81552c	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
3e094d89-da8c-420c-9d2f-3892e90d0b41	7	7	7	7	7	7	7	7	7	7	7	7	7	7	7	7	0	7
443981f1-1904-493b-93ba-f4c456546ee4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
68d1d87e-40bd-4853-a07c-8511232b1fd6	6	6	6	6	6	6	6	6	6	6	6	6	6	6	6	6	0	6
bdc51543-f52e-4182-9047-6288e7136866	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
7394863a-6eeb-4037-9bcb-9c4a1c5cb869	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
3be9aaa3-a250-4b89-99e9-d3b84723fea2	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
fcbffede-aeae-4cdb-a4f4-16980fbec31b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4aaf19dd-052e-4135-8b10-4630e9676b9d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
d82af80b-ba3e-4717-80a6-a114666f49c7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
0f148ddd-776b-47f4-8e09-4cd44df98d5a	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
8db7d6fd-2ec2-42f8-9dcf-a5074cc88c72	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
5ffec482-6a44-46fe-9af3-682fc85016e8	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
5ebc2dc0-932d-4274-93f1-1e8728bcd429	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
ee77e36d-55db-4961-a287-a2d9444dbf61	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
df5cd20b-b7c9-4137-b71c-e206f2be429a	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
bf744903-a32f-469b-97e2-772f321abfa1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
0808d663-5148-43ed-bd94-2a10227d8a90	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
acc8b6f3-2599-4ec0-9985-fb2061da4a78	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
19cd3733-20be-4477-9cb6-c6a9598ecaa4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
2be9203b-f219-44c7-8a26-d4afbb8273ee	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
27600704-2f90-4230-99aa-0b9942489f2b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
2f3e6717-95a9-4ac9-a164-49de6bb09d9f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
c510b92a-5e79-40c4-aaa6-2aa8c000660d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
834d52dc-1953-49df-b508-6ea741952028	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
130e0380-03c0-4c27-bf1d-d97272cdbabc	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
0f0b710a-c434-43af-9452-b69dd174b907	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
34402370-a89c-4c3b-b040-b70e7f6ac6f2	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
22a94b73-9a92-4257-941e-20010484a221	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
20364a9d-937b-4cdd-b4b1-8bbf7b6827f1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
9be285a6-abfc-4c33-9f48-31660c45e727	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
0c4541ad-29cd-4e19-a4e2-c714a42c6c1a	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
8de31f24-08da-4af6-abb3-9cd945c0b97c	6	6	6	6	6	6	6	6	6	6	6	6	6	6	6	6	0	6
c5eb2dc5-6a38-4820-b325-03a565d9040c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
cdd61cb8-4631-4936-becd-e3ce0065dfdd	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
1d2980a7-5597-49bb-aa74-64f76cd0ff8e	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
463b26a7-0309-4db0-a930-08ee0d9ca486	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
eb11824b-bd56-4107-a550-b274226d7acd	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
223cd1e2-a4b6-4917-bf10-f82fc000b5cb	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
62c8935c-fbb2-4d1b-af21-8e78a75b65ce	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
06c77b20-ad97-4629-b086-5b99e1490bde	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
d3c6fb39-3123-4591-95d2-3adf4205e386	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e85931c9-2049-4de8-ab9d-a99262ba3bc0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
ce928718-0403-4f84-8f1e-23077ee04596	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
ad03f2fa-7765-4f4c-95f5-43d1fbaf63ef	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
64cdd0c1-4068-4039-9ba9-daac61eeb598	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
5a3f171a-6467-44af-bdc3-dfe333939f04	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
99bce7cf-e767-4c3b-87ab-44dcc9925240	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
bd545388-e3af-4dd7-993f-7c16e483137d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
279321c1-9fc4-4a8b-9601-a60930f08603	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
7fdabf33-cfbb-4694-b375-38fb4738d65c	332	332	332	332	332	332	332	332	332	332	332	332	332	332	332	332	0	332
d35285a5-f0a6-4b59-9fb3-7481c8d7f764	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
acf2567d-06bc-4d0c-a81f-df08e603b29b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
baf8edc6-38be-455b-97c9-f079e91fd6ec	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
67277139-65ac-4eae-846c-d7ac4630df30	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
2307ede3-c36b-4647-88c8-13bf518a1bc2	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
87d17aee-a302-4525-ac88-2a4c7b039abc	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
20957652-fd15-46ed-afef-8f7e2f5dff2d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
1e16056c-d6bc-4e36-9cbc-f2fd30c50d92	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b72f451c-995b-408b-975c-264592de6fb2	26	26	26	26	26	26	26	26	26	26	26	26	26	26	26	26	0	26
22aa01bc-0b6a-4baf-a28f-afb22ae23df6	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
41a53138-c51a-4186-b0f0-8f8bea8c5c63	9	9	9	9	9	9	9	9	9	9	9	9	9	9	9	9	0	9
7680bcb9-fcc6-424e-9970-d751fa74669d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
30b50584-a9b7-43f2-83e3-17594163abd3	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
7614bd58-4b43-47a1-9f51-d921de366698	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b6571079-b3b8-4338-9d4c-5e337bc46c60	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
5d8ad02d-c707-4c39-915a-9eea6c23385e	3	3	3	3	3	3	3	3	3	3	3	3	3	3	3	3	0	3
a5a09b27-1d01-4f45-abc9-0d0dc4df7345	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
90efd886-50c6-41ad-8394-692b6f0aa97c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e3f04022-b82c-40e0-9422-4425d06fbb41	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
94c72673-12b0-42a8-b541-9710c98cd7ac	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
6f067bba-f4c5-47b9-b207-65f72a3f79c0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
bb1f5c1b-b95f-423d-9426-6d5e79715415	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
02e403ef-5c66-444c-a98f-6c46cffaeb9f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
80414dd7-1cb4-4ac0-ba7a-4d1c212d5ce4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
26151b87-ac34-454a-9472-813ed52fd73a	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
c846912e-7160-4527-a62b-d132b4c27bc7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
051a806d-696e-4e33-a2ad-88fea89fe9a1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
989ed3c5-b006-4585-a4ec-3dac71feb985	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
d981206e-c62c-4d2f-aa27-9ada1a2af9b7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
f9297cb7-f01a-4365-b3fb-d6594f7183c2	4	4	4	4	4	4	4	4	4	4	4	4	4	4	4	4	0	4
c59bd5a2-2884-49ec-a53a-b1b61f2ee45d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
3af45dce-078d-4668-b86d-02548c475668	8	8	8	8	8	8	8	8	8	8	8	8	8	8	8	8	0	8
9766ce91-c425-4b8f-9657-0329e080f9b0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
f8255431-b561-4fe1-a028-0a258c11b9e3	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b72be430-0bab-431d-9f5a-7f46621b2fac	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b6ce9ca0-84b5-4b7a-85cb-9d4fa38dae8b	77	77	77	77	77	77	77	77	77	77	77	77	77	77	77	77	0	77
609f8e56-0fb5-4a94-9b63-05e3d9782a04	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
bea6e0b9-6963-4ab2-b84d-d7154ed3c053	6	6	6	6	6	6	6	6	6	6	6	6	6	6	6	6	0	6
00a5e77c-9291-4ffd-aedc-ffbc9e617d18	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
3f5b9899-4857-43da-9f83-f135c70ddb87	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
66d9dd9d-0090-43a0-9688-138415e8d42a	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
60f00d1b-d140-4d35-bb7a-8bf3c9601c66	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
f67a3d3f-c19a-4ce7-a6ab-aeeee9731a3b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
05f9aaef-3cb2-4562-86dc-067edcc7ccf1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4d8f0ae6-4c72-40cb-aac1-62c35a21d9c6	4	4	4	4	4	4	4	4	4	4	4	4	4	4	4	4	0	4
5bd40bed-ce42-4690-80ef-8946e317407c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
59f4368e-e9ab-46c8-a4aa-57a64875c717	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
5be339bf-185c-4134-8c6a-320219e56047	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
5f17e726-6319-4858-82b4-6c4a5ed8a8af	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
a24db46e-f101-49d8-84c6-ad8107dc61da	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
ac9b3859-c79b-466a-8fdd-c004b2710ddb	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	0	5
be15219a-4fbc-48e3-9a75-c0ffe6799c6f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e69f69d3-8787-4875-8530-0e2f6ac587cd	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4f7b2cc4-a3ad-46ab-80dc-2979b59bb921	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
653e2b10-026a-46c6-aefa-f65b06b6890c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
595fe8e4-51e1-4e58-b0a4-6d62de7a07dc	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
7632121a-dc1a-40c8-b04a-8bed280e3b62	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
88bf3950-d01d-4212-815d-22042f6638cb	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
35960f78-d5b2-4231-9d43-a00ca53b4ec5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
53c7819e-9443-445d-ab8c-a6720fffa8bf	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
57b2d0fb-5ab3-4712-a945-3b4f163825ee	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
86a3d5fd-20ed-473a-8319-876d95afd950	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
15281ab4-4551-4c3a-9476-1d8a04376e4f	9	9	9	9	9	9	9	9	9	9	9	9	9	9	9	9	0	9
bc0b95d4-d237-437d-8525-7896d7292fcd	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
74d836f8-b385-423c-b520-7cdebeb746c3	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
6ce9ad44-3174-4638-93ea-6778b0e43887	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
a96275ca-b02a-4838-a858-0d7054cda47b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
bb3f5477-5d68-4ee9-a1d0-925a3f757173	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
69dde54b-0951-49d3-a784-fc5247c4b0fe	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
31edfc21-6eda-4ffa-b628-61c8d2672388	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
d54dd211-1bf6-4d4c-9551-93af91d5c264	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
54f5bb3e-44cc-4707-9a5b-b5b5070f620b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
9befe06c-0687-44a0-a309-ce63f91e55ec	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
261b7da9-e064-4b20-a5b7-ce515cdb82d9	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
278a441d-5883-466f-a376-7157276d838d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
39a96545-1b0a-46c3-920d-cf550bb2856f	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
fc9f6e12-109d-4b03-a833-41a32fd09a3b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
1c1d7f7b-a5c4-438a-ac49-771a56cf82c7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b2a63b4f-1779-4046-8af8-9c1c93dcf3b5	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
21fd3b15-55b0-4052-8cc4-6f42768f7930	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
c606d3e2-1d43-49a8-a32e-1d824a17bd5b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
854b9fd4-e62a-4d0f-accb-acdf53f1df9d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
4b079779-f086-4455-9ee4-e6113c7e8df8	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
5263dcfb-72de-486c-bdba-209c559b820e	7	7	7	7	7	7	7	7	7	7	7	7	7	7	7	7	0	7
f562e087-77f0-4912-95c8-3fd841b21c65	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
639d6bf3-8f22-4cc3-9c27-52d7d507df22	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
62176253-33e3-43da-80fe-bd97e210a945	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
66f8c9f3-d7da-4859-9236-9b670869c9d4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
0d5d4bc9-8cce-4bbd-adfd-8bd9f21f7fbe	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
caea3b9e-a973-4fe5-a075-727b093fa366	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
20ce6272-7a0c-4481-a16c-1c95d724df05	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
9bddc955-37c2-49af-be13-a2ddf995370c	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
f231b603-b0f7-43a9-b72c-8dadc9bf0dff	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b8564494-b4a9-4b02-870e-9d60f679e542	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b6ebc3a9-907c-4b19-bdcb-750dcbb28d77	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
dda8a876-52e4-4841-9d03-6cdac9ac5f4a	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
1dc0a2dd-eb3a-41df-a64b-a74580ad141e	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
1922d557-6b14-46c7-86a4-8d239944c5be	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
3afeecd2-0bc8-4d11-beb0-6ce44f6e1e44	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
cae6e787-32e7-479a-a7ea-094877972a57	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
dac267ae-abfd-4da4-89a4-9dc21d7dd5be	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
d4cc3935-a62b-4590-a402-68c0b0d525dc	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
87ae880b-8bcf-4466-99fe-3f0d2b40b95b	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
05987eb2-0b2d-4227-ac6f-03b8205ca119	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
72e86f31-6664-42d2-bb5e-4de76a4ce0da	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
11acb497-1496-4e0a-bb05-dfb09e495f15	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
ba4cb77c-dce6-4a9f-92d1-d148fa9a77b7	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
12aaa006-e261-4ac8-a40e-2b579e1c219d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
dd4710a8-6e9e-4c2a-a19e-a577ed5d5fa4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
b08bbc46-043b-412d-af81-b2a2ae0891e9	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
42d9ac86-9ba1-4ba0-9dcc-f9ea21ae9625	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
fe716d79-4f3d-41a3-921d-36af4d7de4d2	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
0785a942-32c4-4004-913c-76c2488b54e4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e4547667-8b2c-4f78-86ce-1ccdf882d245	8	8	8	8	8	8	8	8	8	8	8	8	8	8	8	8	0	8
5167817e-2534-4bc9-8fda-678c591400b8	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
5bc521ea-1e37-4531-ae2c-bc8376051be1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
a4e47c38-86cf-4af8-be80-e9476aded500	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
1dee6733-3af2-4c5d-aa46-1a0f9a34ffc1	6	6	6	6	6	6	6	6	6	6	6	6	6	6	6	6	0	6
4d2f3c2e-7eb3-4420-b055-9fe907d95001	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
90aa59b9-b9d3-4883-92f9-189cacdb45a8	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
da96deb6-58e0-4dd4-bfe8-bafc15887993	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
3479f13b-846d-477c-b4ad-e1098078d4b0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
e679cd0a-ce78-483b-a478-21d8b84520a9	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
774fca15-5874-4e67-acf2-cddbb7327d62	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
88a413f2-6d3f-46ba-9216-fa180f2b4e2d	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
315e1ea8-4a87-45d2-9565-b927214d04ae	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
7d8a3e47-b352-4247-b241-d3930e204fc6	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
024ab775-7007-4743-bdc7-5f0d2d8fcbe9	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1
\.


--
-- Data for Name: location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.location (id, name, type, "languagesId", "frameworksId") FROM stdin;
df1b6394-802a-4213-8c41-b45e9d196fc9	AA	1	63fa2aab-e82f-4dd4-b345-bc986a6c4e48	9706cbac-8176-4eb3-917e-2ac9e88c1a7d
46350020-b757-41b8-8f24-edf756b6161f	AE	1	b303196a-0a55-4a9b-88de-2ae4d98aa1bf	79a59690-15ab-4966-8b57-f46e2ee7a9e2
68a136db-1e31-4b19-ba43-e86fb2323c04	AP	1	088cd1b4-53d1-457c-be16-6d1c14e21e3c	135964c0-2fcc-444c-b065-272082f2c842
4ff16a5f-707d-4e54-85a3-f532f48dd7b1	Birmingham, AL	2	5cf2c945-3ac4-4eda-8d12-a22e570a694d	e97b2730-602a-4207-b1e8-071c68f04025
76e38a4f-d600-4605-b5cf-19b9bc5481f7	Huntsville, AL	2	d9a6920d-8846-4dbb-9f7b-a019a26e00b1	16098eda-ec04-4456-8183-60dd909ba5af
26c6416f-2834-4595-bced-f0fe7475a2f2	Mobile, AL	2	8cb06f04-d72d-433d-8cbd-4bcab7f8935d	fd22d08b-377a-4341-ba5d-aca2562dd682
889b2e01-f27d-48ed-95ab-5e120a7ea80a	Montgomery, AL	2	19cc6978-2bcf-4f29-a00b-9b5445e8f59f	a7197562-ea55-4c62-b877-aa43c4914454
a3c6d985-00f7-46d3-bed4-3c3738a124f1	Alabama	1	76780a1e-7cf0-4f48-9b33-a7b637436bd0	5df05d46-d2c9-4eda-9594-9e8859428d47
64cf81cc-0680-47c6-ab64-07dec2109170	Anchorage, AK	2	94d54af8-449c-4cec-8010-a00a15ef9b70	d69e0158-8982-49ff-bd7d-d2f5d3bb2277
3592c85e-70b0-4467-936a-dc25527b1b2c	Alaska	1	4625364d-d6c5-459e-83e3-3bc79dd764ed	4596e755-d5cf-4d71-a32c-b841428ef00e
8070d297-6451-48c2-80ce-1a4df11ee61d	Chandler, AZ	2	5a931dd6-398b-4e27-b29f-677c264d2432	4ed405a8-9b51-4115-a26a-b4e5a74858ff
dbd37e4e-a420-4e43-814c-c48db48a060f	Gilbert, AZ	2	0a8cc91d-d591-4593-9c43-d806a4b68ca0	05f21403-32b9-4ff6-b986-9fcb35a6c60c
4c863cdd-a711-4ba7-b143-245fe5431e31	Glendale, AZ	2	58fb73d7-74b6-4610-92e2-97bc92d3bd84	d0c6d83b-1b16-4715-ab8a-10d609669508
39a145cc-4d84-4af9-91b9-729b1b9642a4	Mesa, AZ	2	5ac522c7-4081-42ce-bbad-6d40ef192d14	1ca7960d-c0b6-45f9-850b-ab844bc76e39
23b2ab57-d148-44d9-b4f9-64f20658db4d	Peoria, AZ	2	bfa3a4a8-ae89-4621-b377-e2222824637a	246c9456-f898-4fe3-af06-bd7446d122a1
fc241c61-cdcf-49b2-b61e-ef0327624629	Phoenix, AZ	2	9b33adc7-69d6-48b8-ba35-e8e87cc92b70	0d36defe-b928-4f5d-aa23-2796b17c7bdd
8d76253c-43b8-417a-9ab4-4ef4553affea	Scottsdale, AZ	2	08da6699-a4d5-405d-b7f9-11a316e25d0c	c62c1ba5-0cdb-4d2b-bd3a-7538ff50555c
f424117c-86a5-45f8-a3f6-feee0e4a858e	Surprise, AZ	2	07d0de44-4b85-4547-b802-31e8aa6201e6	97321373-da75-4d42-9587-500e894ab434
c2b08406-9791-4ddc-8ce2-9c9ee9599a79	Tempe, AZ	2	c13f75a7-f9f5-4832-bd55-71174e850c6c	c8ece6e0-f8ed-4ad1-9077-316a4874b082
e2f2fbca-41be-4df4-9bf6-ed0b60b998c9	Tempe Junction, AZ	2	1c7843d3-6c71-41cd-b5c9-2188d5631944	e4653eb1-4078-4e5a-87cc-3f86c6f5eb99
d9b11c66-1c17-4195-b9e2-3883a1ce8169	Tucson, AZ	2	8687e79b-0f25-4759-898e-b297f754bf14	28415f60-3f79-490b-a253-ccd0ba200a5d
52a24cf9-9114-4c29-bb74-6d8feb2245fa	Arizona	1	81b38980-72e1-4aaf-88c4-d4bf806c41a5	6e6d0f44-3130-4ba8-b896-f62ad6b5946b
10f890d7-1718-4c2d-bb02-13a2e927b8c9	Little Rock, AR	2	5a7a120e-0e5c-4d72-b4f1-fa3987529574	7d9afad4-03a3-4258-a51f-f48385e181ee
e77456b2-43e1-434d-9015-0920577ce48f	Arkansas	1	fe2c1821-3f7b-495d-8444-60af944c10a9	c42d4cf1-261f-4c6d-83ad-8a0efda6754c
abe6152a-88d9-4210-a739-351d5fe229c0	Anaheim, CA	2	4ee7b74e-94f1-4bc2-b707-f7e085224cc1	49d4c793-cac4-45a8-8c71-0b9d3c3992df
93090b20-eb79-480f-8f6b-cd06f753413a	Antioch, CA	2	5e063c78-6371-4b9f-8ea5-ece3653a9bed	05b6d808-691f-48d1-a733-5794837ef5b7
362f0345-392c-407e-9968-98dfb0d8380f	Bakersfield, CA	2	de603559-ae49-4ac2-b960-1f509acc61a5	d09fca2c-7fc1-42dc-83e2-51141da77737
50eaf572-391a-4c3a-8eed-f62bba1597f5	Berkeley, CA	2	234cb053-41bd-4a32-bd64-1cf87e5d7e23	b1a079d5-ecfc-4680-bdb5-becb0a62bde7
700d735f-f8a9-4dc1-8182-5d4de8bd7dfd	Burbank, CA	2	9be6ad28-7ecc-452d-a45d-6ccf5a39201f	c9422381-5308-495a-a7c8-d445793c5273
f107605c-296f-47ac-88cc-0b8bd7904316	Carlsbad, CA	2	17b35149-9c61-4e22-8ba0-fe8add8efa19	32464d34-10b7-4fc8-99aa-ca53174e778a
af896638-f44b-4d23-8857-e369d18dff72	Chula Vista, CA	2	2b53df53-9b15-4f50-909f-0f9e0bcab637	53a4b858-38a0-4da9-9521-e8d1ebde8cb2
be1841af-6e8f-4612-81ee-2ceb5c41dfb0	Clovis, CA	2	e90f13b5-b295-4015-83ec-d0c7678d4968	534ad2b3-a723-4bfa-b276-ec4706b7c934
1bfac8c3-812a-4ca4-8d8a-bd3875b50186	Concord, CA	2	a3a98d4d-4ebf-49d7-b6a0-13cf6ccdf0b0	0776e97f-60f1-4d90-b12e-43e7c3da36a4
470f5a58-b066-45ca-9ba8-e641b8ef25bb	Corona, CA	2	4a8af26d-4fe3-4c74-b500-eba1c084a36a	58d99149-a3a9-47ab-9c18-9bb76580b222
6c563750-1587-4c1c-8df9-f2f8f0162b77	Costa Mesa, CA	2	a8bb9037-0815-4462-8275-714e206dbdb5	a1a5ecb9-8c8f-4264-aecb-5a87e635bb12
d5e03f03-c79c-4006-91f0-0331035c2a6b	West Covina, CA	2	691e120a-3d74-429c-ae8c-893c92bcbe29	d23ab7bb-3408-48b8-8f7a-c1bddd0abe62
1b1fe650-bb04-49c4-aa57-d953b903566a	Daly City, CA	2	3cc33119-6fe2-44e2-9af4-e8e4836640ad	1e0646cc-b1e6-4272-bd17-6930e53f7657
2bc3bbba-d3bf-4dcb-ab95-c4ec2ee9997e	Downey, CA	2	fe5d4a47-1ce9-4fef-a058-9aa9e9cb7501	88a32ba7-a9e1-4469-b6a5-9fee0d7ce226
75dd6174-fa80-460a-94a0-f2feb52b287a	El Cajon, CA	2	cd95ae90-dee8-4518-8b9c-f0c0b96c249b	a64b1385-ed30-442a-bae8-9bffb3120eb8
f86b26a9-7f0c-478a-b812-caee5f33452d	El Monte, CA	2	648e020a-3660-4eb5-93df-30417386ed4e	fa2c0a55-f80d-43fa-b2f1-8bd7354ee36c
9b7ead9f-cf81-4e31-a190-a5d17f7ce5f7	Elk Grove, CA	2	e3ed8cae-c44c-476d-90aa-6b101fc1137a	681bb103-f674-4c33-8cec-f2ac51c51bc2
c5687dcb-8358-4b29-bc02-a4dbe2aa7868	Escondido, CA	2	219551ba-3f5b-4493-bb75-952ff50f9695	dfd66971-a560-48da-b7ec-7b3aaf8152d9
4f97f0f3-b5a6-48c7-a7d4-fd8fc296b2a9	Fairfield, CA	2	cbf1f59c-dd87-48b8-9458-059995436f3b	c425a509-d8f4-4a6e-ae2d-5b477ac0ed4e
0126214e-d634-4bfb-bc88-2c875ed5b157	Fontana, CA	2	f7b86391-5e85-4f73-be73-ef053a91875c	b5c3b3e7-73c5-4eb5-96b0-1160fffabc60
06c52ee5-b5bb-4a3f-9077-675c58ae068a	Fremont, CA	2	c80d93ab-aab0-4214-a43f-a0c96452e5a7	5569fd17-d685-4366-915e-186e3576ca4c
830de84c-752b-42be-8f16-d33e9ba130c1	Fresno, CA	2	2533a69e-bada-4f8f-ad34-0a70dd2e415c	9016339d-0739-4413-ae52-43decd7265dc
3aeed649-e0ab-4c95-b36e-c468fa544c64	Fullerton, CA	2	e4d6aea3-99bb-4437-a46d-f5b4f5f75ea5	085b33f3-18ad-485e-9542-e0aac73a1124
50318621-0516-4f15-96d4-e4fee54ec8ff	Garden Grove, CA	2	e8db79c6-5f11-4605-8c8c-8d831dcab825	e6c36f32-82c6-44ff-b03b-43423f025b86
6dd020c8-0699-4c07-b722-241e6a9bbe3d	Glendale, CA	2	59837f4b-0d6d-4edc-a6b0-bdcb6d1a36d0	17671a0e-99a4-45f7-b5c9-e1c001ee1c44
b6ceccec-6e5f-4706-b766-b7e1fe69255b	Hayward, CA	2	e3544808-7168-4e4d-b56f-3a2ba55c0472	d7449191-8e74-4b8c-bc95-0605ee33e5b3
11d5c670-2b58-48ac-b980-e87050076896	Hollywood, CA	2	6f585125-a53f-4334-8db2-51fd8301ad3c	15572a7a-fda0-4957-b6d4-ef23ee6e5e41
19b74425-206c-4ca2-9e0a-d2f0ccd854c7	Huntington Beach, CA	2	e48d2c31-9f57-4b51-8e5b-a925dc28e6e9	5e9161b1-6df2-4694-ab0c-5c20ebf2f729
b7b9c02c-e4a7-4af8-92e1-fc1d7a075116	Inglewood, CA	2	9b0e6128-eadf-46ec-b12f-645430819786	09db84e0-40d7-4214-9e86-a48ab1ee70cb
c5ca8978-3396-4b7e-a101-f691d8c8c96b	Irvine, CA	2	4b6b441f-04fc-4118-8c7c-2a2170c2628d	87979ad8-f06c-4c8f-a859-24974e5b4f10
2a054ac6-56c3-43d9-bc21-7426fa863b0c	Lancaster, CA	2	b7d8833c-c36a-4ce0-9539-3d19c0358c3d	a979e28f-b5ab-4ad0-8a8f-2c2044573ebc
f780fc5f-a0a4-41af-b4e1-60ef99eb87fc	Long Beach, CA	2	47f65f42-b33a-47da-8eed-60ed272ab9b9	841bdd0b-96f7-4a51-8684-3b738c3b3e58
3580949a-7d2f-4370-8c8d-237e2c3cc7d4	East Los Angeles, CA	2	7a02f5b9-42cc-485f-8830-0c1ed4add430	5a42ada1-83db-4d21-9762-05467200fc0e
0813c66c-909f-4f70-9111-81627b4d8c72	Los Angeles, CA	2	0f2d3fd0-371d-422e-a95f-6be93f5d252e	8ffc23cc-5c12-4a9d-9a6a-d5c443de81f3
bc4b1d4d-754c-4bf0-9d0e-2926fba6dcd2	Modesto, CA	2	4ecbec4e-38e7-4ed6-b91f-c35ba0bcab0b	da3f6327-9297-46a9-8d5d-cdfc51f74d9f
676aaf65-f159-4f22-9e2e-65fd7cce950e	Moreno Valley, CA	2	000c7fec-5b7b-4d02-a2a7-d10654d0508a	9fcd9d4e-6d01-45e7-b3b1-520383f0fec0
fc61fd15-bc2c-4be0-9376-9cd9f8428264	Murrieta, CA	2	a67894fa-6d08-4170-b276-037c678d3033	23d2e3a2-2810-4b71-b80d-d98669316b3b
e359a755-dc11-465f-9016-dd10dc27a82b	Norwalk, CA	2	6338e8ed-cc19-495c-a129-fa392fb5660e	09e4550c-7691-4839-b7d5-2ae9de2475fe
c9573c24-a993-49a0-b91e-176799d6cf1b	Oakland, CA	2	e4d83561-844d-454b-a5c6-f03a81fe4a26	94a24437-9f07-4003-8ab4-dc3f8eab5f93
ca590d69-7701-4610-b330-b17466ca9c3e	Oceanside, CA	2	bf432f24-9cfc-43bf-aabb-b25341c0d344	a42ff08a-38cc-4267-a0de-150c547bca64
5ed11ef8-a644-4169-b36d-517a745b109c	Ontario, CA	2	066fc0cf-e39f-4abe-8b4e-9849f5081fd4	acb8c90a-d281-4928-851c-33ff6519a8f0
e21c6556-d1f6-4f33-bd08-83e2027585e5	Orange, CA	2	59d842bc-e383-4b99-a6d6-2e84d7de2ccf	88e05f28-e3fe-4de9-b280-46731562fe90
a238dd9e-2c1f-4cd5-8422-2a6208f1f6f6	Oxnard, CA	2	edb19209-f741-45de-8140-20e4930e111e	0e96e6cd-9251-4ea1-9d02-fbc1aa4f126c
6f4d128d-cfd1-412e-9a45-1c49936a1276	Palmdale, CA	2	53ce8f80-97f5-448a-8786-d0d6cf22a7ba	132e5c63-ccfd-416f-923d-afdef000c1b0
0fe0de1d-5c56-4a22-ba8c-6124689036ad	Pasadena, CA	2	f9883907-44df-40e2-b4f1-e207a4cb4ac2	22b70192-d5f4-45a9-ab59-62e5fb013e08
1f46f502-fc03-4784-a8bb-2fd3167d95c5	Pomona, CA	2	317a74f4-a4dc-4afd-9eba-35c5778529f0	7e37068f-6377-4f14-955a-19bbe2baacdd
b8d176dd-73d8-4843-99c1-308abaa91c1b	Rancho Cucamonga, CA	2	2be9203b-f219-44c7-8a26-d4afbb8273ee	3f78b47a-f0b6-4d3c-af79-81bb72fcf5d1
07aee3de-d849-48c3-a987-82f9ebb6833d	Rialto, CA	2	d35285a5-f0a6-4b59-9fb3-7481c8d7f764	8e26ad71-f2ca-4b69-92be-9679fc7afef2
ee3e49ce-6936-42ac-a331-54746063c94d	Richmond, CA	2	9766ce91-c425-4b8f-9657-0329e080f9b0	f4895e9d-2493-4822-be6e-3835a667556b
b4b6c445-6c56-4eec-bdc5-ffe1e4660811	Riverside, CA	2	74d836f8-b385-423c-b520-7cdebeb746c3	79e56f9e-219a-438f-b54f-6a8b4ce0fc6c
19b48479-214e-4c92-8195-402a243e248f	Roseville, CA	2	1dc0a2dd-eb3a-41df-a64b-a74580ad141e	488ace88-7055-4384-a09f-c680c94faa5b
d694f001-2871-40fc-a40a-af411fa726c4	Sacramento, CA	2	cdd2bc35-7a3f-495a-94c7-c2f982653c19	c4e94cd1-f94c-4409-ad90-4faeac8fdf72
f4699b35-9cf0-4f6c-86cb-63e66d0cf05a	Salinas, CA	2	849cf2ab-8e64-448d-8529-98ad9ead777f	16989835-42eb-46fb-a1e9-5c023f68e0df
a3372077-0da8-4322-b529-809ae625a9f6	San Bernardino, CA	2	028773c2-6514-45ef-a20f-f2a266b82937	266de812-b8ca-4b1b-b4b9-ec7972c49145
8e5a8340-b261-4466-9ec7-e8ad949dc95b	San Diego, CA	2	60c8e9b7-5910-4f9a-8f4d-97af3de2032d	c7e4a919-aa6a-42c7-b7d6-b4f8cd8c48cd
13739b59-535b-448e-8587-4b1daa715b87	San Francisco, CA	2	71cdff44-7633-40e3-ac2a-4feb49d9c419	d48cd88a-23ad-420e-8b2a-a71030d658e8
16971024-bebd-40cc-94dc-570780efd3a7	San Jose, CA	2	27600704-2f90-4230-99aa-0b9942489f2b	ca30f0ba-475f-4763-b413-965be32903e9
745c7643-8cf7-4330-b6dd-e001f14643eb	San Mateo, CA	2	acf2567d-06bc-4d0c-a81f-df08e603b29b	740a9dc5-db10-4472-8fe5-bc9c352a27a0
399a7dee-d233-43d5-9b59-69a4be7d30b0	Santa Ana, CA	2	f8255431-b561-4fe1-a028-0a258c11b9e3	b5af1a12-9035-47c2-ba8d-ecf8a46456ab
62f93d7b-9b0f-4c78-a412-53d88c90df74	Santa Clara, CA	2	6ce9ad44-3174-4638-93ea-6778b0e43887	0efd620e-f387-4c01-b560-751bde06ea10
413b3f21-8bb5-4e5b-8bcc-2f80d4b28e46	Santa Clarita, CA	2	1922d557-6b14-46c7-86a4-8d239944c5be	7b5f13de-ac0e-4c05-97dd-ae2461d8e2d3
4a9624df-e014-4df9-9a90-bd2466c21316	Vallejo, CA	2	3afeecd2-0bc8-4d11-beb0-6ce44f6e1e44	17404b42-3c1a-4902-8e15-64376b17a4a2
60171a8c-8802-40b5-933a-f066ca4aaa63	Aurora, CO	2	cae6e787-32e7-479a-a7ea-094877972a57	35ccdade-5914-42ca-8c12-ae4febc3d473
1ec42c02-321c-4628-8064-5f96abd611e4	Westminster, CO	2	dac267ae-abfd-4da4-89a4-9dc21d7dd5be	b6a6c6bf-3e7b-4800-97cc-caee8d6bf519
2562f6dd-4ac1-4b87-9514-e4929289ef0a	District of Columbia	1	d4cc3935-a62b-4590-a402-68c0b0d525dc	93874bc4-e86f-43e0-92de-666050c29869
cd58d187-988b-444b-808d-b98348d62d15	Hialeah, FL	2	87ae880b-8bcf-4466-99fe-3f0d2b40b95b	e6cb5d67-dc4f-4f5a-8777-3512a8e10d3a
0141b75e-3374-4685-9d04-56da8124b53f	West Palm Beach, FL	2	05987eb2-0b2d-4227-ac6f-03b8205ca119	65f984ec-0f36-40b0-8947-eb90e8286a6c
b6ce2b72-e45e-48be-ad08-6322efa36f80	Columbus, GA	2	72e86f31-6664-42d2-bb5e-4de76a4ce0da	f37265e2-a2c3-4e11-bee7-e2c0a01bb96f
fea1288d-3ee8-40c7-b21b-da515d3aabea	Elgin, IL	2	11acb497-1496-4e0a-bb05-dfb09e495f15	3d2cbc7f-33a5-4fb7-8f5d-19e15e1f8522
9811e6a5-9ad9-4b2f-9580-77f446d9b964	Indianapolis, IN	2	ba4cb77c-dce6-4a9f-92d1-d148fa9a77b7	3ce13d4f-61ab-4338-a7dd-7f4694ffe570
a9239997-c042-4f5e-a4e1-3fe1900c6c6d	Topeka, KS	2	12aaa006-e261-4ac8-a40e-2b579e1c219d	89d625a5-f556-4ddc-9dc9-e8d3288b74b1
db19a391-61e0-4e7b-9d45-4b6e79085ca8	Lafayette, LA	2	dd4710a8-6e9e-4c2a-a19e-a577ed5d5fa4	711042b5-cb9a-4121-8bf8-18a1561cc170
dbac5baa-643b-45fb-8121-9a0190e9550e	South Boston, MA	2	b08bbc46-043b-412d-af81-b2a2ae0891e9	01c2750d-6a62-4305-90ab-d940eee8e9d0
96a8fad7-36e7-478b-902b-00546b02ed9e	Lansing, MI	2	42d9ac86-9ba1-4ba0-9dcc-f9ea21ae9625	d8f90ced-9cdb-457b-b700-345fa8d3c00c
00041359-01c7-443e-8361-87bf6b3fc053	Columbia, MO	2	fe716d79-4f3d-41a3-921d-36af4d7de4d2	fbe21a7a-1875-418b-a666-54ceced6408e
380dde82-7d82-4b34-b03c-cbed7d0b325a	Omaha, NE	2	0785a942-32c4-4004-913c-76c2488b54e4	e256c55f-7145-471e-b946-c5b7c4deaab4
371da5f6-ca51-4a60-b9de-54eccea0992f	Nevada	1	e4547667-8b2c-4f78-86ce-1ccdf882d245	08fd650e-d3e7-44f4-ad32-cdda1eada270
a9bc6d20-d95d-4473-b060-091bbcd7e6fd	Las Cruces, NM	2	5167817e-2534-4bc9-8fda-678c591400b8	f2b792cb-a21c-4672-bb7e-e73eab37c717
5f12d764-52bc-4c53-8b29-3d10687ccb2a	Charlotte, NC	2	5bc521ea-1e37-4531-ae2c-bc8376051be1	f8dc9fe0-1581-4094-b99a-dac5d45aa94d
e6391ce5-8b64-4b79-b718-9952d7b2330c	High Point, NC	2	a4e47c38-86cf-4af8-be80-e9476aded500	c603b6a1-2880-4953-98bc-ef525d46c4f3
eee6907b-b912-4c8a-b86e-ab59a6898814	Ohio	1	1dee6733-3af2-4c5d-aa46-1a0f9a34ffc1	5d5530ad-9e55-41fa-b786-e0382b1316d8
8aada1d1-70b0-43d9-83a2-faa445a0042f	Salem, OR	2	4d2f3c2e-7eb3-4420-b055-9fe907d95001	46771fbb-038d-455a-b1ce-22757dc36705
dad2d1cc-2aba-4889-8829-43d4f1642b87	North Charleston, SC	2	90aa59b9-b9d3-4883-92f9-189cacdb45a8	a04a248b-6ca8-4c7b-9206-466ca10c55ea
5add6353-607e-4d30-85db-0f738e62c3d8	New South Memphis, TN	2	da96deb6-58e0-4dd4-bfe8-bafc15887993	ab9e88df-3a21-4088-b493-434f51a7b9e7
7c450c52-f74c-4eb6-9563-982a940facc0	Brownsville, TX	2	3479f13b-846d-477c-b4ad-e1098078d4b0	e8f6a412-08bb-4e9e-bb4f-0f4c96fd2717
0b9c6ab4-fb3c-4541-b54a-3999e7feb8e1	Grand Prairie, TX	2	e679cd0a-ce78-483b-a478-21d8b84520a9	845e08c1-e3ce-4ac5-8f72-25d5cd7293cb
c3450d9f-f68a-4c8f-89ab-3c5d5ac71738	Midland, TX	2	774fca15-5874-4e67-acf2-cddbb7327d62	5094d6cd-36da-46de-825a-1364a3f7f9c6
dc3c6228-9a3d-44ad-a0bf-facea51753e3	Waco, TX	2	88a413f2-6d3f-46ba-9216-fa180f2b4e2d	35a2640a-5694-4693-b2c4-1b5f7c138c3e
b5721e00-2600-4df9-ad66-2d114ece9644	Arlington, VA	2	315e1ea8-4a87-45d2-9565-b927214d04ae	acab5b4c-e491-4d4a-88de-c12c2d823d1f
af2fd1be-9434-4284-a29f-ab9ae5ed56e1	Everett, WA	2	7d8a3e47-b352-4247-b241-d3930e204fc6	4f762cd0-4685-47f7-98a0-611a8fef157c
203a1e0b-a07b-4aba-a767-5371ea2524af	Madison, WI	2	024ab775-7007-4743-bdc7-5f0d2d8fcbe9	f71bc207-25b2-4907-ade6-5911b1f5b05b
1cd7e9e2-cba4-4a55-8e0f-491ee6306a66	Santa Maria, CA	2	d343d0d4-50f8-4d05-86c8-e3c4b52c1ad4	46d260c7-54de-424b-9e65-9ed4a91d360b
3e59750c-ae0d-4f8b-a07e-5d3d018cb69b	Van Nuys, CA	2	e151fb42-4ad5-47af-86ba-d23986b3400f	1f4d462e-59b3-4aac-9014-91e543f1bd2d
44595e32-39e6-4c06-ab3e-d48ab4f03991	Boulder, CO	2	8373f45a-1a66-4490-a010-c430d2b2d5f5	de075a8b-bd28-4fe0-a61e-9b61c64d0f60
37c880be-9555-4443-a9b7-c61f85f343bd	Colorado	1	42bc5113-a3b7-4dbe-8611-36ffb5eb723d	6a08af1b-5dfe-4b94-bb23-f56eed416efb
362a9c1b-0cb2-4db6-9e2e-240ddd309d04	Pompano Beach, FL	2	e5bd895b-076f-49f0-aeb8-fd81d6664076	bc787b91-7b5f-4706-801e-6048a9e11633
1146d287-3036-4edd-b839-1e6a953149a4	Hollywood, FL	2	2ad08043-6f6a-4146-9ed4-798c00a5f9d8	629a7882-1d45-4fdf-8e67-8b539bf1add0
3e47b2fb-aebd-40ff-befa-762bb3c7b153	Pembroke Pines, FL	2	091aaa35-96e8-4977-a2b6-41ea70582bce	3915e5e0-06ff-4f06-aa91-506512cc25e6
efc80b60-c335-4cee-b8d6-8c6bd6bc41c3	Sandy Springs, GA	2	196a8065-b785-4b22-bea4-c6136647dacb	f45d8480-b9db-4ddd-a672-87f0e74e9218
b2982de8-86ca-4e06-8cb9-6106418fe842	Joliet, IL	2	a8694567-4b2e-4190-ba13-29283c8ef7ee	9baee745-dd28-410c-b272-904bee399f62
17ff0257-6e7b-4384-8c94-b6097022ebda	South Bend, IN	2	5a42b435-6881-4b2e-a0e8-61da32509eb5	bf5d2853-fd8b-4e9d-b2d8-32e75b801adf
7c34c622-aedc-4a3b-bc92-eabad3c6ce80	Wichita, KS	2	ec91fb8f-1843-4837-8e5e-57b866b9025f	db186851-f08d-4256-9b91-b0aeb3004bd4
dcaa9cf7-dea2-410b-9ddd-e6efb47f6348	Metairie, LA	2	44583d27-7d89-433b-b8b6-85b356ab7e41	8c2082b8-e04a-467d-be2a-c81a52d8c23f
c632dee8-6749-4c90-bec7-0ba1f16ed0dc	Cambridge, MA	2	c1acc885-7d9b-457f-894e-a080649b3c5d	2450b8cf-ec91-4c8c-bf8d-5ab6212d3802
0d914e73-f818-4241-b835-fa90cdd76fba	Sterling Heights, MI	2	d6efab9d-b333-4220-9c47-cbac9df25fd8	946aa42a-5f1f-4fce-99dc-3cf7eadc47e1
f4cd2e9e-1d75-4c78-b285-78a9001453f0	East Independence, MO	2	eb287180-5ca1-44fe-8aed-4fba08b5d668	95af6d39-84ae-43d8-97c8-bec6eb981b59
7ed4af51-ed80-41eb-94b7-a0f416604c9a	Nebraska	1	67f9c840-19ca-4a7d-9089-9c14a01198d0	51f45730-e4f7-414d-b810-8433244f15ba
a668eb5d-ad66-4ebd-919d-624d9f09e0a3	Manchester, NH	2	fb05c6f0-c539-41ba-9619-5c353fb33614	585d2446-afe5-40b8-bcff-7cb67f387065
ac7d36e7-6e6b-43b7-841f-4ef02417d2b7	New Mexico	1	7e18ad21-c561-4dfe-8538-452d43b25846	397f2a0b-f95d-4071-9e3a-47efb474dd4e
c35d6404-b9c2-45f4-95bf-273331452938	Raleigh, NC	2	f296b309-594b-4fc4-9518-d4635661ebe7	045a0141-d3f7-40a7-8689-d53d11d2fa1e
d4ef56f4-0f56-48f1-b81b-590a50767167	North Carolina	1	723c9643-8efd-4bc7-b02e-c0cca7ffde4b	c235be9e-cc55-4f98-adcb-6f9985a7dc97
935aa8c1-5c6f-405c-a223-084e372a06df	Broken Arrow, OK	2	ac7ac2d5-13f1-4fd5-a25d-b9560cb402f5	bcef2756-56fd-40b1-a70f-5cf5c8b1b5a0
9664f7cf-3cf1-428c-bb6b-b7a8613f6615	Oregon	1	3afa92fe-b316-4947-8b88-37e1a9790014	c2ac94ac-840e-4d03-bbf9-34ddf1163c7e
1ab7f4e5-6357-45a0-8cbe-199a62b02573	North Charleston, SC	2	cf444610-fdbd-40a8-9893-30b135b4a213	21975dd3-a12f-41dc-8469-b52e0fd69da5
e805e853-278e-4b18-96bd-bc8c23291633	Murfreesboro, TN	2	987a7a3b-77e4-4f37-b75a-a8000d377172	efd1d705-f387-4825-a82b-9520c59553e2
8d6fa80b-a56b-4e1d-b4ec-f5adbda2b186	Carrollton, TX	2	6a596b74-89ac-4f96-aacc-0f96a1391f7c	8de65a14-2030-4c95-91c4-a49a42e9fcba
0b030689-fe66-4638-acf9-76c161aac6e9	Houston, TX	2	8e3bd194-1d8f-4b3b-ad27-6215d39e61ad	a9f9999c-0f21-458c-90ad-803eed692d83
ecbe8562-f620-42ce-b032-6dd8f2767596	Odessa, TX	2	33439dc9-c34c-4bf7-8e70-1ea2c6536af3	35c635fc-f2e8-4fec-ab90-9e7a02f71ce1
dc742783-74ca-43a0-bb68-12a8a11ce71c	Wichita Falls, TX	2	66d009df-8f9b-4289-96b8-c56000d1b1f9	7e3e8969-1953-4d6d-aafb-87a59b1f94ae
368af697-2009-430e-b5ab-726b5d48d60f	Chesapeake, VA	2	ca6675f1-2840-474a-ab72-407f1f6a7b26	60d643c9-ab01-4668-ab89-14db4e8f412f
d21657d1-3de6-4f41-8665-adc8ddfb68f3	Kent, WA	2	28d10273-708d-44c5-92d9-08de2eb8caca	b12eb5d5-6ebc-4dd5-8d63-5c870dde6c81
8e239c13-3867-4622-8f3e-60db01401f89	Milwaukee, WI	2	55dde18f-8dbf-474a-8688-648b1d9ea0a5	12867404-15de-473a-a3fb-580b27cd11fe
9a7d35ea-8c00-4205-a8ab-4a36848bdeb6	Santa Rosa, CA	2	8eceeec7-a0ab-477b-af37-0df1074a16b5	787f15bf-248b-4c67-b14c-409df87ecfe2
a7d2cd5f-b486-44df-ba84-447b03c5cbe9	Victorville, CA	2	74891d28-e62e-4205-b6f3-b27978749dda	b45f2348-4ad3-4161-a2f4-f6f28f580157
9fa81d4b-01a9-4f6a-b098-f05e97fc506d	Centennial, CO	2	f8000315-812d-41a4-8db9-27b1261f7de7	588b6575-ee5b-479e-a4b3-00eeee03d6eb
8aa1916b-1037-427b-a7df-b43f911d4142	Bridgeport, CT	2	d04a180c-d353-40da-a149-52adcd4139ed	c2b1dc56-9ed1-4460-83a7-0ff1207aefbb
e92a3078-466b-4a60-9ce3-8f5129f11910	West Palm Beach, FL	2	69d8e2f9-e59c-4043-aebf-9840cd7f8949	2f532881-73cc-4004-bc19-424d3f16cdc6
75d5f3ec-7067-42c5-9b82-0116fc858522	Jacksonville, FL	2	6c8d25ac-3ae3-451c-a342-fc6a7b2e41f7	754a126e-c5c5-49b3-baf9-da578515de66
ad2f6b6b-1926-4c78-ba7f-d76b4fccd2b0	Pompano Beach, FL	2	4f3b1109-57e6-41e6-afb1-f8eec693c822	369ea3eb-ac79-4bed-94f8-a329c0d755db
85d3ea15-c2f7-4d9b-a5dd-25cd32b0d0d9	Savannah, GA	2	ac0ddacf-7cc3-456b-ba0c-03eff60cfc3f	52746bc1-71b8-4fa7-b71d-8a7bc8f53021
bd3229b8-0469-4f09-8bba-958bbe03df1c	Naperville, IL	2	68e831bb-b824-4db7-8e16-e161367ca909	db192e3c-2987-4185-8fe7-6fa4f11916e8
cde4c398-28c3-4905-b940-59cc38e66b4b	Indiana	1	1255dbd6-0a39-4562-973a-5e1f823a264b	f9470e3d-45f0-477a-a1d1-7cc4a54df295
e3c074ca-f283-4f71-969e-5df4b859751e	Kansas	1	68637775-869f-44c6-84af-a896b18816b5	d7706a2b-8554-46a4-83f3-3fbb4206ff59
1d4d23ae-0aac-41ec-939b-9145be937aa3	Metairie Terrace, LA	2	4d772383-cbc6-4d9e-b969-0d133a042f85	7d2f259a-4c25-4d1a-a431-fbd310c55a55
87ff73a7-4d4e-42d7-b7da-9ae0766e31ca	Lowell, MA	2	f182a257-3382-481c-9067-f1fd7379db2c	58e3b220-cfd0-436a-8d1f-f61f2116719b
710ef9dc-090f-4984-8ade-32acf943abc3	Warren, MI	2	40507846-6b1c-49eb-b41d-b3370614db9d	49d25f20-8e84-4136-99dd-86d295f4cc2c
a268f6e1-282b-4259-a048-bb064e7cd426	Independence, MO	2	4e4aefc0-a7b4-46f2-bb3a-d93bda292216	5c22203d-ed9d-46b3-b846-63f5bce4cf54
2a35546c-8f31-4035-87ca-8c8da60101f2	Henderson, NV	2	0ab56371-427d-47ec-89b0-451783a977c4	e061d60c-7788-4856-afd0-3f920abda803
0f4b2651-0276-42ba-a351-994d3e583169	New Hampshire	1	356aab81-dfc2-4ead-8398-456d48377b15	51c9a5ba-8545-497e-aab5-294bb5ba41ca
38ca9fe6-beff-40bf-a456-b31ecf446b47	Amherst, NY	2	45313a4a-bb50-4134-bcc0-cfc64c53c253	f0072526-8765-46b8-a35b-5c475612ebed
a65d453c-a678-457c-8de4-17515da7ef4a	West Raleigh, NC	2	68c6a839-4b3a-4b67-a467-550e70cf3583	df7e7e38-cf25-4f56-a901-77614803a5cf
45bfa166-ee76-433a-a974-d1fe6e8675b8	Fargo, ND	2	569a3cc7-3e8f-4a2a-81c5-bf553ad3a6f1	8086a09a-e998-42f6-8e3f-4605428a139e
810b740b-62bd-4c2f-b1b4-f51db92526e4	Norman, OK	2	2407fb8c-edbc-4c7a-bdd3-723fd05f9196	119caae7-cd66-4624-aaff-df9911157b15
ed4aff82-15b2-40e8-a11a-3d2825964aaa	Allentown, PA	2	14aa1031-3a5e-45f8-908e-1e4fb8b75056	823dec3b-05ff-4f06-8dec-ae44f8d66244
32171514-f400-45f1-bb5b-b3c9349eecde	South Carolina	1	046c802a-6bd7-4ef9-878c-a28d6826213b	96869298-5af4-4087-b7b5-44a14b79d7ac
c9df0801-524f-4e66-a800-68e052f8c39c	Nashville, TN	2	3db031c4-735c-4b85-81a1-d96153f23591	541ee1e5-1cc1-40e6-a4fc-c59274c3986a
3acee5dd-b260-40fc-902a-8c8189023009	College Station, TX	2	85c2d05d-4c93-4f9a-a214-dd47bbe9a2ea	4a6a7f83-0b49-4b82-805c-00b9558c36ce
8694cc73-e18b-48a2-80e3-32402d1479f0	Irving, TX	2	fe681548-de28-4c03-984a-7306f5637ba4	84d49c6c-5876-4710-a772-b372ebe76700
d2843869-a366-4f83-aab1-5a1ecd819542	Pasadena, TX	2	da33ad18-81f5-42c4-8bff-d0355324455c	cc950018-0db9-4bf5-8a28-9745be0c4d5c
a847213f-4822-4770-9dcb-3c0edd15eaf9	Texas	1	a0d1216f-de3f-418c-aad6-b47839489bf5	57e64e23-58ec-4ffc-82a1-9aee9917fbdf
4d40bd2c-748c-4d31-939b-684b9245c94d	East Hampton, VA	2	8c11acb4-92cf-42f3-b083-c1a7bcebdeb7	6873305e-120e-48f0-9bd4-8d9aa8a62242
562729b9-0592-43bd-a2d1-d6851f039020	Renton, WA	2	ccf95e1a-b8d1-4fbb-a20d-ff70b06f120e	439d0a7e-3edd-4f7b-b49f-943d13f2a055
e9bd5cc3-973a-4d26-8106-e2b2607d6797	Wisconsin	1	b8ee4196-b62e-4839-b15e-6ee067bc0669	83e1a211-2f2d-4e39-a76f-f9a7e2d9a84b
e1d26ca4-e70d-4463-b433-4cee9b33bbf5	Simi Valley, CA	2	6644946c-7c8b-4bbe-a059-863cc2d6bf7d	520c8726-3392-41a9-86fb-aa6c1bbed04d
b014cb6b-199a-4d99-ba50-32ffa690cc7c	Visalia, CA	2	0cf89639-8f68-48b8-b450-45ff09432f9d	f1b412f8-2d14-4383-a438-67438c8dbae4
8767d205-3f63-4b10-80a3-d9abb833d04a	Colorado Springs, CO	2	ca640035-c3e2-4836-a84d-60ed55f2a3aa	a4d6a983-4a0a-456a-bcfb-803bc6270a15
2edf0a0e-7ee1-42ea-bf5b-cfd2ec33fc14	Hartford, CT	2	b03def9d-c997-4b96-b80d-73fd7e46bc40	bb5fc802-5373-4a39-87b6-dec434ecf03e
a5ded7e6-1216-43cb-b92a-3ae8b54564a6	Brandon, FL	2	bcf444b1-fc1b-4878-9246-ca75467b902f	db19d566-1ea2-4c0c-bceb-3b3fa9260031
34305507-c7c5-4ff5-88d3-06ef3a50d902	Lakeland, FL	2	8ca6d52f-936a-485a-8c80-2f68526eaffd	4953d67e-ddcb-4c85-9601-c33e9acf05d4
16cdfd01-7b88-4cdb-bb10-6a67dd19e9a6	Port Saint Lucie, FL	2	324b5111-6a31-4729-85ff-28910d2339ed	8879d4cf-7935-4d87-98dc-3f5e73572ef4
c0227ea2-c45f-41d3-ae32-7e0d86bf475b	Georgia	1	73fabdd9-17ad-4b72-b6d2-14040ebcc47d	61639fe0-d31c-4f1b-b27a-fbd5da9f5590
36b3a289-1c78-4dd7-bf49-a6e5caf5cec3	North Peoria, IL	2	c4ae5949-f25d-470c-b489-b3092765903e	78bd1a2f-475a-459b-83bc-50ab0b2f5107
7a2f8db5-7311-4b98-842e-c01c5c5c15aa	Cedar Rapids, IA	2	6ab7ac3b-0859-40e1-8f59-734ff673082f	e3cb9a8d-c4ae-45a5-b5e8-d3c1130fab82
cbb63a48-73d0-4a71-b2a8-cf51edeee846	Lexington, KY	2	eaf98a9b-cf40-417f-97b4-d0ce5c528228	aac44b7b-f13e-4698-b5c7-c3f7ceb99e9a
a3132e2c-9573-424c-8767-9dba765d84fd	New Orleans, LA	2	d0a3a2e2-19f9-4804-a83b-36012b13ace2	79d0018d-2326-4d65-8b63-f87019d172d7
f1935a14-9aae-4ddc-b5e4-435ae2eae6d4	South Boston, MA	2	76a17c00-9256-47f4-a89c-9f00a4d20a95	bf8f1e21-3b3a-4ff5-ad88-a91692d6ca7b
cfa2c2d9-a9c8-4e43-9a2e-bbeea6e25b74	Michigan	1	d966b8b5-2104-4a83-b014-da95a4993a43	c3e9d71c-4010-4cf5-92bb-3fa5734dce40
a6c08c6a-6320-4f26-9ba8-3b4ca34430f9	Kansas City, MO	2	170567fe-779d-41c4-978b-7c6f90fbbe49	76b3bf55-81f0-43ec-a6af-553be77e55ee
f7949613-f1e7-4262-8fa2-0da5b66ad839	Las Vegas, NV	2	96fe36fc-96b7-438b-883b-768a8f3e7324	c8d3c3c8-437e-4114-8165-db123892d1b5
0be8e281-bedf-429a-bb01-be163bade1a8	Newark, NJ	2	ff9d3f22-589f-4214-9ed8-efb5ba0fe09b	6df721bc-d050-4cc5-ae2e-4526d37bd743
31837094-97bb-4898-8bba-2d8641ddacda	Buffalo, NY	2	05015e02-3318-40b3-a124-c97dc47f8c46	d2850c4b-563f-4396-b0c9-4f22716a9fb4
41ecde24-b85b-4b73-84f3-8cfe2b04ae52	Greensboro, NC	2	af9d5218-db3b-45dd-baa6-c891775a86b3	3aa1765c-4d72-4637-ae9c-92e0371328c8
446db972-db6b-4ba4-a733-ddfd48487e19	North Dakota	1	7294d0ea-1dbb-4edc-b14b-a6863a117c41	5f6d6f1e-e82b-43d2-ba23-2c76c4016a28
214b70ac-7b3f-4a9d-b3f8-87d28cb127a2	Oklahoma City, OK	2	174f418a-91df-4735-ab67-a246e16c74f4	f86b49f8-89e4-4738-90ed-d4558560f5dd
48ebc9f3-a89f-414e-9a64-9425505319c1	Philadelphia, PA	2	afefb4f5-0bd0-41d3-b6f3-044b3ddee6c5	4088077d-00e0-4a8b-b6a0-54b935ffad55
7f2934e5-8bb1-4b49-83ac-5a356d3a7467	Sioux Falls, SD	2	15b0735d-6059-474c-be0e-4069157af585	14ec1d2f-607c-4746-9953-0a937c163cb9
2370f6bd-183f-4365-b214-6356b7e2e405	Tennessee	1	a1b9ea91-c201-4d7e-84c9-27ce276e346a	96dfa192-1c70-4c71-97f2-379c72bfdd0e
a937009e-89b6-42d7-907d-5200eab9061c	Corpus Christi, TX	2	7cf4d9d6-d1c2-4797-a707-8cdf70d064fd	cd97005d-b727-49ed-a84d-c061ebfd4a8b
3abde012-4137-4626-aaae-8fc6c34230a9	Killeen, TX	2	052676a3-663d-4131-9d0f-8ee9ad5305c6	72ef28ff-34d4-4c70-97b0-8344338b3c4e
ab1b3d4f-ebf6-4f24-8d58-27f526e1355e	Pearland, TX	2	4237d9c8-9491-42c8-a817-a01eac2d917b	e2311c2d-2896-4c67-95ea-f0c5d2419b23
a33b9ebc-7f32-4ded-b8e5-5c0a9f24f452	Provo, UT	2	48655a57-a6a6-4df6-9a28-ead285f17da5	050c29f1-d974-4e7b-8c20-0227e5cf3558
4e4a33ad-3409-43a8-963f-1b9816f0b052	Hampton, VA	2	6a0d0eb4-0c05-4d5e-a308-4d0631578724	f530cfe1-6db4-4e08-9c32-d3a557225723
857c5970-af17-448b-9bc6-fe732b4b7176	Seattle, WA	2	08a454c3-6a3d-4418-bc65-e050d88feafd	d929195a-b5a5-4167-a9e2-71b602ce1214
39769ab8-b2ec-4427-b59e-4ab805a7edf2	Wyoming	1	e28af9a4-fd1c-463a-9d2b-3f5ca8cb899a	f8bf3ece-859d-499a-a680-b4e2dd85e055
decd0cd0-e8e7-4d52-9991-99271c50da1a	Stockton, CA	2	81f967d9-950b-40ba-91f7-c7e2ff5f00b4	035fc117-5256-4d12-a5f7-1fc70b331432
1425243c-b620-4f0c-b3be-7f9a9d12a8f5	Chula Vista, CA	2	d7962179-c42d-4e87-869f-4b297c0187dd	3ca68d46-a03b-4bca-aa29-9ecc79564b4b
17c47e2a-96d4-4456-b962-90df5811d5c8	Fort Collins, CO	2	643c0fd3-e8b1-4cf3-a6b6-50581a0cf684	f90e6871-5996-4319-8bb7-0e3a03402ae5
3bcbb790-f4c4-488b-bb53-476b3131c3f6	North Stamford, CT	2	a7bdd585-42ee-4c85-9ba8-f4d7106075a5	a99bc4ab-2adc-4470-ad73-861e31ab9028
075afc49-b1ef-45b6-a5b0-749645761c84	Clearwater, FL	2	88b5f6b0-87a2-4332-a6d7-d63ecd006d67	3ca370aa-ae06-49d7-a19a-35a3689fbbed
31886ac8-720a-4ba9-94f4-5c65d5a8f574	Miami Gardens, FL	2	429d5878-5392-4b3c-b016-94453c21ea48	50c999fd-f2c6-4a7f-9a4c-771b01b9a718
6c449345-fcb3-42e6-bb4a-3175f7015909	West Palm Beach, FL	2	b340b1a0-ef61-4b71-b2c3-e1cebd04a981	64ec9802-f553-411f-aeb6-4658a02f6bd4
c13597dd-b997-4c08-b9b8-8edb4ed5c823	Boise, ID	2	771ab874-e3af-4da0-9fd5-549e55e96bd3	f3c8edb4-d05b-442d-9d12-7e323e8c6039
bdb0579e-bfb9-48ba-847f-eee9daca00b9	Springfield, IL	2	62c13b71-20e1-4baa-bfc4-edfa9332ba2a	447f92d8-dc9c-4e18-aab2-9150c4b96b63
f45cb68d-6a7d-4fbb-876f-2cd939bb2a3d	Iowa	1	6caa0523-3b29-43a2-a11e-68c00092b279	830b0f25-7772-4118-ad30-be1a6bf69bf0
a1a08bb7-ec83-4ad6-9001-7708a4644b58	Shreveport, LA	2	ced20c0b-fc3e-4cfa-8eb6-26039b60aaf7	d475cb7f-292b-44b5-9f17-0e1cd70b90cd
94d7242b-ed79-4048-a409-b6c764b8a9fa	Springfield, MA	2	6e8aee7b-d115-4618-beb0-bb37b42cc0e4	a0274c5b-d1a2-45b8-8b7c-21e9192dbc29
4393e99a-3d87-4ef6-afa2-5f254091195e	Minneapolis, MN	2	6291b0c2-72cb-4215-9456-edb388e1fe5f	109f87cc-3929-4d0c-a167-8c39a507242e
7e2f45f9-e921-421c-a8a6-6b1456769a13	Springfield, MO	2	dbeab8a3-2d11-4c8b-a019-c27cb3faf48d	1102b906-6091-42ec-91a0-d19d67ae6c68
00c631c0-53e3-46fe-b6cd-0575ad6cab30	North Las Vegas, NV	2	da145671-c253-4ad1-91d7-6deb030837d9	d9806735-0615-45ab-876e-a62ab7458b4e
6c75ed00-94f2-47ca-b357-9ac4ff2d6d09	Jersey City, NJ	2	7a6a2e62-ccbe-4b4d-b6a4-81bc39b15e95	09b27f53-2c99-4c67-bba6-c59b75fbd852
e4e54509-ffbe-4c53-b781-8aa51ed72de4	East New York, NY	2	250c5bc1-5a51-4317-9f5e-7da96798b487	4660b40a-06a0-45cc-916b-536fc4f72d54
4d7dbbd4-a1db-43ed-8f14-c5a14352cfe1	Durham, NC	2	f1b4d811-dfa6-4be3-a046-7430af18ad23	14bcd9ef-9f34-4109-96a6-72ae5313182f
e4a03f58-ff9c-47d0-ba19-1a5ef8898be4	Cincinnati, OH	2	9c189574-d90a-4c46-9845-31ee6ca91b06	165cf869-b6f3-426b-882f-5e99cfc1ef27
bde37c0c-d3ae-4f1a-8e5d-bd9677e72d95	Oklahoma	1	1465ef76-5c60-475e-86c9-458a5fc38f24	87dd990b-1717-4552-a577-d56b8e032c76
4aec50cc-b8b6-432f-8ed9-024ed6723477	Pennsylvania	1	4b3e249b-9bf7-4170-be96-2dd3822dabe7	cc3dbe55-9079-4b60-8bf2-c3f712595a79
e6fce230-ae01-4891-96a6-36941dcd685a	Chattanooga, TN	2	a94d913e-afe0-441a-9bdd-0e298829c43d	47143f79-00aa-4ea4-a0b2-8317dbf9101f
0742acf0-be62-49f7-ba4b-129ce0415677	Amarillo, TX	2	41effb1f-ce9b-457e-9e2f-8857506597fa	282bc363-b29b-4ce9-8822-b037f6a8aa4d
ed6a354e-6450-4b18-8094-3af54343a1c1	El Paso, TX	2	2146ffd7-f419-47af-8198-b823d1dc9ce2	a089b382-aefb-4035-9df3-a590b39819f7
59cb7a24-fe3c-4e24-b4ba-1c4e18edf40a	Lubbock, TX	2	0f879bea-1070-46b5-b346-fc13b093a05c	2be76aa9-da41-40ad-a082-02b69fed21f8
d663712b-6e82-4de3-82d4-04ced2009b45	Round Rock, TX	2	43a6009d-de46-4819-82a2-bc1702bc0522	e8116dad-4aad-4acb-b357-865ab7281df5
1e6f5565-66b9-4e29-963c-72977f752d01	West Valley City, UT	2	dac42517-29bf-421f-bd31-579670a86acc	86b3ed4d-8ca0-4958-97b0-62f7b3666e84
290c31d6-0f5c-4bb7-b344-7025565dbff2	Richmond, VA	2	73bec132-4534-4ede-b686-8d5ce6a8919f	a261bb52-4770-424f-bf95-08934602245e
e37d5ee4-a13c-4a19-bc05-c70d91bd3234	Vancouver, WA	2	2adb170d-aed5-4194-a3a8-0adc9dfd27a9	f3ff52f5-79ea-4bc9-8f8e-8097dbd2b8f4
99023748-8ac5-42af-8622-d90b28a208cf	Sunnyvale, CA	2	a590767c-e80b-4aca-b408-77807ed30072	b1540114-23f1-41f1-a0cd-2fb6c9fd1662
4b3a3585-957b-434c-93bd-e125d6863738	Vista, CA	2	8172af92-9879-4b61-891d-9a6fee30eb00	eb5de823-e9b8-4739-afce-827d6b3bccec
bf5019f2-7bd8-4fa2-8a35-90c398cd8b46	Greeley, CO	2	39bdaefc-54ac-4bd6-985e-ebcf34218db6	8f150db5-9094-4444-ac00-c74dfa97cbcd
6f0f4879-15e0-4755-9680-8496db42b133	Stamford, CT	2	11c2a518-b06f-4a74-b588-3cd855114ed7	47da9d7a-fa3c-43b9-b960-6de0fa0defa0
8d520579-fbd0-4eb5-b565-9806c4819001	Coral Springs, FL	2	f3883f65-56a3-4bef-a62f-5ee14ff7b0da	0788f753-97b9-4241-a8d4-2ae0518ff928
2b2aae71-af22-47dd-86f5-cf061b6931ed	Miami Gardens, FL	2	b87b1bea-ec9d-4816-8212-2e1fd0181fe5	35f950f9-854c-41f4-b683-d39837787b7f
5c76b9fc-9587-497d-9c7e-7ff7659f8176	Tampa, FL	2	7699e7a1-c396-4df2-8fdd-5a9160a76cb7	4d86e2d7-2a93-47fc-829d-6a20d7d52603
ebfc8147-cd2d-4f1b-a9c4-d9e9baaa1e48	Hawaii	1	17587535-9c85-49e5-a75d-1761dd565bf3	07021183-9d39-446e-ac28-db71cc164449
17a29e9d-1f4c-4a76-82a4-727c6c99723e	Rockford, IL	2	4a095228-c9c9-4d90-9bc2-6d74b9d0c27c	d6aaae5e-bb4f-4018-9ca2-a932462654e0
c3d47bc1-918c-4cfc-9a23-da1858262acd	Des Moines, IA	2	a8648c48-8423-467f-8e58-cd11b2b15b61	1a249a3f-525d-4f45-8510-0b6399f07bbd
71d645fa-d8d8-42b1-899a-b3e47223f0c0	Lexington-Fayette, KY	2	09538b57-9d39-40b7-97e6-06db0b8cc240	a9743e79-f700-4062-ac90-4faa9a87dea8
85875578-d724-4f4a-a156-e0b2b80ae47a	Maine	1	800ab4a9-8ea7-4fd0-9fbf-7164da81552c	2a8bd710-fc70-48d1-9475-cc58fa5ab46a
a8aedcab-8f93-4024-835c-9d3525f7bbcd	Massachusetts	1	3e094d89-da8c-420c-9d2f-3892e90d0b41	9527d7b5-adb4-4008-945f-b8fcaebf7d9f
1190c648-1d15-4921-8a05-e4adf21ef4f6	Saint Paul, MN	2	443981f1-1904-493b-93ba-f4c456546ee4	201dac7a-5ece-4a21-baff-c483906aa3e7
4299ffd4-8576-4c93-9c5a-c1f0aa7ebb29	Missouri	1	68d1d87e-40bd-4853-a07c-8511232b1fd6	e07e0ee3-b9d6-4a13-9f48-805031880e5b
b4812869-dbe3-4dbd-872b-3bc1aeb1b791	North Las Vegas, NV	2	bdc51543-f52e-4182-9047-6288e7136866	107bc6d8-dd9b-4e18-9d53-522c04d834fb
795974bd-7769-48da-82e0-92f93e5d2a5f	Paterson, NJ	2	7394863a-6eeb-4037-9bcb-9c4a1c5cb869	ba1fd63c-1962-4040-ab88-5a81924a387c
ace2cccf-0438-4b1f-90ac-207038aa8b66	New York City, NY	2	3be9aaa3-a250-4b89-99e9-d3b84723fea2	ad33f382-6c31-493a-85a4-8e52e1c395cf
c579cf48-3459-4329-a2c2-7eaf9762fc9e	Winston-Salem, NC	2	fcbffede-aeae-4cdb-a4f4-16980fbec31b	03f17284-830a-4d4d-8537-eaae9a2e2666
05e7aca2-bcea-4cb3-9a5a-e68f44e1d4c7	Cleveland, OH	2	4aaf19dd-052e-4135-8b10-4630e9676b9d	fe4ad785-748b-45f4-979b-e0092be72294
44b78ac6-a2b4-4f61-98c5-0621f114a044	Eugene, OR	2	d82af80b-ba3e-4717-80a6-a114666f49c7	00f48af0-2010-4747-aad4-e906f6564cdb
d23665c2-36b5-40b8-a932-8a2b4bc0ef2b	Providence, RI	2	0f148ddd-776b-47f4-8e09-4cd44df98d5a	2ae04ca1-db51-433a-8bce-fcb3b353e3e9
fb7a4826-f3b1-4c14-9253-9f34a3f10950	East Chattanooga, TN	2	8db7d6fd-2ec2-42f8-9dcf-a5074cc88c72	10b80af9-3e71-4781-a590-d59e29042bc8
2e51bf74-ace2-497e-bd66-93f80164bf98	McAllen, TX	2	5ffec482-6a44-46fe-9af3-682fc85016e8	cfb8eb4d-cc27-4aca-88f0-499dac949628
1c084956-b9c8-498a-ab7c-d35b7c6c0a9d	Denton, TX	2	5ebc2dc0-932d-4274-93f1-1e8728bcd429	cc57a0bf-3a6c-4984-85e6-d12cb0ef7c22
a283d51d-4e0e-486b-847f-1c75b9268efd	Lewisville, TX	2	ee77e36d-55db-4961-a287-a2d9444dbf61	80d9eafb-5a9f-43f4-bffa-3eb38639596e
f5bae741-e829-4892-acf1-28283c17a789	Richardson, TX	2	df5cd20b-b7c9-4137-b71c-e206f2be429a	ddf9bfa9-661c-4915-8ccd-817294fefa47
6b443115-8392-45f1-b7e2-d0ebca294386	West Jordan, UT	2	bf744903-a32f-469b-97e2-772f321abfa1	9f7dc2c1-616e-4b17-98ee-64fd13a9682c
ab9798e5-a730-482b-bc51-010a2a623763	Newport News, VA	2	0808d663-5148-43ed-bd94-2a10227d8a90	7eb29a12-6260-4fca-b3e4-676c2b2959d4
dc8945ee-5219-4bff-8f77-3c185bf07495	Spokane, WA	2	acc8b6f3-2599-4ec0-9985-fb2061da4a78	f6724152-6dca-48f7-b98e-425850402b36
2e7faadb-c972-4e92-b005-bd0920019df2	Washington, D.C.	2	19cd3733-20be-4477-9cb6-c6a9598ecaa4	6af2173c-0b66-4e88-acbb-02d799befdf0
d6a21610-9754-4ee7-b094-21f237da7524	Temecula, CA	2	2f3e6717-95a9-4ac9-a164-49de6bb09d9f	dc1d3be1-8845-4e41-b53c-13d671b7c342
b7d8b9f1-c24f-4609-8f71-342dcfa1221b	Denver, CO	2	c510b92a-5e79-40c4-aaa6-2aa8c000660d	b728cc4e-9595-48ce-a768-ec6ced3699ce
925d900e-a8c8-4615-a168-8cc9e3152ee1	New Haven, CT	2	834d52dc-1953-49df-b508-6ea741952028	4155ceb8-26cc-4283-900d-700a2684b91c
cedf12c5-57fd-4ee9-9680-751c8b7dfc6c	Cape Coral, FL	2	130e0380-03c0-4c27-bf1d-d97272cdbabc	800b0571-f331-4d0e-aaa8-96753890a431
35675614-70cf-4f2d-97b6-06328d7127ab	Miami, FL	2	0f0b710a-c434-43af-9452-b69dd174b907	30dd2a56-6f3a-44b1-b7cc-a6f503c29c8a
ba3a8aae-a826-47d2-b0c3-728394127b42	Tallahassee, FL	2	34402370-a89c-4c3b-b040-b70e7f6ac6f2	725adea4-c99a-4930-8ad4-cbfada787b33
a1f5dd5d-ef50-4f21-bf58-bc7261dfcb1e	Honolulu, HI	2	22a94b73-9a92-4257-941e-20010484a221	58d1195b-220e-44f2-8d86-2617159515a1
a8232bf0-73ab-4281-8071-32bd60a7965f	Peoria, IL	2	20364a9d-937b-4cdd-b4b1-8bbf7b6827f1	74305266-18d6-4d0e-a96e-b5e6b7c71d94
e38fd147-a9bb-42f0-9c94-f7dda23ab09f	Davenport, IA	2	9be285a6-abfc-4c33-9f48-31660c45e727	3386d3ee-1c4d-49ad-8d62-ec6f5abe4cf9
e581e30e-4d38-4052-8d1a-6a7991015d3e	Lexington-Fayette, KY	2	0c4541ad-29cd-4e19-a4e2-c714a42c6c1a	1e01aba6-f256-4f71-8098-3cdf9058a0c8
18f7cce4-3fa8-477a-a430-e082874470c3	Louisiana	1	8de31f24-08da-4af6-abb3-9cd945c0b97c	bbc7a207-d419-41fc-8df0-b4c6b2e34b95
b663c62e-07d6-47d3-a58a-e29949f57814	Worcester, MA	2	c5eb2dc5-6a38-4820-b325-03a565d9040c	99109c0a-36ba-459d-bf93-108b00724206
873f6221-7e7a-43e5-9c20-38b9fa72702c	Rochester, MN	2	cdd61cb8-4631-4936-becd-e3ce0065dfdd	f4f51bcb-930a-49fe-8e02-bd55ff1861e0
2c3a9dc1-1415-4f57-97bf-e845cc8d748e	St. Louis, MO	2	1d2980a7-5597-49bb-aa74-64f76cd0ff8e	4b1deeca-5f73-4b86-8895-c337a6ddf4bc
97352060-59c8-45c4-9e45-d51652ebf6c5	Paradise, NV	2	463b26a7-0309-4db0-a930-08ee0d9ca486	f8011391-9784-4b1a-a890-b441a3868a6f
eeacaf24-8c8a-42aa-8dc5-bfc627c7981a	Elizabeth, NJ	2	eb11824b-bd56-4107-a550-b274226d7acd	9c94c1dd-fd01-4064-bb9a-1bd6bf5b41b9
5b61697c-ab51-4d48-87fd-fed02ccfedb7	Rochester, NY	2	223cd1e2-a4b6-4917-bf10-f82fc000b5cb	c7bfb0ee-21a3-4e69-be67-7720cfbf2041
75eafe7f-8503-4a37-981a-6ed01b867de5	Akron, OH	2	62c8935c-fbb2-4d1b-af21-8e78a75b65ce	24d1e608-0e68-4fdc-bc35-c9a9b451ca08
e6cfdb24-941f-4441-a9dd-97891a73a831	Tulsa, OK	2	06c77b20-ad97-4629-b086-5b99e1490bde	a6d1a50f-2f93-4da4-a084-9013a9b442a6
c80c45a4-6b34-4c11-914b-b6ea761c5003	Pittsburgh, PA	2	d3c6fb39-3123-4591-95d2-3adf4205e386	3ebbea0a-3854-4083-8b65-eabccd1ed638
3da15b50-ab04-46a2-9b78-f2cadad960c9	South Dakota	1	e85931c9-2049-4de8-ab9d-a99262ba3bc0	62c8ee18-25b6-40e8-ae8c-bc5cfcd4c545
a72c28e3-20df-49d5-ab48-2c53b628655c	Abilene, TX	2	ce928718-0403-4f84-8f1e-23077ee04596	56cdb46b-9751-4de2-809d-ee099c3e1f52
2dda5f2d-3540-4d4e-9bdf-fc014d692290	Dallas, TX	2	ad03f2fa-7765-4f4c-95f5-43d1fbaf63ef	fd45b4a3-cce3-4f5b-8166-17c6bf3b4764
414124d3-5b3c-49c2-bcb4-363cec040bd5	Laredo, TX	2	64cdd0c1-4068-4039-9ba9-daac61eeb598	b29cb3a1-1f37-4a5f-a188-ecd2d8cc39ac
3bfcc3ad-5e84-4362-b0e7-6f32ae152236	Plano, TX	2	5a3f171a-6467-44af-bdc3-dfe333939f04	301aa21a-93ca-4fd2-9276-7cfe4968d0ac
b353e413-f9c1-4f43-ba70-f5dfb860adb7	Salt Lake City, UT	2	99bce7cf-e767-4c3b-87ab-44dcc9925240	c4f42482-10d3-42fe-b4ca-bc913b07d025
16fef4d7-6154-4f3d-9fdd-d3ec4dbf616c	Norfolk, VA	2	bd545388-e3af-4dd7-993f-7c16e483137d	6f100d46-6cdc-4e3b-83cd-4bc5d2c7df09
e8e79b45-b263-4f28-ab2f-b198859e90cc	Tacoma, WA	2	279321c1-9fc4-4a8b-9601-a60930f08603	c5c8985b-7ef3-4904-8c4f-a11b9c3f3975
23a2cc79-495a-42be-be42-970c1b930c71	United States	0	7fdabf33-cfbb-4694-b375-38fb4738d65c	d3195711-fc34-4f1e-9083-91faa26051d5
43494227-48f5-4668-a988-3874c6065a9e	Thousand Oaks, CA	2	baf8edc6-38be-455b-97c9-f079e91fd6ec	829a5661-1055-4d20-98d7-a54c25e87607
eef8b381-94db-468b-9f50-4c0b0026ef24	West Covina, CA	2	67277139-65ac-4eae-846c-d7ac4630df30	2e5f1469-11e9-4b04-82d9-2cd2e00b62b2
0720c561-c9c3-4f35-b12f-b3a2d382d0d8	Lakewood, CO	2	2307ede3-c36b-4647-88c8-13bf518a1bc2	87849fbd-7e78-45cf-a6ad-caf68f2433c3
90181779-1c97-41f3-9454-37f111dfde4c	Waterbury, CT	2	87d17aee-a302-4525-ac88-2a4c7b039abc	ad8c4d75-afa7-4086-8d10-143d79f36c52
950099d2-8e07-4c9d-a733-4cf8d2b1acb4	Davie, FL	2	20957652-fd15-46ed-afef-8f7e2f5dff2d	da5d29f5-8ab4-4c6e-840f-3b0cd7c07002
69d2d9c9-e2b7-4f3f-a34d-02066463de26	Miramar, FL	2	1e16056c-d6bc-4e36-9cbc-f2fd30c50d92	ffe03b08-87ef-4622-8b18-e173679ae6bd
d0fad04c-85e7-48c1-b862-8ae6dc7b02fd	Florida	1	b72f451c-995b-408b-975c-264592de6fb2	57ff5190-b3c2-41ba-b367-8b8e4949221e
993e04ae-dedd-4bdb-974b-f70087e0a8fa	Idaho	1	22aa01bc-0b6a-4baf-a28f-afb22ae23df6	d3591dcb-dfa6-4c56-8a22-820f103c481e
8d31ebb1-3b35-4742-8223-b724ed805639	Illinois	1	41a53138-c51a-4186-b0f0-8f8bea8c5c63	c625981c-72ec-4608-aa67-3dcddc9c84a2
ee341537-c3a9-4b4a-b727-0d490bf44284	Kansas City, KS	2	7680bcb9-fcc6-424e-9970-d751fa74669d	cc9783d9-2965-43ea-b55a-17af0475230f
e0829c85-0528-4338-8ca3-17c271feb262	Louisville, KY	2	30b50584-a9b7-43f2-83e3-17594163abd3	7777a6f5-f086-45ee-a1b3-819627dfc3e0
2020d789-96dd-44e6-b165-13bce9273528	Baltimore, MD	2	7614bd58-4b43-47a1-9f51-d921de366698	9950fc89-2ca8-456b-9c4a-bbad8cf64cd1
5ceb0f47-5c5d-4d06-a333-eac634fd322b	Ann Arbor, MI	2	b6571079-b3b8-4338-9d4c-5e337bc46c60	79a2d195-47c3-4b07-837e-532af4fc5dea
78070cc0-9faf-4239-8e13-07a7b71f4e56	Minnesota	1	5d8ad02d-c707-4c39-915a-9eea6c23385e	bcd8cdcd-091e-48f0-8499-3e2ed4ed8598
91e5cb37-3188-4f99-9f88-c83c06a2fb65	Billings, MT	2	a5a09b27-1d01-4f45-abc9-0d0dc4df7345	0b353cff-48e5-4213-9cd0-6491ee9789ee
39f3fd8a-ada9-443a-9808-539bcd3c2d9f	Reno, NV	2	90efd886-50c6-41ad-8394-692b6f0aa97c	bf14a6a9-aabf-4c94-89db-6b29e696bc71
48c1441b-f08e-40c7-a272-a0741dea00f5	Edison, NJ	2	e3f04022-b82c-40e0-9422-4425d06fbb41	18c10ca2-b2bd-4d1a-b858-897269d25e6d
d1bf70ef-5ede-4854-892e-17c166a00d1b	Syracuse, NY	2	94c72673-12b0-42a8-b541-9710c98cd7ac	1985858b-1811-4453-92bf-a6029046c9fd
abefe45b-8b95-4318-b2f1-93abcd633fdd	Fayetteville, NC	2	6f067bba-f4c5-47b9-b207-65f72a3f79c0	ddfb7180-4cc1-4356-a760-a797c4d198b5
ece4310b-f0a1-4c39-ae7e-a1185748accb	Columbus, OH	2	bb1f5c1b-b95f-423d-9426-6d5e79715415	62b0bf67-8880-4044-9d00-8019546ece1d
52a92153-26ce-4828-b960-4484cface699	Gresham, OR	2	02e403ef-5c66-444c-a98f-6c46cffaeb9f	c38bed00-d0f3-4249-a3ef-391f2fb03b72
030b470e-e9cc-4f0c-8183-c70be360ba5b	Rhode Island	1	80414dd7-1cb4-4ac0-ba7a-4d1c212d5ce4	984e7047-fe87-4c7b-a998-8d23c8f157d4
ddd3adf8-52f0-41b5-9a8f-25bcf5f61aff	Clarksville, TN	2	26151b87-ac34-454a-9472-813ed52fd73a	d9907a5b-a59b-4f0e-9e88-3228c9133768
8f395c7d-f7b4-4d04-9c97-20eb2ed104d8	Arlington, TX	2	c846912e-7160-4527-a62b-d132b4c27bc7	5974c0e6-8c3c-4284-a633-d7976f31cdf8
04356eaa-d1d9-46db-811f-c183fc96a8c0	Fort Worth, TX	2	051a806d-696e-4e33-a2ad-88fea89fe9a1	2ee0741c-132b-44c8-8637-9f41ce10e7f9
9cdeb970-cfd7-4b39-b197-9543b6f44185	McAllen, TX	2	989ed3c5-b006-4585-a4ec-3dac71feb985	ca266c7f-c490-4801-8798-7c80a3381bec
71fe4321-fae1-4efc-b189-7bd5ff1a099d	San Angelo, TX	2	d981206e-c62c-4d2f-aa27-9ada1a2af9b7	f4aa6339-cf5c-4987-a5c1-337c2472dade
68826288-48ab-42dc-9364-9207646b5bc8	Utah	1	f9297cb7-f01a-4365-b3fb-d6594f7183c2	1e3b6fb7-0e35-478a-990e-39a3ae4d8705
34bcf770-3fed-4304-bd75-1ea8e816cc57	Virginia Beach, VA	2	c59bd5a2-2884-49ec-a53a-b1b61f2ee45d	a9422f46-66af-4194-a0e6-53e4e81ac41e
61fc72eb-2a2b-48e3-91a0-09ad2940afbd	Washington	1	3af45dce-078d-4668-b86d-02548c475668	4d75ba6c-24dc-4023-bf3c-35a4d59f476c
e0c13ed1-8b7d-4e16-a52b-f03ca1c621dd	Torrance, CA	2	b72be430-0bab-431d-9f5a-7f46621b2fac	6e2ac54d-49a4-44c2-aa22-8dc32f934a82
033e30d3-fb75-4e4e-8522-a1c455bb3a0e	California	1	b6ce9ca0-84b5-4b7a-85cb-9d4fa38dae8b	b5dc686e-3e84-4bd4-be3a-24b29c3aac10
936d60f9-4229-45a4-87b9-848723723a6f	Pueblo, CO	2	609f8e56-0fb5-4a94-9b63-05e3d9782a04	43a5be47-2803-4db3-a694-a866dc30219c
9acbb3d1-6b12-43f5-87f0-0ae829c83203	Connecticut	1	bea6e0b9-6963-4ab2-b84d-d7154ed3c053	2670ea22-0760-4f64-a721-21dfc80b42e5
b9af56fd-ecac-41f7-a198-639d29118e75	Fort Lauderdale, FL	2	00a5e77c-9291-4ffd-aedc-ffbc9e617d18	223dedc0-5c2b-4c9d-ba26-f412062753ae
0bb7cab5-63ea-46ba-82d3-08795a6457bb	Orlando, FL	2	3f5b9899-4857-43da-9f83-f135c70ddb87	c29b42fd-302b-4dbc-a02e-ef005373257e
8fd6b9d6-818f-476c-b13e-cf3ada67d498	Athens, GA	2	66d9dd9d-0090-43a0-9688-138415e8d42a	001a94e6-3f2c-4f7b-820f-0ada601ddee5
f6859970-704b-4a10-b83b-dca819635669	Aurora, IL	2	60f00d1b-d140-4d35-bb7a-8bf3c9601c66	053ecc3a-f5ad-450e-b057-81f85c21f9a5
2b19941e-02e5-4ac6-be75-617c7f0c49af	Evansville, IN	2	f67a3d3f-c19a-4ce7-a6ab-aeeee9731a3b	0ce94d50-d49a-4737-8296-f732b4e83258
70fde867-1be7-4349-ab51-8fe69cc8979d	Olathe, KS	2	05f9aaef-3cb2-4562-86dc-067edcc7ccf1	5b406ce3-a55d-4dcc-be70-bc0184d734f5
4bf15067-16f6-42dc-bda2-5e8632db4b67	Kentucky	1	4d8f0ae6-4c72-40cb-aac1-62c35a21d9c6	485fefb1-bd08-46f0-aa3c-e000541ed396
06d9bc7c-6171-47f8-a2df-bbacd9716390	Maryland	1	5bd40bed-ce42-4690-80ef-8946e317407c	3d105b9b-816c-41ae-8af5-cbdcb0fc5273
af4bd11f-28dc-45f0-b768-df4826ddded9	Detroit, MI	2	59f4368e-e9ab-46c8-a4aa-57a64875c717	baedeba5-f05d-432b-b95d-f7343e6a2997
033e1568-e545-4c26-9aa6-719054f21104	Jackson, MS	2	5be339bf-185c-4134-8c6a-320219e56047	e9f56758-2566-4102-9718-5ddafe6e13af
f14cbca0-228d-4c49-9849-cd01f6a37f70	Montana	1	5f17e726-6319-4858-82b4-6c4a5ed8a8af	7e6977c5-25e5-4cdb-a010-f3cdb36e6523
130a46a9-65cb-4b90-9b81-50ca1a31a63c	Spring Valley, NV	2	a24db46e-f101-49d8-84c6-ad8107dc61da	389e1aea-42be-4a15-ac6e-36121edee85e
7c190a9b-c611-48c7-8025-e91368e448a1	New Jersey	1	ac9b3859-c79b-466a-8fdd-c004b2710ddb	9adf5e6e-dac5-42d7-9dec-e8e627ad292d
5d4ded25-5a69-4e42-a485-382f3977c0c2	Yonkers, NY	2	be15219a-4fbc-48e3-9a75-c0ffe6799c6f	d7e6c0bc-381c-4372-9bb8-a6706da39a24
d74a65f6-048f-4675-b82b-884fdc3a6777	Cary, NC	2	e69f69d3-8787-4875-8530-0e2f6ac587cd	1eb5da75-bf41-425e-925e-def013b9c6c6
7c9e5151-dff0-4bb7-aba7-2fc341c98885	Dayton, OH	2	4f7b2cc4-a3ad-46ab-80dc-2979b59bb921	169e5d72-6543-4327-a1d4-da9fc1ce24b6
782e76ff-9138-490e-8a3a-ef55407b121b	Hillsboro, OR	2	653e2b10-026a-46c6-aefa-f65b06b6890c	04a97ec9-30df-4a4c-a319-903da96de674
7e7ca0aa-6c6e-40f4-844d-f0ed7382f503	Columbia, SC	2	595fe8e4-51e1-4e58-b0a4-6d62de7a07dc	a6814b0a-98e4-42a3-a1e8-4d50418a429d
aadc315a-6707-4635-8eb8-ae547e35a99a	Knoxville, TN	2	7632121a-dc1a-40c8-b04a-8bed280e3b62	d8cc795b-a9f6-4123-8838-d5d713243716
05fc84d8-8e20-45da-a97c-56de37155265	Austin, TX	2	88bf3950-d01d-4212-815d-22042f6638cb	720b4cd6-ad04-46dc-bd03-6764267d54b9
29e11ec4-f7dc-4fd2-aa51-6a2d8e6ba5b3	Frisco, TX	2	35960f78-d5b2-4231-9d43-a00ca53b4ec5	3b403c68-3c20-4e53-a5d5-ac95b32b9b60
0c633a18-f018-41f0-b09d-314dd8e745d5	McKinney, TX	2	53c7819e-9443-445d-ab8c-a6720fffa8bf	7c85c2f6-e91c-4517-8ac9-399c76ac429b
ef1a0b49-54ea-46fb-8d0b-c8a704321aae	San Antonio, TX	2	57b2d0fb-5ab3-4712-a945-3b4f163825ee	84e11101-ea1a-46b4-8f58-445835042469
e8dfaaa0-419a-40ce-8eb1-7ee96aded3a8	Vermont	1	86a3d5fd-20ed-473a-8319-876d95afd950	076dfc00-a693-4344-b688-337a261a8505
1dee87c7-1003-4a87-9094-af4ea3afc50a	Virginia	1	15281ab4-4551-4c3a-9476-1d8a04376e4f	175a1c89-e824-4903-b2aa-763ab4fce1c4
772d7d58-1fd5-45e9-8dba-b8ef67735e1d	West Virginia	1	bc0b95d4-d237-437d-8525-7896d7292fcd	b8ebcfcd-35fa-480a-bdad-2167aaa568e0
f19656ca-f641-4557-a0a0-20b94805c852	Valencia, CA	2	a96275ca-b02a-4838-a858-0d7054cda47b	a10251d4-1176-46d6-86b7-9801e50eb5a6
594933a3-5613-438e-b352-c2ef5d0bcce1	Arvada, CO	2	bb3f5477-5d68-4ee9-a1d0-925a3f757173	7915e315-f0db-4cb3-8cbb-465c7401229d
8a811603-5404-4357-84b1-ea1dfa0385a2	Thornton, CO	2	69dde54b-0951-49d3-a784-fc5247c4b0fe	475d31d8-3164-45be-8c10-7068d227a876
4d2b8b13-b53d-4d4c-b3bb-8ee4e518a6eb	Delaware	1	31edfc21-6eda-4ffa-b628-61c8d2672388	e6381830-9898-4130-9c8e-35fb745fe341
b1963e3d-e753-4099-b639-d09a28eb9255	Gainesville, FL	2	d54dd211-1bf6-4d4c-9551-93af91d5c264	de44a50f-0df2-479f-86a0-4276bfd083bf
b69d628a-60a3-4ad9-aec5-51434c3984db	Palm Bay, FL	2	54f5bb3e-44cc-4707-9a5b-b5b5070f620b	8ceb162f-5510-494d-8d4d-f2c03357d2f9
17b2153e-0c3d-4aec-8d7d-747fff70c8fa	Atlanta, GA	2	9befe06c-0687-44a0-a309-ce63f91e55ec	bd3cce36-bc4a-4f25-b30c-de76344a0756
128db463-e71e-495e-9fc3-33e36a19705e	Chicago, IL	2	261b7da9-e064-4b20-a5b7-ce515cdb82d9	625afffa-3d16-487b-8f94-64901c2c0f55
9f97eb49-c23b-4ee7-8772-346798dc8cc4	Fort Wayne, IN	2	278a441d-5883-466f-a376-7157276d838d	53f8d8e4-edd5-4db9-8046-27590402b8fe
2148c294-4ad7-46f2-886b-95da783768a0	Overland Park, KS	2	39a96545-1b0a-46c3-920d-cf550bb2856f	905d5b29-2654-48d9-9ecd-4b3df9151f0d
3540e49b-aa60-4c0f-a36d-5aecd3bc8818	Baton Rouge, LA	2	fc9f6e12-109d-4b03-a833-41a32fd09a3b	ff34d4e4-bf57-4f1b-9c80-c3aca8a73848
bdd550ac-cf3a-4735-a378-0a14a9290529	Boston, MA	2	1c1d7f7b-a5c4-438a-ac49-771a56cf82c7	e538032e-9a3b-424a-a21f-44850696058e
1ec4394b-b481-47cb-be1f-105abddf37f8	Grand Rapids, MI	2	b2a63b4f-1779-4046-8af8-9c1c93dcf3b5	262e61f7-fcfa-4a92-b25e-57ee28271ba6
964255ba-bc8a-4f49-a29d-a253e10754a9	Mississippi	1	21fd3b15-55b0-4052-8cc4-6f42768f7930	f9981e41-3eff-4aaa-869c-f9ad635508a9
43ddcec3-d769-4e65-8146-41eeda2cdacb	Lincoln, NE	2	c606d3e2-1d43-49a8-a32e-1d824a17bd5b	ebdf64c4-d6c3-4052-a2e0-b2394976afe9
5460fbeb-a294-4723-8d2a-b0997788eb22	Sunrise Manor, NV	2	854b9fd4-e62a-4d0f-accb-acdf53f1df9d	2fcffde1-de0c-4380-9c8c-49fb62e48f10
55c5c9a3-c2a5-43d9-8ab5-07ee47838e6b	Albuquerque, NM	2	4b079779-f086-4455-9ee4-e6113c7e8df8	9a562b91-5572-4704-9187-866c595137a4
a0e4ab75-21eb-4dff-96f7-9a329d307798	New York	1	5263dcfb-72de-486c-bdba-209c559b820e	4a20dd6d-de8b-4d56-a89f-077829dab900
f9278243-3c6c-4bc5-be42-6cf764ff9758	Wilmington, NC	2	f562e087-77f0-4912-95c8-3fd841b21c65	5558a5a1-6fb6-49a1-98c0-b33e03f2e932
240ee0f4-4dc5-40ec-a4c0-5aad8e68a6de	Toledo, OH	2	639d6bf3-8f22-4cc3-9c27-52d7d507df22	10c825b1-b4d1-41c4-9fbd-e7da8ff797f5
021b944d-cb06-4c14-8332-01ca13e5ba52	Portland, OR	2	62176253-33e3-43da-80fe-bd97e210a945	c4a00345-4a0a-413f-892d-b7597e11d97c
1817dc2f-9b34-465a-a863-1ed704f847db	Charleston, SC	2	66f8c9f3-d7da-4859-9236-9b670869c9d4	db28d4b7-dcf3-419f-974f-35c692b30003
37b6433b-1351-4363-983e-091c0c07897a	Memphis, TN	2	0d5d4bc9-8cce-4bbd-adfd-8bd9f21f7fbe	34c9415d-3385-4178-b1e6-f1557d8b247e
3a3917d7-3faa-4948-9db9-74b927ec9415	Beaumont, TX	2	caea3b9e-a973-4fe5-a075-727b093fa366	84d51fc4-337e-4194-9776-ef0a835d19d8
b8276538-bd8a-4fc1-8184-9b2f7d5dff87	Garland, TX	2	20ce6272-7a0c-4481-a16c-1c95d724df05	72cc8e9b-d3f3-4c63-81ec-2b2000205b5a
1fd39f6d-d976-4f09-bf6b-540c8b9f6b41	Mesquite, TX	2	9bddc955-37c2-49af-be13-a2ddf995370c	04f1be5b-3a98-4900-aed0-d77da203ba4b
ea948cc1-568b-457b-b850-e33d60bed2d2	Tyler, TX	2	f231b603-b0f7-43a9-b72c-8dadc9bf0dff	f2ee0247-1f45-4c99-b886-08110d53adfb
c2cf8235-560f-422e-8a23-4c6e64a3edd9	Alexandria, VA	2	b8564494-b4a9-4b02-870e-9d60f679e542	00629e8c-7d39-4360-a82a-ee5256302fe0
71df8c63-a63c-4ef4-b175-42c8e18a3c07	Bellevue, WA	2	b6ebc3a9-907c-4b19-bdcb-750dcbb28d77	01af1578-abcc-4ba9-a43a-ac14c9b86652
4efbd9d7-1e2c-42b9-83a0-f81eca8ad809	Green Bay, WI	2	dda8a876-52e4-4841-9d03-6cdac9ac5f4a	374e246c-f5d4-4168-9dd6-39818c39eb38
\.


--
-- Data for Name: migration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migration (id, "timestamp", name) FROM stdin;
1	1599248686089	myInit1599248686089
\.


--
-- Data for Name: state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.state (id, name, "languagesId", "frameworksId", "countryId") FROM stdin;
\.


--
-- Data for Name: state-country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."state-country" (state_id, country_id) FROM stdin;
\.


--
-- Name: migration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migration_id_seq', 1, true);


--
-- Name: frameworks PK_23e178ce62668c9ce2036b7a3c2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.frameworks
    ADD CONSTRAINT "PK_23e178ce62668c9ce2036b7a3c2" PRIMARY KEY (id);


--
-- Name: migration PK_3043fc6b8af7c99b8b98830094f; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migration
    ADD CONSTRAINT "PK_3043fc6b8af7c99b8b98830094f" PRIMARY KEY (id);


--
-- Name: state PK_549ffd046ebab1336c3a8030a12; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT "PK_549ffd046ebab1336c3a8030a12" PRIMARY KEY (id);


--
-- Name: location PK_876d7bdba03c72251ec4c2dc827; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT "PK_876d7bdba03c72251ec4c2dc827" PRIMARY KEY (id);


--
-- Name: state-country PK_9c53286ad20f5b8b0620f25ea67; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."state-country"
    ADD CONSTRAINT "PK_9c53286ad20f5b8b0620f25ea67" PRIMARY KEY (state_id, country_id);


--
-- Name: city PK_b222f51ce26f7e5ca86944a6739; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT "PK_b222f51ce26f7e5ca86944a6739" PRIMARY KEY (id);


--
-- Name: languages PK_b517f827ca496b29f4d549c631d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT "PK_b517f827ca496b29f4d549c631d" PRIMARY KEY (id);


--
-- Name: country PK_bf6e37c231c4f4ea56dcd887269; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269" PRIMARY KEY (id);


--
-- Name: city-state PK_ed1fed2ce34e24c66db3c17d7da; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."city-state"
    ADD CONSTRAINT "PK_ed1fed2ce34e24c66db3c17d7da" PRIMARY KEY (city_id, state_id);


--
-- Name: country REL_11460712e02becc189bad27817; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT "REL_11460712e02becc189bad27817" UNIQUE ("frameworksId");


--
-- Name: city REL_137965e7b7818dd5ed8a3f68d7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT "REL_137965e7b7818dd5ed8a3f68d7" UNIQUE ("frameworksId");


--
-- Name: city REL_5963c3284d3b554fa3783b789b; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT "REL_5963c3284d3b554fa3783b789b" UNIQUE ("languagesId");


--
-- Name: state REL_5e03de0b781635de192c045204; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT "REL_5e03de0b781635de192c045204" UNIQUE ("languagesId");


--
-- Name: country REL_700abdb5d2db295a208a7004e5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT "REL_700abdb5d2db295a208a7004e5" UNIQUE ("languagesId");


--
-- Name: location REL_8952578b297a14c3ec4717e7ec; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT "REL_8952578b297a14c3ec4717e7ec" UNIQUE ("frameworksId");


--
-- Name: state REL_8cc5df453dfd5d3e45c32ca535; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT "REL_8cc5df453dfd5d3e45c32ca535" UNIQUE ("frameworksId");


--
-- Name: location REL_c93d7c751b4f9cfc661f28fe32; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT "REL_c93d7c751b4f9cfc661f28fe32" UNIQUE ("languagesId");


--
-- Name: IDX_2c5aa339240c0c3ae97fcc9dc4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_2c5aa339240c0c3ae97fcc9dc4" ON public.country USING btree (name);


--
-- Name: IDX_b2c4aef5929860729007ac32f6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_b2c4aef5929860729007ac32f6" ON public.state USING btree (name);


--
-- Name: IDX_f0336eb8ccdf8306e270d400cf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_f0336eb8ccdf8306e270d400cf" ON public.location USING btree (name);


--
-- Name: IDX_f8c0858628830a35f19efdc0ec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_f8c0858628830a35f19efdc0ec" ON public.city USING btree (name);


--
-- Name: country FK_11460712e02becc189bad278179; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT "FK_11460712e02becc189bad278179" FOREIGN KEY ("frameworksId") REFERENCES public.frameworks(id);


--
-- Name: city FK_137965e7b7818dd5ed8a3f68d7a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT "FK_137965e7b7818dd5ed8a3f68d7a" FOREIGN KEY ("frameworksId") REFERENCES public.frameworks(id);


--
-- Name: city FK_5963c3284d3b554fa3783b789b2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT "FK_5963c3284d3b554fa3783b789b2" FOREIGN KEY ("languagesId") REFERENCES public.languages(id);


--
-- Name: state FK_5e03de0b781635de192c0452044; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT "FK_5e03de0b781635de192c0452044" FOREIGN KEY ("languagesId") REFERENCES public.languages(id);


--
-- Name: country FK_700abdb5d2db295a208a7004e55; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT "FK_700abdb5d2db295a208a7004e55" FOREIGN KEY ("languagesId") REFERENCES public.languages(id);


--
-- Name: location FK_8952578b297a14c3ec4717e7ecf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT "FK_8952578b297a14c3ec4717e7ecf" FOREIGN KEY ("frameworksId") REFERENCES public.frameworks(id);


--
-- Name: state FK_8cc5df453dfd5d3e45c32ca5351; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT "FK_8cc5df453dfd5d3e45c32ca5351" FOREIGN KEY ("frameworksId") REFERENCES public.frameworks(id);


--
-- Name: location FK_c93d7c751b4f9cfc661f28fe32c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT "FK_c93d7c751b4f9cfc661f28fe32c" FOREIGN KEY ("languagesId") REFERENCES public.languages(id);


--
-- Name: state FK_e81c86ceadca8731f5fca8e06f5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT "FK_e81c86ceadca8731f5fca8e06f5" FOREIGN KEY ("countryId") REFERENCES public.country(id);


--
-- Name: city FK_e99de556ee56afe72154f3ed04a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT "FK_e99de556ee56afe72154f3ed04a" FOREIGN KEY ("stateId") REFERENCES public.state(id);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg100+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

