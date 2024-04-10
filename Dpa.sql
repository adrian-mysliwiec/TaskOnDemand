--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

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
-- Name: Arbeitsauftrag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Arbeitsauftrag" (
    "Stundenlohn" integer,
    "Datum" date,
    "Status" character varying(20),
    "Uhrzeit" time(0) without time zone,
    "Ort" character varying(50),
    "AnzeigeNr" integer NOT NULL,
    "Beschreibung" character varying(200),
    "TelNummer" numeric,
    "Dauer" bigint,
    "Strasse" character varying,
    "PLZ" bigint,
    "Auftragsersteller" numeric(20,0) DEFAULT 2 NOT NULL
);


ALTER TABLE public."Arbeitsauftrag" OWNER TO postgres;

--
-- Name: Arbeitsauftrag_AnzeigeNr_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Arbeitsauftrag" ALTER COLUMN "AnzeigeNr" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Arbeitsauftrag_AnzeigeNr_seq"
    START WITH 21
    INCREMENT BY 21
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Dienstleister; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Dienstleister" (
    "Firma" character varying(50) NOT NULL,
    "Beschreibung" character varying(100),
    "Stundenlohn" numeric NOT NULL,
    "Vorname" character varying(20) NOT NULL,
    "Nachname" character varying(30) NOT NULL,
    "Mail" character varying(100) NOT NULL,
    "TelNummer" numeric NOT NULL
);


ALTER TABLE public."Dienstleister" OWNER TO postgres;

--
-- Name: Dienstnehmer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Dienstnehmer" (
    "Mail" character varying(100) NOT NULL,
    "Vorname" character varying(20) NOT NULL,
    "Nachname" character varying(30) NOT NULL,
    "TelNummer" numeric NOT NULL
);


ALTER TABLE public."Dienstnehmer" OWNER TO postgres;

