--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: levels; Type: TABLE; Schema: public; Owner: tim; Tablespace: 
--

CREATE TABLE levels (
    name text NOT NULL,
    owner text NOT NULL,
    data text
);


ALTER TABLE public.levels OWNER TO tim;

--
-- Name: tilesets; Type: TABLE; Schema: public; Owner: tim; Tablespace: 
--

CREATE TABLE tilesets (
    name text NOT NULL,
    owner text NOT NULL,
    data text
);


ALTER TABLE public.tilesets OWNER TO tim;

--
-- Name: users; Type: TABLE; Schema: public; Owner: tim; Tablespace: 
--

CREATE TABLE users (
    name text NOT NULL,
    data text
);


ALTER TABLE public.users OWNER TO tim;

--
-- Data for Name: levels; Type: TABLE DATA; Schema: public; Owner: tim
--

COPY levels (name, owner, data) FROM stdin;
blocks	tim	{"description": "Collect all the coins to advance to the next level", "secrets": {"finish": {"8": {"win": ["Good job, you got 'em all", "tim", "humps"]}}}, "start": [10, 4], "grid": [[0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 8, 0, 0], [0, 0, 0, 0, 0, 0, 9, 0, 0, 8, 8, 0, 0, 9, 0, 0, 0, 0, 0, 0], [7, 0, 0, 0, 0, 6, 1, 1, 7, 0, 0, 6, 1, 1, 7, 0, 0, 0, 0, 6], [1, 7, 0, 0, 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 5, 0, 0, 0, 6, 1], [4, 1, 0, 0, 0, 0, 0, 4, 1, 1, 1, 1, 5, 0, 0, 0, 0, 0, 1, 5], [0, 1, 7, 0, 0, 8, 0, 0, 9, 0, 0, 9, 0, 0, 8, 0, 0, 6, 1, 0], [0, 4, 1, 7, 0, 0, 0, 0, 9, 0, 8, 9, 0, 0, 0, 0, 6, 1, 5, 0], [0, 0, 4, 1, 1, 7, 0, 0, 9, 0, 0, 9, 0, 0, 6, 1, 1, 5, 0, 0], [0, 0, 0, 0, 4, 1, 7, 0, 9, 0, 0, 9, 0, 6, 1, 5, 0, 0, 0, 0]], "blockset": "basic", "background": [{"height": 528, "width": 960, "shape": "rect", "y": 0, "x": 0, "fill": {"stops": [[0, "#000"], [0.5, "#141"], [1, "#001"]], "height": 528, "width": 0, "y": 0, "x": 0, "type": "linear_gradient"}}]}\n
greenone	tim	{"description": "Collect all the coins to advance to the next level", "secrets": {"finish": {"8": {"win": ["Now for slippery fun", "tim", "slides"]}}}, "start": [8, 0], "grid": [[0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 8, 0, 0, 0, 0, 2, 1, 3], [0, 2, 1, 1, 1, 1, 1, 1, 1, 9, 0, 2, 1, 3, 0, 0, 0, 4, 1, 5], [2, 5, 0, 0, 0, 0, 8, 0, 0, 9, 0, 4, 1, 5, 0, 0, 8, 0, 0, 0], [1, 0, 8, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 2, 1, 3, 0, 0], [4, 1, 1, 1, 3, 0, 0, 0, 0, 9, 0, 0, 0, 8, 0, 4, 1, 5, 0, 0], [0, 0, 8, 4, 1, 1, 3, 8, 0, 9, 0, 0, 2, 1, 3, 0, 0, 0, 8, 8], [1, 7, 0, 0, 8, 4, 1, 1, 3, 9, 0, 0, 4, 1, 5, 0, 0, 8, 2, 1], [4, 1, 7, 0, 0, 0, 0, 4, 1, 9, 0, 0, 0, 0, 0, 0, 8, 2, 1, 5], [0, 4, 1, 7, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 8, 2, 1, 5, 8], [0, 0, 4, 1, 7, 0, 0, 0, 0, 9, 0, 0, 0, 0, 8, 2, 1, 5, 8, 8], [6, 7, 0, 0, 9, 0, 0, 0, 0, 9, 0, 0, 0, 0, 2, 1, 5, 8, 8, 8]], "blockset": "basic", "background": [{"height": 528, "width": 960, "shape": "rect", "y": 0, "x": 0, "fill": {"stops": [[0, "#000"], [0.5, "#141"], [1, "#001"]], "height": 528, "width": 0, "y": 0, "x": 0, "type": "linear_gradient"}}]}
humps	tim	{"secrets": {"finish": {"8": {"win": ["That was fun wasn't it", "tim", "greenone"]}}}, "start": [11, 4], "grid": [[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 9, 1], [1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 9, 1], [1, 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 1], [1, 9, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 1], [1, 9, 8, 2, 3, 8, 0, 0, 0, 0, 6, 1, 7, 0, 0, 0, 0, 0, 9, 1], [1, 9, 2, 1, 1, 3, 0, 0, 0, 6, 1, 1, 1, 7, 0, 0, 0, 0, 9, 1], [1, 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 1], [1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 1, 9, 1], [1, 9, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 8, 0, 1, 9, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]], "blockset": "basic"}\n
large	tim	{"description": "", "secrets": {"12": {"2": {"set": [[11, 3, 0], [13, 3, 0], [12, 3, 9], [12, 4, 9], [12, 5, 9], [12, 6, 9], [12, 7, 9], [12, 8, 9], [12, 9, 9], [12, 10, 9], [12, 11, 9], [12, 12, 9]]}}, "23": {"15": {"set": [[23, 14, 0], [22, 14, 0], [22, 15, 0], [22, 16, 0], [22, 17, 6], [23, 5, 7], [23, 9, 7], [23, 13, 7], [24, 3, 6], [24, 7, 6], [24, 11, 6], [24, 15, 6], [23, 16, 6]]}}, "36": {"9": {"set": [[38, 6, 9], [38, 7, 9], [38, 8, 9], [38, 9, 9], [38, 10, 9], [38, 11, 9], [38, 12, 9], [38, 13, 9]]}}, "1": {"15": {"set": [[1, 15, 9], [1, 14, 9], [1, 13, 9], [1, 12, 9], [1, 11, 9]]}}, "5": {"9": {"set": [[4, 9, 8]]}}, "4": {"9": {"teleport": [4, 6], "set": [[3, 9, 8], [4, 8, 8], [5, 9, 8], [4, 7, 1], [3, 7, 2], [5, 7, 3], [3, 8, 5], [5, 8, 4]]}}, "9": {"8": {"set": [[8, 8, 0], [8, 7, 4]]}}}, "start": [18, 17], "grid": [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 8, 8, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 3, 0, 6, 3, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 6, 7, 0, 0, 0, 0, 6, 1, 7, 0, 8, 8, 6, 1, 9, 1, 7, 0, 0, 2, 1, 3, 0, 0, 6, 1, 5, 0, 0, 1, 5, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 4, 5, 0, 0, 0, 6, 1, 1, 1, 7, 0, 0, 0, 0, 9, 4, 1, 7, 0, 4, 1, 4, 3, 0, 0, 0, 0, 0, 6, 5, 0, 2, 0, 6, 1, 1, 1], [0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1, 5, 0, 4, 1, 7, 0, 0, 0, 9, 0, 4, 1, 3, 0, 1, 8, 4, 3, 0, 0, 0, 0, 1, 0, 2, 1, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 6, 1, 5, 8, 0, 8, 4, 1, 7, 0, 0, 9, 0, 0, 1, 5, 0, 1, 8, 8, 4, 3, 0, 0, 6, 1, 8, 4, 1, 7, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 4, 1, 7, 0, 9, 0, 9, 1, 0, 2, 1, 7, 8, 8, 4, 3, 0, 4, 1, 3, 0, 4, 1, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 8, 4, 1, 1, 1, 1, 9, 1, 0, 4, 1, 5, 0, 0, 0, 0, 0, 0, 1, 1, 3, 0, 1, 0, 0, 0, 0], [0, 0, 0, 0, 8, 0, 0, 6, 1, 1, 1, 1, 1, 1, 7, 0, 0, 0, 0, 0, 0, 9, 1, 3, 0, 1, 0, 0, 2, 1, 3, 0, 6, 1, 1, 5, 8, 1, 0, 0, 0, 0], [0, 0, 0, 6, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 7, 0, 0, 0, 0, 9, 1, 5, 0, 1, 7, 0, 0, 0, 0, 0, 0, 4, 1, 0, 2, 1, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 1, 1, 7, 0, 0, 9, 1, 0, 2, 1, 5, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 5, 0, 0, 0, 0], [1, 1, 1, 1, 1, 3, 0, 1, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 1, 1, 0, 9, 1, 0, 4, 1, 0, 0, 0, 0, 2, 1, 3, 0, 1, 3, 0, 0, 0, 0, 0, 0], [4, 1, 1, 1, 1, 5, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 1, 0, 9, 1, 3, 0, 4, 7, 0, 0, 0, 0, 0, 0, 0, 4, 5, 0, 0, 0, 0, 0, 0], [0, 4, 1, 1, 1, 0, 2, 1, 1, 0, 0, 0, 0, 8, 8, 0, 0, 6, 1, 5, 8, 9, 1, 5, 0, 0, 1, 7, 0, 0, 0, 0, 0, 8, 8, 0, 0, 0, 1, 1, 8, 0], [0, 8, 4, 1, 1, 0, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 9, 1, 8, 2, 1, 1, 1, 0, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 0, 8, 0], [0, 0, 8, 4, 1, 3, 0, 4, 5, 0, 6, 5, 0, 2, 1, 3, 0, 0, 10, 0, 0, 9, 1, 2, 1, 1, 1, 8, 0, 0, 0, 6, 1, 1, 1, 1, 7, 0, 0, 0, 8, 0], [7, 8, 0, 0, 1, 1, 3, 0, 0, 6, 5, 0, 2, 1, 1, 5, 0, 0, 0, 0, 0, 9, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 8, 0], [1, 7, 0, 0, 1, 4, 1, 1, 1, 5, 0, 2, 1, 1, 5, 0, 0, 2, 1, 3, 0, 9, 4, 1, 1, 0, 0, 2, 1, 1, 7, 0, 0, 8, 0, 0, 1, 7, 0, 0, 8, 0], [1, 5, 0, 0, 1, 0, 4, 1, 5, 0, 2, 1, 1, 5, 0, 0, 0, 1, 1, 1, 0, 9, 0, 0, 0, 0, 2, 1, 5, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 8, 0], [0, 0, 0, 6, 5, 0, 0, 1, 0, 2, 1, 1, 5, 0, 0, 0, 0, 4, 1, 5, 0, 9, 0, 0, 0, 2, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 7, 0, 8, 0], [7, 0, 0, 0, 0, 0, 6, 5, 0, 8, 0, 8, 0, 0, 2, 1, 3, 0, 10, 0, 0, 9, 1, 3, 0, 4, 5, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1], [1, 7, 0, 0, 0, 6, 5, 0, 2, 0, 8, 0, 8, 0, 1, 1, 1, 0, 0, 0, 0, 9, 4, 1, 3, 0, 0, 0, 8, 0, 0, 0, 6, 1, 7, 0, 0, 0, 0, 2, 1, 1], [1, 5, 0, 0, 6, 5, 0, 2, 1, 8, 0, 8, 0, 0, 4, 1, 5, 0, 0, 0, 0, 9, 0, 0, 0, 8, 0, 0, 0, 0, 6, 1, 1, 5, 0, 8, 0, 0, 0, 1, 1, 1], [1, 0, 0, 6, 5, 0, 2, 1, 1, 0, 8, 2, 1, 3, 0, 0, 0, 0, 6, 1, 1, 1, 7, 0, 0, 0, 0, 0, 0, 6, 1, 1, 5, 0, 0, 0, 0, 0, 2, 1, 1, 1], [1, 3, 0, 0, 0, 2, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 6, 1, 1, 1, 1, 1, 7, 0, 0, 0, 0, 6, 1, 1, 5, 0, 0, 0, 0, 0, 2, 1, 1, 1, 1]], "blockset": "basic", "background": [{"height": 1248, "width": 2016, "shape": "rect", "y": 0, "x": 0, "fill": {"y2": 900, "r1": 10, "r2": 1100, "stops": [[0, "#001"], [0.5, "#014"], [1, "#001"]], "y1": 100, "x2": 1008, "x1": 1008, "type": "radial_gradient"}}]}
slides	tim	{"description": "Slides are slippery, have fun getting back up", "secrets": {"finish": {"8": {"win": ["Ok, now for something a little harder", "tim", "large"]}}}, "start": [16, 4], "grid": [[0, 2, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 3], [2, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1], [0, 8, 0, 2, 0, 0, 0, 0, 8, 0, 0, 0, 2, 3, 8, 0, 0, 0, 0, 0], [0, 0, 0, 4, 3, 0, 0, 0, 0, 0, 8, 0, 4, 1, 3, 0, 0, 8, 0, 0], [1, 1, 3, 0, 1, 5, 0, 2, 3, 0, 0, 0, 8, 1, 1, 3, 0, 0, 0, 1], [1, 1, 5, 0, 1, 0, 2, 5, 1, 3, 0, 1, 0, 4, 1, 1, 1, 3, 0, 1], [1, 0, 8, 2, 1, 0, 0, 0, 1, 5, 0, 1, 3, 0, 0, 0, 0, 8, 0, 1], [1, 0, 0, 4, 1, 3, 0, 8, 1, 0, 2, 1, 5, 0, 8, 0, 0, 2, 1, 1], [1, 0, 3, 0, 0, 4, 3, 0, 1, 0, 4, 5, 0, 0, 0, 2, 1, 1, 5, 0], [1, 8, 1, 0, 8, 0, 0, 0, 1, 3, 0, 8, 0, 2, 1, 1, 5, 0, 0, 0], [4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 0, 0, 0, 0, 0]], "blockset": "basic", "background": [{"height": 528, "width": 960, "shape": "rect", "y": 0, "x": 0, "fill": {"stops": [[0, "#001"], [0.5, "#014"], [1, "#001"]], "height": 0, "width": 960, "y": 0, "x": 0, "type": "linear_gradient"}}]}
one	jack	{"grid":[[7,0,0,8,0,0,0,8,0,0,0,0,0,0,8,0,0,4,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,0,4,1],[1,1,0,0,8,0,0,0,0,0,0,0,0,0,0,4,1,3,0,1],[1,1,0,6,1,1,7,8,0,8,0,8,0,0,0,0,4,1,8,1],[1,1,0,1,5,0,8,0,8,0,8,0,8,0,0,0,0,4,0,1],[1,5,8,1,8,2,1,1,1,1,1,1,1,7,9,0,0,0,0,1],[5,0,0,1,0,4,1,0,0,0,0,8,8,1,9,8,0,0,2,1],[0,0,6,1,3,0,1,8,0,9,0,8,8,1,9,8,0,2,1,1],[0,0,1,1,5,8,1,0,0,9,1,1,1,1,9,1,1,1,1,1],[0,6,1,5,0,2,1,7,0,9,0,0,0,0,9,0,0,0,0,1],[0,0,0,0,2,1,1,1,7,9,0,8,0,0,9,0,0,8,0,1]],"background":[{"height":528,"width":960,"shape":"rect","y":0,"x":0,"fill":{"stops":[[0,"#000"],[0.5,"#141"],[1,"#001"]],"height":528,"width":0,"y":0,"x":0,"type":"linear_gradient"}}],"start":[5,2],"secrets":{"2":{"5":{"set":[[0,0,9],[0,1,9],[0,2,9],[0,3,9],[0,4,9],[0,5,9],[0,6,9],[0,7,9],[0,8,9],[0,9,9],[0,10,9]]}},"finish":{"8":{"win":["That wasn't too bad was it?","jack","two"]}}},"description":"Collect all the coins to advance to the next level","blockset":"basic"}
secret	jack	{"grid":[[1,1,1,1,11,0,0,0,0,0,2,1,1,1,1,3,0,0,12,9,1],[1,5,0,4,1,1,1,1,3,0,12,0,0,0,4,1,1,1,1,9,1],[1,0,12,0,1,5,0,4,1,1,1,1,3,0,0,0,0,0,12,9,1],[1,3,0,0,0,0,12,0,1,5,0,4,1,1,1,1,3,0,0,9,1],[1,1,1,1,1,3,0,0,0,0,12,0,1,5,0,4,1,1,1,1,1],[1,9,0,0,4,1,1,1,1,3,0,0,0,0,12,0,1,5,0,4,1],[1,9,12,0,0,0,0,0,4,1,1,1,1,3,0,0,0,0,12,0,1],[1,9,1,1,1,1,3,0,0,0,0,11,1,1,1,1,1,0,0,0,1],[1,9,12,0,0,0,0,0,2,1,1,1,1,5,0,4,1,0,12,0,1],[1,9,0,0,2,1,1,1,1,5,0,4,1,0,12,0,0,0,0,2,1],[1,1,1,1,1,5,0,4,1,0,12,0,0,0,0,2,1,1,1,1,1],[1,5,0,4,1,0,12,0,0,0,0,2,1,1,1,1,1,5,0,4,1],[1,0,12,0,0,0,0,2,1,1,1,1,1,1,1,5,0,0,12,0,1],[1,0,0,1,1,1,1,1,1,1,1,1,5,0,0,0,12,0,0,9,1],[1,0,12,0,1,1,1,1,5,0,0,0,0,12,0,2,1,1,1,9,1],[1,3,0,2,1,11,0,0,0,12,2,1,3,0,2,1,1,8,1,9,1],[1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,8,1,9,1],[1,1,12,4,1,1,1,1,1,1,1,8,8,8,8,8,8,8,1,9,1],[1,1,3,0,4,1,1,1,1,1,1,1,1,1,1,1,1,8,1,9,1],[1,1,1,3,0,4,1,0,4,1,1,1,1,1,1,1,1,8,1,9,1],[1,1,1,1,3,12,1,3,12,4,1,1,1,1,1,1,1,1,1,9,1],[1,1,1,1,5,0,1,1,3,0,1,8,8,8,8,8,8,8,1,9,1],[1,1,1,5,0,2,1,1,5,0,1,1,1,1,8,1,1,1,1,9,1],[1,1,5,0,2,1,1,5,12,2,1,1,1,1,8,1,1,1,1,9,1],[1,1,12,2,1,1,1,0,2,1,1,8,8,8,8,8,8,8,1,9,1],[1,1,0,4,1,1,1,0,4,1,1,1,1,1,1,1,1,1,1,9,1],[1,1,3,0,4,1,1,3,12,4,1,8,8,8,8,8,1,1,1,9,1],[1,1,1,3,0,4,1,1,3,0,1,1,1,1,8,1,8,1,1,9,1],[1,1,1,1,3,12,1,1,5,0,1,1,1,1,8,1,1,8,1,9,1],[1,1,1,1,5,0,1,5,12,2,1,1,1,1,8,1,8,1,1,9,1],[1,1,1,5,0,2,1,0,2,1,1,8,8,8,8,8,1,1,1,9,1],[1,1,1,0,2,1,1,0,4,1,1,1,1,1,1,1,1,1,1,9,1],[1,1,1,12,4,1,1,3,12,4,1,8,8,8,8,8,8,8,1,9,1],[1,1,1,3,0,4,1,1,3,0,1,1,1,1,1,1,8,1,1,9,1],[1,1,1,1,3,0,1,1,5,0,1,1,1,8,8,8,1,1,1,9,1],[1,1,1,1,5,12,1,5,12,2,1,1,8,1,1,1,1,1,1,9,1],[1,1,1,5,0,2,1,0,12,1,1,8,8,8,8,8,8,8,1,9,1],[1,1,1,0,2,1,1,0,12,4,1,1,1,1,1,1,1,1,1,9,1],[1,1,1,0,4,1,1,12,12,12,1,8,8,8,8,8,8,8,1,9,1],[1,1,1,3,0,1,1,3,12,2,1,1,1,1,8,1,1,1,1,9,1],[1,1,1,1,0,1,1,1,1,1,1,1,1,8,1,8,1,1,1,9,1],[1,1,1,5,13,4,1,1,1,1,1,8,8,1,1,1,8,8,1,9,1],[1,1,5,13,13,13,4,1,1,1,1,1,1,1,1,1,1,1,1,9,1],[1,5,13,13,13,13,13,4,1,1,1,1,8,1,1,8,8,1,1,9,1],[1,13,13,9,13,9,13,13,1,1,1,8,1,1,8,1,1,8,1,9,1],[1,13,13,9,13,9,13,13,1,1,1,8,1,1,8,1,1,8,1,9,1],[1,13,13,9,13,9,13,13,1,1,1,1,8,8,1,1,8,1,1,9,1],[1,13,13,9,13,9,13,13,1,1,1,1,1,1,1,1,1,1,1,9,1],[1,13,13,9,13,9,13,13,1,1,1,1,1,1,1,1,1,1,1,9,1]],"start":[2,3],"secrets":{"4":{"0":{"teleport":[7,7]}},"5":{"15":{"teleport":[13,2]}},"11":{"7":{"set":[[9,17,0],[8,17,12],[7,17,0],[7,18,0]],"teleport":[9,17]}},"finish":{"12":{"win":["Congratulations, you completed the Jack series, now on to the Tim series.","tim","blocks"]},"13":{"set":[[8,48,0],[9,48,0],[10,48,0],[11,48,0],[12,48,0],[13,48,0],[14,48,0],[15,48,0],[16,48,0],[17,48,0],[18,48,0]]}}},"blockset":"basic"}\n
three	jack	{"grid":[[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,0,0,0],[1,1,5,0,0,0,0,0,0,0,0,4,1,1,1,5,0,11,0,0],\n[1,5,0,0,0,0,0,0,0,0,0,0,4,1,5,0,2,1,3,0],\n[1,0,0,0,0,0,8,0,0,0,0,0,0,9,0,0,4,1,5,0],\n[1,0,0,0,0,8,13,8,0,0,0,0,6,9,3,0,0,10,0,2],[1,7,0,0,8,13,12,13,8,0,0,6,1,9,1,0,0,0,2,1],[4,1,7,8,13,12,11,12,13,8,6,1,5,9,1,3,0,2,1,1],[0,4,1,1,1,1,1,1,1,1,1,5,0,9,4,1,0,4,1,1],[0,0,11,0,0,4,1,5,0,0,11,0,8,9,0,1,3,0,4,1],[0,0,1,0,8,0,11,0,8,0,1,0,0,9,0,0,0,0,0,4],[0,6,1,7,0,6,1,7,0,6,1,7,0,9,0,0,0,0,0,0]],"background":[{"height":528,"width":960,"shape":"rect","y":0,"x":0,"fill":{"stops":[[0,"#800"],[0.7,"#f80"],[1,"#b50"]],"height":528,"width":0,"y":0,"x":0,"type":"linear_gradient"}}],"start":[19,3],\n"secrets":{"finish":{\n  "11":{"win":["Where to next?","jack","secret"]},\n  "8":{"set":[[19,0,9],[19,1,9],[19,2,9]]},\n  "12":{"set":[[19,3,9],[19,4,9],[19,5,9]]},\n  "13":{"set":[[19,6,9],[19,7,9],[19,8,9],[19,9,9],[19,10,9]]}\n}},"blockset":"basic"}\n
two	jack	{"grid":[\n[1,1,1,1,1,3,12,12,2,1,1,1,1,5,0,4,1,1,1,1],\n[1,5,0,4,1,1,1,1,1,5,0,0,0,0,8,0,1,5,0,4],\n[0,0,8,0,1,5,0,4,1,0,8,0,2,3,9,2,1,0,8,0],\n[1,3,0,0,0,0,8,0,0,0,0,2,1,1,9,1,1,3,9,2],\n[1,1,1,1,1,3,0,2,1,1,1,1,1,1,9,0,4,1,9,1],\n[1,5,0,4,1,1,1,1,1,5,0,0,0,0,9,8,0,1,9,1],\n[0,0,8,0,1,5,0,4,5,0,8,0,2,1,9,0,2,1,9,0],\n[1,3,9,2,1,0,8,0,0,0,9,2,1,1,9,1,1,5,9,4],\n[1,1,9,1,1,3,9,2,1,1,9,1,1,5,9,4,1,0,8,0],\n[1,5,9,4,1,1,9,1,1,5,9,4,1,0,8,0,1,3,0,2],\n[1,0,8,0,0,0,9,4,1,0,8,0,1,3,0,2,1,1,1,1]],\n"start":[1,10],\n"secrets":{\n  "finish":{\n    "8":{"win":["That was fun wasn't it","jack","three"]},\n    "12":{"win":["Ohh, you found a secret","jack","secret"]}}\n},"blockset":"basic"}\n
\.


