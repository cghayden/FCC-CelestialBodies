--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: beings; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.beings (
    beings_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type text NOT NULL,
    arms integer,
    legs integer
);


ALTER TABLE public.beings OWNER TO freecodecamp;

--
-- Name: beings_being_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.beings_being_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.beings_being_id_seq OWNER TO freecodecamp;

--
-- Name: beings_being_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.beings_being_id_seq OWNED BY public.beings.beings_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size integer,
    age integer,
    gravity numeric NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer,
    size integer,
    age integer,
    inhabitable boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer,
    size integer,
    age integer,
    inhabitable boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer,
    size integer,
    age integer,
    gravity numeric NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: beings beings_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.beings ALTER COLUMN beings_id SET DEFAULT nextval('public.beings_being_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: beings; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.beings VALUES (1, 'Human', 'Mammal', 2, 2);
INSERT INTO public.beings VALUES (2, 'Morganish', 'Crabalon', 4, 4);
INSERT INTO public.beings VALUES (3, 'Cratalian', 'Reptilian', 3, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 50, 100, 4.7);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 200, 78, 6.9);
INSERT INTO public.galaxy VALUES (3, 'Westeros', 70, 88, 10.3);
INSERT INTO public.galaxy VALUES (4, 'Windrom', 194, 48, 5.9);
INSERT INTO public.galaxy VALUES (5, 'Granadon', 98, 230, 9.7);
INSERT INTO public.galaxy VALUES (6, 'Prama', 34, 123, 4.5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Eos', 1, 4, 45, false);
INSERT INTO public.moon VALUES (2, 'Io', 4, 3, 89, true);
INSERT INTO public.moon VALUES (3, 'Alpha', 3, 7, 8, false);
INSERT INTO public.moon VALUES (4, 'Bantu', 5, 88, 99, true);
INSERT INTO public.moon VALUES (5, 'Theos', 1, 7, 4, false);
INSERT INTO public.moon VALUES (6, 'Beta', 6, 89, 9, true);
INSERT INTO public.moon VALUES (7, 'Aloo', 10, 8, 9, true);
INSERT INTO public.moon VALUES (8, 'Olania', 4, 8, 4, true);
INSERT INTO public.moon VALUES (9, 'Yuzu', 12, 4, 33, false);
INSERT INTO public.moon VALUES (10, 'Quanto', 2, 5, 4, true);
INSERT INTO public.moon VALUES (11, 'Palao', 8, 4, 2, false);
INSERT INTO public.moon VALUES (12, 'Untu', 9, 4, 1, true);
INSERT INTO public.moon VALUES (13, 'Frindal', 9, 78, 8, false);
INSERT INTO public.moon VALUES (14, 'Asaba', 2, 7, 8, true);
INSERT INTO public.moon VALUES (15, 'Bantoo', 4, 8, 9, false);
INSERT INTO public.moon VALUES (16, 'Chaga', 5, 5, 6, true);
INSERT INTO public.moon VALUES (17, 'Lagos', 6, 7, 8, false);
INSERT INTO public.moon VALUES (18, 'Dragos', 4, 8, 99, true);
INSERT INTO public.moon VALUES (19, 'TwinTo', 8, 9, 23, false);
INSERT INTO public.moon VALUES (20, 'Woona', 9, 34, 54, true);
INSERT INTO public.moon VALUES (21, 'Zanoia', 11, 5, 2, false);
INSERT INTO public.moon VALUES (22, 'Strata', 10, 8, 9, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 25, 200, true);
INSERT INTO public.planet VALUES (2, 'Quasaloon', 3, 47, 4, false);
INSERT INTO public.planet VALUES (3, 'Mars', 1, 44, 890, false);
INSERT INTO public.planet VALUES (4, 'Gwanalo', 4, 897, 43, true);
INSERT INTO public.planet VALUES (5, 'Thrania', 5, 76, 2, false);
INSERT INTO public.planet VALUES (6, 'Socrania', 2, 88, 234, false);
INSERT INTO public.planet VALUES (7, 'Elaavua', 6, 443, 78, true);
INSERT INTO public.planet VALUES (8, 'Jupiter', 1, 43434, 89, false);
INSERT INTO public.planet VALUES (9, 'Madaron', 2, 419, 57, false);
INSERT INTO public.planet VALUES (10, 'Inadrus', 4, 508, 22, true);
INSERT INTO public.planet VALUES (11, 'Tatooine', 5, 40, 1074, true);
INSERT INTO public.planet VALUES (12, 'Eldaron', 2, 477, 17, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 45, 854, 3.8);
INSERT INTO public.star VALUES (2, 'BennyStar', 2, 45, 745, 4.98);
INSERT INTO public.star VALUES (3, 'SophieStar', 3, 432, 3, 43.89);
INSERT INTO public.star VALUES (4, 'AddieStar', 2, 43389, 5, 3.21);
INSERT INTO public.star VALUES (5, 'EllaStar', 1, 32, 2, 4.5);
INSERT INTO public.star VALUES (6, 'LolaStar', 2, 567, 4, 5.78);


--
-- Name: beings_being_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.beings_being_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: beings beings_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.beings
    ADD CONSTRAINT beings_name_key UNIQUE (name);


--
-- Name: beings beings_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.beings
    ADD CONSTRAINT beings_pkey PRIMARY KEY (beings_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

