--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    name character varying(30) NOT NULL,
    isinvader boolean,
    planets_invaded integer,
    planet_id integer
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aliens_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_alien_id_seq OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aliens_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_ly numeric(12,1),
    num_stars integer,
    galaxy_type character varying(20)
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
    name character varying(30) NOT NULL,
    diameter integer,
    area_in_km integer,
    num_craters integer,
    planet_id integer
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
    name character varying(30) NOT NULL,
    description text,
    num_people integer,
    haslife boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    inmilkyway boolean,
    star_type character varying(20),
    color character varying(20),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.aliens_alien_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 'Quartod', true, 12, 5);
INSERT INTO public.alien VALUES (2, 'Melvin', true, 1, 4);
INSERT INTO public.alien VALUES (3, 'Zorg', false, 0, 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 120000.0, 3000000, 'Irregular');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 110000.2, 1000000000, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'NGC 55', 50000.4, 2000000, 'M101');
INSERT INTO public.galaxy VALUES (4, 'Tucana', 2000.9, 17, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Pegasus', 13046.3, 2700000, 'Spheroidal');
INSERT INTO public.galaxy VALUES (6, 'Leo', 2250000.3, 13600000, 'Irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1300, 120000, 300, 3);
INSERT INTO public.moon VALUES (2, 'omicron', 1200, 234500, 245, 5);
INSERT INTO public.moon VALUES (3, 'imancold', 34500, 2300000, 20, 5);
INSERT INTO public.moon VALUES (4, 'Vulcano II', 56000, 34502000, 567, 5);
INSERT INTO public.moon VALUES (5, 'impala', 345745, 33340, 23, 8);
INSERT INTO public.moon VALUES (6, 'Murclet', 25000, 34000, 1000, 12);
INSERT INTO public.moon VALUES (7, 'Era', 45673, 14568, 123, 11);
INSERT INTO public.moon VALUES (8, 'Artemix', 9082, 6756, 567, 13);
INSERT INTO public.moon VALUES (9, 'Rinocron', 8970, 12347, 897, 15);
INSERT INTO public.moon VALUES (10, 'Metronux', 4562, 2936, 456, 15);
INSERT INTO public.moon VALUES (11, 'Luna 3', 1300, 120000, 300, 1);
INSERT INTO public.moon VALUES (12, 'omicron 3', 1200, 234500, 245, 10);
INSERT INTO public.moon VALUES (13, 'imancold 2', 34500, 2300000, 20, 14);
INSERT INTO public.moon VALUES (14, 'Vulcano III', 56000, 34502000, 567, 5);
INSERT INTO public.moon VALUES (15, 'impala 4', 345745, 33340, 23, 7);
INSERT INTO public.moon VALUES (16, 'Murclet 6', 25000, 34000, 1000, 12);
INSERT INTO public.moon VALUES (17, 'Era 2', 45673, 14568, 123, 12);
INSERT INTO public.moon VALUES (18, 'Artemix 7', 9082, 6756, 567, 13);
INSERT INTO public.moon VALUES (19, 'Rinocron 4', 8970, 12347, 897, 2);
INSERT INTO public.moon VALUES (20, 'Metronux 1', 4562, 2936, 456, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'lorem ipsum lorem ipsum, lorem ipsum, ipsum lorem text', 0, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'lorem lorem lorem lorem lorem lorem', 0, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'lorem lorem lorem lorem lorem lorem', 80000000, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'lorem lorem lorem lorem lorem lorem', 13000, true, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 'lorem lorem lorem lorem lorem lorem lorem', 5400000, true, 1);
INSERT INTO public.planet VALUES (6, 'MIler', 'lorem ipsum lorem ipsum, lorem ipsum, ipsum lorem text', 0, false, 2);
INSERT INTO public.planet VALUES (7, 'k18', 'lorem lorem lorem lorem lorem lorem', 30000, true, 2);
INSERT INTO public.planet VALUES (8, 'Panda', 'lorem lorem lorem lorem lorem lorem', 5000, true, 2);
INSERT INTO public.planet VALUES (9, 'M35', 'lorem lorem lorem lorem lorem lorem', 0, false, 2);
INSERT INTO public.planet VALUES (10, 'jupergant', 'lorem lorem lorem lorem lorem lorem lorem', 0, false, 2);
INSERT INTO public.planet VALUES (11, 'Siru', 'lorem ipsum lorem ipsum, lorem ipsum, ipsum lorem text', 0, false, 3);
INSERT INTO public.planet VALUES (12, 'Termalex', 'lorem lorem lorem lorem lorem lorem', 2000, true, 4);
INSERT INTO public.planet VALUES (13, 'Imno30', 'lorem lorem lorem lorem lorem lorem', 23000000, true, 5);
INSERT INTO public.planet VALUES (14, 'Vulcano', 'lorem lorem lorem lorem lorem lorem', 2000, true, 7);
INSERT INTO public.planet VALUES (15, 'Onion', 'lorem lorem lorem lorem lorem lorem lorem', 0, false, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 'yellow dwarf', 'Yellow', 1);
INSERT INTO public.star VALUES (2, 'Sirius', true, 'Binary', 'Blue-white', 1);
INSERT INTO public.star VALUES (3, '36 Andromedae', false, 'Binary', 'Orange-red', 2);
INSERT INTO public.star VALUES (4, 'k30', false, 'giant blue', 'Blue', 2);
INSERT INTO public.star VALUES (5, '6 turud', false, 'Giant', 'Orange', 3);
INSERT INTO public.star VALUES (6, 'Caterpilyx', false, 'dwarf', 'Yellow', 4);
INSERT INTO public.star VALUES (7, 'Magnus 10', false, 'super nova', 'white', 5);
INSERT INTO public.star VALUES (8, 'Leonidas', false, 'Binary', 'Orange-red', 6);
INSERT INTO public.star VALUES (9, 'Betelgueuse', true, 'Supergiant', 'Red', 1);


--
-- Name: aliens_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aliens_alien_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: alien aliens_alien_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT aliens_alien_id_key UNIQUE (alien_id);


--
-- Name: alien aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (alien_id);


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
-- Name: alien alien_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

