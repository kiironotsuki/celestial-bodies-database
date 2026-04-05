--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    comet_type character varying(20),
    distance_from_earth integer,
    description text,
    galaxy_id integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    galaxy_types character varying(20),
    distance_from_earth numeric,
    description text
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
    name character varying(20) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    moon_type character varying(20),
    distance_from_earth integer,
    description text,
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
    name character varying(20) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_type character varying(20),
    distance_from_earth integer,
    description text,
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
    name character varying(20) NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    descriptions text,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halleys', false, 4000, 'Short-period', 1, 'Famous comet.', 1);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', false, 4000, 'Long-period', 1, 'Very bright.', 1);
INSERT INTO public.comet VALUES (3, 'Encke', false, 4000, 'Short-period', 1, 'Small orbit.', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, true, 13600, 'Spiral', 0, 'Our home.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, true, 10000, 'Spiral', 2.5, 'Nearest neighbor.');
INSERT INTO public.galaxy VALUES (3, 'Sombrero', false, true, 9000, 'Lenticular', 28, 'Has a bright nucleus.');
INSERT INTO public.galaxy VALUES (4, 'Triangulum', false, true, 12000, 'Spiral', 3, 'Small but local.');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', false, true, 6000, 'Spiral', 23, 'Interacting galaxy.');
INSERT INTO public.galaxy VALUES (6, 'Black Eye', false, true, 7000, 'Spiral', 17, 'Dark band of dust.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, true, 4500, 'Natural', 1, 'Earth moon.', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', false, false, 4500, 'Natural', 1, 'Mars moon.', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, false, 4500, 'Natural', 1, 'Mars moon.', 4);
INSERT INTO public.moon VALUES (4, 'Io', false, true, 4500, 'Galilean', 1, 'Volcanic.', 5);
INSERT INTO public.moon VALUES (5, 'Europa', false, true, 4500, 'Galilean', 1, 'Icy shell.', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, true, 4500, 'Galilean', 1, 'Largest moon.', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', false, true, 4500, 'Galilean', 1, 'Cratered.', 5);
INSERT INTO public.moon VALUES (8, 'Titan', false, true, 4500, 'Natural', 1, 'Thick atmosphere.', 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', false, true, 4500, 'Natural', 1, 'Water geysers.', 6);
INSERT INTO public.moon VALUES (10, 'Mimas', false, true, 4500, 'Natural', 1, 'Death Star moon.', 6);
INSERT INTO public.moon VALUES (11, 'Iapetus', false, true, 4500, 'Natural', 1, 'Two-toned.', 6);
INSERT INTO public.moon VALUES (12, 'Rhea', false, true, 4500, 'Natural', 1, 'Icy moon.', 6);
INSERT INTO public.moon VALUES (13, 'Miranda', false, true, 4500, 'Natural', 1, 'Uranus moon.', 7);
INSERT INTO public.moon VALUES (14, 'Ariel', false, true, 4500, 'Natural', 1, 'Uranus moon.', 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', false, true, 4500, 'Natural', 1, 'Uranus moon.', 7);
INSERT INTO public.moon VALUES (16, 'Titania', false, true, 4500, 'Natural', 1, 'Uranus moon.', 7);
INSERT INTO public.moon VALUES (17, 'Oberon', false, true, 4500, 'Natural', 1, 'Uranus moon.', 7);
INSERT INTO public.moon VALUES (18, 'Triton', false, true, 4500, 'Natural', 1, 'Neptune moon.', 8);
INSERT INTO public.moon VALUES (19, 'Nereid', false, false, 4500, 'Natural', 1, 'Neptune moon.', 8);
INSERT INTO public.moon VALUES (20, 'Proteus', false, false, 4500, 'Natural', 1, 'Neptune moon.', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, true, 4500, 'Terrestrial', 91, 'Closest to Sun.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, true, 4500, 'Terrestrial', 41, 'Hottest planet.', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 4500, 'Terrestrial', 0, 'Blue marble.', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, true, 4500, 'Terrestrial', 78, 'The red planet.', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 4500, 'Gas Giant', 628, 'Largest planet.', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 4500, 'Gas Giant', 1277, 'Ringed planet.', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 4500, 'Ice Giant', 2721, 'Tilted axis.', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 4500, 'Ice Giant', 4351, 'Windiest planet.', 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', false, true, 4800, 'Exoplanet', 4, 'Likely rocky.', 6);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', false, true, 6000, 'Exoplanet', 1400, 'Earth 2.0.', 4);
INSERT INTO public.planet VALUES (11, 'Osiris', false, true, 5000, 'Exoplanet', 150, 'Evaporating planet.', 5);
INSERT INTO public.planet VALUES (12, 'Gliese 581c', false, true, 4000, 'Exoplanet', 20, 'Super-Earth.', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 4600, 0, 'The center of our system.', 1);
INSERT INTO public.star VALUES (2, 'Sirius', true, 240, 8.6, 'The brightest star.', 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', true, 10, 642, 'A red supergiant.', 1);
INSERT INTO public.star VALUES (4, 'Vega', true, 455, 25, 'Fifth brightest star.', 1);
INSERT INTO public.star VALUES (5, 'Rigel', true, 8, 864, 'Blue supergiant.', 1);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', true, 4850, 4.2, 'Nearest to Sun.', 1);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