--
-- Data for Name: Arbeitsauftrag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Arbeitsauftrag" ("Stundenlohn", "Datum", "Status", "Uhrzeit", "Ort", "AnzeigeNr", "Beschreibung", "TelNummer", "Dauer", "Strasse", "PLZ", "Auftragsersteller") FROM stdin;
8	2023-11-27	belegt	02:47:00	Richmond	8	Echo Charlie X-ray Lima Juliett Victor Romeo India Tango Oscar Whiskey Zulu Foxtrot Alfa Kilo	6882517128	4	Thalia	1180	2
10	2023-10-31	belegt	01:37:00	Sete Lagoas	10	Zulu Charlie Kilo Oscar Delta Papa November Echo Romeo Whiskey Alfa X-ray India	6763309626	2	Thalia	1180	2
11	2023-07-18	belegt	03:10:00	Cluses	11	Golf Kilo Whiskey Charlie Sierra Lima Juliett Foxtrot Mike X-ray Delta Romeo	6763309626	1	Thalia	1180	2
12	2023-04-30	belegt	14:00:00	Matelândia	12	Romeo Foxtrot Papa November Bravo X-ray Golf Uniform Kilo Echo Juliett Quebec Alfa India Charlie Lima Oscar Yankee Whiskey	6763309626	5	Thalia	1180	2
13	2023-02-24	offen	07:32:00	Korba	13	Oscar Zulu Tango Foxtrot Quebec Bravo Delta X-ray November Golf India Hotel	6763309626	56	Thalia	1180	2
15	2023-01-16	offen	04:55:00	Huangcun	15	Romeo India Alfa Tango Whiskey Yankee X-ray Quebec Foxtrot Mike Victor Charlie November Golf	6763309626	3	Thalia	1180	2
3	2023-04-27	abgeschlossen	22:59:00	Sundsvall	3	Romeo Foxtrot Zulu Delta Uniform Juliett Oscar Hotel Victor X-ray Charlie Papa Echo Sierra Tango	6882517128	1	Thalia	\N	6951
4	2023-12-25	abgeschlossen	09:14:00	Ngepoh Kidul	4	Golf Victor Mike Sierra Echo Quebec Romeo Oscar India Delta X-ray Foxtrot	6882517128	2	Thalia	\N	50
5	2023-03-16	abgeschlossen	09:29:00	Huangjing	5	Sierra Uniform India Kilo Quebec Bravo Lima Juliett Romeo Golf Alfa Echo	6882517128	3	Thalia	1180	50
6	2023-05-05	abgeschlossen	15:11:00	Lengji	6	Juliett Whiskey Lima X-ray Romeo Papa Echo Foxtrot Oscar November Victor Quebec Tango Hotel India	6882517128	2	Thalia	1180	6951
7	2023-06-17	belegt	21:30:00	Marcabal	7	Victor Romeo Kilo Yankee Sierra Juliett Whiskey Delta Foxtrot Golf Alfa X-ray Lima Oscar Zulu India Echo Bravo	6882517128	3	Thalia	1180	50
9	2023-11-08	belegt	19:56:00	Likhobory	9	Alfa Charlie Mike Juliett India Golf X-ray Quebec Tango Bravo Foxtrot Echo	6763309626	3	Thalia	1180	50
12	2023-09-12	offen	21:11:00	Mosteiro	14	Delta November Bravo Alfa Mike India Sierra Yankee Uniform Quebec Whiskey Victor Tango Hotel Charlie Golf Kilo Oscar	6763309626	4	Thalia	1180	50
16	2023-10-22	offen	14:56:00	Dřiteň	16	Foxtrot Quebec Juliett Sierra Romeo Bravo Charlie Kilo Papa Whiskey Zulu Tango Oscar Delta X-ray November Mike Hotel Golf Victor	6763309626	3	Thalia	1180	50
17	2023-02-06	offen	18:50:00	Yaizu	17	Sierra Zulu Juliett Delta India Uniform Kilo Charlie Victor Tango Oscar X-ray Mike Romeo Golf November Echo Foxtrot	6649642672	3	Thalia	1180	240
18	2023-03-14	offen	22:16:00	Chaupimarca	18	November Alfa Whiskey Papa Yankee Echo Foxtrot Oscar Kilo Lima Charlie Victor India Golf Delta Zulu Bravo	6649642672	5	Thalia	1180	240
19	2023-07-05	offen	11:03:00	San Juan Atitán	19	Foxtrot Zulu Quebec Uniform Delta India Charlie Sierra Oscar Hotel Whiskey Juliett Tango Bravo Echo November Alfa X-ray Golf	6649642672	4	Thalia	1180	240
20	2023-06-09	offen	11:57:00	Извор	20	Echo Whiskey Lima Mike Quebec Victor November Alfa Kilo Romeo Foxtrot Juliett Tango Hotel Uniform Sierra	6649642672	3	Thalia	1180	240
12	2023-02-12	offen	19:00:00	Wien	42	Karton tragen	6649642672	5	Thalia	1180	240
12	2023-02-12	offen	19:00:00	Wien	462	Karton tragen	6763309626	3	Kreuzgasse	1180	5536
12	2023-02-12	offen	19:00:00	Wien	504	Karton tragen	6763309626	3	Kreuzgasse	1180	6951
23	2023-03-02	offen	12:23:00	wien	546	sdcd	6763309626	2	Kreuzgasse, 87-89/5/18	2333	6951
12	2023-02-12	offen	19:00:00	Wien	63	Karton tragen	6649642672	6	Thalia	1180	240
12	2023-02-12	offen	19:00:00	Wien	84	Karton tragen	6649642672	55	Thalia	1180	5536
12	2023-02-12	offen	19:00:00	Wien	336	Karton tragen	6649642672	44	Thalia	1180	5536
\.


