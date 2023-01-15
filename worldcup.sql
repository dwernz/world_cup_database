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


DROP DATABASE worldcup;

--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup
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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (game_id integer NOT NULL,
                                           year integer NOT NULL,
                                                        round character varying(30) NOT NULL,
                                                                                    winner_id integer NOT NULL,
                                                                                                      opponent_id integer NOT NULL,
                                                                                                                          winner_goals integer NOT NULL,
                                                                                                                                               opponent_goals integer NOT NULL);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq AS integer
START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (team_id integer NOT NULL,
                                           name character varying(30) NOT NULL);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq AS integer
START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;

--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
ALTER COLUMN game_id
SET DEFAULT nextval('public.games_game_id_seq'::regclass);

--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
ALTER COLUMN team_id
SET DEFAULT nextval('public.teams_team_id_seq'::regclass);

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games
VALUES (39,
        2018,
        'Final',
        549,
        550,
        4,
        2);


INSERT INTO public.games
VALUES (40,
        2018,
        'Third Place',
        551,
        552,
        2,
        0);


INSERT INTO public.games
VALUES (41,
        2018,
        'Semi-Final',
        550,
        552,
        2,
        1);


INSERT INTO public.games
VALUES (42,
        2018,
        'Semi-Final',
        549,
        551,
        1,
        0);


INSERT INTO public.games
VALUES (43,
        2018,
        'Quarter-Final',
        550,
        553,
        3,
        2);


INSERT INTO public.games
VALUES (44,
        2018,
        'Quarter-Final',
        552,
        554,
        2,
        0);


INSERT INTO public.games
VALUES (45,
        2018,
        'Quarter-Final',
        551,
        555,
        2,
        1);


INSERT INTO public.games
VALUES (46,
        2018,
        'Quarter-Final',
        549,
        556,
        2,
        0);


INSERT INTO public.games
VALUES (47,
        2018,
        'Eighth-Final',
        552,
        557,
        2,
        1);


INSERT INTO public.games
VALUES (48,
        2018,
        'Eighth-Final',
        554,
        558,
        1,
        0);


INSERT INTO public.games
VALUES (49,
        2018,
        'Eighth-Final',
        551,
        559,
        3,
        2);


INSERT INTO public.games
VALUES (50,
        2018,
        'Eighth-Final',
        555,
        560,
        2,
        0);


INSERT INTO public.games
VALUES (51,
        2018,
        'Eighth-Final',
        550,
        561,
        2,
        1);


INSERT INTO public.games
VALUES (52,
        2018,
        'Eighth-Final',
        553,
        562,
        2,
        1);


INSERT INTO public.games
VALUES (53,
        2018,
        'Eighth-Final',
        556,
        563,
        2,
        1);


INSERT INTO public.games
VALUES (54,
        2018,
        'Eighth-Final',
        549,
        564,
        4,
        3);


INSERT INTO public.games
VALUES (55,
        2014,
        'Final',
        565,
        564,
        1,
        0);


INSERT INTO public.games
VALUES (56,
        2014,
        'Third Place',
        566,
        555,
        3,
        0);


INSERT INTO public.games
VALUES (57,
        2014,
        'Semi-Final',
        564,
        566,
        1,
        0);


INSERT INTO public.games
VALUES (58,
        2014,
        'Semi-Final',
        565,
        555,
        7,
        1);


INSERT INTO public.games
VALUES (59,
        2014,
        'Quarter-Final',
        566,
        567,
        1,
        0);


INSERT INTO public.games
VALUES (60,
        2014,
        'Quarter-Final',
        564,
        551,
        1,
        0);


INSERT INTO public.games
VALUES (61,
        2014,
        'Quarter-Final',
        555,
        557,
        2,
        1);


INSERT INTO public.games
VALUES (62,
        2014,
        'Quarter-Final',
        565,
        549,
        1,
        0);


INSERT INTO public.games
VALUES (63,
        2014,
        'Eighth-Final',
        555,
        568,
        2,
        1);


INSERT INTO public.games
VALUES (64,
        2014,
        'Eighth-Final',
        557,
        556,
        2,
        0);


INSERT INTO public.games
VALUES (65,
        2014,
        'Eighth-Final',
        549,
        569,
        2,
        0);


INSERT INTO public.games
VALUES (66,
        2014,
        'Eighth-Final',
        565,
        570,
        2,
        1);


INSERT INTO public.games
VALUES (67,
        2014,
        'Eighth-Final',
        566,
        560,
        2,
        1);


INSERT INTO public.games
VALUES (68,
        2014,
        'Eighth-Final',
        567,
        571,
        2,
        1);


INSERT INTO public.games
VALUES (69,
        2014,
        'Eighth-Final',
        564,
        558,
        1,
        0);


INSERT INTO public.games
VALUES (70,
        2014,
        'Eighth-Final',
        551,
        572,
        2,
        1);

--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams
VALUES (549,
        'France');


INSERT INTO public.teams
VALUES (550,
        'Croatia');


INSERT INTO public.teams
VALUES (551,
        'Belgium');


INSERT INTO public.teams
VALUES (552,
        'England');


INSERT INTO public.teams
VALUES (553,
        'Russia');


INSERT INTO public.teams
VALUES (554,
        'Sweden');


INSERT INTO public.teams
VALUES (555,
        'Brazil');


INSERT INTO public.teams
VALUES (556,
        'Uruguay');


INSERT INTO public.teams
VALUES (557,
        'Colombia');


INSERT INTO public.teams
VALUES (558,
        'Switzerland');


INSERT INTO public.teams
VALUES (559,
        'Japan');


INSERT INTO public.teams
VALUES (560,
        'Mexico');


INSERT INTO public.teams
VALUES (561,
        'Denmark');


INSERT INTO public.teams
VALUES (562,
        'Spain');


INSERT INTO public.teams
VALUES (563,
        'Portugal');


INSERT INTO public.teams
VALUES (564,
        'Argentina');


INSERT INTO public.teams
VALUES (565,
        'Germany');


INSERT INTO public.teams
VALUES (566,
        'Netherlands');


INSERT INTO public.teams
VALUES (567,
        'Costa Rica');


INSERT INTO public.teams
VALUES (568,
        'Chile');


INSERT INTO public.teams
VALUES (569,
        'Nigeria');


INSERT INTO public.teams
VALUES (570,
        'Algeria');


INSERT INTO public.teams
VALUES (571,
        'Greece');


INSERT INTO public.teams
VALUES (572,
        'United States');

--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 70, true);

--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 572, true);

--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);

--
-- Name: teams name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ADD CONSTRAINT name UNIQUE (name);

--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);

--
-- Name: games opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ADD CONSTRAINT opponent_id
FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);

--
-- Name: games winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ADD CONSTRAINT winner_id
FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);

--
-- PostgreSQL database dump complete
--