--
-- Data for Name: tilesets; Type: TABLE DATA; Schema: public; Owner: tim
--

COPY tilesets (name, owner, data) FROM stdin;
basic	tim	[\n\t{\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "rect", "fill": "#333", "stroke": "#999", "x": 0.5, "y": 0.5, "width": 47, "height": 47}\n\t\t],\n\t\t"jumpable": 3,\n\t\t"solid": {\n\t\t\t"1": [2,4],\n\t\t\t"2": [],\n\t\t\t"3": [2,6],\n\t\t\t"4": [],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [],\n\t\t\t"7": [4,8],\n\t\t\t"8": [],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": true,"3": true,"7": true,"9": true}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#248", "stroke": "#48f", "points": [[0.5,47.5],[47.5,47.5],[47.5,0.5]]}\n\t\t],\n\t\t"solid": {\n\t\t\t"1": [2,4],\n\t\t\t"2": [1],\n\t\t\t"3": [2],\n\t\t\t"4": [],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [],\n\t\t\t"7": [4,8],\n\t\t\t"8": [],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": true,"3": true,"7": false,"9": true}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#248", "stroke": "#48f", "points": [[0.5,0.5],[47.5,47.5],[0.5,47.5]]}\n\t\t],\n\t\t"solid": {\n\t\t\t"1": [2],\n\t\t\t"2": [3],\n\t\t\t"3": [2,6],\n\t\t\t"4": [],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [],\n\t\t\t"7": [4,8],\n\t\t\t"8": [],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": true,"3": true,"7": true,"9": false}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#333", "stroke": "#999", "points": [[0.5,0.5],[47.5,47.5],[47.5,0.5]]}\n\t\t],\n\t\t"jumpable": 3,\n\t\t"solid": {\n\t\t\t"1": [2,4],\n\t\t\t"2": [],\n\t\t\t"3": [2,6],\n\t\t\t"4": [],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [3],\n\t\t\t"7": [4,8],\n\t\t\t"8": [7],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": false,"3": true,"7": true,"9": true}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#333", "stroke": "#999", "points": [[0.5,0.5],[0.5,47.5],[47.5,0.5]]}\n\t\t],\n\t\t"jumpable": 3,\n\t\t"solid": {\n\t\t\t"1": [2,4],\n\t\t\t"2": [],\n\t\t\t"3": [2,6],\n\t\t\t"4": [1],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [],\n\t\t\t"7": [4,8],\n\t\t\t"8": [9],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": true,"3": false,"7": true,"9": true}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#482", "stroke": "#8f4", "points": [[0.5,47.5],[0.5,23.5],[24.5,23.5],[24.5,0.5],[47.5,0.5],[47.5,47.5]]}\n\t\t],\n\t\t"jumpable": 3,\n\t\t"solid": {\n\t\t\t"1": [2,4],\n\t\t\t"2": [],\n\t\t\t"3": [6,2],\n\t\t\t"4": [],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [9],\n\t\t\t"7": [4,8],\n\t\t\t"8": [],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": true,"3": true,"7": false,"9": true}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#482", "stroke": "#8f4", "points": [[0.5,0.5],[23.5,0.5],[23.5,24.5],[47.5,24.5],[47.5,47.5],[0.5,47.5]]}\n\t\t],\n\t\t"jumpable": 3,\n\t\t"solid": {\n\t\t\t"1": [4,2],\n\t\t\t"2": [],\n\t\t\t"3": [2,6],\n\t\t\t"4": [7],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [],\n\t\t\t"7": [4,8],\n\t\t\t"8": [],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": true,"3": true,"7": true,"9": false}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "circle", "fill": "#ff0", "stroke": "#ff8", "cx": 24, "cy": 24, "r": 18}\n\t\t],\n\t\t"item": true\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#842", "stroke": "#f84", "points": [[4.5,0.5],[14.5,0.5],[14.5,17.5],[34,17.5],[33.5,0.5],[43.5,0.5],[43.5,47.5],[33.5,47.5],[33.5,30.5],[14.5,30.5],[14.5,47.5],[4.5,47.5]]}\n\t\t],\n\t\t"jumpable": 3\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#333", "stroke": "#999", "points": [[0.5,0.5],[47.5,0.5],[24,47.5]]}\n\t\t],\n\t\t"jumpable": 3,\n\t\t"solid": {\n\t\t\t"1": [2,4],\n\t\t\t"2": [],\n\t\t\t"3": [2,6],\n\t\t\t"4": [1],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [3],\n\t\t\t"7": [4,8],\n\t\t\t"8": [],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": false,"3": false,"7": true,"9": true}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "rect", "fill": "#114acb", "x": 0.5, "y": 0.5, "width": 47, "height": 47},\n\t\t\t{"shape": "polygon", "fill": "rgba(255,255,255,0.30)", "points": [[0.5,0.5],[47.5,0.5],[40,8],[8,8],[8,40],[0.5,47.5]]},\n\t\t\t{"shape": "polygon", "fill": "rgba(0,0,0,0.30)", "points": [[47.5,0.5],[48,48],[0.5,47.5],[8,40],[40,40],[40,8]]},\n\t\t\t{"shape": "polygon", "fill": "rgb(255,255,0)", "stroke": "rgba(255,255,0,0.5)", "points": [[24,9],[35,20],[26,29],[26,33],[22,33],[22,27],[29,20],[24,15],[16,23],[13,20]]},\n\t\t\t{"shape": "rect", "fill": "rgb(255,255,0)", "stroke": "rgba(255,255,0,0.5)", "x": 22, "y":35, "width": 4, "height": 4}\n\t\t]\n\t}\n]\n
basic	jack	[\n\t{\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "rect", "fill": "#333", "stroke": "#999", "x": 0.5, "y": 0.5, "width": 47, "height": 47}\n\t\t],\n\t\t"jumpable": 3,\n\t\t"solid": {\n\t\t\t"1": [2,4],\n\t\t\t"2": [],\n\t\t\t"3": [2,6],\n\t\t\t"4": [],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [],\n\t\t\t"7": [4,8],\n\t\t\t"8": [],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": true,"3": true,"7": true,"9": true}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#248", "stroke": "#48f", "points": [[0.5,47.5],[47.5,47.5],[47.5,0.5]]}\n\t\t],\n\t\t"solid": {\n\t\t\t"1": [2,4],\n\t\t\t"2": [1],\n\t\t\t"3": [2],\n\t\t\t"4": [],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [],\n\t\t\t"7": [4,8],\n\t\t\t"8": [],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": true,"3": true,"7": false,"9": true}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#248", "stroke": "#48f", "points": [[0.5,0.5],[47.5,47.5],[0.5,47.5]]}\n\t\t],\n\t\t"solid": {\n\t\t\t"1": [2],\n\t\t\t"2": [3],\n\t\t\t"3": [2,6],\n\t\t\t"4": [],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [],\n\t\t\t"7": [4,8],\n\t\t\t"8": [],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": true,"3": true,"7": true,"9": false}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#333", "stroke": "#999", "points": [[0.5,0.5],[47.5,47.5],[47.5,0.5]]}\n\t\t],\n\t\t"jumpable": 3,\n\t\t"solid": {\n\t\t\t"1": [2,4],\n\t\t\t"2": [],\n\t\t\t"3": [2,6],\n\t\t\t"4": [],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [3],\n\t\t\t"7": [4,8],\n\t\t\t"8": [7],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": false,"3": true,"7": true,"9": true}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#333", "stroke": "#999", "points": [[0.5,0.5],[0.5,47.5],[47.5,0.5]]}\n\t\t],\n\t\t"jumpable": 3,\n\t\t"solid": {\n\t\t\t"1": [2,4],\n\t\t\t"2": [],\n\t\t\t"3": [2,6],\n\t\t\t"4": [1],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [],\n\t\t\t"7": [4,8],\n\t\t\t"8": [9],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": true,"3": false,"7": true,"9": true}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#482", "stroke": "#8f4", "points": [[0.5,47.5],[0.5,23.5],[24.5,23.5],[24.5,0.5],[47.5,0.5],[47.5,47.5]]}\n\t\t],\n\t\t"jumpable": 3,\n\t\t"solid": {\n\t\t\t"1": [2,4],\n\t\t\t"2": [],\n\t\t\t"3": [6,2],\n\t\t\t"4": [],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [9],\n\t\t\t"7": [4,8],\n\t\t\t"8": [],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": true,"3": true,"7": false,"9": true}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#482", "stroke": "#8f4", "points": [[0.5,0.5],[23.5,0.5],[23.5,24.5],[47.5,24.5],[47.5,47.5],[0.5,47.5]]}\n\t\t],\n\t\t"jumpable": 3,\n\t\t"solid": {\n\t\t\t"1": [4,2],\n\t\t\t"2": [],\n\t\t\t"3": [2,6],\n\t\t\t"4": [7],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [],\n\t\t\t"7": [4,8],\n\t\t\t"8": [],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": true,"3": true,"7": true,"9": false}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "circle", "fill": "#ff0", "stroke": "#ff8", "cx": 24, "cy": 24, "r": 18}\n\t\t],\n\t\t"item": true\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#842", "stroke": "#f84", "points": [[4.5,0.5],[14.5,0.5],[14.5,17.5],[34,17.5],[33.5,0.5],[43.5,0.5],[43.5,47.5],[33.5,47.5],[33.5,30.5],[14.5,30.5],[14.5,47.5],[4.5,47.5]]}\n\t\t],\n\t\t"jumpable": 3\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "polygon", "fill": "#333", "stroke": "#999", "points": [[0.5,0.5],[47.5,0.5],[24,47.5]]}\n\t\t],\n\t\t"jumpable": 3,\n\t\t"solid": {\n\t\t\t"1": [2,4],\n\t\t\t"2": [],\n\t\t\t"3": [2,6],\n\t\t\t"4": [1],\n\t\t\t"5": [2,8,1,3,7,9,4,6],\n\t\t\t"6": [3],\n\t\t\t"7": [4,8],\n\t\t\t"8": [],\n\t\t\t"9": [6,8]\n\t\t},\n\t\t"corners": {"1": false,"3": false,"7": true,"9": true}\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "rect", "fill": "#114acb", "x": 0.5, "y": 0.5, "width": 47, "height": 47},\n\t\t\t{"shape": "polygon", "fill": "rgba(255,255,255,0.30)", "points": [[0.5,0.5],[47.5,0.5],[40,8],[8,8],[8,40],[0.5,47.5]]},\n\t\t\t{"shape": "polygon", "fill": "rgba(0,0,0,0.30)", "points": [[47.5,0.5],[48,48],[0.5,47.5],[8,40],[40,40],[40,8]]},\n\t\t\t{"shape": "polygon", "fill": "rgb(255,255,0)", "stroke": "rgba(255,255,0,0.5)", "points": [[24,9],[35,20],[26,29],[26,33],[22,33],[22,27],[29,20],[24,15],[16,23],[13,20]]},\n\t\t\t{"shape": "rect", "fill": "rgb(255,255,0)", "stroke": "rgba(255,255,0,0.5)", "x": 22, "y":35, "width": 4, "height": 4}\n\t\t],\n\t\t"item": true\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "circle", "fill": "#80f", "stroke": "#88f", "cx": 24, "cy": 24, "r": 18}\n\t\t],\n\t\t"item": true\n\t},\n\t{\n\t\t"image": [\n\t\t\t{"shape": "circle", "fill": "#4f4", "stroke": "#8f8", "cx": 24, "cy": 24, "r": 18}\n\t\t],\n\t\t"item": true\n\t}\n]\n
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: tim
--

COPY users (name, data) FROM stdin;
tim	{"first_name":"Tim","last_name":"Caswell","email":"tim@creationix.com","password":"caswell339"}
\.


--
-- Name: levels_pkey; Type: CONSTRAINT; Schema: public; Owner: tim; Tablespace: 
--

ALTER TABLE ONLY levels
    ADD CONSTRAINT levels_pkey PRIMARY KEY (name, owner);


--
-- Name: tileset_pkey; Type: CONSTRAINT; Schema: public; Owner: tim; Tablespace: 
--

ALTER TABLE ONLY tilesets
    ADD CONSTRAINT tileset_pkey PRIMARY KEY (name, owner);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: tim; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (name);


--
-- Name: public; Type: ACL; Schema: -; Owner: tim
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM tim;
GRANT ALL ON SCHEMA public TO tim;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--