--
-- Data for Name: Dienstleister; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Dienstleister" ("Firma", "Beschreibung", "Stundenlohn", "Vorname", "Nachname", "Mail", "TelNummer") FROM stdin;
Kautzer-Mosciski	nullam varius nulla	3498	Andrea	Waywell	awaywell4@buzzfeed.com	177
Carroll-Lemke	augue	2248	Wolfgang	Jephcote	wjephcote5@boston.com	1842
Runolfsson-Brakus	id consequat in	1302	Nana	MacKill	nmackill6@chron.com	4
Crist-McLaughlin	ipsum ac tellus semper	834	Si	Mannock	smannock7@bloglovin.com	2486
Kiehn-Bartell	lacinia nisi venenatis tristique fusce	478	Monti	Clemenson	mclemenson8@indiatimes.com	5989
Breitenberg-Flatley	congue eget	4469	Noble	Taylder	ntaylder9@sogou.com	47
Legros, Jerde and Hackett	eu	3	Bridie	Yakovliv	byakovliva@woothemes.com	82766
Blick LLC	volutpat in congue	1132	Gearard	Pepys	gpepysb@artisteer.com	5970
Hirthe Group	dui vel	32	Dasi	Ishaki	dishakic@purevolume.com	214
Towne, Hintz and Quigley	et	31	Dorolice	Hallock	dhallockd@posterous.com	496
Bernier, Nikolaus and Parker	odio elementum eu interdum	429	Aprilette	Juschke	ajuschkee@samsung.com	51
Durgan Group	lectus in quam fringilla	138	Kristien	Malin	kmalinf@latimes.com	5
Ondricka-Wehner	ac tellus semper	53	Hurlee	Loody	hloodyg@usa.gov	9
Bogan, Lehner and Beahan	nec	59	Friederike	Neillans	fneillansh@ibm.com	47090
Lakin LLC	neque sapien	3957	Antonietta	Bussetti	abussettii@wix.com	38534
Bergstrom LLC	justo nec condimentum neque sapien	663	Marylee	Hessay	mhessayj@ezinearticles.com	131
Satterfield-huan	non velit nec nisi vulputate	48	Fredrick	Glasman	fglasman0@bing.com	36053
dd, Renner and Miller	mollis molestie	3360	Maggi	Castard	mcastard1@prweb.com	8
Tromp, Wisozk and chuj	tristique in tempus sit	3498	Joice	Bithany	jbithany2@com.com	6
Marks-Pagac	Jaglas haben kleine schwanz	1378	Herculie	Matieu	hmatieu3@wsj.com	90
ALDI	Fenster putzen	1	ADI	mail	nd	60
\.


--
-- Data for Name: Dienstnehmer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Dienstnehmer" ("Mail", "Vorname", "Nachname", "TelNummer") FROM stdin;
pparfett0@dropbox.com	Peyter	Parfett	96340
ltal1@skyrock.com	Laura	Tal	361
mrudeyeard2@creativecommons.org	Margeaux	Rudeyeard	74386
tburdikin3@businesswire.com	Toby	Burdikin	4178
mchallinor4@utexas.edu	Myrna	Challinor	60047
lsalman5@ning.com	Letti	Salman	6366
dlyston6@google.com.hk	Dallas	Lyston	8611
lbrigshaw7@craigslist.org	Luigi	Brigshaw	39962
lsaltera@hibu.com	Lenka	Salter	69703
bsecombec@histats.com	Bettine	Secombe	5536
sgoared@newyorker.com	Shannah	Goare	877
abrownhalle@jiathis.com	Arnie	Brownhall	84189
bbrandrickg@jimdo.com	Bernetta	Brandrick	44150
gjoncich@t.co	Gerrard	Joncic	240
amacnalleyi@ezinearticles.com	Abbie	MacNalley	6951
abullionj@indiatimes.com	Annaliese	Bullion	50
cstonnerb@ezinearticles.com	Cathleen	Stonner	2
hsclater9@geocities.com	Harold	Sclater	6763309626
geilersf@digg.com	Glenn	Eilers	6649642672
cwinscom8@upenn.edu	Carey	Winscom	6882517128
\.


--
-- Name: Arbeitsauftrag_AnzeigeNr_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Arbeitsauftrag_AnzeigeNr_seq"', 546, true);


--
-- Name: Arbeitsauftrag Arbeitsauftrag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Arbeitsauftrag"
    ADD CONSTRAINT "Arbeitsauftrag_pkey" PRIMARY KEY ("AnzeigeNr");


--
-- Name: Dienstleister Dienstleister_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dienstleister"
    ADD CONSTRAINT "Dienstleister_pkey" PRIMARY KEY ("TelNummer");


--
-- Name: Dienstnehmer Dienstnehmer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dienstnehmer"
    ADD CONSTRAINT "Dienstnehmer_pkey" PRIMARY KEY ("TelNummer");


--
-- Name: TelNummer_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TelNummer_fk" ON public."Arbeitsauftrag" USING btree ("TelNummer");


--
-- Name: Arbeitsauftrag Arbeitsauftrag_TelNummer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Arbeitsauftrag"
    ADD CONSTRAINT "Arbeitsauftrag_TelNummer_fkey" FOREIGN KEY ("TelNummer") REFERENCES public."Dienstnehmer"("TelNummer") NOT VALID;


--
-- PostgreSQL database dump complete
--

