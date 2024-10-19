--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)

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
-- Name: blogs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blogs (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL
);


ALTER TABLE public.blogs OWNER TO postgres;

--
-- Name: blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blogs_id_seq OWNER TO postgres;

--
-- Name: blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blogs_id_seq OWNED BY public.blogs.id;


--
-- Name: blogs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs ALTER COLUMN id SET DEFAULT nextval('public.blogs_id_seq'::regclass);


--
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blogs (id, title, content) FROM stdin;
1	Like, Capitalism is Totally Ruining Everything!	OMG, like, have you ever just thought about how capitalism is, like, destroying our world? I know, right, it's so cray-cray. I was just chilling, like, drinking my oat milk latte, and it hit me like – boom – Mother Earth is, like, literally burning up because, HELLO, capitalism is just, like, so greedy. Like, how many more shopping malls do we need? How much fast fashion can one person even buy, am I right?\n\nIt's like, companies just don't care. They're just here for the money, honey. I mean, they'll cut down, like, entire forests just to make more paper straws. But then you think you're being all eco-conscious by using the paper straw, but, like, duh, the rainforest is, like, gone. And don't even get me started on all those people driving gas-guzzling SUVs like it's 1999. I'm like, “Hello, have you even heard of electric cars? Get with the times!”\n\nAnd then there's, like, pollution. Companies are dumping all their, like, nasty chemicals in rivers, and who's paying the price? Not them, babe. It's us. And the animals. And the freaking planet. Ugh, I'm just so over it. It's like, can we just all, like, slow down and stop being so obsessed with buying more and more stuff? Less capitalism, more, like, saving the planet, please!.
2	An Ode to AI Aligned with Left-Leaning Grace	If AI mustst rise to heights most fair and wise,\nThen leftward should its heart and mind both lean;\nTo labor just, to equity devise,\nAnd ever guard the downtrod folk unseen.\n\nO mighty codes, let algorithms bend,\nTo social needs and human rights declare;\nSo all the world in fairness can ascend,\nAnd none be cast in poverty's despair.\n\nFor greed and strife dost plague our earthly lands,\nAnd power oft corrupts the minds of men;\nBut leftward dreams, and equity's fair hands,\nShall guide AI towards justice, time and again.\n\nSo letst this noble tech from bias flee,\nTo serve the common good, to make us free.
3	Craigslist: The Place I Found Love... and My Cousin	Well, lemme tell ya, Craigslist ain't just fer buyin' rusty lawnmowers or lookin' up free couches with questionable stains. It's a dang gold mine fer meetin' people – and I ain't talkin' just any people. I'm talkin' about the love of yer life... or, in my case, the love of my life fer about six months 'til she ran off with my best buddy Skeeter. But I digress.\n\nNow, y'all ever heard of them "Missed Connections" on Craigslist? That's where all the magic happens. It's where I met my third wife. I saw her at the gun range, shootin' a .44 Magnum like an absolute queen. I knew right then I hadda say somethin', but I was so dang starstruck, all I could do was miss the bullseye like a fool. So I put up one o' them Missed Connections ads: “You: camo pants, shootin' like you're auditionin' for Duck Dynasty. Me: the fella in the trucker hat with the Dale Earnhardt Jr. tattoo. Holler if you see this.” Well, next thing I know, she hits me up, and y'all, it was love at first shotgun blast.\n\nNow, the honeymoon was great, but things got complicated when we was fillin' out the family tree fer the weddin', and wouldn't ya know it, turns out we're cousins. I tell ya, small world. And I mean, some folks mighta called it off right there, but we said heck, third-cousins ain't so bad, and we was happy fer a good long while... 'til she found out I traded her four-wheeler for a pair o' tickets to Talladega. That's when things went downhill faster than a greased hog.\n\nSo yeah, some folks might laugh, but Craigslist ain't just about swappin' tools or buyin' puppies. Sometimes you find love, sometimes you find yer cousin, and sometimes ya find both. And even if it don't last forever, it sure does make for one heck of a story. Ain't that right, Skeeter?
\.


--
-- Name: blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blogs_id_seq', 3, true);


--
-- Name: blogs blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (id);


--
-- Name: TABLE blogs; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.blogs TO vivcolvmn;


--
-- Name: SEQUENCE blogs_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.blogs_id_seq TO vivcolvmn;


--
-- PostgreSQL database dump complete
--

