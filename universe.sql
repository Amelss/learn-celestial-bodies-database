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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer NOT NULL,
    distance_in_thousands_of_light_years_from_earth integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    size_in_thousands_of_km numeric(10,2),
    description text,
    code_name character varying(10)
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer NOT NULL,
    distance_in_thousands_of_light_years_from_earth integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    size_in_thousands_of_km numeric(10,2),
    description text,
    code_name character varying(10)
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
    name character varying(20),
    age_in_millions_of_years integer NOT NULL,
    distance_in_thousands_of_light_years_from_earth integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    size_in_thousands_of_km numeric(10,2),
    description text,
    code_name character varying(10),
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer NOT NULL,
    distance_in_thousands_of_light_years_from_earth integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    size_in_thousands_of_km numeric(10,2),
    description text,
    code_name character varying(10),
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer NOT NULL,
    distance_in_thousands_of_light_years_from_earth integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    size_in_thousands_of_km numeric(10,2),
    description text,
    code_name character varying(10),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Supermassive', 45, 878, false, false, 999.00, 'Almost every large galaxy, including our Milky Way, has a supermassive black hole at its center.', 'SMB');
INSERT INTO public.black_hole VALUES (2, 'Messier 60', 43, 670, false, false, 567.00, 'This hole, located at the center of the elliptical galaxy Messier-87', 'M60');
INSERT INTO public.black_hole VALUES (3, 'Phoenix A', 78, 989, false, false, 499.00, 'The Phoenix Cluster''s central galaxy boasts an impressive star creation rate of 500-800 solar masses per year.', 'PHX');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Milky Way', 345, 456, false, true, 4562.00, 'The Milky Way is the galaxy that includes the Solar System, with the name describing the galaxy''s appearance from Earth', 'MLKY');
INSERT INTO public.galaxy VALUES (1, 'Aquila', 200, 20, false, false, 9815.00, 'Aquila, constellation in the northern sky, at about 20 hours right ascension and on the celestial equator in declination.', 'AQA');
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 348, 54, false, false, 315.00, 'The Black Eye Galaxy is a relatively isolated spiral galaxy in the mildly northern constellation of Coma Berenices.', 'BEG');
INSERT INTO public.galaxy VALUES (5, 'Cosmos Redshift 7', 800, 89, false, false, 571.00, 'Cosmos Redshift 7 is a high-redshift Lyman-alpha emitter galaxy.', 'CR7');
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 400, 986, false, false, 398.00, 'Andromeda, which is shortened from "Andromeda Galaxy", gets its name from the area of the sky in which it appears, the constellation of Andromeda.', 'ADA');
INSERT INTO public.galaxy VALUES (7, 'Sombrero Galaxy', 783, 134, false, false, 762.00, 'The Sombrero Galaxy is a peculiar galaxy of unclear classification in the constellation borders of Virgo and Corvus', 'SBO');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 45, 384, true, false, 3.00, 'The Moon is Earth''s only natural satellite.Over time Earth''s gravity has caused tidal locking, causingthe same side of the Moon to always face Earth.', 'MOO', 1);
INSERT INTO public.moon VALUES (2, 'Tethys', 34, 56, true, false, 23.00, 'Tethys or Saturn 3, is the fifth-largest moon of Saturn', 'THS', 3);
INSERT INTO public.moon VALUES (3, 'Lapetus', 12, 44, true, false, 10.00, 'Lapetus is the outermost of Saturn''s large moons.', 'LPS', 3);
INSERT INTO public.moon VALUES (4, 'Europa', 10, 23, true, false, 10.00, 'Europa, or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter.', 'ERA', 2);
INSERT INTO public.moon VALUES (5, 'Epimetheus', 14, 33, true, false, 15.00, 'Epimetheus is an inner satellite of Saturn. It is also known as Saturn XI.', 'EPS', 3);
INSERT INTO public.moon VALUES (6, 'Titan', 17, 44, true, false, 20.00, 'Titan is the largest moon of Saturn and the second-largest in the Solar System.', 'TTN', 3);
INSERT INTO public.moon VALUES (7, 'Mimas', 10, 23, true, false, 10.00, 'Mimas, also designated Saturn I, is the seventh-largest natural satellite of Saturn.', 'MMS', 3);
INSERT INTO public.moon VALUES (8, 'Enceladus', 12, 56, true, false, 25.00, 'Enceladus is the sixth-largest moon of Saturn and the 19th-largest in the Solar System.', 'EDS', 3);
INSERT INTO public.moon VALUES (9, 'Telesto', 13, 44, true, false, 10.00, 'Telesto is a moon of Saturn. It was discovered by Smith, Reitsema, Larson and Fountain in 1980.', 'TSO', 3);
INSERT INTO public.moon VALUES (10, 'Callisto', 14, 63, true, false, 17.00, 'Callisto, or Jupiter IV, is the second-largest moon of Jupiter, after Ganymede.', 'CLO', 2);
INSERT INTO public.moon VALUES (11, 'Io', 15, 32, true, false, 3.00, 'Io, or Jupiter I, is the innermost and second-smallest of the four Galilean moons of the planet Jupiter. ', 'IO', 2);
INSERT INTO public.moon VALUES (12, 'Himalia', 10, 54, true, false, 18.00, 'Himalia, or Jupiter VI, is the largest irregular satellite of Jupiter.', 'HMA', 2);
INSERT INTO public.moon VALUES (13, 'Amalthea', 10, 23, true, false, 10.00, 'Amalthea is a moon of Jupiter.', 'AMA', 2);
INSERT INTO public.moon VALUES (14, 'Methone', 14, 51, false, false, 27.00, 'Methone is a small, egg-shaped natural satellite of Saturn that orbits out past Saturn''s ring system, between the orbits of Mimas and Enceladus.', 'MTE', 3);
INSERT INTO public.moon VALUES (15, 'Cyllene', 12, 49, true, false, 20.00, 'Cyllene, also known as Jupiter XLVIII, is a natural satellite of Jupiter. ', 'CYE', 2);
INSERT INTO public.moon VALUES (16, 'Loge ', 11, 73, true, false, 17.00, 'Loge or Saturn XLVI is a natural satellite of Saturn. Its discovery was announced by Scott S. Sheppard, David C. Jewitt.', 'LGE', 3);
INSERT INTO public.moon VALUES (17, 'Siarnaq', 11, 56, false, false, 60.00, 'Siarnaq, also designated Saturn XXIX, is the second-largest irregular moon of Saturn.', 'SRQ', 3);
INSERT INTO public.moon VALUES (18, 'Carpo', 34, 64, false, false, 8.00, 'Carpo, also Jupiter XLVI, is a small outer natural satellite of Jupiter.', 'CRO', 2);
INSERT INTO public.moon VALUES (19, 'Herse', 9, 37, false, false, 7.00, 'Herse, or Jupiter L, previously known by its provisional designation of J 17, is a natural satellite of Jupiter.', 'HSE', 2);
INSERT INTO public.moon VALUES (20, 'Hati', 14, 78, false, false, 18.00, 'Hati or Saturn XLIII is a natural satellite of Saturn. Its discovery was announced by Scott S. Sheppard, David C. Jewitt.', 'HTI', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 45, 1, true, true, 24.00, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', 'ERT', 2);
INSERT INTO public.planet VALUES (2, 'Jupiter', 34, 62, true, false, 65.00, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', 'JUP', 2);
INSERT INTO public.planet VALUES (3, 'Saturn', 33, 45, true, false, 55.00, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.', 'SAT', 2);
INSERT INTO public.planet VALUES (4, 'Mars', 22, 45, true, false, 12.00, 'Since the earliest days of astronomy, people have been fascinated by Mars.', 'MAR', 2);
INSERT INTO public.planet VALUES (5, 'Neptune', 44, 72, true, false, 45.00, 'Neptune is the eighth and farthest known planet from the Sun.', 'NEP', 2);
INSERT INTO public.planet VALUES (6, 'Venus', 31, 75, true, false, 15.00, 'Venus is the second planet from the Sun. It is a terrestrial planet and is the closest in mass and size to its orbital neighbour Earth. ', 'VNS', 2);
INSERT INTO public.planet VALUES (7, 'Mercury', 26, 34, true, false, 6.00, 'Mercury is the first planet from the Sun and the smallest in the Solar System.', 'MUR', 2);
INSERT INTO public.planet VALUES (8, 'Pluto', 64, 52, true, false, 2.00, 'One of the five officially recognized dwarf planets in the Milky Way solar system.', 'PLU', 2);
INSERT INTO public.planet VALUES (9, 'Ceres', 44, 65, true, false, 3.00, 'One of the five officially recognized dwarf planets in the Milky Way solar system.', 'CRS', 2);
INSERT INTO public.planet VALUES (10, 'Uranus', 18, 25, true, false, 12.00, 'Uranus is the seventh planet from the Sun. It is a gaseous cyan-coloured ice giant.', 'URN', 2);
INSERT INTO public.planet VALUES (11, 'Eris', 67, 32, true, false, 4.00, 'One of the five officially recognized dwarf planets in the Milky Way solar system.', 'ERS', 2);
INSERT INTO public.planet VALUES (12, 'Haumea', 41, 85, true, false, 3.00, 'One of the five officially recognized dwarf planets in the Milky Way solar system.', 'HUA', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Altair', 10, 16, false, false, 1835.00, 'Altair, the brighest star in the northern constellation Aquila and the 12th brightest star in the sky', 'ALT', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 45, 78, false, false, 365.00, 'Sirius is the brightest star in the night sky. Its name is derived from a Greek word, meaning lit. ', 'SRS', 3);
INSERT INTO public.star VALUES (3, 'Rigel', 85, 23, false, false, 7.00, 'Rigel is a blue supergiant star in the constellation of Orion.', 'RGL', 4);
INSERT INTO public.star VALUES (4, 'Canopus', 18, 33, false, false, 37.00, 'Canopus is the brightest star in the southern constellation of Carina and the second-brightest star in the night sky.', 'CPS', 5);
INSERT INTO public.star VALUES (5, 'Vega', 112, 130, false, false, 88.00, 'Vega is the brightest star in the northern constellation of Lyra.', 'VGA', 6);
INSERT INTO public.star VALUES (6, 'Gacrux', 98, 22, false, false, 46.00, 'Gacrux is the third-brightest star in the southern constellation of Crux, the Southern Cross.', 'GAX', 7);
INSERT INTO public.star VALUES (7, 'Epsilon Pegasi', 50, 76, false, false, 345.00, 'Epsilon Pegasi, formally named Enif, is the brightest star in the northern constellation of Pegasus', 'EPSP', 1);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: black_hole black_hole_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_code_name_key UNIQUE (code_name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_name_key UNIQUE (code_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_name_key UNIQUE (code_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_code_name_key UNIQUE (code_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_code_name_key UNIQUE (code_name);


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

