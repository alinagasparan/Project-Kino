--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2026-04-07 17:51:43

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
-- TOC entry 217 (class 1259 OID 17892)
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    actor_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17891)
-- Name: actors_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.actors ALTER COLUMN actor_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actors_actor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 210 (class 1259 OID 17848)
-- Name: directors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.directors (
    director_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.directors OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17847)
-- Name: directors_director_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.directors ALTER COLUMN director_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.directors_director_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 214 (class 1259 OID 17869)
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    genre_id integer NOT NULL,
    genre_name character varying(50) NOT NULL
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 17868)
-- Name: genres_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.genres ALTER COLUMN genre_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.genres_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 17899)
-- Name: movie_actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_actors (
    movie_id integer NOT NULL,
    actor_id integer NOT NULL
);


ALTER TABLE public.movie_actors OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17876)
-- Name: movie_genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_genres (
    movie_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.movie_genres OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 17856)
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    movie_id integer NOT NULL,
    title character varying(100) NOT NULL,
    release_year text,
    certificate character varying(100),
    runtime_min text,
    imdb_rating text,
    overview text,
    meta_score text,
    director_id integer,
    no_of_votes text,
    gross_revenue text,
    poster_link text
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17855)
-- Name: movies_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.movies ALTER COLUMN movie_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.movies_movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3357 (class 0 OID 17892)
-- Dependencies: 217
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (actor_id, name) FROM stdin;
323	Bob Gunton
324	William Sadler
331	Aaron Eckhart
345	John Travolta
352	Caroline Goodall
355	Elliot Page
359	Meat Loaf
360	Zach Grenier
364	Sean Bean
368	Sally Field
372	Aldo Giuffrè
341	Elijah Wood
377	Lilly Wachowski
378	Keanu Reeves
382	Ray Liotta
384	Lorraine Bracco
390	Louise Fletcher
391	Michael Berryman
392	Peter Brocco
393	Lin-Manuel Miranda
394	Phillipa Soo
395	Leslie Odom Jr.
396	Renée Elise Goldsberry
398	Lee Sun-kyun
399	Cho Yeo-jeong
400	Choi Woo-sik
401	Suriya
404	Aparna Balamurali
409	Kátia Lund
410	Alexandre Rodrigues
411	Leandro Firmino
412	Matheus Nachtergaele
413	Daveigh Chase
416	Rumi Hiiragi
420	Edward Burns
422	Michael Clarke Duncan
424	Bonnie Hunt
427	Giorgio Cantarini
428	Giustino Durano
432	Andrew Kevin Walker
435	Lawrence A. Bonney
436	Kasi Lemmons
442	Akira Ishihama
443	Shima Iwashita
444	Tetsurô Tanba
447	Keiko Tsushima
448	Yukiko Shimazaki
455	Zazie Beetz
456	Frances Conroy
459	Melissa Benoist
461	Éric Toledano
462	François Cluzet
463	Omar Sy
464	Anne Le Ny
474	Thomas Kretschmann
475	Frank Finlay
476	Emilia Fox
479	Connie Nielsen
480	Oliver Reed
483	Beverly D'Angelo
484	Jennifer Lien
488	Stephen Baldwin
489	Jean Reno
493	Rob Minkoff
496	James Earl Jones
482	Edward Furlong
502	Enzo Cannavale
503	Antonella Attili
504	Isa Danieli
505	Tsutomu Tatsumi
506	Ayano Shiraishi
507	Akemi Yamaguchi
508	Yoshiko Shinohara
517	Anthony Perkins
520	John Gavin
523	Paul Henreid
528	Tiny Sandford
530	Virginia Cherrill
531	Florence Lee
532	Harry Myers
533	Zain Al Rafeea
534	Yordanos Shiferaw
535	Boluwatife Treasure Bankole
536	Kawsar Al Haddad
539	Ismail Hacioglu
540	Kyung-jin Lee
541	Pushkar
543	Vijay Sethupathi
544	Shraddha Srinath
546	Mone Kamishiraishi
547	Ryô Narita
550	Sakshi Tanwar
551	Fatima Sana Shaikh
553	Peter Ramsey
554	Rodney Rothman
555	Shameik Moore
556	Jake Johnson
565	Adrian Molina
566	Anthony Gonzalez
570	Christoph Waltz
402	Madhavan
579	Mona Singh
581	Amole Gupte
582	Darsheel Safary
584	Tisca Chopra
585	Ben Burtt
586	Elissa Knight
587	Jeff Garlin
588	Fred Willard
590	Martina Gedeck
594	Yoo Ji-Tae
595	Kang Hye-jeong
596	Kim Byeong-Ok
380	Carrie-Anne Moss
599	Joe Pantoliano
600	Mark Boone Junior
601	Yôji Matsuda
602	Yuriko Ishida
603	Yûko Tanaka
607	Elizabeth McGovern
608	Treat Williams
610	Karen Allen
611	Paul Freeman
612	John Rhys-Davies
614	Shelley Duvall
615	Danny Lloyd
616	Scatman Crothers
622	Tom Skerritt
624	Veronica Cartwright
625	Rajesh Khanna
627	Sumita Sanyal
628	Ramesh Deo
630	Yutaka Sada
632	Kyôko Kagawa
636	Keenan Wynn
637	Tyrone Power
642	Ralph Meeker
643	Adolphe Menjou
647	Wendell Corey
648	Thelma Ritter
650	Gloria Swanson
652	Nancy Olson
526	Paulette Goddard
655	Jack Oakie
656	Reginald Gardiner
657	Dean-Charles Chapman
659	Daniel Mays
661	Anand Gandhi
662	Adesh Prasad
664	Jyoti Malshe
667	Radhika Apte
668	Anil Dhawan
669	Mohanlal
670	Meena
671	Asha Sharath
672	Ansiba
675	Annika Wedderkopp
676	Lasse Fogelstrøm
677	Payman Maadi
678	Leila Hatami
679	Sareh Bayat
681	Lubna Azabal
682	Mélissa Désormeaux-Poulin
683	Maxim Gaudette
684	Mustafa Kamel
685	Aras Bulut Iynemli
686	Nisa Sofiya Aksongur
687	Deniz Baysal
688	Celile Toyon Uysal
538	Çetin Tekindor
690	Fikret Kuskan
691	Hümeyra
692	Ege Tanman
695	Eli Roth
696	Mélanie Laurent
700	Gerry Robert Byrne
702	Mathieu Kassovitz
703	Rufus
704	Lorella Cravotta
708	Dennis Farina
712	Marlon Wayans
714	Annette Bening
715	Thora Birch
716	Wes Bentley
721	Mohammad Amir Naji
722	Amir Farrokh Hashemian
723	Bahare Seddiqi
724	Nafise Jafar-Mohammadi
728	Jim Varney
730	Sophie Marceau
732	Angus Macfadyen
736	Chris Penn
737	Matthew Modine
738	R. Lee Ermey
739	Vincent D'Onofrio
740	Adam Baldwin
741	Aleksey Kravchenko
742	Olga Mironova
743	Liubomiras Laucevicius
744	Vladas Bagdonas
747	Carrie Henn
460	Paul Reiser
750	Tom Hulce
751	Elizabeth Berridge
752	Roy Dotrice
755	Steven Bauer
756	Mary Elizabeth Mastrantonio
385	Mark Hamill
388	Billy Dee Williams
761	Jürgen Prochnow
762	Herbert Grönemeyer
763	Klaus Wennemann
764	Hubertus Bengsch
772	Charles Durning
773	Malcolm McDowell
775	Michael Bates
776	Warren Clarke
777	Keir Dullea
778	Gary Lockwood
779	William Sylvester
780	Daniel Richter
371	Lee Van Cleef
784	Mara Krupp
792	Ray Walston
794	Eva Marie Saint
796	Jessie Royce Landis
798	Kim Novak
799	Barbara Bel Geddes
800	Tom Helmore
803	Donald O'Connor
804	Debbie Reynolds
806	Nobuo Kaneko
807	Shin'ichi Himori
808	Haruo Tanaka
809	Lamberto Maggiorani
810	Enzo Staiola
811	Lianella Carell
812	Elena Altieri
791	Fred MacMurray
814	Barbara Stanwyck
816	Byron Barr
819	Dorothy Comingore
820	Agnes Moorehead
822	Ellen Widmann
823	Inge Landgut
824	Otto Wernicke
825	Brigitte Helm
826	Alfred Abel
827	Gustav Fröhlich
828	Rudolf Klein-Rogge
830	Edna Purviance
831	Jackie Coogan
832	Carl Miller
835	Varun Sharma
836	Prateik
839	Mohit Raina
841	Yash
842	Srinidhi Shetty
843	Ramachandra Raju
844	Archana Jois
846	Mahershala Ali
847	Linda Cardellini
848	Sebastian Maniscalco
852	Caleb Landry Jones
854	Konkona Sen Sharma
855	Neeraj Kabi
663	Sohum Shah
859	Anushka Shetty
860	Tamannaah Bhatia
861	Carlos Martínez López
864	Rashida Jones
865	Ajay Devgn
866	Shriya Saran
868	Rajat Kapoor
869	Kangana Ranaut
871	Lisa Haydon
872	Jeffrey Ho
873	Lembit Ulfsak
874	Elmo Nüganen
875	Giorgi Nakashidze
876	Misha Meskhi
878	Sonam Kapoor
879	Pawan Malhotra
880	Art Malik
882	Richa Chadha
884	Tigmanshu Dhulia
885	Rajat Barmecha
886	Ronit Roy
887	Manjot Singh
888	Ram Kapoor
891	Rajesh Abhay
892	Hemendra Dandotiya
894	Soledad Villamil
895	Pablo Rago
896	Carla Quevedo
899	Joel Edgerton
900	Jennifer Morrison
905	Bob Peterson
906	Edward Asner
907	Jordan Nagai
908	John Ratzenberger
914	Vidya Malvade
915	Sagarika Ghatge
916	Shilpa Shukla
918	Paul Dano
920	Martin Stringer
921	Ivana Baquero
922	Ariadna Gil
923	Sergi López
927	Joan Cusack
929	Hugo Weaving
931	Rupert Graves
932	Stephen Rea
934	Soha Ali Khan
935	Siddharth
580	Sharman Joshi
939	Shernaz Patel
940	Ayesha Kapoor
946	Gayatri Joshi
947	Kishori Ballal
948	Smit Sheth
951	Ulrich Matthes
952	Juliane Köhler
953	Chieko Baishô
954	Takuya Kimura
955	Tatsuya Gashûin
956	Akihiro Miwa
962	Sunil Shetty
965	Jason Flemyng
966	Dexter Fletcher
967	Nick Moran
705	Jason Statham
972	Kim Basinger
973	Sener Sen
974	Ugur Yücel
975	Sermin Hürmeriç
976	Yesim Salkim
982	Sharon Stone
606	James Woods
987	Raveena Tandon
988	Karisma Kapoor
995	Alison Doody
996	Denholm Elliott
997	Davor Dujmovic
998	Bora Todorovic
999	Ljubica Adzovic
1000	Husnija Hasimovic
1001	Hitoshi Takagi
1002	Noriko Hidaka
1003	Chika Sakamoto
1004	Shigesato Itoi
1006	Alan Rickman
1007	Bonnie Bedelia
1008	Reginald VelJohnson
1010	Akira Terao
1012	Daisuke Ryû
1014	Cathy Moriarty
1016	Frank Vincent
1017	Alisa Freyndlikh
1018	Aleksandr Kaydanovskiy
1023	Lena Nyman
1024	Halvar Björk
1026	Irene Papas
1027	Michael Ansara
1028	Johnny Sekka
1029	Sanjeev Kumar
1030	Dharmendra
1032	Amjad Khan
1033	Terry Jones
1036	Eric Idle
1042	John Megna
1043	Frank Overton
1044	Rosemary Murphy
1046	Eijirô Tôno
1048	Yôko Tsukasa
1051	Richard Widmark
638	Marlene Dietrich
1053	Marilyn Monroe
1056	George Raft
1057	Victor Sjöström
1063	Bengt Ekerot
1064	Nils Poppe
1065	Jean Servais
1066	Carl Möhner
1067	Robert Manuel
1068	Janine Darcey
1071	Robert Cummings
1072	John Williams
1073	Chishû Ryû
1074	Chieko Higashiyama
1075	Sô Yamamura
1076	Setsuko Hara
1078	Machiko Kyô
1079	Masayuki Mori
1084	Celeste Holm
1086	Walter Huston
1087	Tim Holt
1088	Bruce Bennett
1089	Carole Lombard
1090	Jack Benny
1091	Robert Stack
1092	Felix Bressart
1094	Mack Swain
1095	Tom Murray
527	Henry Bergman
1098	Kathryn McGuire
1099	Joe Keaton
1100	Erwin Connelly
1101	Noémie Merlant
1102	Adèle Haenel
1103	Luàna Bajrami
626	Amitabh Bachchan
1107	Kirti Kulhari
1108	Andrea Tariang
415	Miyu Irino
1110	Saori Hayami
548	Aoi Yûki
1112	Kenshô Ono
1113	Mario Casas
1114	Ana Wagener
1116	Bárbara Lennie
1117	Kim Min-hee
1119	Cho Jin-woong
1120	Moon So-Ri
1121	Anne Dorval
1122	Antoine Olivier Pilon
1123	Suzanne Clément
1124	Patrick Huard
834	Shraddha Kapoor
1128	Kay Kay Menon
1131	Dafne Keen
1132	Boyd Holbrook
1135	Sean Bridgers
1136	Wendy Crewson
1138	María Marull
1139	Mónica Villa
1140	Diego Starosta
1141	Kemp Powers
1143	Tina Fey
1144	Graham Norton
1145	Haluk Bilginer
1146	Melisa Sözen
1148	Ayberk Pekcan
1150	Anushka Sharma
403	Paresh Rawal
1155	Mithun Chakraborty
1156	Mahesh Manjrekar
749	F. Murray Abraham
1162	Rosamund Pike
1163	Neil Patrick Harris
1164	Tyler Perry
1165	Aoi Miyazaki
1166	Takao Osawa
1167	Haru Kuroki
1171	Luke Bracey
1172	Teresa Palmer
1173	Ronnie Del Carmen
1175	Bill Hader
1176	Lewis Black
1178	Priyanka Chopra
1179	Ileana D'Cruz
1182	Michael Kenneth Williams
1187	Olivia Wilde
1192	Caitriona Balfe
1197	David Rawle
1199	Lisa Hannigan
1202	Parambrata Chattopadhyay
1203	Indraneil Sengupta
1205	Hrithik Roshan
877	Farhan Akhtar
1208	Katrina Kaif
1215	Nicholas Hoult
1216	Zoë Kravitz
1218	Naseeruddin Shah
1220	Aamir Bashir
1222	Bee Vang
1223	Christopher Carley
1224	Ahney Her
1229	Masahiro Motoki
1230	Ryôko Hirosue
1232	Kazuko Yoshiyuki
1235	Cary-Hiroyuki Tagawa
1236	Sarah Roemer
1240	Barry Humphries
1241	Chris Sanders
1244	Christopher Mintz-Plasse
1246	Vince Vaughn
1201	Vidya Balan
1152	Boman Irani
1257	Hilary Swank
1262	Sophie Okonedo
1264	Xolani Mali
1265	Jang Dong-Gun
1267	Eun-ju Lee
1268	Hyeong-jin Kong
1271	Vernon Dobtcheff
1272	Louise Lemoine Torrès
1151	Sanjay Dutt
1254	Arshad Warsi
1276	Sunil Dutt
1278	Kim Sang-kyung
1279	Roe-ha Kim
1280	Jae-ho Song
1283	Akshaye Khanna
1291	Ellen DeGeneres
1292	Alexander Gould
1297	Emilio Echevarría
1299	Goya Toledo
1300	Álvaro Guerrero
1301	David Silverman
1305	Kazuya Tsurumaki
1306	Megumi Ogata
1308	Yûko Miyamura
549	Aamir Khan
1310	Raghuvir Yadav
1275	Gracy Singh
1312	Rachel Shelley
1314	Haley Joel Osment
734	Tim Roth
1318	Pruitt Taylor Vince
1319	Mélanie Thierry
1320	Bill Nunn
697	Jim Carrey
1324	Noah Emmerich
1325	Bajram Severdzan
1326	Srdjan 'Zika' Todorovic
1327	Branka Katic
1328	Florijan Ajdini
1335	Ping Lam Siu
1336	Tung Cho 'Joe' Cheung
1338	Ewen Bremner
1339	Jonny Lee Miller
1340	Kevin McKidd
1342	William H. Macy
1344	Steve Buscemi
1345	Predrag 'Miki' Manojlovic
1346	Lazar Ristovski
1347	Mirjana Jokovic
1348	Slavko Stimac
1350	Hubert Koundé
1351	Saïd Taghmaoui
1352	Abdel Ahmed Ghili
1355	Amrish Puri
1356	Farida Jalal
1359	Andrea Eckert
1360	Hanno Pöschl
1363	Frédérique Feder
1364	Jean-Pierre Lorit
1365	Brigitte Lin
1368	Faye Wong
1371	Jeff Goldblum
1039	Richard Attenborough
1374	Pete Postlethwaite
1375	Alison Crosbie
1376	Philip King
1377	Leslie Cheung
1378	Fengyi Zhang
1380	You Ge
1379	Gong Li
1382	Jingwu Ma
1383	Saifei He
1384	Cuifen Cao
1386	Robert Sean Leonard
1388	Josh Charles
1389	Wil Wheaton
1390	River Phoenix
1392	Jerry O'Connell
1393	Charlie Sheen
1397	Harry Dean Stanton
1398	Nastassja Kinski
1399	Dean Stockwell
1400	Aurore Clément
1401	Sumi Shimamoto
1402	Mahito Tsujimura
1403	Hisako Kyôda
1404	Gorô Naya
1406	Wilford Brimley
1396	Keith David
1408	Richard Masur
1409	Bob Geldof
1410	Christine Hargreaves
1411	James Laurenson
1412	Eleanor David
1415	José Lewgoy
1416	Miguel Ángel Fuentes
1417	Bertil Guve
1418	Pernilla Allwin
1419	Kristina Adolphson
1420	Börje Ahlstedt
1422	Rutger Hauer
1423	Sean Young
1424	Edward James Olmos
1034	Graham Chapman
1035	John Cleese
1431	Michael Palin
1432	Terry Gilliam
1436	John Savage
1439	Burt Young
1443	Peter Finch
1446	Marisa Berenson
774	Patrick Magee
1448	Hardy Krüger
1449	Margarita Terekhova
1450	Filipp Yankovskiy
1451	Ignat Daniltsev
1452	Oleg Yankovskiy
1455	John Huston
1456	Perry Lopez
1445	Ryan O'Neal
1458	Tatum O'Neal
1460	John Hillerman
1463	Kari Sylwan
1059	Ingrid Thulin
1465	Natalya Bondarchuk
1466	Donatas Banionis
1467	Jüri Järvet
1468	Vladislav Dvorzhetskiy
1469	Alain Delon
1471	Nathalie Delon
1472	Cathy Rosier
1474	George Kennedy
1476	J.D. Cannon
1058	Bibi Andersson
1022	Liv Ullmann
1479	Margaretha Krook
1060	Gunnar Björnstrand
1019	Anatoliy Solonitsyn
1482	Ivan Lapikov
1020	Nikolay Grinko
1484	Nikolay Sergeev
1485	Brahim Hadjadj
1486	Jean Martin
1487	Yacef Saadi
1488	Samia Kerbash
1489	Silvia Pinal
1490	Jacqueline Andere
1491	Enrique Rambal
1492	José Baviera
1081	Bette Davis
1494	Joan Crawford
1495	Victor Buono
1496	Wesley Addy
1499	Keiju Kobayashi
1500	Yûnosuke Itô
1505	Eduard Abalov
1506	Nikolay Burlyaev
1507	Valentin Zubkov
1508	Evgeniy Zharikov
1510	Birgitta Valberg
1511	Gunnel Lindblom
1512	Birgitta Pettersson
801	Gene Kelly
1516	Dick York
1517	Jean-Pierre Léaud
1518	Albert Rémy
1519	Claire Maurier
1520	Guy Decomble
1523	Stephen Boyd
1524	Haya Harareet
1526	Misa Uehara
1528	Kamatari Fujiwara
1470	François Périer
1531	Franca Marzi
1532	Dorian Gray
445	Toshirô Mifune
1527	Minoru Chiaki
1535	Isuzu Yamada
446	Takashi Shimura
1540	Sessue Hayakawa
1545	Yves Montand
1547	Peter van Eyck
1548	Folco Lulli
1550	Jan Sterling
1551	Robert Arthur
1552	Porter Hall
1553	James Cagney
1554	Virginia Mayo
1556	Margaret Wycherly
1561	Emeric Pressburger
1562	Anton Walbrook
1563	Marius Goring
1565	Margaret Sullavan
1567	Frank Morgan
1568	Joseph Schildkraut
1570	Joan Fontaine
1083	George Sanders
1572	Judith Anderson
1574	Jean Arthur
1576	Edward Arnold
1578	Sam Wood
1581	Jean Gabin
1582	Dita Parlo
1583	Pierre Fresnay
651	Erich von Stroheim
1579	Clark Gable
1586	Claudette Colbert
1587	Walter Connolly
1588	Roscoe Karns
1589	Maria Falconetti
1590	Eugene Silvain
1591	André Berley
1592	Maurice Schutz
525	Charles Chaplin
1594	Merna Kennedy
1595	Al Ernest Garcia
1596	Harry Crocker
1597	George O'Brien
1598	Janet Gaynor
1599	Margaret Livingston
1600	Bodil Rosing
1097	Buster Keaton
1603	Marion Mack
1604	Glen Cavender
1605	Werner Krauss
1606	Conrad Veidt
1607	Friedrich Feher
1608	Lil Dagover
1610	Neena Gupta
1611	Gajraj Rao
552	Sanya Malhotra
1614	Julianne Nicholson
1615	Christopher Heyerdahl
1616	Richard Dormer
1620	Prakash Belawadi
986	Salman Khan
1622	Harshaali Malhotra
1626	Danny Denzongpa
1105	Taapsee Pannu
1631	Rosemarie DeWitt
458	J.K. Simmons
1636	Sunny Pawar
407	Jessica Chastain
1639	Kristen Wiig
1640	Kate Mara
1641	Rich Moore
1642	Jared Bush
1644	Jason Bateman
857	Prabhas
858	Rana Daggubati
1647	Ramya Krishnan
1648	Sathyaraj
1134	Jacob Tremblay
1655	Izabela Vidovic
1657	Vijay Varma
1658	Nakul Roshan Sahdev
1659	Ranveer Singh
1660	Vijay Raaz
961	Akshay Kumar
881	Manoj Bajpayee
1219	Jimmy Sheirgill
1666	Frantz Turner
1667	John Gallagher Jr.
1668	Kaitlyn Dever
1670	Yayan Ruhian
1671	Arifin Putra
1672	Oka Antara
1676	Allen Leech
1689	Rami Malek
1690	Lucy Boynton
1691	Gwilym Lee
1692	Ben Hardy
1695	Will Poulter
1699	Ezra Miller
1700	Paul Rudd
1702	Irandhir Santos
1707	Helena Bonham Carter
1211	Viola Davis
1715	T.J. Miller
1716	Ed Skrein
1717	Golshifteh Farahani
1720	Merila Zare'i
1207	Abhay Deol
890	Mahie Gill
1723	Kalki Koechlin
1724	Dibyendu Bhattacharya
1726	Simon Yam
1727	Siu-Wong Fan
1728	Ka Tung Lam
1354	Kajol
1731	Sheetal Menon
1732	Katie A. Keane
537	Erdem Can
1734	Mete Horozoglu
1735	Ilker Kizmaz
1736	Baris Bagci
1737	Loveleen Tandan
1633	Dev Patel
1739	Freida Pinto
1180	Saurabh Shukla
491	Natalie Portman
1742	Mila Kunis
1349	Vincent Cassel
1701	Wagner Moura
1703	André Ramiro
1747	Caio Junqueira
1704	Milhem Cortaz
1753	Marjane Satrapi
1754	Chiara Mastroianni
1758	Jennifer Garner
1760	Steve Zahn
1763	Jaden Smith
1764	Brian Howe
1768	Kagiso Kuypers
1770	Edgar Ramírez
1772	Julia Stiles
1773	Seung-Yun Lee
1774	Hee Jae
1775	Hyuk-ho Kwon
1776	Jin-mo Joo
1777	Quentin Tarantino
1778	Robert Rodriguez
1159	Mathieu Amalric
1784	Marie-Josée Croze
1785	Cem Yilmaz
1786	Özge Özberk
1787	Ozan Güven
1788	Safak Sezer
1789	Jan Pinkava
1790	Brad Garrett
1791	Lou Romano
1792	Patton Oswalt
1794	Eva Green
1796	Jeffrey Wright
1286	David Carradine
1287	Daryl Hannah
1801	Vladimir Garin
1802	Ivan Dobronravov
1803	Konstantin Lavronenko
1804	Nataliya Vdovina
1805	Ki-duk Kim
1806	Yeong-su Oh
1807	Jong-ho Kim
1808	Kim Young-Min
1811	Lola Dueñas
1812	Mabel Rivera
1814	Renée Zellweger
1815	Craig Bierko
1282	Saif Ali Khan
1820	Jaya Bachchan
1821	Alan Mak
1822	Andy Lau
1824	Anthony Chau-Sang Wong
344	Orlando Bloom
1836	Jason Lee
1837	Tae-Hyun Cha
1838	Jun Ji-Hyun
1839	In-mun Kim
1840	Song Wok-suk
1842	Paul Bettany
1461	Harriet Andersson
1845	Ömer Faruk Sorak
1147	Demet Akbag
1848	Altan Erkekli
1850	Jena Malone
1852	Holmes Osborne
516	Jason Robards
1857	Björk
423	David Morse
1860	Peter Stormare
1863	Jane Galloway Heitz
1864	Joseph A. Carpenter
1865	Junko Iwao
1866	Rica Matsumoto
1867	Shinpachi Tsuji
1868	Masaaki Ôkura
1870	Henning Moritzen
1873	Fernanda Montenegro
1874	Vinícius de Oliveira
1875	Marília Pêra
1876	Soia Lira
1877	Eli Marienthal
1878	Harry Connick Jr.
1881	Til Schweiger
1882	Jan Josef Liefers
1883	Thierry van Werveke
1885	Billy Bob Thornton
1886	Dwight Yoakam
1887	J.T. Walsh
1888	John Ritter
1889	Timothy Spall
1891	Phyllis Logan
1892	Claire Rushbrook
1896	Joseph Melito
1897	Atsuko Tanaka
1898	Iemasa Kayumi
1899	Akio Ôtsuka
1901	Danny Elfman
1903	Catherine O'Hara
1904	William Hickey
1907	Chris Elliott
1908	Stephen Tobolowsky
1909	Damian Chapa
1910	Jesse Borrego
568	Benjamin Bratt
1912	Enrique Castillo
1914	Chris O'Donnell
1916	Gabrielle Anwar
1918	Scott Weinger
1920	Linda Larkin
1925	Kirk Wise
1926	Paige O'Hara
1927	Robby Benson
1928	Jesse Corti
1851	Mary McDonnell
1932	Rodney A. Grant
1934	Ossie Davis
1935	Ruby Dee
1936	Richard Edson
1104	Valeria Golino
1940	Gerald R. Molen
1941	Mitsuo Iwata
1942	Nozomu Sasaki
1943	Mami Koyama
1944	Tesshô Genda
1946	Mandy Patinkin
1902	Chris Sarandon
949	Bruno Ganz
1950	Solveig Dommartin
1951	Otto Sander
1952	Curt Bois
1953	Gaspard Manesse
1954	Raphael Fejtö
1955	Francine Racette
1956	Stanislas Carré de Malberg
1957	Mayumi Tanaka
1958	Keiko Yokozawa
1959	Kotoe Hatsui
1960	Minori Terada
498	Linda Hamilton
746	Michael Biehn
1964	Paul Winfield
1428	John Gielgud
1967	Rohini Hattangadi
1968	Roshan Seth
441	Tatsuya Nakadai
1231	Tsutomu Yamazaki
1971	Ken'ichi Hagiwara
1011	Jinpachi Nezu
790	Shirley MacLaine
1979	Tony Roberts
1980	Carol Kane
1984	Lorraine Gary
1987	Penelope Allen
1988	Sully Boyar
1459	Madeline Kahn
1991	Marty Feldman
1992	Peter Boyle
1995	Victor Jory
1996	Don Gordon
709	Ellen Burstyn
1999	Linda Blair
338	Lee J. Cobb
2003	Alec Cawthorne
2004	John Matthews
2005	Timothy Bottoms
767	Cybill Shepherd
2008	Ben Johnson
2009	Topol
2010	Norma Crane
2011	Leonard Frey
2012	Molly Picon
2014	Stefania Sandrelli
2015	Gastone Moschin
2016	Enzo Tarascio
1475	Strother Martin
2024	Sidney Blackmer
2026	Roddy McDowall
2028	Maurice Evans
1427	Anne Bancroft
2019	Katharine Ross
2032	William Daniels
2035	George Segal
2036	Sandy Dennis
2039	Eleanor Parker
2040	Richard Haydn
2041	Omar Sharif
2043	Geraldine Chaplin
783	Gian Maria Volontè
2047	Marianne Koch
2048	Wolfgang Lukschy
515	Claudia Cardinale
2052	Sandra Milo
2053	Anna Karina
2054	Sady Rebbot
2055	André S. Labarthe
2056	Guylaine Schlumberger
2058	Jackie Gleason
2059	Piper Laurie
2049	Marcello Mastroianni
2062	Anita Ekberg
2050	Anouk Aimée
2066	Dean Martin
2067	Ricky Nelson
2068	Angie Dickinson
2070	Lee Remick
2071	Ben Gazzara
2072	Arthur O'Connell
817	Orson Welles
1054	Tony Curtis
2083	Susan Harrison
2084	Martin Milner
2086	Coleen Gray
2087	Vince Edwards
2088	Jay C. Flippen
2090	Shelley Winters
2091	Lillian Gish
2092	James Gleason
787	Anthony Quinn
1529	Giulietta Masina
2095	Richard Basehart
2096	Aldo Silvani
2097	Simone Signoret
2098	Véra Clouzot
2099	Paul Meurisse
1546	Charles Vanel
2102	Don Taylor
2103	Otto Preminger
2104	Robert Strauss
2107	Eddie Albert
2108	Hartley Power
1580	Vivien Leigh
325	Marlon Brando
2027	Kim Hunter
2114	Gloria Grahame
2115	Frank Lovejoy
2116	Carl Benton Reid
2117	Dennis Price
2120	Joan Greenwood
2122	John Dall
2124	Dick Hogan
2126	Jane Greer
2128	Rhonda Fleming
2129	Celia Johnson
1560	Trevor Howard
2132	Joyce Carey
2133	Gene Tierney
2135	Clifton Webb
2136	Vincent Price
2134	Dana Andrews
1514	Fredric March
2142	Priscilla Lane
2080	Jack Carson
2146	Mary Astor
2147	Gladys George
821	Peter Lorre
2150	Jane Darwell
2152	Charley Grapewin
1577	George Cukor
2154	Mervyn LeRoy
2155	Norman Taurog
2156	Richard Thorpe
2157	Marcel Dalio
2158	Nora Gregor
2159	Paulette Dubost
2160	Mila Parély
2161	William Powell
2137	Myrna Loy
2163	Maureen O'Sullivan
2164	Nat Pendleton
2165	Lew Ayres
2166	Louis Wolheim
2167	John Wray
2168	Arnold Lucy
2169	Aleksandr Antonov
2170	Vladimir Barskiy
2171	Grigoriy Aleksandrov
2172	Ivan Bobrov
1683	Ana de Armas
2178	Sanjana Sanghi
2179	Sahil Vaid
2180	Saswata Chatterjee
2181	Lily Franky
2182	Sakura Andô
2183	Kirin Kiki
2184	Mayu Matsuoka
2185	Adam Driver
2187	Julia Greer
2188	Azhy Robertson
2189	Armie Hammer
2190	Timothée Chalamet
2192	Amira Casar
1781	Laura Obiols
2194	Dave Johns
2195	Hayley Squires
2196	Sharon Percy
2198	Koyu Rankin
2200	Bob Balaban
1369	Sam Neill
2203	Rima Te Wiata
2204	Rachel House
658	George MacKay
2207	Samantha Isler
2208	Annalise Basso
2209	Ferdia Walsh-Peelo
2210	Aidan Gillen
2211	Maria Doyle Kennedy
2212	Jack Reynor
563	Chris Hemsworth
2214	Tom Hiddleston
2218	Rene Russo
2221	Roman Griffin Davis
2222	Thomasin McKenzie
2191	Michael Stuhlbarg
2229	Daisy Ridley
2230	John Boyega
2235	Seamus Davey-Fitzpatrick
2236	Ariane Labed
1130	Patrick Stewart
466	Hugh Jackman
2241	Muhammet Uzuner
1846	Yilmaz Erdogan
2243	Taner Birsel
2244	Ahmet Mümtaz Taylan
2245	Jean Dujardin
2248	James Cromwell
1362	Jean-Louis Trintignant
2255	Isabelle Huppert
2256	Alexandre Tharaud
733	Harvey Keitel
2262	Niels Arestrup
2263	Adel Bencherif
2264	Reda Kateb
431	Kevin Spacey
2267	Dominique McElligott
2268	Rosie Shaw
2269	Kåre Hedebrant
2270	Lina Leandersson
2271	Per Ragnar
2272	Henrik Dahl
2273	Sharlto Copley
2274	David James
2275	Jason Cope
2276	Nathalie Boltt
1779	Mickey Rourke
2279	Evan Rachel Wood
2280	Mark Margolis
2283	Tarun Arora
2284	Dara Singh
2285	Ellar Coltrane
2288	Elijah Smith
2289	Anamaria Marinca
2290	Laura Vasiliu
2291	Vlad Ivanov
2292	Alexandru Potocean
919	Ciarán Hinds
2300	Elizabeth Berrington
2301	David Lee Smith
2302	Tony Todd
2303	John Billingsley
2304	Ellen Crawford
2306	Kazunari Ninomiya
2307	Tsuyoshi Ihara
2308	Ryô Kase
2309	Lee Pace
2310	Catinca Untaru
2311	Justine Waddell
2312	Kim Uylenbroek
2313	Suraj Sharma
666	Tabu
2321	Michel Côté
2322	Marc-André Grondin
2323	Danielle Proulx
2324	Émile Vallée
2325	Gérard Jugnot
2326	François Berléand
2327	Jean-Baptiste Maunier
2328	Kad Merad
2331	Terrence Howard
2335	Kate Ashfield
2336	Lucy Davis
2337	Birol Ünel
2338	Sibel Kekilli
2339	Güven Kiraç
2340	Zarah Jane McKenzie
2344	Emmy Rossum
1334	Maggie Cheung
2353	Rosario Flores
2354	Javier Cámara
1137	Darío Grandinetti
2356	Leonor Watling
2357	Branko Djuric
2358	Rene Bitorajac
2359	Filip Sovagovic
2360	Georges Siatidis
2361	Tensai Okamura
2362	Hiroyuki Okiura
2363	Yoshiyuki Takei
2364	Beau Billingslea
893	Ricardo Darín
2370	Gastón Pauls
2371	Graciela Tenenbaum
2372	María Mercedes Villagra
604	Billy Crudup
2378	Patrick Fugit
2379	Kate Hudson
2382	Laura Harring
2384	Jeanne Bates
2385	Ash Brannon
1289	Lee Unkrich
2392	Luis Guzmán
2394	Issey Takahashi
2395	Takashi Tachibana
2396	Shigeru Muroi
2397	Rena Owen
2398	Temuera Morrison
2399	Mamaengaroa Kerr-Bell
2400	Julian Arahanga
2405	Juliette Binoche
2408	Benoît Régent
1900	Kôichi Yamadera
2410	Emi Shinohara
2411	Takeshi Aono
2412	Osamu Saka
2415	Penelope Ann Miller
2416	John Leguizamo
2420	Anthony Michael Hall
2422	Brenda Fricker
2423	Alison Whelan
2424	Kirsten Sheridan
2427	Bill Bernstein
2428	Claire Bloom
2432	Charles Martin Smith
2437	Jonathan Pryce
2438	Kim Greist
2440	Katherine Helmond
2441	Rob Reiner
2443	Christopher Guest
2444	Kimberly Stringer
2445	Peter Billingsley
2447	Darren McGavin
2448	Scott Schwartz
2449	John Belushi
2451	Cab Calloway
2455	Mariel Hemingway
2456	Michael Murphy
1832	Jessica Lange
2459	Ann Reinking
2460	Leland Palmer
2461	David Emge
2462	Ken Foree
2463	Scott H. Reiniger
2464	Gaylen Ross
770	Robert Redford
2469	Alejandro Jodorowsky
2470	Horacio Salinas
2471	Zamira Saunders
2472	Juan Ferrara
2473	Magali Noël
2474	Bruno Zanin
2475	Pupella Maggio
2476	Armando Brancia
2478	Delphine Seyrig
2479	Paul Frankeur
2480	Bulle Ogier
1413	Klaus Kinski
2482	Ruy Guerra
2483	Helena Rojo
2484	Del Negro
2023	Ruth Gordon
2486	Bud Cort
2487	Vivian Pickles
2488	Cyril Cusack
634	George C. Scott
1542	Karl Malden
2491	Stephen Young
2492	Michael Strong
2495	Robert Ryan
1555	Edmond O'Brien
2497	Duane Jones
2498	Judith O'Dea
2499	Karl Hardman
2500	Marilyn Eastman
2508	Lee Grant
2513	Frank Sinatra
2514	Laurence Harvey
518	Janet Leigh
2516	Angela Lansbury
641	Kirk Douglas
1569	Laurence Olivier
2519	Jean Simmons
639	Charles Laughton
2521	Gabriele Ferzetti
2522	Monica Vitti
2523	Lea Massari
2524	Dominique Blanchar
2254	Emmanuelle Riva
2526	Eiji Okada
2527	Stella Dassas
2528	Pierre Barbaud
1521	Charlton Heston
1082	Anne Baxter
2534	Jeffrey Hunter
519	Vera Miles
2143	Raymond Massey
2539	Julie Harris
2079	Burl Ives
2541	Gary Cooper
646	Grace Kelly
452	Thomas Mitchell
2544	Lloyd Bridges
2123	Farley Granger
2546	Robert Walker
2547	Ruth Roman
2548	Leo G. Carroll
2551	William H. Lynn
2552	Victoria Horne
2553	Edmund Gwenn
2555	John Payne
522	Ingrid Bergman
2560	Louis Calhern
2563	John Ridgely
2564	Martha Vickers
1069	Ray Milland
2566	Jane Wyman
2567	Phillip Terry
2568	Howard Da Silva
449	James Stewart
2572	Ruth Hussey
2574	Rosalind Russell
2575	Ralph Bellamy
2556	Gene Lockhart
2577	William Keighley
2578	Errol Flynn
2579	Olivia de Havilland
2580	Basil Rathbone
2581	Edmund Goulding
2585	Ernest B. Schoedsack
2586	Fay Wray
2587	Robert Armstrong
2588	Bruce Cabot
2550	Wallace Ford
2590	Leila Hyams
2591	Olga Baclanova
2592	Roscoe Ates
2593	Max Schreck
2594	Alexander Granach
2595	Gustav von Wangenheim
2596	Greta Schröder
2598	Charlie Hunnam
2599	Michelle Dockery
837	Vicky Kaushal
2603	Rajit Kapoor
2604	Shishir Sharma
2220	Riz Ahmed
2607	Paul Raci
2608	Lauren Ridloff
680	Shahab Hosseini
1719	Taraneh Alidoosti
2611	Babak Karimi
2612	Mina Sadati
2613	Fionn Whitehead
2614	Barry Keoghan
574	Tom Hardy
2617	Giuseppe Battiston
2618	Anna Foglietta
2619	Marco Giallini
2620	Edoardo Leo
2621	Taraji P. Henson
2623	Janelle Monáe
1921	Kevin Costner
2625	Ben Whishaw
2626	Hugh Grant
2627	Hugh Bonneville
2628	Sally Hawkins
1125	Shahid Kapoor
2601	Alia Bhatt
1624	Kareena Kapoor
2632	Diljit Dosanjh
1214	Charlize Theron
2634	Art Parkinson
350	Ralph Fiennes
2638	Kiara Advani
1217	Anupam Kher
2640	Disha Patani
2643	Kyle Chandler
2644	Lucas Hedges
2645	Roland Møller
2646	Louis Hofmann
2647	Joel Basman
2648	Mikkel Boe Følsgaard
2650	Diego Luna
1725	Donnie Yen
2660	Walton Goggins
2663	Florence Pugh
2664	Eliza Scanlen
2665	Hugh Welchman
2666	Douglas Booth
2667	Jerome Flynn
2668	Robert Gulaczyk
2670	Imelda Staunton
2246	Bérénice Bejo
2261	Tahar Rahim
2675	Ali Mosaffa
2676	Pauline Burlet
2677	Toni Servillo
2678	Carlo Verdone
2679	Sabrina Ferilli
2680	Carlo Buccirosso
853	Irrfan Khan
1618	Nimrat Kaur
883	Nawazuddin Siddiqui
2684	Lillete Dubey
665	Ayushmann Khurrana
840	Yami Gautam
2687	Annu Kapoor
2688	Dolly Ahluwalia
2690	Ryan Potter
2691	Scott Adsit
2692	Jamie Chung
2696	Lydia Wilson
2697	Sridevi
2315	Adil Hussain
2699	Mehdi Nebbou
2700	Priya Anand
2701	Hideaki Anno
2702	Hidetoshi Nishijima
2703	Miori Takimoto
2704	Masahiko Nishimura
726	Tim Allen
2707	Annie Potts
2708	Tony Hale
2710	Jim Sturgess
2711	Sylvia Hoeks
2713	Jared Gilman
2714	Kara Hayward
1242	Jay Baruchel
2720	Craig Ferguson
2725	Takako Matsu
2726	Yoshino Kimura
2727	Masaki Okada
1168	Yukito Nishii
593	Choi Min-sik
2731	Jeon Gook-Hwan
2732	Ho-jin Chun
2738	Barkhad Abdi
2739	Barkhad Abdirahman
2742	Sae-ron Kim
2743	Tae-hoon Kim
2744	Hee-won Kim
2745	O'Shea Jackson Jr.
2746	Corey Hawkins
2747	Jason Mitchell
2748	Neil Brown Jr.
2749	Hye-ja Kim
1266	Won Bin
2751	Jin Goo
2752	Je-mun Yun
2753	Kim Yoon-seok
1118	Jung-woo Ha
2755	Yeong-hie Seo
2756	Yoo-Jeong Kim
2760	Ken Stott
2761	Christian Friedel
2762	Ernst Jacobi
2763	Leonie Benesch
592	Ulrich Tukur
2765	Michael Nyqvist
2766	Noomi Rapace
2767	Ewa Fröling
2768	Lena Endre
2770	Alex Sharp
2771	Sacha Baron Cohen
2600	Jeremy Strong
674	Thomas Bo Larsen
2775	Magnus Millang
2776	Lars Ranthe
472	Mark Wahlberg
1686	Amy Adams
1212	Melissa Leo
2782	Maggie Grace
2783	Famke Janssen
2784	Leland Orser
2785	Asa Butterfield
2787	Rupert Friend
2788	Zac Mattoon O'Brien
2789	Glen Hansard
2790	Markéta Irglová
2791	Hugh Walsh
2792	Gerard Hendrick
2759	Richard Armitage
2797	Baki Davrak
2798	Nurgül Yesilçay
2799	Tuncel Kurtiz
2800	Nursel Köse
2661	Saoirse Ronan
2806	Carey Mulligan
768	Albert Brooks
1170	Sam Worthington
2816	Michelle Rodriguez
2818	Sarah Polley
2820	Linh Dan Pham
2821	Gerardo Taracena
2822	Raoul Max Trujillo
2823	Dalia Hernández
2824	Rudy Youngblood
2825	Valerie Faris
1237	Toni Collette
2334	Nick Frost
2758	Martin Freeman
2836	Julia Ormond
913	Shah Rukh Khan
1284	Preity Zinta
938	Rani Mukerji
2840	Kirron Kher
1869	Ulrich Thomsen
2843	Nicolas Bro
1872	Paprika Steen
1674	Keira Knightley
2846	Matthew Macfadyen
1890	Brenda Blethyn
2850	Diane Ladd
2851	Iain Rea
2852	Tessa Mitchell
2853	Shôgo Furuya
2855	Yoshiaki Umegaki
2856	Aya Okamoto
2857	Nathan Fillion
2858	Gina Torres
1181	Chiwetel Ejiofor
2651	Alan Tudyk
453	Joaquin Phoenix
2862	Reese Witherspoon
1643	Ginnifer Goodwin
500	Robert Patrick
2865	Andreas Wilson
2866	Henrik Lundström
2867	Gustaf Skarsgård
2868	Linda Zilliacus
1038	James Garner
1629	Ryan Gosling
2874	Rodrigo De la Serna
2875	Mía Maestro
2876	Mercedes Morán
2877	Oksana Akinshina
2878	Artyom Bogucharskiy
2879	Pavel Ponomaryov
2880	Lyubov Agapova
2881	Michèle Caucheteux
2882	Jean-Claude Donda
2883	Michel Robin
2884	Monica Viegas
2885	Lee Yeong-ae
2729	Lee Byung-Hun
2888	Kim Tae-Woo
597	Guy Pearce
2891	Christopher Adamson
2892	JB Blanc
2894	Trevor Jack Brooks
2895	Lorelei Linklater
2898	Will Patton
2899	Wood Harris
2900	Ryan Hurst
2902	Michelle Yeoh
2352	Ziyi Zhang
2904	Chen Chang
2905	Cecilia Roth
2907	Candela Peña
2908	Antonia San Juan
2911	Paul Sanchez
2912	Lari White
2914	Sean Patrick Flanery
2915	Norman Reedus
2916	David Della Rocco
2920	Diane Venora
2924	Chris Owen
2925	Vicky Jenson
2926	Mike Myers
2931	Billy Zane
2934	Kayoko Kishimoto
2935	Ren Osugi
2936	Susumu Terajima
346	Uma Thurman
2940	Gore Vidal
1915	James Rebhorn
2945	Emily Watson
720	Stellan Skarsgård
2948	Jean-Marc Barr
2425	Martin Landau
2951	Sarah Jessica Parker
2955	Juliette Lewis
1651	Mary Steenburgen
2957	Kevin Jarre
979	Val Kilmer
2961	Tom Guiry
2962	Mike Vitar
2963	Art LaFleur
2964	Patrick Renna
434	Anthony Hopkins
2967	John Haycraft
2968	Christopher Reeve
2786	David Thewlis
2970	Lesley Sharp
2947	Katrin Cartlidge
2972	Greg Cruttwell
386	Harrison Ford
1250	Tommy Lee Jones
2975	Sela Ward
487	Chazz Palminteri
2979	Lillo Brancato
2980	Francis Capra
2981	Boyd Kirkland
2982	Frank Paur
2983	Dan Riba
2984	Eric Radomski
1333	Tony Chiu-Wai Leung
2987	Teresa Mo
2988	Philip Chan
1744	Winona Ryder
1756	Gena Rowlands
2991	Lisanne Falk
2992	Alan Randolph Scott
1361	Irène Jacob
2994	Wladyslaw Kowalski
2995	Halina Gryglaszewska
2996	Kalina Jedrusik
379	Laurence Fishburne
2999	Hudhail Al-Amir
3000	Lloyd Avery II
327	James Caan
1861	Richard Farnsworth
3004	Frances Sternhagen
717	Robin Williams
3007	Julie Kavner
3008	Ruth Nelson
3009	Kirsten Dunst
3010	Minami Takayama
3011	Rei Sakuma
3012	Kappei Yamaguchi
2901	Yun-Fat Chow
3018	Danny Lee
3019	Sally Yeh
3020	Kong Chu
509	Michael J. Fox
511	Lea Thompson
3024	Thomas F. Wilson
3028	Brad Dourif
497	Arnold Schwarzenegger
1440	Carl Weathers
3031	Kevin Peter Hall
3032	Elpidia Carrillo
3033	Bruce Campbell
3034	Sarah Berry
3035	Dan Hicks
3036	Kassie Wesley DePaiva
494	Matthew Broderick
3038	Alan Ruck
3039	Mia Sara
3040	Jeffrey Jones
3041	Tom Waits
3042	John Lurie
425	Roberto Benigni
426	Nicoletta Braschi
3045	Sean Astin
3047	Jeff Cohen
1391	Corey Feldman
3050	Whoopi Goldberg
3051	Oprah Winfrey
3052	Margaret Avery
3053	Emilio Estevez
3054	Judd Nelson
3055	Molly Ringwald
3056	Ally Sheedy
3057	Sam Waterston
3058	Haing S. Ngor
3060	Julian Sands
2450	Dan Aykroyd
621	Sigourney Weaver
3064	Harold Ramis
3068	Dennis Quaid
3070	Jerry Lewis
3071	Diahnne Abbott
3072	Sandra Bernhard
3073	Henry Thomas
3074	Drew Barrymore
3075	Peter Coyote
3076	Dee Wallace
3079	Jane Alexander
3080	Justin Henry
3082	Brooke Adams
3065	Sam Shepard
3084	Linda Manz
3086	Sondra Locke
3087	Chief Dan George
3092	Saeed Jaffrey
1435	John Cazale
3095	Allen Garfield
620	Frederic Forrest
3097	Barry Bostwick
3098	Jennifer Drake
3099	Eric Baugin
3100	Jean Topart
3101	Edward Fox
3102	Terence Alexander
3103	Michel Auclair
3104	Alan Badel
617	Martin Sheen
1862	Sissy Spacek
2507	Warren Oates
3108	Ramon Bieri
3109	Liza Minnelli
3110	Michael York
3111	Helmut Griem
3112	Joel Grey
3114	Jack Albertson
3115	Peter Ostrum
3116	Roy Kinnear
1937	Dustin Hoffman
3119	Sylvia Miles
3120	John McGiver
3124	Efrem Zimbalist Jr.
1049	Spencer Tracy
2505	Sidney Poitier
3128	Katharine Houghton
3129	Warren Beatty
1441	Faye Dunaway
3131	Michael J. Pollard
3134	Rex Harrison
2131	Stanley Holloway
3136	Wilfrid Hyde-White
2037	Julie Andrews
3138	Dick Van Dyke
3139	David Tomlinson
3140	Glynis Johns
3141	Andrew Marton
3142	Gerd Oswald
3143	Bernhard Wicki
3144	Darryl F. Zanuck
3145	Jeanne Moreau
3146	Oskar Werner
3147	Henri Serre
3148	Vanna Urbino
3150	Peter Wyngarde
3151	Megs Jenkins
3153	Jean-Paul Belmondo
3154	Jean Seberg
3155	Daniel Boulanger
3156	Henri-Jacques Huet
3157	Arthur Rosson
3160	Joanne Dru
815	Edward G. Robinson
451	Lionel Barrymore
1843	Lauren Bacall
3167	Walter Brennan
3168	Dolores Moran
2140	Teresa Wright
818	Joseph Cotten
3171	Macdonald Carey
3174	Claire Trevor
3175	Andy Devine
2151	John Carradine
3177	Margaret Lockwood
3152	Michael Redgrave
3179	Paul Lukas
3180	May Whitty
793	Cary Grant
3183	Charles Ruggles
3184	Walter Catlett
640	Elsa Lanchester
2119	Valerie Hobson
2582	Groucho Marx
2584	Harpo Marx
2583	Chico Marx
3192	Zeppo Marx
3193	Richard Rosson
3194	Paul Muni
3195	Ann Dvorak
3196	Karen Morley
3187	Colin Clive
3198	Mae Clarke
3185	Boris Karloff
3200	John Boles
3201	Yalitza Aparicio
3202	Marina de Tavira
3203	Diego Cortina Autrey
3204	Carlos Peralta
3205	Josh O'Connor
3206	Alec Secareanu
3207	Gemma Jones
3208	Ian Hart
1713	Ryan Reynolds
1714	Morena Baccarin
2202	Julian Dennison
3213	Kelsey Asbille
1752	Jeremy Renner
3215	Julia Jones
3216	Teo Briones
3217	Daniel Kaluuya
3218	Allison Williams
3219	Bradley Whitford
3222	Henry Cavill
3223	Ving Rhames
2295	Simon Pegg
3226	Bahar Pars
3227	Filip Berg
3228	Ida Engvoll
3230	Jemaine Clement
2224	Taika Waititi
3232	Cori Gonzalez-Macuer
3233	Hiromasa Yonebayashi
3234	Sara Takatsuki
3235	Kasumi Arimura
3236	Nanako Matsushima
2769	Eddie Redmayne
2649	Felicity Jones
3239	Tom Prior
3240	Sophie Perry
660	Colin Firth
3242	Taron Egerton
3245	Shailene Woodley
3247	Nat Wolff
3249	Thomas Mann
3250	RJ Cyler
2606	Olivia Cooke
3252	Nick Offerman
1194	Michael Keaton
3256	Andrea Riseborough
3257	Léa Seydoux
3258	Adèle Exarchopoulos
3259	Salim Kechiouche
3260	Aurélien Recoing
3261	Amit Sadh
833	Sushant Singh Rajput
870	Rajkummar Rao
3264	Amrita Puri
3265	Veerle Baetens
3266	Johan Heldenbergh
3267	Nell Cattrysse
3268	Geert Van Rampelberg
557	Joe Russo
1177	Ranbir Kapoor
3274	Nargis Fakhri
3275	Shammi Kapoor
1619	Kumud Mishra
3277	Bruce Dern
3278	Will Forte
3279	June Squibb
3280	Bob Odenkirk
3281	John C. Reilly
3282	Jack McBrayer
3283	Jane Lynch
3284	Sarah Silverman
408	Mackenzie Foy
473	Adrien Brody
3290	Christina Hendricks
1248	Marcia Gay Harden
1654	Owen Wilson
3296	Kurt Fuller
3297	Phil Lord
3299	Will Ferrell
3300	Elizabeth Banks
3304	Orto Ignatiussen
2294	Zachary Quinto
1673	Benedict Cumberbatch
3309	Abraham Attah
3310	Emmanuel Affadzi
3311	Ricky Adelayitor
3312	Andrew Adote
1169	Andrew Garfield
3315	Justin Timberlake
1635	Rooney Mara
1183	Michael Fassbender
3254	Zach Galifianakis
3323	Justin Bartha
3324	Ed Helms
1793	Daniel Craig
1251	Javier Bardem
3319	Jennifer Lawrence
3332	Jacki Weaver
719	Ben Affleck
2197	Bryan Cranston
3337	Zooey Deschanel
3339	Geoffrey Arend
2669	Bill Nighy
2215	Cate Blanchett
349	Liam Neeson
3348	Tomoko Yamaguchi
3349	Frank Langella
3350	Michael Sheen
851	Sam Rockwell
1307	Megumi Hayashibara
2854	Tôru Emori
3355	Katsunosuke Hori
3356	Tôru Furuya
3357	Angelina Jolie
3358	Colm Feore
3360	Gattlin Griffith
3361	Madeline Carroll
3362	Callan McAuliffe
3363	Rebecca De Mornay
3365	Riisa Naka
3366	Takuya Ishida
3367	Mitsutaka Itakura
3368	Ayami Kakiuchi
3370	Ken'ichi Matsuyama
3371	Asaka Seto
3372	Yû Kashii
3373	Thomas Turgoose
3374	Stephen Graham
3375	Jo Hartley
3376	Andrew Shim
3377	Alicia Vikander
1696	Domhnall Gleeson
2231	Oscar Isaac
3380	Sonoya Mizuno
673	Mads Mikkelsen
3382	Sidse Babett Knudsen
3225	Rolf Lassgård
3384	Neeral Mulchandani
2240	James McAvoy
2227	Forest Whitaker
3387	Gillian Anderson
3364	Anthony Edwards
351	Ben Kingsley
3292	Lucy Liu
694	Diane Kruger
3398	Benno Fürmann
3400	Natalie Dessay
3401	Sam Riley
3403	Craig Parkinson
950	Alexandra Maria Lara
3405	Byron Howard
3406	Mandy Moore
3407	Zachary Levi
3408	Donna Murphy
3409	Carice van Houten
591	Sebastian Koch
3411	Thom Hoffman
3412	Halina Reijn
330	Heath Ledger
3416	Randy Quaid
477	Russell Crowe
1697	Logan Lerman
1261	Don Cheadle
1762	Thandie Newton
3424	Karina Arroyave
3425	Stephen Chow
3426	Wah Yuen
3427	Qiu Yuen
3428	Siu-Lung Leung
1234	Joan Allen
3432	Brian Cox
2659	Jennifer Jason Leigh
3435	Aitana Sánchez-Gijón
3436	John Sharian
3438	Regina King
572	Kerry Washington
3440	Clifton Powell
3443	Giovanni Ribisi
3444	Anna Faris
3448	Eric Sykes
1295	Christopher Walken
3454	Teri Hatcher
3455	John Hodgman
3456	Jennifer Saunders
356	Ken Watanabe
3459	Billy Connolly
3460	William Atherton
3461	Eileen Walsh
3462	Dorothy Duffy
3463	Nora-Jane Noone
3464	Anne-Marie Duff
1185	Daniel Brühl
3466	Katrin Saß
3467	Chulpan Khamatova
3468	Florian Lukas
1766	Djimon Hounsou
3472	Sarah Bolger
754	Michelle Pfeiffer
3451	Dakota Fanning
2419	Dianne Wiest
2367	Chris Cooper
2835	Tilda Swinton
3393	Josh Hartnett
1337	Ewan McGregor
419	Tom Sizemore
1239	Eric Bana
3486	Tyler Hoechlin
3487	Rob Maxey
3488	Liam Aiken
3490	Christian Berkel
3491	Oliver Stokowski
3492	Wotan Wilke Möhring
3493	Jamie Bell
3494	Julie Walters
3495	Jean Heywood
3496	Jamie Draven
3497	John Cameron Mitchell
3498	Miriam Shor
3499	Stephen Trask
3500	Theodore Liscinski
1656	Julia Roberts
3505	Andrew Philpot
3506	John Rafter Lee
3507	Pamela Adlon
3508	Wendee Lee
2317	George Clooney
3512	Tim Blake Nelson
1652	James Marsden
1405	Kurt Russell
3516	Matthew Edison
3517	Trey Parker
3518	Matt Stone
3519	Mary Kay Bergman
3520	Isaac Hayes
3521	Ron Livingston
1879	Jennifer Aniston
3523	David Herman
3524	Ajay Naidu
3525	Jane Adams
3526	Jon Lovitz
3528	Dylan Baker
3066	Scott Glenn
1394	Tom Berenger
862	Jason Schwartzman
1905	Bill Murray
1316	Olivia Williams
3536	Seymour Cassel
3537	Eduardo Noriega
3539	Chete Lera
3540	Fele Martínez
3541	John Cusack
2928	Cameron Diaz
2910	Helen Hunt
2828	Greg Kinnear
2997	Cuba Gooding Jr.
3550	Milla Jovovich
3552	Ian Holm
3553	Thierry Lhermitte
3554	Jacques Villeret
3555	Francis Huster
3556	Daniel Prévost
735	Michael Madsen
1706	Geoffrey Rush
3563	Justin Braine
3564	Sonia Todd
1233	Richard Gere
1323	Laura Linney
3568	John Mahoney
3569	Kenneth Branagh
1708	Derek Jacobi
3573	Liesel Matthews
3574	Eleanor Bron
3575	Liam Cunningham
3576	Rusty Schwimmer
3577	Leon Lai
3578	Michelle Reis
1366	Takeshi Kaneshiro
3580	Charlie Yeung
3581	Massimo Troisi
501	Philippe Noiret
3584	Maria Grazia Cucinotta
3585	Brian O'Halloran
3586	Jeff Anderson
3587	Marilyn Ghigliotti
3588	Lisa Spoonauer
1906	Andie MacDowell
1332	Julianne Moore
3592	Bruce Davison
3595	Roberta Maxwell
3596	Buzz Kilman
332	Michael Caine
3598	Kermit the Frog
3599	Dave Goelz
3600	Miss Piggy
3602	Angela Bassett
3603	Delroy Lindo
3604	Spike Lee
917	Daniel Day-Lewis
1894	Madeleine Stowe
3607	Russell Means
3608	Eric Schweig
3609	Shûichirô Moriyama
3610	Tokiko Katô
3611	Bunshi Katsura Vi
3612	Tsunehiko Kamijô
3615	Alec Baldwin
3122	Alan Arkin
389	Jack Nicholson
3619	Demi Moore
2932	Kathy Bates
3623	Mary Stuart Masterson
3624	Mary-Louise Parker
1304	John Goodman
3628	Judy Davis
486	Gabriel Byrne
1830	Albert Finney
3511	John Turturro
3633	Bob Hoskins
510	Christopher Lloyd
3635	Joanna Cassidy
3636	Charles Fleischer
3637	Bernard-Pierre Donnadieu
3638	Gene Bervoets
3639	Johanna ter Steege
3640	Gwen Eckhaus
3641	Richard E. Grant
3642	Paul McGann
2348	Richard Griffiths
3644	Ralph Brown
3645	John Lone
3646	Joan Chen
785	Peter O'Toole
3648	Ruocheng Ying
3059	John Malkovich
3651	Miranda Richardson
3652	Nigel Havers
2401	Christian Slater
3655	Helmut Qualtinger
3656	Elya Baskin
3657	Isabella Rossellini
3658	Kyle MacLachlan
2403	Dennis Hopper
1370	Laura Dern
3662	Jeff Daniels
492	Danny Aiello
3664	Irving Metzman
3665	Griffin Dunne
3666	Rosanna Arquette
3667	Verna Bloom
3668	Tommy Chong
2021	Mia Farrow
3671	Patrick Horgan
3672	John Buckwalter
769	Paul Newman
3674	Charlotte Rampling
1976	Jack Warden
795	James Mason
3677	William Shatner
2296	Leonard Nimoy
3679	DeForest Kelley
3680	James Doohan
3682	Brian Dennehy
3123	Richard Crenna
3088	Bill McKinney
2712	Donald Sutherland
3686	Mary Tyler Moore
3687	Judd Hirsch
3688	Timothy Hutton
3689	David Zucker
3690	Jerry Zucker
3691	Robert Hays
3692	Julie Hagerty
3693	Yasuo Yamada
3694	Eiko Masuyama
3695	Kiyoshi Kobayashi
3696	Makio Inoue
3697	Donald Pleasence
2176	Jamie Lee Curtis
3699	Tony Moran
3700	Nancy Kyes
3701	Roman Polanski
3702	Isabelle Adjani
1975	Melvyn Douglas
3704	Jo Van Fleet
1977	Woody Allen
3707	Georges Adet
3708	Frank Adu
339	Martin Balsam
3712	Hector Elizondo
3713	Cleavon Little
1989	Gene Wilder
3715	Slim Pickens
3716	Harvey Korman
3718	John Randolph
3719	Jack Kehoe
3720	Biff McGuire
3721	Bruce Lee
3722	John Saxon
3723	Jim Kelly
3724	Ahna Capri
980	Jon Voight
2391	Burt Reynolds
928	Ned Beatty
3728	Ronny Cox
1981	Roy Scheider
2477	Fernando Rey
3732	Tony Lo Bianco
3734	Andrew Robinson
3735	Harry Guardino
3736	Reni Santoni
2034	Richard Burton
3739	Mary Ure
3740	Patrick Wymark
789	Jack Lemmon
1924	Walter Matthau
340	John Fiedler
3744	Herb Edelman
1504	Lee Marvin
2494	Ernest Borgnine
2022	John Cassavetes
3750	Jean Sorel
3751	Michel Piccoli
3752	Geneviève Page
3753	Paul Scofield
3754	Wendy Hiller
771	Robert Shaw
3756	Leo McKern
1755	Catherine Deneuve
3758	Ian Hendry
3759	John Fraser
2064	Yvonne Furneaux
3761	Stanley Baker
788	Jack Hawkins
3763	Ulla Jacobsson
3764	James Booth
994	Sean Connery
3766	Gert Fröbe
3767	Honor Blackman
3768	Shirley Eaton
3769	Rod Taylor
3770	Tippi Hedren
3622	Jessica Tandy
414	Suzanne Pleshette
1041	Gregory Peck
2089	Robert Mitchum
3775	Polly Bergen
3776	Lori Martin
3777	Karlheinz Böhm
3778	Anna Massey
1564	Moira Shearer
3780	Maxine Audley
2530	Yul Brynner
1037	Steve McQueen
514	Charles Bronson
370	Eli Wallach
3785	Pierre Brasseur
1559	Alida Valli
3787	Juliette Mayniel
3788	Alexandre Rignault
3789	Kevin McCarthy
3790	Dana Wynter
3791	Larry Gates
3792	King Donovan
3794	Natalie Wood
3795	Sal Mineo
3796	Jim Backus
440	Alec Guinness
633	Peter Sellers
3799	Cecil Parker
3800	Herbert Lom
649	William Holden
3804	Walter Hampden
1502	John Wayne
2554	Maureen O'Hara
3807	Barry Fitzgerald
2536	Ward Bond
3809	Michael Rennie
3811	Hugh Marlowe
3812	Sam Jaffe
521	Humphrey Bogart
3815	Robert Morley
3816	Peter Bull
3817	Rita Hayworth
3818	Glenn Ford
644	George Macready
2076	Joseph Calleia
3821	Samuel Armstrong
3822	Ford Beebe Jr.
3823	Norman Ferguson
3824	David Hand
524	Claude Rains
3826	Gloria Stuart
3827	William Harrigan
3172	Henry Travers
560	Mark Ruffalo
406	Anne Hathaway
321	Tim Robbins
3833	John Cho
3834	Debra Messing
3835	Joseph Lee
3836	Michelle La
353	Leonardo DiCaprio
911	Margot Robbie
1245	Emile Hirsch
3841	Maryana Spivak
3842	Aleksey Rozin
3843	Matvey Novikov
3844	Marina Vasileva
3845	Brooklynn Prince
3846	Bria Vinaite
1395	Willem Dafoe
3848	Christopher Rivera
569	Jamie Foxx
1133	Brie Larson
3852	Charlie Pye Jr.
559	Chris Evans
3854	Mckenna Grace
3855	Lindsay Duncan
1711	Octavia Spencer
3857	Michael Schwartz
3858	Zack Gottsagen
3859	Ann Owens
3860	Dakota Johnson
3861	Laia Costa
3863	Franz Rogowski
3864	Burak Yigit
3865	Günes Sensoy
3866	Doga Zeynep Doguslu
3867	Tugba Sunguroglu
3868	Elit Iscan
1677	Chris Pratt
1680	Zoe Saldana
1684	Dave Bautista
1678	Vin Diesel
3246	Ansel Elgort
3875	Jon Hamm
3876	Eiza González
457	Miles Teller
2615	Mark Rylance
3883	Alan Alda
3359	Amy Ryan
1833	Craig T. Nelson
1835	Holly Hunter
3887	Sarah Vowell
3888	Huck Milner
3890	Don Hall
2689	Chris Williams
3892	Auli'i Cravalho
2250	Emily Blunt
1252	Josh Brolin
1191	Jon Bernthal
3849	Michael B. Jordan
1437	Sylvester Stallone
3899	Tessa Thompson
3900	Phylicia Rashad
3901	Aleksey Serebryakov
3902	Elena Lyadova
3903	Roman Madyanov
3904	Vladimir Vdovichenkov
2293	Chris Pine
3419	Ben Foster
3908	Gil Birmingham
1795	Judi Dench
3910	Steve Coogan
3911	Sophie Kennedy Clark
3912	Mare Winningham
490	Gary Oldman
3914	Keri Russell
2796	Andy Serkis
3916	Kodi Smit-McPhee
1115	Jose Coronado
3918	Hugo Silva
1810	Belén Rueda
3920	Aura Garrido
1669	Iko Uwais
3922	Ananda George
3923	Ray Sahetapy
3924	Donny Alamsyah
1210	Jake Gyllenhaal
3926	Michael Peña
3928	America Ferrera
1174	Amy Poehler
3930	Mirai Shida
545	Ryûnosuke Kamiki
3933	Lady Gaga
1679	Bradley Cooper
2960	Sam Elliott
3936	Greg Grunberg
1249	Joel Coen
1330	Jeff Bridges
418	Matt Damon
3940	Hailee Steinfeld
3941	Mikael Persbrandt
3942	Trine Dyrholm
3943	Markus Rygaard
3944	Wil Johnson
3945	Chris Renaud
2722	Steve Carell
3947	Jason Segel
3948	Russell Brand
3950	Seth Rogen
3927	Anna Kendrick
1712	Bryce Dallas Howard
3953	Aaron Taylor-Johnson
1649	Chloë Grace Moretz
3956	Garrett M. Brown
3957	Luis Tosar
3958	Alberto Ammann
3959	Antonio Resines
3960	Manuel Morón
366	Robin Wright
910	Jonah Hill
3965	Antonio Banderas
3966	Elena Anaya
3967	Jan Cornet
2906	Marisa Paredes
3313	Jesse Eisenberg
1630	Emma Stone
3972	Abigail Breslin
3973	Jürgen Vogel
3862	Frederick Lau
3975	Max Riemelt
3976	Jennifer Ulrich
558	Robert Downey Jr.
1195	Rachel McAdams
3980	Mark Strong
3981	Quinton Aaron
3301	Sandra Bullock
3983	Tim McGraw
3984	Jae Head
3985	Richard Jenkins
3986	Haaz Sleiman
3987	Danai Gurira
3988	Hiam Abbass
1761	Will Smith
850	Woody Harrelson
3992	Michael Ealy
342	Viggo Mortensen
3562	Armin Mueller-Stahl
3996	Josef Altin
3997	Charlie Cox
3998	Claire Danes
3999	Sienna Miller
343	Ian McKellen
4001	Nora Twomey
4002	Evan McGuire
1198	Brendan Gleeson
4004	Mick Lally
1780	Clive Owen
960	Christopher Plummer
322	Morgan Freeman
2641	Casey Affleck
4012	Michelle Monaghan
4014	Sylvie Testud
4015	Pascal Greggory
1783	Emmanuelle Seigner
2349	Jet Li
4018	Li Sun
4019	Yong Dong
4020	Yun Qu
4022	Jessica Biel
1816	Paul Giamatti
2672	Paddy Considine
4026	Gary Stretch
4027	Toby Kebbell
4028	Stuart Wolfenden
1226	Emma Watson
1228	Michael Gambon
1243	Gerard Butler
4034	Lena Headey
4035	David Wenham
2671	Dominic West
467	Scarlett Johansson
4038	Jonathan Rhys Meyers
902	Emily Mortimer
1675	Matthew Goode
4041	Jackie Earle Haley
4042	Patrick Wilson
4043	Carla Gugino
4044	Malin Akerman
3477	Nicolas Cage
1269	Ethan Hawke
710	Jared Leto
4048	Bridget Moynahan
1945	Cary Elwes
4050	Leigh Whannell
4052	Ken Leung
2642	Michelle Williams
1247	Catherine Keener
4057	Brady Corbet
354	Joseph Gordon-Levitt
4059	Elisabeth Shue
4060	Chase Ellison
3399	Guillaume Canet
3288	Marion Cotillard
4063	Thibault Verhaeghe
4064	Joséphine Lebas-Joly
701	Audrey Tautou
4066	Gaspard Ulliel
433	Jodie Foster
4069	Peter Dinklage
4070	Patricia Clarkson
4071	Bobby Cannavale
4072	Paul Benjamin
2381	Naomi Watts
4076	Danny Huston
397	Kang-ho Song
4078	Shin Ha-kyun
4079	Bae Doona
4080	Ji-Eun Lim
2042	Julie Christie
3452	Radha Mitchell
358	Edward Norton
4086	Barry Pepper
1238	Philip Seymour Hoffman
3990	Rosario Dawson
4089	J. Mackye Gruber
4090	Ashton Kutcher
4091	Amy Smart
4092	Melora Walters
4093	Cillian Murphy
3327	Naomie Harris
4096	Alex Palmer
3369	Tatsuya Fujiwara
4098	Aki Maeda
4099	Tarô Yamamoto
2933	Takeshi Kitano
990	Gene Hackman
2330	Gwyneth Paltrow
4103	Anjelica Huston
4104	Ben Stiller
924	Maribel Verdú
567	Gael García Bernal
4107	Daniel Giménez Cacho
4108	Ana López Mercado
1225	Daniel Radcliffe
1227	Rupert Grint
992	Richard Harris
4112	Maggie Smith
1634	Nicole Kidman
4095	Christopher Eccleston
1200	Fionnula Flanagan
4116	Alakina Mann
3538	Penélope Cruz
4120	Rachel Griffiths
2939	Jude Law
958	Ed Harris
4123	Joseph Fiennes
4124	Rachel Weisz
1853	Tom Cruise
2297	Colin Farrell
3402	Samantha Morton
1061	Max von Sydow
2809	Denzel Washington
4130	Vicellous Shannon
2942	Deborah Kara Unger
1196	Liev Schreiber
329	Christian Bale
2383	Justin Theroux
4135	Josh Lucas
4136	Bill Sage
2365	Franka Potente
1884	Moritz Bleibtreu
4139	Herbert Knaup
4140	Nina Petri
2889	Jim Caviezel
2341	Sean Penn
898	Nick Nolte
4144	Kirk Acevedo
4145	Barry Cook
4146	Ming-Na Wen
2927	Eddie Murphy
4148	BD Wong
707	Benicio Del Toro
4151	Tobey Maguire
4152	Michael Lee Gogin
4153	Susanne Lothar
589	Ulrich Mühe
4155	Arno Frisch
4156	Frank Giering
4024	Rufus Sewell
4158	Kiefer Sutherland
711	Jennifer Connelly
4160	William Hurt
334	Robert De Niro
357	Brad Pitt
4164	Jason Patric
3832	Bill Pullman
2286	Patricia Arquette
4167	John Roselius
4168	Louis Eppolito
2966	Emma Thompson
698	Kate Winslet
4171	James Fleet
699	Tom Wilkinson
348	Bruce Willis
495	Jeremy Irons
347	Samuel L. Jackson
1931	Graham Greene
1825	Johnny Depp
4178	Gary Farmer
512	Crispin Glover
4180	Lance Henriksen
2318	Meryl Streep
4183	Annie Corley
4184	Victor Slezak
365	Tom Hanks
2219	Bill Paxton
2343	Kevin Bacon
367	Gary Sinise
2406	Zbigniew Zamachowski
1270	Julie Delpy
4191	Janusz Gajos
4192	Jerzy Stuhr
2941	Michael Douglas
335	Robert Duvall
2436	Barbara Hershey
4196	Rachel Ticotin
4197	Jason London
2896	Wiley Wiggins
405	Matthew McConaughey
4200	Rory Cochrane
2278	Marisa Tomei
4203	Ralph Macchio
4204	Mitchell Whitfield
4205	Miki Imai
4206	Toshirô Yanagiba
2393	Yoko Honna
4208	Mayumi Izuka
4209	Jean-Pierre Jeunet
4210	Marie-Laure Dougnac
4068	Dominique Pinon
4212	Pascal Benezech
4213	Macaulay Culkin
383	Joe Pesci
4215	Daniel Stern
4216	John Heard
326	Al Pacino
328	Diane Keaton
4219	Andy Garcia
1438	Talia Shire
1303	Billy Crystal
4222	Meg Ryan
387	Carrie Fisher
3560	Bruno Kirby
1917	John Musker
4226	Jodi Benson
4227	Samuel E. Wright
4228	Rene Auberjonois
4229	Leslie Nielsen
4230	Priscilla Presley
4231	O.J. Simpson
4232	Ricardo Montalban
4233	Steve Martin
2452	John Candy
4235	Laila Robins
2442	Michael McKean
3049	Danny Glover
4239	Gary Busey
4240	Mitchell Ryan
1329	Ethan Coen
4242	John Getz
849	Frances McDormand
4244	Dan Hedaya
2502	Katharine Hepburn
337	Henry Fonda
4247	Jane Fonda
4248	Doug McKeon
729	Mel Gibson
4250	Bruce Spence
4251	Michael Preston
4252	Max Phipps
4253	Michael Beck
4254	James Remar
4255	Dorsey Wright
4256	Brian Tyler
4257	Jim Henson
4258	Frank Oz
4259	Jerry Nelson
4260	Richard Hunt
731	Patrick McGoohan
4263	Roberts Blossom
4264	Jack Thibeau
4265	John Hubley
623	John Hurt
4267	Richard Briers
4268	Ralph Richardson
4269	Brad Davis
4270	Irene Miracle
4271	Bo Hopkins
4272	Paolo Bonacelli
1983	Richard Dreyfuss
4274	François Truffaut
4275	Teri Garr
2446	Melinda Dillon
4277	Elliott Gould
4278	Nina van Pallandt
635	Sterling Hayden
4280	Mark Rydell
1544	Rod Steiger
2512	James Coburn
4283	Romolo Valli
4284	Maria Monti
369	Clint Eastwood
4286	Telly Savalas
727	Don Rickles
4288	Carroll O'Connor
4289	Phil Harris
4290	Sebastian Cabot
4291	Louis Prima
4292	Bruce Reitherman
4293	David Hemmings
4294	Vanessa Redgrave
4295	Sarah Miles
2504	John Castle
4297	John Lennon
4298	Paul McCartney
4299	George Harrison
4300	Ringo Starr
2106	Audrey Hepburn
4302	George Peppard
3810	Patricia Neal
4304	Buddy Ebsen
2033	Elizabeth Taylor
4306	Rock Hudson
2537	James Dean
4308	Carroll Baker
1050	Burt Lancaster
3159	Montgomery Clift
3149	Deborah Kerr
450	Donna Reed
4313	Tallulah Bankhead
4314	John Hodiak
4315	Walter Slezak
4316	William Bendix
4317	Robert Donat
4318	Madeleine Carroll
4319	Lucie Mannheim
4320	Godfrey Tearle
\.


--
-- TOC entry 3350 (class 0 OID 17848)
-- Dependencies: 210
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.directors (director_id, name) FROM stdin;
207	Vittorio De Sica
99	Lana Wachowski
101	Irvin Kershner
103	Thomas Kail
105	Sudha Kongara
107	Fernando Meirelles
85	Frank Darabont
111	Roberto Benigni
114	George Lucas
115	Masaki Kobayashi
120	Olivier Nakache
128	Roger Allers
138	Nadine Labaki
139	Can Ulkay
140	Gayatri
141	Makoto Shinkai
143	Bob Persichetti
150	Aamir Khan
152	Florian Henckel von Donnersmarck
161	Hrishikesh Mukherjee
170	Rahi Anil Barve
171	Sriram Raghavan
172	Jeethu Joseph
176	Mehmet Ada Öztekin
177	Çagan Irmak
179	Michel Gondry
184	Gus Van Sant
185	Majid Majidi
190	Elem Klimov
102	Milos Forman
194	Richard Marquand
195	Wolfgang Petersen
210	Fritz Lang
142	Nitesh Tiwari
214	Aditya Dhar
215	Prashanth Neel
216	Peter Farrelly
220	Sergio Pablos
221	Nishikant Kamat
222	Vikas Bahl
223	Zaza Urushadze
226	Vikramaditya Motwane
227	Tigmanshu Dhulia
228	Juan José Campanella
229	Gavin O'Connor
233	Shimit Amin
235	Guillermo del Toro
146	Lee Unkrich
237	James McTeigue
224	Rakeysh Omprakash Mehra
239	Sanjay Leela Bhansali
245	Priyadarshan
247	Curtis Hanson
248	Yavuz Turgul
251	Rajkumar Santoshi
261	Moustapha Akkad
262	Ramesh Sippy
265	Robert Mulligan
271	Jules Dassin
273	Yasujirô Ozu
279	Buster Keaton
280	Céline Sciamma
281	Aniruddha Roy Chowdhury
282	Naoko Yamada
285	Xavier Dolan
286	Vishal Bhardwaj
288	Lenny Abrahamson
289	Damián Szifron
293	Umesh Shukla
299	Anurag Basu
300	Steve McQueen
305	Sujoy Ghosh
312	Yôjirô Takita
314	Adam Elliot
316	Sean Penn
320	Terry George
321	Je-kyu Kang
149	Rajkumar Hirani
325	Farhan Akhtar
151	Andrew Stanton
231	Pete Docter
331	Hideaki Anno
241	Ashutosh Gowariker
333	M. Night Shyamalan
254	Emir Kusturica
342	Mathieu Kassovitz
343	Aditya Chopra
349	Kaige Chen
335	Peter Weir
362	Terry Jones
363	Michael Cimino
364	John G. Avildsen
372	Jean-Pierre Melville
373	Stuart Rosenberg
376	Gillo Pontecorvo
259	Andrei Tarkovsky
260	Ingmar Bergman
393	Raoul Walsh
394	Carol Reed
277	Ernst Lubitsch
402	Carl Theodor Dreyer
136	Charles Chaplin
405	Clyde Bruckman
406	Robert Wiene
407	Amit Ravindernath Sharma
408	Ericson Core
409	Raja Menon
410	Kabir Khan
119	Damien Chazelle
413	Garth Davis
415	Byron Howard
219	S.S. Rajamouli
306	Zoya Akhtar
423	Morten Tyldum
418	Stephen Chbosky
431	Tom Hooper
432	Tate Taylor
433	Tim Miller
225	Anurag Kashyap
436	Wilson Yip
437	Karan Johar
438	Levent Semerci
430	José Padilha
443	Vincent Paronnaud
449	Frank Miller
450	Julian Schnabel
451	Ömer Faruk Sorak
453	Martin Campbell
448	Ki-duk Kim
459	Nikkhil Advani
460	Andrew Lau
461	Gore Verbinski
464	Jae-young Kwak
466	Yilmaz Erdogan
467	Richard Kelly
475	Thomas Jahn
476	Billy Bob Thornton
479	Mamoru Oshii
481	Harold Ramis
483	Martin Brest
353	Oliver Stone
486	Gary Trousdale
487	Kevin Costner
490	Katsuhiro Ôtomo
354	Wim Wenders
493	Louis Malle
496	Richard Attenborough
116	Akira Kurosawa
275	Joseph L. Mankiewicz
369	Peter Bogdanovich
197	George Roy Hill
512	Mike Nichols
519	Robert Rossen
209	Orson Welles
524	Richard Brooks
527	Charles Laughton
391	Henri-Georges Clouzot
534	Robert Hamer
536	Jacques Tourneur
201	David Lean
522	Otto Preminger
385	William Wyler
117	Frank Capra
399	Victor Fleming
400	Jean Renoir
545	W.S. Van Dyke
546	Lewis Milestone
547	Sergei M. Eisenstein
548	Rian Johnson
549	Mukesh Chhabra
550	Hirokazu Koreeda
551	Noah Baumbach
552	Luca Guadagnino
553	Ken Loach
556	Matt Ross
559	Dan Gilroy
555	Taika Waititi
126	Bryan Singer
291	Nuri Bilge Ceylan
566	Michel Hazanavicius
570	Jacques Audiard
571	Duncan Jones
572	Tomas Alfredson
573	Neill Blomkamp
182	Darren Aronofsky
577	Cristian Mungiu
217	Martin McDonagh
580	Richard Schenkman
582	Tarsem Singh
444	Jean-Marc Vallée
586	Christophe Barratier
587	Jon Favreau
350	Yimou Zhang
594	Danis Tanovic
595	Shin'ichirô Watanabe
567	Doug Liman
597	Fabián Bielinsky
599	Cameron Crowe
186	John Lasseter
234	Paul Thomas Anderson
603	Yoshifumi Kondô
604	Lee Tamahori
193	Brian De Palma
616	Bob Clark
617	John Landis
621	Alan J. Pakula
622	Alejandro Jodorowsky
387	Federico Fellini
358	Werner Herzog
498	Hal Ashby
503	Franklin J. Schaffner
628	Sam Peckinpah
620	George A. Romero
630	Anthony Harvey
205	Stanley Donen
633	John Frankenheimer
158	Stanley Kubrick
636	Alain Resnais
637	Cecil B. DeMille
390	Elia Kazan
642	Henry Koster
643	George Seaton
135	Michael Curtiz
650	Sam Wood
651	Merian C. Cooper
652	Tod Browning
404	F.W. Murnau
218	Meghna Gulzar
656	Darius Marder
87	Christopher Nolan
659	Paolo Genovese
660	Theodore Melfi
661	Paul King
662	Abhishek Chaubey
663	Travis Knight
309	Neeraj Pandey
665	Kenneth Lonergan
666	Martin Zandvliet
667	Gareth Edwards
670	Greta Gerwig
671	Dorota Kobiela
672	Matthew Warchus
174	Asghar Farhadi
674	Paolo Sorrentino
675	Ritesh Batra
676	Shoojit Sircar
677	Don Hall
678	Richard Curtis
679	Gauri Shinde
681	Josh Cooley
130	Giuseppe Tornatore
315	Dean DeBlois
685	Adam McKay
686	Tetsuya Nakashima
687	Jee-woon Kim
690	Jeong-beom Lee
691	F. Gary Gray
104	Bong Joon Ho
693	Hong-jin Na
696	Niels Arden Oplev
697	Aaron Sorkin
173	Thomas Vinterberg
700	Pierre Morel
701	Mark Herman
557	John Carney
90	Peter Jackson
589	Fatih Akin
706	Nicolas Winding Refn
709	Jaco Van Dormael
187	Mel Gibson
711	Jonathan Dayton
714	Yash Chopra
715	Anders Thomas Jensen
705	Joe Wright
717	Roger Donaldson
442	Joss Whedon
721	Mikael Håfström
722	Nick Cassavetes
473	Walter Salles
724	Lukas Moodysson
725	Sylvain Chomet
727	Kevin Reynolds
729	Boaz Yakin
733	Troy Duffy
735	Joe Johnston
736	Andrew Adamson
129	James Cameron
738	Takeshi Kitano
465	Lars von Trier
462	Tim Burton
313	Lasse Hallström
744	George P. Cosmatos
745	David Mickey Evans
746	James Ivory
477	Mike Leigh
748	Andrew Davis
749	Robert De Niro
750	Kevin Altieri
754	John Singleton
756	Penny Marshall
751	John Woo
763	Sam Raimi
769	Roland Joffé
770	Ivan Reitman
771	Philip Kaufman
774	Robert Benton
779	René Laloux
619	Bob Fosse
783	Mel Stuart
784	John Schlesinger
785	Terence Young
267	Stanley Kramer
787	Arthur Penn
647	George Cukor
789	Robert Stevenson
790	Ken Annakin
384	François Truffaut
792	Jack Clayton
518	Jean-Luc Godard
802	Leo McCarey
521	Howard Hawks
806	Francis Lee
807	David Leitch
808	Taylor Sheridan
809	Jordan Peele
810	Christopher McQuarrie
811	Hannes Holm
812	Jemaine Clement
813	James Simone
814	James Marsh
816	Josh Boone
817	Alfonso Gomez-Rejon
819	Abdellatif Kechiche
820	Abhishek Kapoor
821	Felix van Groeningen
144	Anthony Russo
575	Imtiaz Ali
824	Alexander Payne
825	Rich Moore
826	Mark Osborne
125	Tony Kaye
829	Christopher Miller
562	J.J. Abrams
832	Cary Joji Fukunaga
118	Todd Phillips
699	David O. Russell
471	Satoshi Kon
296	Mamoru Hosoda
847	Shûsuke Kaneko
849	Alex Garland
851	Kevin Macdonald
94	David Fincher
853	Paul McGuigan
854	Christian Carion
855	Anton Corbijn
856	Nathan Greno
857	Paul Verhoeven
287	James Mangold
860	Paul Haggis
861	Stephen Chow
447	Paul Greengrass
863	Brad Anderson
482	Taylor Hackford
865	Sofia Coppola
605	Tony Scott
480	Henry Selick
446	Edward Zwick
870	Peter Mullan
871	Wolfgang Becker
348	Jim Sheridan
873	Jessie Nelson
124	Ridley Scott
169	Sam Mendes
242	Oliver Hirschbiegel
878	Stephen Daldry
879	John Cameron Mitchell
880	Steven Soderbergh
607	Yoshiaki Kawajiri
883	Bob Gale
884	Trey Parker
885	Mike Judge
886	Todd Solondz
887	Antoine Fuqua
426	Spike Jonze
891	James L. Brooks
127	Luc Besson
893	Francis Veber
866	Mike Newell
895	Scott Hicks
896	Gregory Hoblit
897	Kenneth Branagh
338	Kar-Wai Wong
900	Michael Radford
901	Kevin Smith
113	Jonathan Demme
904	Brian Henson
249	Michael Mann
908	James Foley
910	Jon Avnet
96	Robert Zemeckis
914	George Sluizer
915	Bruce Robinson
508	Bernardo Bertolucci
100	Martin Scorsese
924	Nicholas Meyer
925	Ted Kotcheff
926	Robert Redford
927	Jim Abrahams
108	Hayao Miyazaki
356	John Carpenter
932	Joseph Sargent
502	Mel Brooks
89	Sidney Lumet
935	Robert Clouse
936	John Boorman
504	William Friedkin
940	Gene Saks
378	Robert Aldrich
377	Luis Buñuel
123	Roman Polanski
945	Cy Endfield
946	Guy Hamilton
948	J. Lee Thompson
395	Michael Powell
264	John Sturges
951	Georges Franju
533	Nicholas Ray
525	Alexander Mackendrick
164	Billy Wilder
380	John Ford
514	Robert Wise
276	John Huston
959	Charles Vidor
960	James Algar
801	James Whale
962	Todd Haynes
963	Aneesh Chaganty
91	Quentin Tarantino
966	Sean Baker
421	Destin Daniel Cretton
839	Marc Webb
969	Tyler Nilson
970	Sebastian Schipper
971	Deniz Gamze Ergüven
424	James Gunn
588	Edgar Wright
974	Joseph Kosinski
452	Brad Bird
175	Denis Villeneuve
979	Ryan Coogler
455	Andrey Zvyagintsev
981	David Mackenzie
982	Stephen Frears
983	Matt Reeves
283	Oriol Paulo
422	Gareth Evans
986	David Ayer
987	Hiromasa Yonebayashi
988	Bradley Cooper
317	Ethan Coen
850	Susanne Bier
991	Pierre Coffin
992	Jonathan Levine
994	Daniel Monzón
995	Bennett Miller
593	Pedro Almodóvar
997	Ruben Fleischer
998	Dennis Gansel
181	Guy Ritchie
1000	John Lee Hancock
445	Gabriele Muccino
1003	David Cronenberg
815	Matthew Vaughn
304	Tomm Moore
838	Ben Affleck
1008	Olivier Dahan
1009	Ronny Yu
1010	Neil Burger
848	Shane Meadows
311	David Yates
499	Woody Allen
1013	Zack Snyder
739	Andrew Niccol
1017	James Wan
1018	Charlie Kaufman
1019	Gregg Araki
1020	Yann Samuell
180	Jean-Pierre Jeunet
303	Tom McCarthy
329	Alejandro G. Iñárritu
153	Chan-wook Park
1025	Marc Forster
488	Spike Lee
1027	Eric Bress
339	Danny Boyle
1029	Kinji Fukasaku
294	Wes Anderson
591	Alfonso Cuarón
457	Alejandro Amenábar
1034	Ted Demme
918	Jean-Jacques Annaud
507	Norman Jewison
1038	Mary Harron
1039	Tom Tykwer
775	Terrence Malick
1041	Tony Bancroft
263	Terry Gilliam
568	Michael Haneke
1044	Alex Proyas
489	Barry Levinson
361	David Lynch
583	Ang Lee
256	John McTiernan
752	Jim Jarmusch
252	Clint Eastwood
244	Ron Howard
345	Krzysztof Kieslowski
1053	Joel Schumacher
322	Richard Linklater
1055	Jonathan Lynn
131	Isao Takahata
1057	Marc Caro
1032	Chris Columbus
86	Francis Ford Coppola
352	Rob Reiner
484	Ron Clements
1062	David Zucker
764	John Hughes
766	Richard Donner
337	Joel Coen
1066	Mark Rydell
308	George Miller
1068	Walter Hill
1069	James Frawley
938	Don Siegel
1071	Martin Rosen
357	Alan Parker
92	Steven Spielberg
902	Robert Altman
97	Sergio Leone
939	Brian G. Hutton
1077	Wolfgang Reitherman
635	Michelangelo Antonioni
1079	Richard Lester
1080	Blake Edwards
1081	George Stevens
640	Fred Zinnemann
134	Alfred Hitchcock
\.


--
-- TOC entry 3354 (class 0 OID 17869)
-- Dependencies: 214
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres (genre_id, genre_name) FROM stdin;
391	Film-Noir
307	Horror
431	Sport
202	History
223	Fantasy
188	Action
200	Biography
205	Sci-Fi
237	Animation
196	Adventure
239	Family
270	Music
378	Musical
228	Comedy
212	Western
211	Romance
185	Drama
241	War
186	Crime
250	Mystery
230	Thriller
\.


--
-- TOC entry 3358 (class 0 OID 17899)
-- Dependencies: 218
-- Data for Name: movie_actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_actors (movie_id, actor_id) FROM stdin;
81	321
81	322
81	323
81	324
82	325
82	326
82	327
82	328
83	329
83	330
83	331
83	332
84	326
84	334
84	335
84	328
85	337
85	338
85	339
85	340
86	341
86	342
86	343
86	344
87	345
87	346
87	347
87	348
88	349
88	350
88	351
88	352
89	353
89	354
89	355
89	356
90	357
90	358
90	359
90	360
91	341
91	343
91	344
91	364
92	365
92	366
92	367
92	368
93	369
93	370
93	371
93	372
94	341
94	343
94	342
94	344
95	377
95	378
95	379
95	380
96	334
96	382
96	383
96	384
97	385
97	386
97	387
97	388
98	389
98	390
98	391
98	392
99	393
99	394
99	395
99	396
100	397
100	398
100	399
100	400
101	401
101	402
101	403
101	404
102	405
102	406
102	407
102	408
103	409
103	410
103	411
103	412
104	413
104	414
104	415
104	416
105	365
105	418
105	419
105	420
106	365
106	422
106	423
106	424
107	425
107	426
107	427
107	428
108	322
108	357
108	431
108	432
109	433
109	434
109	435
109	436
110	385
110	386
110	387
110	440
111	441
111	442
111	443
111	444
112	445
112	446
112	447
112	448
113	449
113	450
113	451
113	452
114	453
114	334
114	455
114	456
115	457
115	458
115	459
115	460
116	461
116	462
116	463
116	464
117	329
117	466
117	467
117	332
118	353
118	418
118	389
118	472
119	473
119	474
119	475
119	476
120	477
120	453
120	479
120	480
121	358
121	482
121	483
121	484
122	431
122	486
122	487
122	488
123	489
123	490
123	491
123	492
124	493
124	494
124	495
124	496
125	497
125	498
125	482
125	500
126	501
126	502
126	503
126	504
127	505
127	506
127	507
127	508
128	509
128	510
128	511
128	512
129	337
129	514
129	515
129	516
130	517
130	518
130	519
130	520
131	521
131	522
131	523
131	524
132	525
132	526
132	527
132	528
133	525
133	530
133	531
133	532
134	533
134	534
134	535
134	536
135	537
135	538
135	539
135	540
136	541
136	402
136	543
136	544
137	545
137	546
137	547
137	548
138	549
138	550
138	551
138	552
139	553
139	554
139	555
139	556
140	557
140	558
140	559
140	560
141	557
141	558
141	563
141	560
142	565
142	566
142	567
142	568
143	569
143	570
143	353
143	572
144	329
144	574
144	406
144	490
145	549
145	402
145	579
145	580
146	581
146	582
146	549
146	584
147	585
147	586
147	587
147	588
148	589
148	590
148	591
148	592
149	593
149	594
149	595
149	596
150	597
150	380
150	599
150	600
151	601
151	602
151	603
151	604
152	334
152	606
152	607
152	608
153	386
153	610
153	611
153	612
154	389
154	614
154	615
154	616
155	617
155	325
155	335
155	620
156	621
156	622
156	623
156	624
157	625
157	626
157	627
157	628
158	445
158	630
158	441
158	632
159	633
159	634
159	635
159	636
160	637
160	638
160	639
160	640
161	641
161	642
161	643
161	644
162	449
162	646
162	647
162	648
163	649
163	650
163	651
163	652
164	525
164	526
164	655
164	656
165	657
165	658
165	659
165	660
166	661
166	662
166	663
166	664
167	665
167	666
167	667
167	668
168	669
168	670
168	671
168	672
169	673
169	674
169	675
169	676
170	677
170	678
170	679
170	680
171	681
171	682
171	683
171	684
172	685
172	686
172	687
172	688
173	538
173	690
173	691
173	692
174	357
174	694
174	695
174	696
175	697
175	698
175	699
175	700
176	701
176	702
176	703
176	704
177	705
177	357
177	707
177	708
178	709
178	710
178	711
178	712
179	431
179	714
179	715
179	716
180	717
180	418
180	719
180	720
181	721
181	722
181	723
181	724
182	365
182	726
182	727
182	728
183	729
183	730
183	731
183	732
184	733
184	734
184	735
184	736
185	737
185	738
185	739
185	740
186	741
186	742
186	743
186	744
187	621
187	746
187	747
187	460
188	749
188	750
188	751
188	752
189	326
189	754
189	755
189	756
190	385
190	386
190	387
190	388
191	761
191	762
191	763
191	764
192	334
192	433
192	767
192	768
193	769
193	770
193	771
193	772
194	773
194	774
194	775
194	776
195	777
195	778
195	779
195	780
196	369
196	371
196	783
196	784
197	785
197	440
197	787
197	788
198	789
198	790
198	791
198	792
199	793
199	794
199	795
199	796
200	449
200	798
200	799
200	800
201	801
201	803
201	804
202	446
202	806
202	807
202	808
203	809
203	810
203	811
203	812
204	791
204	814
204	815
204	816
205	817
205	818
205	819
205	820
206	821
206	822
206	823
206	824
207	825
207	826
207	827
207	828
208	525
208	830
208	831
208	832
209	833
209	834
209	835
209	836
210	837
210	403
210	839
210	840
211	841
211	842
211	843
211	844
212	342
212	846
212	847
212	848
213	849
213	850
213	851
213	852
214	853
214	854
214	855
214	663
215	857
215	858
215	859
215	860
216	861
216	862
216	458
216	864
217	865
217	866
217	666
217	868
218	869
218	870
218	871
218	872
219	873
219	874
219	875
219	876
220	877
220	878
220	879
220	880
221	881
221	882
221	883
221	884
222	885
222	886
222	887
222	888
223	853
223	890
223	891
223	892
224	893
224	894
224	895
224	896
225	574
225	898
225	899
225	900
226	353
226	902
226	560
226	351
227	905
227	906
227	907
227	908
228	353
228	910
228	911
228	405
229	913
229	914
229	915
229	916
230	917
230	918
230	919
230	920
231	921
231	922
231	923
231	924
232	365
232	726
232	927
232	928
233	929
233	491
233	931
233	932
234	549
234	934
234	935
234	580
235	626
235	938
235	939
235	940
236	329
236	332
236	356
236	349
237	913
237	946
237	947
237	948
238	949
238	950
238	951
238	952
239	953
239	954
239	955
239	956
240	477
240	958
240	711
240	960
241	961
241	962
241	403
241	666
242	965
242	966
242	967
242	705
243	431
243	477
243	597
243	972
244	973
244	974
244	975
244	976
245	326
245	334
245	979
245	980
246	334
246	982
246	383
246	606
247	549
247	986
247	987
247	988
248	369
248	990
248	322
248	992
249	386
249	994
249	995
249	996
250	997
250	998
250	999
250	1000
251	1001
251	1002
251	1003
251	1004
252	348
252	1006
252	1007
252	1008
253	441
253	1010
253	1011
253	1012
254	334
254	1014
254	383
254	1016
255	1017
255	1018
255	1019
255	1020
256	522
256	1022
256	1023
256	1024
257	787
257	1026
257	1027
257	1028
258	1029
258	1030
258	626
258	1032
259	1033
259	1034
259	1035
259	1036
260	1037
260	1038
260	1039
260	514
261	1041
261	1042
261	1043
261	1044
262	445
262	1046
262	441
262	1048
263	1049
263	1050
263	1051
263	638
264	1053
264	1054
264	789
264	1056
265	1057
265	1058
265	1059
265	1060
266	1061
266	1060
266	1063
266	1064
267	1065
267	1066
267	1067
267	1068
268	1069
268	646
268	1071
268	1072
269	1073
269	1074
269	1075
269	1076
270	445
270	1078
270	1079
270	446
271	1081
271	1082
271	1083
271	1084
272	521
272	1086
272	1087
272	1088
273	1089
273	1090
273	1091
273	1092
274	525
274	1094
274	1095
274	527
275	1097
275	1098
275	1099
275	1100
276	1101
276	1102
276	1103
276	1104
277	1105
277	626
277	1107
277	1108
278	415
278	1110
278	548
278	1112
279	1113
279	1114
279	1115
279	1116
280	1117
280	1118
280	1119
280	1120
281	1121
281	1122
281	1123
281	1124
282	1125
282	666
282	834
282	1128
283	466
283	1130
283	1131
283	1132
284	1133
284	1134
284	1135
284	1136
285	1137
285	1138
285	1139
285	1140
286	1141
286	569
286	1143
286	1144
287	1145
287	1146
287	1147
287	1148
288	549
288	1150
288	1151
288	1152
289	403
289	961
289	1155
289	1156
290	350
290	749
290	1159
290	473
291	719
291	1162
291	1163
291	1164
292	1165
292	1166
292	1167
292	1168
293	1169
293	1170
293	1171
293	1172
294	1173
294	1174
294	1175
294	1176
295	1177
295	1178
295	1179
295	1180
296	1181
296	1182
296	1183
296	357
297	1185
297	563
297	1187
297	950
298	418
298	329
298	1191
298	1192
299	560
299	1194
299	1195
299	1196
300	1197
300	1198
300	1199
300	1200
301	1201
301	1202
301	1203
301	883
302	1205
302	877
302	1207
302	1208
303	466
303	1210
303	1211
303	1212
304	574
304	1214
304	1215
304	1216
305	1217
305	1218
305	1219
305	1220
306	369
306	1222
306	1223
306	1224
307	1225
307	1226
307	1227
307	1228
308	1229
308	1230
308	1231
308	1232
309	1233
309	1234
309	1235
309	1236
310	1237
310	1238
310	1239
310	1240
311	1241
311	1242
311	1243
311	1244
312	1245
312	1246
312	1247
312	1248
313	1249
313	1250
313	1251
313	1252
314	1151
314	1254
314	1201
314	1152
315	1257
315	369
315	322
315	1242
316	1261
316	1262
316	453
316	1264
317	1265
317	1266
317	1267
317	1268
318	1269
318	1270
318	1271
318	1272
319	1151
319	1254
319	1275
319	1276
320	397
320	1278
320	1279
320	1280
321	549
321	1282
321	1283
321	1284
322	346
322	1286
322	1287
322	735
323	1289
323	768
323	1291
323	1292
324	353
324	365
324	1295
324	617
325	1297
325	567
325	1299
325	1300
326	1301
326	1289
326	1303
326	1304
327	1305
327	1306
327	1307
327	1308
328	549
328	1310
328	1275
328	1312
329	348
329	1314
329	1237
329	1316
330	734
330	1318
330	1319
330	1320
331	697
331	958
331	1323
331	1324
332	1325
332	1326
332	1327
332	1328
333	1329
333	1330
333	1304
333	1332
334	1333
334	1334
334	1335
334	1336
335	1337
335	1338
335	1339
335	1340
336	1329
336	1342
336	849
336	1344
337	1345
337	1346
337	1347
337	1348
338	1349
338	1350
338	1351
338	1352
339	913
339	1354
339	1355
339	1356
340	1269
340	1270
340	1359
340	1360
341	1361
341	1362
341	1363
341	1364
342	1365
342	1366
342	1333
342	1368
343	1369
343	1370
343	1371
343	1039
344	917
344	1374
344	1375
344	1376
345	1377
345	1378
345	1379
345	1380
346	1379
346	1382
346	1383
346	1384
347	717
347	1386
347	1269
347	1388
348	1389
348	1390
348	1391
348	1392
349	1393
349	1394
349	1395
349	1396
350	1397
350	1398
350	1399
350	1400
351	1401
351	1402
351	1403
351	1404
352	1405
352	1406
352	1396
352	1408
353	1409
353	1410
353	1411
353	1412
354	1413
354	515
354	1415
354	1416
355	1417
355	1418
355	1419
355	1420
356	386
356	1422
356	1423
356	1424
357	434
357	623
357	1427
357	1428
358	1034
358	1035
358	1431
358	1432
359	334
359	1295
359	1435
359	1436
360	1437
360	1438
360	1439
360	1440
361	1441
361	649
361	1443
361	335
362	1445
362	1446
362	774
362	1448
363	1449
363	1450
363	1451
363	1452
364	389
364	1441
364	1455
364	1456
365	1445
365	1458
365	1459
365	1460
366	1461
366	1022
366	1463
366	1059
367	1465
367	1466
367	1467
367	1468
368	1469
368	1470
368	1471
368	1472
369	769
369	1474
369	1475
369	1476
370	1058
370	1022
370	1479
370	1060
371	1019
371	1482
371	1020
371	1484
372	1485
372	1486
372	1487
372	1488
373	1489
373	1490
373	1491
373	1492
374	1081
374	1494
374	1495
374	1496
375	445
375	441
375	1499
375	1500
376	449
376	1502
376	519
376	1504
377	1505
377	1506
377	1507
377	1508
378	1061
378	1510
378	1511
378	1512
379	1049
379	1514
379	801
379	1516
380	1517
380	1518
380	1519
380	1520
381	1521
381	788
381	1523
381	1524
382	445
382	1526
382	1527
382	1528
383	1529
383	1470
383	1531
383	1532
384	445
384	1527
384	1535
384	446
385	649
385	440
385	788
385	1540
386	325
386	1542
386	338
386	1544
387	1545
387	1546
387	1547
387	1548
388	641
388	1550
388	1551
388	1552
389	1553
389	1554
389	1555
389	1556
390	817
390	818
390	1559
390	1560
391	1561
391	1562
391	1563
391	1564
392	1565
392	449
392	1567
392	1568
393	1569
393	1570
393	1083
393	1572
394	449
394	1574
394	524
394	1576
395	1577
395	1578
395	1579
395	1580
396	1581
396	1582
396	1583
396	651
397	1579
397	1586
397	1587
397	1588
398	1589
398	1590
398	1591
398	1592
399	525
399	1594
399	1595
399	1596
400	1597
400	1598
400	1599
400	1600
401	1097
401	1603
401	1604
402	1605
402	1606
402	1607
402	1608
403	665
403	1610
403	1611
403	552
404	1395
404	1614
404	1615
404	1616
405	961
405	1618
405	1619
405	1620
406	986
406	1622
406	883
406	1624
407	961
407	1626
407	858
407	1105
408	1629
408	1630
408	1631
408	458
409	1633
409	1634
409	1635
409	1636
410	418
410	407
410	1639
410	1640
411	1641
411	1642
411	1643
411	1644
412	857
412	858
412	1647
412	1648
413	1649
413	327
413	1651
413	1652
414	1134
414	1654
414	1655
414	1656
415	1657
415	1658
415	1659
415	1660
416	961
416	1217
416	881
416	1219
417	1133
417	1666
417	1667
417	1668
418	1669
418	1670
418	1671
418	1672
419	1673
419	1674
419	1675
419	1676
420	1677
420	1678
420	1679
420	1680
421	386
421	1629
421	1683
421	1684
422	453
422	1686
422	467
422	1635
423	1689
423	1690
423	1691
423	1692
424	353
424	574
424	1695
424	1696
425	1697
425	1226
425	1699
425	1700
426	1701
426	1702
426	1703
426	1704
427	660
427	1706
427	1707
427	1708
428	1630
428	1211
428	1711
428	1712
429	1713
429	1714
429	1715
429	1716
430	1717
430	680
430	1719
430	1720
431	1207
431	890
431	1723
431	1724
432	1725
432	1726
432	1727
432	1728
433	913
433	1354
433	1731
433	1732
434	537
434	1734
434	1735
434	1736
435	1737
435	1633
435	1739
435	1180
436	491
436	1742
436	1349
436	1744
437	1701
437	1703
437	1747
437	1704
438	558
438	559
438	467
438	1752
439	1753
439	1754
439	1755
439	1756
440	405
440	1758
440	710
440	1760
441	1761
441	1762
441	1763
441	1764
442	353
442	1766
442	711
442	1768
443	418
443	1770
443	1234
443	1772
444	1773
444	1774
444	1775
444	1776
445	1777
445	1778
445	1779
445	1780
446	1781
446	1159
446	1783
446	1784
447	1785
447	1786
447	1787
447	1788
448	1789
448	1790
448	1791
448	1792
449	1793
449	1794
449	1795
449	1796
450	346
450	1286
450	735
450	1287
451	1801
451	1802
451	1803
451	1804
452	1805
452	1806
452	1807
452	1808
453	1251
453	1810
453	1811
453	1812
454	477
454	1814
454	1815
454	1816
455	1284
455	913
455	1282
455	1820
456	1821
456	1822
456	1333
456	1824
457	1825
457	1706
457	344
457	1674
458	1337
458	1830
458	604
458	1832
459	1833
459	347
459	1835
459	1836
460	1837
460	1838
460	1839
460	1840
461	1634
461	1842
461	1843
461	1461
462	1845
462	1846
462	1147
462	1848
463	1210
463	1850
463	1851
463	1852
464	1853
464	516
464	1332
464	1238
465	1857
465	1755
465	423
465	1860
466	1861
466	1862
466	1863
466	1864
467	1865
467	1866
467	1867
467	1868
468	1869
468	1870
468	674
468	1872
469	1873
469	1874
469	1875
469	1876
470	1877
470	1878
470	1879
470	1678
471	1881
471	1882
471	1883
471	1884
472	1885
472	1886
472	1887
472	1888
473	1889
473	1890
473	1891
473	1892
474	348
474	1894
474	357
474	1896
475	1897
475	1898
475	1899
475	1900
476	1901
476	1902
476	1903
476	1904
477	1905
477	1906
477	1907
477	1908
478	1909
478	1910
478	568
478	1912
479	326
479	1914
479	1915
479	1916
480	1917
480	1918
480	717
480	1920
481	1921
481	490
481	789
481	1924
482	1925
482	1926
482	1927
482	1928
483	1921
483	1851
483	1931
483	1932
484	492
484	1934
484	1935
484	1936
485	1937
485	1853
485	1104
485	1940
486	1941
486	1942
486	1943
486	1944
487	1945
487	1946
487	366
487	1902
488	949
488	1950
488	1951
488	1952
489	1953
489	1954
489	1955
489	1956
490	1957
490	1958
490	1959
490	1960
491	497
491	498
491	746
491	1964
492	351
492	1428
492	1967
492	1968
493	441
493	1231
493	1971
493	1011
494	633
494	790
494	1975
494	1976
495	1977
495	328
495	1979
495	1980
496	1981
496	771
496	1983
496	1984
497	326
497	1435
497	1987
497	1988
498	1989
498	1459
498	1991
498	1992
499	1037
499	1937
499	1995
499	1996
500	709
500	1061
500	1999
500	338
501	1569
501	332
501	2003
501	2004
502	2005
502	1330
502	767
502	2008
503	2009
503	2010
503	2011
503	2012
504	1362
504	2014
504	2015
504	2016
505	769
505	770
505	2019
505	1475
506	2021
506	2022
506	2023
506	2024
507	1521
507	2026
507	2027
507	2028
508	1937
508	1427
508	2019
508	2032
509	2033
509	2034
509	2035
509	2036
510	2037
510	960
510	2039
510	2040
511	2041
511	2042
511	2043
511	1544
512	369
512	783
512	2047
512	2048
513	2049
513	2050
513	515
513	2052
514	2053
514	2054
514	2055
514	2056
515	769
515	2058
515	2059
515	634
516	2049
516	2062
516	2050
516	2064
517	1502
517	2066
517	2067
517	2068
518	449
518	2070
518	2071
518	2072
519	1521
519	817
519	518
519	2076
520	2033
520	769
520	2079
520	2080
521	1050
521	1054
521	2083
521	2084
522	635
522	2086
522	2087
522	2088
523	2089
523	2090
523	2091
523	2092
524	787
524	1529
524	2095
524	2096
525	2097
525	2098
525	2099
525	1546
526	649
526	2102
526	2103
526	2104
527	1041
527	2106
527	2107
527	2108
528	1580
528	325
528	2027
528	1542
529	521
529	2114
529	2115
529	2116
530	2117
530	440
530	2119
530	2120
531	449
531	2122
531	2123
531	2124
532	2089
532	2126
532	641
532	2128
533	2129
533	1560
533	2131
533	2132
534	2133
534	2134
534	2135
534	2136
535	2137
535	2134
535	1514
535	2140
536	793
536	2142
536	2143
536	2080
537	521
537	2146
537	2147
537	821
538	337
538	2150
538	2151
538	2152
539	1577
539	2154
539	2155
539	2156
540	2157
540	2158
540	2159
540	2160
541	2161
541	2137
541	2163
541	2164
542	2165
542	2166
542	2167
542	2168
543	2169
543	2170
543	2171
543	2172
544	1793
544	559
544	1683
544	2176
545	833
545	2178
545	2179
545	2180
546	2181
546	2182
546	2183
546	2184
547	2185
547	467
547	2187
547	2188
548	2189
548	2190
548	2191
548	2192
549	1781
549	2194
549	2195
549	2196
550	2197
550	2198
550	358
550	2200
551	1369
551	2202
551	2203
551	2204
552	342
552	658
552	2207
552	2208
553	2209
553	2210
553	2211
553	2212
554	563
554	2214
554	2215
554	560
555	1210
555	2218
555	2219
555	2220
556	2221
556	2222
556	467
556	2224
557	1686
557	1752
557	2227
557	2191
558	2229
558	2230
558	2231
558	1696
559	1269
559	1270
559	2235
559	2236
560	1130
560	343
560	466
560	2240
561	2241
561	1846
561	2243
561	2244
562	2245
562	2246
562	1304
562	2248
563	1853
563	2250
563	2219
563	1198
564	1362
564	2254
564	2255
564	2256
565	334
565	326
565	383
565	733
566	2261
566	2262
566	2263
566	2264
567	851
567	431
567	2267
567	2268
568	2269
568	2270
568	2271
568	2272
569	2273
569	2274
569	2275
569	2276
570	1779
570	2278
570	2279
570	2280
571	1125
571	1624
571	2283
571	2284
572	2285
572	2286
572	1269
572	2288
573	2289
573	2290
573	2291
573	2292
574	2293
574	2294
574	2295
574	2296
575	2297
575	1198
575	919
575	2300
576	2301
576	2302
576	2303
576	2304
577	356
577	2306
577	2307
577	2308
578	2309
578	2310
578	2311
578	2312
579	2313
579	853
579	2315
579	666
580	2317
580	2318
580	1905
580	862
581	2321
581	2322
581	2323
581	2324
582	2325
582	2326
582	2327
582	2328
583	558
583	2330
583	2331
583	1330
584	2295
584	2334
584	2335
584	2336
585	2337
585	2338
585	2339
585	2340
586	2341
586	321
586	2343
586	2344
587	1225
587	1226
587	1227
587	2348
588	2349
588	1333
588	1334
588	2352
589	2353
589	2354
589	1137
589	2356
590	2357
590	2358
590	2359
590	2360
591	2361
591	2362
591	2363
591	2364
592	2365
592	418
592	2367
592	1780
593	893
593	2370
593	2371
593	2372
594	1332
594	1780
594	1181
594	332
595	604
595	2378
595	2379
595	849
596	2381
596	2382
596	2383
596	2384
597	2385
597	1289
597	365
597	726
598	472
598	1332
598	2391
598	2392
599	2393
599	2394
599	2395
599	2396
600	2397
600	2398
600	2399
600	2400
601	2401
601	2286
601	2403
601	979
602	2405
602	2406
602	1270
602	2408
603	1900
603	2410
603	2411
603	2412
604	326
604	2341
604	2415
604	2416
605	1825
605	1744
605	2419
605	2420
606	917
606	2422
606	2423
606	2424
607	2425
607	1977
607	2427
607	2428
608	1921
608	994
608	334
608	2432
609	2021
609	2419
609	332
609	2436
610	2437
610	2438
610	334
610	2440
611	2441
611	2442
611	2443
611	2444
612	2445
612	2446
612	2447
612	2448
613	2449
613	2450
613	2451
613	2452
614	1977
614	328
614	2455
614	2456
615	1981
615	1832
615	2459
615	2460
616	2461
616	2462
616	2463
616	2464
617	1937
617	770
617	1976
617	339
618	2469
618	2470
618	2471
618	2472
619	2473
619	2474
619	2475
619	2476
620	2477
620	2478
620	2479
620	2480
621	1413
621	2482
621	2483
621	2484
622	2023
622	2486
622	2487
622	2488
623	634
623	1542
623	2491
623	2492
624	649
624	2494
624	2495
624	1555
625	2497
625	2498
625	2499
625	2500
626	785
626	2502
626	434
626	2504
627	2505
627	1544
627	2507
627	2508
628	793
628	2106
628	1924
628	2512
629	2513
629	2514
629	518
629	2516
630	641
630	1569
630	2519
630	639
631	2521
631	2522
631	2523
631	2524
632	2254
632	2526
632	2527
632	2528
633	1521
633	2530
633	1082
633	815
634	1502
634	2534
634	519
634	2536
635	2537
635	2143
635	2539
635	2079
636	2541
636	646
636	452
636	2544
637	2123
637	2546
637	2547
637	2548
638	449
638	2550
638	2551
638	2552
639	2553
639	2554
639	2555
639	2556
640	793
640	522
640	524
640	2560
641	521
641	1843
641	2563
641	2564
642	1069
642	2566
642	2567
642	2568
643	793
643	2502
643	449
643	2572
644	793
644	2574
644	2575
644	2556
645	2577
645	2578
645	2579
645	2580
646	2581
646	2582
646	2583
646	2584
647	2585
647	2586
647	2587
647	2588
648	2550
648	2590
648	2591
648	2592
649	2593
649	2594
649	2595
649	2596
650	405
650	2598
650	2599
650	2600
651	2601
651	837
651	2603
651	2604
652	2220
652	2606
652	2607
652	2608
653	680
653	1719
653	2611
653	2612
654	2613
654	2614
654	2615
654	574
655	2617
655	2618
655	2619
655	2620
656	2621
656	1711
656	2623
656	1921
657	2625
657	2626
657	2627
657	2628
658	1125
658	2601
658	1624
658	2632
659	1214
659	2634
659	405
659	350
660	833
660	2638
660	1217
660	2640
661	2641
661	2642
661	2643
661	2644
662	2645
662	2646
662	2647
662	2648
663	2649
663	2650
663	2651
663	1725
664	557
664	559
664	558
664	467
665	347
665	1405
665	2659
665	2660
666	2661
666	1226
666	2663
666	2664
667	2665
667	2666
667	2667
667	2668
668	2669
668	2670
668	2671
668	2672
669	2246
669	2261
669	2675
669	2676
670	2677
670	2678
670	2679
670	2680
671	853
671	1618
671	883
671	2684
672	665
672	840
672	2687
672	2688
673	2689
673	2690
673	2691
673	2692
674	1696
674	1195
674	2669
674	2696
675	2697
675	2315
675	2699
675	2700
676	2701
676	2702
676	2703
676	2704
677	365
677	726
677	2707
677	2708
678	1706
678	2710
678	2711
678	2712
679	2713
679	2714
679	348
679	1905
680	1242
680	2215
680	1243
680	2720
681	329
681	2722
681	1629
681	357
682	2725
682	2726
682	2727
682	1168
683	2729
683	593
683	2731
683	2732
684	1793
684	1635
684	960
684	720
685	365
685	2738
685	2739
685	1247
686	1266
686	2742
686	2743
686	2744
687	2745
687	2746
687	2747
687	2748
688	2749
688	1266
688	2751
688	2752
689	2753
689	1118
689	2755
689	2756
690	343
690	2758
690	2759
690	2760
691	2761
691	2762
691	2763
691	592
692	2765
692	2766
692	2767
692	2768
693	2769
693	2770
693	2771
693	2600
694	673
694	674
694	2775
694	2776
695	472
695	329
695	1686
695	1212
696	349
696	2782
696	2783
696	2784
697	2785
697	2786
697	2787
697	2788
698	2789
698	2790
698	2791
698	2792
699	2758
699	343
699	2759
699	2796
700	2797
700	2798
700	2799
700	2800
701	1674
701	2240
701	1890
701	2661
702	1629
702	2806
702	2197
702	768
703	2809
703	477
703	1181
703	1252
704	1170
704	1680
704	621
704	2816
705	710
705	2818
705	694
705	2820
706	2821
706	2822
706	2823
706	2824
707	2825
707	2722
707	1237
707	2828
708	2295
708	2334
708	2758
708	2669
709	357
709	2215
709	2835
709	2836
710	913
710	1284
710	938
710	2840
711	1869
711	673
711	2843
711	1872
712	1674
712	2846
712	1890
712	2712
713	434
713	2850
713	2851
713	2852
714	2853
714	2854
714	2855
714	2856
715	2857
715	2858
715	1181
715	2651
716	453
716	2862
716	1643
716	500
717	2865
717	2866
717	2867
717	2868
718	1756
718	1038
718	1195
718	1629
719	567
719	2874
719	2875
719	2876
720	2877
720	2878
720	2879
720	2880
721	2881
721	2882
721	2883
721	2884
722	2885
722	2729
722	397
722	2888
723	2889
723	597
723	2891
723	2892
724	1269
724	2894
724	2895
724	2896
725	2809
725	2898
725	2899
725	2900
726	2901
726	2902
726	2352
726	2904
727	2905
727	2906
727	2907
727	2908
728	365
728	2910
728	2911
728	2912
729	1395
729	2914
729	2915
729	2916
730	477
730	326
730	960
730	2920
731	1210
731	2367
731	1370
731	2924
732	2925
732	2926
732	2927
732	2928
733	353
733	698
733	2931
733	2932
734	2933
734	2934
734	2935
734	2936
735	1269
735	346
735	2939
735	2940
736	2941
736	2942
736	2341
736	1915
737	2945
737	720
737	2947
737	2948
738	1825
738	2425
738	2951
738	2286
739	1825
739	353
739	2955
739	1651
740	2957
740	1405
740	979
740	2960
741	2961
741	2962
741	2963
741	2964
742	434
742	2966
742	2967
742	2968
743	2786
743	2970
743	2947
743	2972
744	386
744	1250
744	2975
744	1332
745	334
745	487
745	2979
745	2980
746	2981
746	2982
746	2983
746	2984
747	2901
747	1333
747	2987
747	2988
748	1744
748	1756
748	2991
748	2992
749	1361
749	2994
749	2995
749	2996
750	2997
750	379
750	2999
750	3000
751	327
751	2932
751	1861
751	3004
752	334
752	717
752	3007
752	3008
753	3009
753	3010
753	3011
753	3012
754	494
754	2809
754	1945
754	322
755	2901
755	3018
755	3019
755	3020
756	509
756	510
756	511
756	3024
757	990
757	1395
757	849
757	3028
758	497
758	1440
758	3031
758	3032
759	3033
759	3034
759	3035
759	3036
760	494
760	3038
760	3039
760	3040
761	3041
761	3042
761	425
761	426
762	3045
762	1252
762	3047
762	1391
763	3049
763	3050
763	3051
763	3052
764	3053
764	3054
764	3055
764	3056
765	3057
765	3058
765	3059
765	3060
766	1905
766	2450
766	621
766	3064
767	3065
767	3066
767	958
767	3068
768	334
768	3070
768	3071
768	3072
769	3073
769	3074
769	3075
769	3076
770	1937
770	2318
770	3079
770	3080
771	1233
771	3082
771	3065
771	3084
772	369
772	3086
772	3087
772	3088
773	994
773	332
773	960
773	3092
774	990
774	1435
774	3095
774	620
775	3097
775	3098
775	3099
775	3100
776	3101
776	3102
776	3103
776	3104
777	617
777	1862
777	2507
777	3108
778	3109
778	3110
778	3111
778	3112
779	1989
779	3114
779	3115
779	3116
780	1937
780	980
780	3119
780	3120
781	2106
781	3122
781	3123
781	3124
782	1049
782	2505
782	2502
782	3128
783	3129
783	1441
783	3131
783	990
784	2106
784	3134
784	2131
784	3136
785	2037
785	3138
785	3139
785	3140
786	3141
786	3142
786	3143
786	3144
787	3145
787	3146
787	3147
787	3148
788	3149
788	3150
788	3151
788	3152
789	3153
789	3154
789	3155
789	3156
790	3157
790	1502
790	3159
790	3160
791	521
791	815
791	1843
791	451
792	521
792	1843
792	3167
792	3168
793	2140
793	818
793	3171
793	3172
794	1502
794	3174
794	3175
794	2151
795	3177
795	3152
795	3179
795	3180
796	2502
796	793
796	3183
796	3184
797	3185
797	640
797	3187
797	2119
798	2582
798	2584
798	2583
798	3192
799	3193
799	3194
799	3195
799	3196
800	3187
800	3198
800	3185
800	3200
801	3201
801	3202
801	3203
801	3204
802	3205
802	3206
802	3207
802	3208
803	1713
803	1252
803	1714
803	2202
804	3213
804	1752
804	3215
804	3216
805	3217
805	3218
805	3219
805	1247
806	1853
806	3222
806	3223
806	2295
807	3225
807	3226
807	3227
807	3228
808	2224
808	3230
808	3232
809	3233
809	3234
809	3235
809	3236
810	2769
810	2649
810	3239
810	3240
811	660
811	3242
811	347
811	332
812	3245
812	3246
812	3247
812	1370
813	3249
813	3250
813	2606
813	3252
814	1194
814	3254
814	358
814	3256
815	3257
815	3258
815	3259
815	3260
816	3261
816	833
816	870
816	3264
817	3265
817	3266
817	3267
817	3268
818	557
818	559
818	347
818	467
819	1177
819	3274
819	3275
819	1619
820	3277
820	3278
820	3279
820	3280
821	3281
821	3282
821	3283
821	3284
822	1330
822	408
822	1195
822	3288
823	473
823	3290
823	1248
823	3292
824	1654
824	1195
824	2932
824	3296
825	3297
825	1677
825	3299
825	3300
826	3301
826	2317
826	958
826	3304
827	2293
827	2294
827	1680
827	1673
828	3309
828	3310
828	3311
828	3312
829	3313
829	1169
829	3315
829	1635
830	2240
830	1183
830	3319
830	2343
831	3254
831	1679
831	3323
831	3324
832	1793
832	1251
832	3327
832	1795
833	1679
833	3319
833	334
833	3332
834	719
834	2197
834	1304
834	3122
835	3337
835	354
835	3339
835	1649
836	1225
836	1226
836	1227
836	2669
837	2215
837	418
837	349
837	3348
838	3349
838	3350
838	2343
838	851
839	1307
839	2854
839	3355
839	3356
840	3357
840	3358
840	3359
840	3360
841	3361
841	3362
841	3363
841	3364
842	3365
842	3366
842	3367
842	3368
843	3369
843	3370
843	3371
843	3372
844	3373
844	3374
844	3375
844	3376
845	3377
845	1696
845	2231
845	3380
846	673
846	3382
846	3225
846	3384
847	2240
847	2227
847	3387
847	572
848	1210
848	558
848	560
848	3364
849	3393
849	351
849	322
849	3292
850	694
850	3398
850	3399
850	3400
851	3401
851	3402
851	3403
851	950
852	3405
852	3406
852	3407
852	3408
853	3409
853	591
853	3411
853	3412
854	1210
854	330
854	2642
854	3416
855	477
855	329
855	3419
855	1697
856	1261
856	3301
856	1762
856	3424
857	3425
857	3426
857	3427
857	3428
858	418
858	2365
858	1234
858	3432
859	329
859	2659
859	3435
859	3436
860	569
860	3438
860	572
860	3440
861	1905
861	467
861	3443
861	3444
862	1225
862	1226
862	1227
862	3448
863	2809
863	1295
863	3451
863	3452
864	3451
864	3454
864	3455
864	3456
865	1853
865	356
865	3459
865	3460
866	3461
866	3462
866	3463
866	3464
867	1185
867	3466
867	3467
867	3468
868	2672
868	3402
868	1766
868	3472
869	2341
869	754
869	3451
869	2419
870	3477
870	2318
870	2367
870	2835
871	3393
871	1337
871	419
871	1239
872	365
872	3486
872	3487
872	3488
873	1884
873	3490
873	3491
873	3492
874	3493
874	3494
874	3495
874	3496
875	3497
875	3498
875	3499
875	3500
876	2317
876	357
876	1656
876	418
877	3505
877	3506
877	3507
877	3508
878	1329
878	2317
878	3511
878	3512
879	1652
879	490
879	1405
879	3516
880	3517
880	3518
880	3519
880	3520
881	3521
881	1879
881	3523
881	3524
882	3525
882	3526
882	1238
882	3528
883	2809
883	1269
883	3066
883	1394
884	862
884	1905
884	1316
884	3536
885	3537
885	3538
885	3539
885	3540
886	3541
886	2928
886	1247
886	3059
887	389
887	2910
887	2828
887	2997
888	348
888	3550
888	490
888	3552
889	3553
889	3554
889	3555
889	3556
890	326
890	1825
890	735
890	3560
891	1706
891	3562
891	3563
891	3564
892	1233
892	1323
892	358
892	3568
893	3569
893	2042
893	1708
893	698
894	3573
894	3574
894	3575
894	3576
895	3577
895	3578
895	1366
895	3580
896	3581
896	501
896	3584
897	3585
897	3586
897	3587
897	3588
898	1906
898	1332
898	321
898	3592
899	365
899	2809
899	3595
899	3596
900	332
900	3598
900	3599
900	3600
901	2809
901	3602
901	3603
901	3604
902	917
902	1894
902	3607
902	3608
903	3609
903	3610
903	3611
903	3612
904	326
904	789
904	3615
904	3122
905	1853
905	389
905	3619
905	2343
906	2932
906	3622
906	3623
906	3624
907	1329
907	3511
907	1304
907	3628
908	1329
908	486
908	1830
908	3511
909	3633
909	510
909	3635
909	3636
910	3637
910	3638
910	3639
910	3640
911	3641
911	3642
911	2348
911	3644
912	3645
912	3646
912	785
912	3648
913	329
913	3059
913	3651
913	3652
914	994
914	2401
914	3655
914	3656
915	3657
915	3658
915	2403
915	1370
916	2021
916	3662
916	492
916	3664
917	3665
917	3666
917	3667
917	3668
918	1977
918	2021
918	3671
918	3672
919	769
919	3674
919	1976
919	795
920	3677
920	2296
920	3679
920	3680
921	1437
921	3682
921	3123
921	3088
922	2712
922	3686
922	3687
922	3688
923	3689
923	3690
923	3691
923	3692
924	3693
924	3694
924	3695
924	3696
925	3697
925	2176
925	3699
925	3700
926	3701
926	3702
926	1975
926	3704
927	1977
927	328
927	3707
927	3708
928	1924
928	771
928	339
928	3712
929	3713
929	1989
929	3715
929	3716
930	326
930	3718
930	3719
930	3720
931	3721
931	3722
931	3723
931	3724
932	980
932	2391
932	928
932	3728
933	990
933	1981
933	2477
933	3732
934	369
934	3734
934	3735
934	3736
935	2034
935	369
935	3739
935	3740
936	789
936	1924
936	340
936	3744
937	1504
937	2494
937	514
937	2022
938	1755
938	3750
938	3751
938	3752
939	3753
939	3754
939	771
939	3756
940	1755
940	3758
940	3759
940	2064
941	3761
941	788
941	3763
941	3764
942	994
942	3766
942	3767
942	3768
943	3769
943	3770
943	3622
943	414
944	1041
944	2089
944	3775
944	3776
945	3777
945	3778
945	1564
945	3780
946	2530
946	1037
946	514
946	370
947	3785
947	1559
947	3787
947	3788
948	3789
948	3790
948	3791
948	3792
949	2537
949	3794
949	3795
949	3796
950	440
950	633
950	3799
950	3800
951	521
951	2106
951	649
951	3804
952	1502
952	2554
952	3807
952	2536
953	3809
953	3810
953	3811
953	3812
954	521
954	2502
954	3815
954	3816
955	3817
955	3818
955	644
955	2076
956	3821
956	3822
956	3823
956	3824
957	524
957	3826
957	3827
957	3172
958	560
958	406
958	321
958	3832
959	3833
959	3834
959	3835
959	3836
960	353
960	357
960	911
960	1245
961	3841
961	3842
961	3843
961	3844
962	3845
962	3846
962	1395
962	3848
963	3849
963	569
963	1133
963	3852
964	559
964	3854
964	3855
964	1711
965	3857
965	3858
965	3859
965	3860
966	3861
966	3862
966	3863
966	3864
967	3865
967	3866
967	3867
967	3868
968	1677
968	1680
968	1684
968	1678
969	3246
969	1191
969	3875
969	3876
970	1252
970	457
970	1330
970	711
971	365
971	2615
971	3883
971	3359
972	1833
972	1835
972	3887
972	3888
973	1917
973	3890
973	2689
973	3892
974	2250
974	1252
974	707
974	1191
975	3849
975	1437
975	3899
975	3900
976	3901
976	3902
976	3903
976	3904
977	2293
977	3419
977	1330
977	3908
978	1795
978	3910
978	3911
978	3912
979	490
979	3914
979	2796
979	3916
980	1115
980	3918
980	1810
980	3920
981	1669
981	3922
981	3923
981	3924
982	1210
982	3926
982	3927
982	3928
983	1174
983	3930
983	545
983	3369
984	3933
984	1679
984	2960
984	3936
985	1249
985	1330
985	418
985	3940
986	3941
986	3942
986	3943
986	3944
987	3945
987	2722
987	3947
987	3948
988	354
988	3950
988	3927
988	1712
989	3953
989	3477
989	1649
989	3956
990	3957
990	3958
990	3959
990	3960
991	357
991	366
991	910
991	1238
992	3965
992	3966
992	3967
992	2906
993	3313
993	1630
993	850
993	3972
994	3973
994	3862
994	3975
994	3976
995	558
995	2939
995	1195
995	3980
996	3981
996	3301
996	3983
996	3984
997	3985
997	3986
997	3987
997	3988
998	1761
998	3990
998	850
998	3992
999	2381
999	342
999	3562
999	3996
1000	3997
1000	3998
1000	3999
1000	343
1001	4001
1001	4002
1001	1198
1001	4004
1002	2809
1002	1780
1002	433
1002	960
1003	322
1003	958
1003	2641
1003	4012
1004	3288
1004	4014
1004	4015
1004	1783
1005	2349
1005	4018
1005	4019
1005	4020
1006	358
1006	4022
1006	1816
1006	4024
1007	2672
1007	4026
1007	4027
1007	4028
1008	1225
1008	1226
1008	1227
1008	1228
1009	1243
1009	4034
1009	4035
1009	2671
1010	467
1010	4038
1010	902
1010	1675
1011	4041
1011	4042
1011	4043
1011	4044
1012	3477
1012	1269
1012	710
1012	4048
1013	1945
1013	4050
1013	3049
1013	4052
1014	1238
1014	3402
1014	2642
1014	1247
1015	4057
1015	354
1015	4059
1015	4060
1016	3399
1016	3288
1016	4063
1016	4064
1017	701
1017	4066
1017	433
1017	4068
1018	4069
1018	4070
1018	4071
1018	4072
1019	2341
1019	707
1019	2381
1019	4076
1020	397
1020	4078
1020	4079
1020	4080
1021	1825
1021	698
1021	2042
1021	3452
1022	358
1022	4086
1022	1238
1022	3990
1023	4089
1023	4090
1023	4091
1023	4092
1024	4093
1024	3327
1024	4095
1024	4096
1025	3369
1025	4098
1025	4099
1025	2933
1026	990
1026	2330
1026	4103
1026	4104
1027	924
1027	567
1027	4107
1027	4108
1028	1225
1028	1227
1028	992
1028	4112
1029	1634
1029	4095
1029	1200
1029	4116
1030	1825
1030	3538
1030	2365
1030	4120
1031	2939
1031	958
1031	4123
1031	4124
1032	1853
1032	2297
1032	3402
1032	1061
1033	2809
1033	4130
1033	2942
1033	1196
1034	329
1034	2383
1034	4135
1034	4136
1035	2365
1035	1884
1035	4139
1035	4140
1036	2889
1036	2341
1036	898
1036	4144
1037	4145
1037	4146
1037	2927
1037	4148
1038	1825
1038	707
1038	4151
1038	4152
1039	4153
1039	589
1039	4155
1039	4156
1040	4024
1040	4158
1040	711
1040	4160
1041	334
1041	2343
1041	357
1041	4164
1042	3832
1042	2286
1042	4167
1042	4168
1043	2966
1043	698
1043	4171
1043	699
1044	348
1044	495
1044	347
1044	1931
1045	1825
1045	4178
1045	512
1045	4180
1046	369
1046	2318
1046	4183
1046	4184
1047	365
1047	2219
1047	2343
1047	367
1048	2406
1048	1270
1048	4191
1048	4192
1049	2941
1049	335
1049	2436
1049	4196
1050	4197
1050	2896
1050	405
1050	4200
1051	383
1051	2278
1051	4203
1051	4204
1052	4205
1052	4206
1052	2393
1052	4208
1053	4209
1053	4210
1053	4068
1053	4212
1054	4213
1054	383
1054	4215
1054	4216
1055	326
1055	328
1055	4219
1055	1438
1056	1303
1056	4222
1056	387
1056	3560
1057	1917
1057	4226
1057	4227
1057	4228
1058	4229
1058	4230
1058	4231
1058	4232
1059	4233
1059	2452
1059	4235
1059	2442
1060	729
1060	3049
1060	4239
1060	4240
1061	1329
1061	4242
1061	849
1061	4244
1062	2502
1062	337
1062	4247
1062	4248
1063	729
1063	4250
1063	4251
1063	4252
1064	4253
1064	4254
1064	4255
1064	4256
1065	4257
1065	4258
1065	4259
1065	4260
1066	369
1066	731
1066	4263
1066	4264
1067	4265
1067	623
1067	4267
1067	4268
1068	4269
1068	4270
1068	4271
1068	4272
1069	1983
1069	4274
1069	4275
1069	2446
1070	4277
1070	4278
1070	635
1070	4280
1071	1544
1071	2512
1071	4283
1071	4284
1072	369
1072	4286
1072	727
1072	4288
1073	4289
1073	4290
1073	4291
1073	4292
1074	4293
1074	4294
1074	4295
1074	2504
1075	4297
1075	4298
1075	4299
1075	4300
1076	2106
1076	4302
1076	3810
1076	4304
1077	2033
1077	4306
1077	2537
1077	4308
1078	1050
1078	3159
1078	3149
1078	450
1079	4313
1079	4314
1079	4315
1079	4316
1080	4317
1080	4318
1080	4319
1080	4320
\.


--
-- TOC entry 3355 (class 0 OID 17876)
-- Dependencies: 215
-- Data for Name: movie_genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_genres (movie_id, genre_id) FROM stdin;
81	185
82	186
82	185
83	188
83	186
83	185
84	186
84	185
85	186
85	185
86	188
86	196
86	185
87	186
87	185
88	200
88	185
88	202
89	188
89	196
89	205
90	185
91	188
91	196
91	185
92	185
92	211
93	212
94	188
94	196
94	185
95	188
95	205
96	200
96	186
96	185
97	188
97	196
97	223
98	185
99	200
99	185
99	202
100	228
100	185
100	230
101	185
102	196
102	185
102	205
103	186
103	185
104	237
104	196
104	239
105	185
105	241
106	186
106	185
106	223
107	228
107	185
107	211
108	186
108	185
108	250
109	186
109	185
109	230
110	188
110	196
110	223
111	188
111	185
111	250
112	188
112	196
112	185
113	185
113	239
113	223
114	186
114	185
114	230
115	185
115	270
116	200
116	228
116	185
117	185
117	250
117	205
118	186
118	185
118	230
119	200
119	185
119	270
120	188
120	196
120	185
121	185
122	186
122	250
122	230
123	188
123	186
123	185
124	237
124	196
124	185
125	188
125	205
126	185
126	211
127	237
127	185
127	241
128	196
128	228
128	205
129	212
130	307
130	250
130	230
131	185
131	211
131	241
132	228
132	185
132	239
133	228
133	185
133	211
134	185
135	200
135	185
135	202
136	188
136	186
136	185
137	237
137	185
137	223
138	188
138	200
138	185
139	237
139	188
139	196
140	188
140	196
140	185
141	188
141	196
141	205
142	237
142	196
142	239
143	185
143	212
144	188
144	196
145	228
145	185
146	185
146	239
147	237
147	196
147	239
148	185
148	250
148	230
149	188
149	185
149	250
150	250
150	230
151	237
151	188
151	196
152	186
152	185
153	188
153	196
154	185
154	307
155	185
155	250
155	241
156	307
156	205
157	185
157	378
158	186
158	185
158	250
159	228
160	186
160	185
160	250
161	185
161	241
162	250
162	230
163	185
163	391
164	228
164	185
164	241
165	185
165	230
165	241
166	185
166	223
166	307
167	186
167	185
167	270
168	186
168	185
168	230
169	185
170	185
171	185
171	250
171	241
172	185
173	185
173	239
174	196
174	185
174	241
175	185
175	211
175	205
176	228
176	211
177	228
177	186
178	185
179	185
180	185
180	211
181	185
181	239
181	431
182	237
182	196
182	228
183	200
183	185
183	202
184	186
184	185
184	230
185	185
185	241
186	185
186	230
186	241
187	188
187	196
187	205
188	200
188	185
188	202
189	186
189	185
190	188
190	196
190	223
191	196
191	185
191	230
192	186
192	185
193	228
193	186
193	185
194	186
194	185
194	205
195	196
195	205
196	212
197	196
197	200
197	185
198	228
198	185
198	211
199	196
199	250
199	230
200	250
200	211
200	230
201	228
201	378
201	211
202	185
203	185
204	186
204	185
204	391
205	185
205	250
206	186
206	250
206	230
207	185
207	205
208	228
208	185
208	239
209	228
209	185
210	188
210	185
210	241
211	188
211	185
212	200
212	228
212	185
213	228
213	186
213	185
214	186
214	185
214	250
215	188
215	185
216	237
216	196
216	228
217	186
217	185
217	250
218	196
218	228
218	185
219	185
219	241
220	200
220	185
220	431
221	188
221	228
221	186
222	185
223	188
223	200
223	186
224	185
224	250
224	211
225	188
225	185
225	431
226	250
226	230
227	237
227	196
227	228
228	200
228	186
228	185
229	185
229	239
229	431
230	185
231	185
231	223
231	241
232	237
232	196
232	228
233	188
233	185
233	205
234	228
234	186
234	185
235	185
236	188
236	196
237	185
238	200
238	185
238	202
239	237
239	196
239	239
240	200
240	185
241	188
241	228
241	186
242	188
242	228
242	186
243	186
243	185
243	250
244	186
244	185
244	230
245	186
245	185
245	230
246	186
246	185
247	188
247	228
247	211
248	185
248	212
249	188
249	196
250	228
250	186
250	185
251	237
251	239
251	223
252	188
252	230
253	188
253	185
253	241
254	200
254	185
254	431
255	185
255	205
256	185
256	270
257	200
257	185
257	202
258	188
258	196
258	228
259	196
259	228
259	223
260	196
260	185
260	202
261	186
261	185
262	188
262	185
262	230
263	185
263	241
264	228
264	270
264	211
265	185
265	211
266	185
266	223
266	202
267	186
267	185
267	230
268	186
268	230
269	185
270	186
270	185
270	250
271	185
272	196
272	185
272	212
273	228
273	241
274	196
274	228
274	185
275	188
275	228
275	211
276	185
276	211
277	185
277	230
278	237
278	185
278	239
279	186
279	185
279	250
280	185
280	211
280	230
281	185
282	188
282	186
282	185
283	188
283	185
283	205
284	185
284	230
285	228
285	185
285	230
286	237
286	196
286	228
287	185
288	228
288	185
288	378
289	228
289	185
289	223
290	196
290	228
290	186
291	185
291	250
291	230
292	237
292	185
292	223
293	200
293	185
293	202
294	237
294	196
294	228
295	228
295	185
295	211
296	200
296	185
296	202
297	188
297	200
297	185
298	188
298	200
298	185
299	200
299	186
299	185
300	237
300	196
300	185
301	250
301	230
302	228
302	185
303	186
303	185
303	250
304	188
304	196
304	205
305	188
305	186
305	185
306	185
307	196
307	185
307	223
308	185
308	270
309	200
309	185
309	239
310	237
310	228
310	185
311	237
311	188
311	196
312	196
312	200
312	185
313	186
313	185
313	230
314	228
314	185
314	211
315	185
315	431
316	200
316	185
316	202
317	188
317	185
317	241
318	185
318	211
319	228
319	185
319	378
320	186
320	185
320	250
321	228
321	185
321	211
322	188
322	186
322	185
323	237
323	196
323	228
324	200
324	186
324	185
325	185
325	230
326	237
326	196
326	228
327	237
327	188
327	185
328	196
328	185
328	378
329	185
329	250
329	230
330	185
330	270
330	211
331	228
331	185
332	228
332	186
332	211
333	228
333	186
333	431
334	185
334	211
335	185
336	186
336	185
336	230
337	228
337	185
337	241
338	186
338	185
339	185
339	211
340	185
340	211
341	185
341	250
341	211
342	228
342	186
342	185
343	188
343	196
343	205
344	200
344	186
344	185
345	185
345	270
345	211
346	185
346	202
346	211
347	228
347	185
348	196
348	185
349	185
349	241
350	185
351	237
351	196
351	223
352	307
352	250
352	205
353	185
353	223
353	270
354	196
354	185
355	185
356	188
356	205
356	230
357	200
357	185
358	228
359	185
359	241
360	185
360	431
361	185
362	196
362	185
362	202
363	200
363	185
364	185
364	250
364	230
365	228
365	186
365	185
366	185
367	185
367	250
367	205
368	186
368	185
368	250
369	186
369	185
370	185
370	230
371	200
371	185
371	202
372	185
372	241
373	185
373	223
374	185
374	307
374	230
375	188
375	228
375	186
376	185
376	212
377	185
377	241
378	185
379	200
379	185
379	202
380	186
380	185
381	196
381	185
381	202
382	196
382	185
383	185
384	185
384	202
385	196
385	185
385	241
386	186
386	185
386	230
387	196
387	185
387	230
388	185
388	391
389	188
389	186
389	185
390	391
390	250
390	230
391	185
391	270
391	211
392	228
392	185
392	211
393	185
393	250
393	211
394	228
394	185
395	185
395	202
395	211
396	185
396	241
397	228
397	211
398	200
398	185
398	202
399	228
399	211
400	185
400	211
401	188
401	196
401	228
402	223
402	307
402	250
403	228
403	185
404	196
404	200
404	185
405	185
405	202
406	188
406	196
406	228
407	188
407	186
407	230
408	228
408	185
408	270
409	200
409	185
410	196
410	185
410	205
411	237
411	196
411	228
412	188
412	185
413	237
413	196
413	185
414	185
414	239
415	185
415	270
415	211
416	186
416	185
416	230
417	185
418	188
418	186
418	230
419	200
419	185
419	230
420	188
420	196
420	228
421	188
421	185
421	250
422	185
422	211
422	205
423	200
423	185
423	270
424	188
424	196
424	185
425	185
425	211
426	188
426	186
426	185
427	200
427	185
427	202
428	185
429	188
429	196
429	228
430	185
430	250
431	185
431	211
432	188
432	200
432	185
433	185
434	188
434	185
434	230
435	185
435	211
436	185
436	230
437	188
437	186
437	185
438	188
438	196
438	205
439	237
439	200
439	185
440	200
440	185
441	200
441	185
442	196
442	185
442	230
443	188
443	250
443	230
444	186
444	185
444	211
445	186
445	230
446	200
446	185
447	196
447	228
447	205
448	237
448	196
448	228
449	188
449	196
449	230
450	188
450	186
450	230
451	185
452	185
452	211
453	200
453	185
454	200
454	185
454	202
455	228
455	185
455	378
456	188
456	186
456	185
457	188
457	196
457	223
458	196
458	185
458	223
459	237
459	188
459	196
460	228
460	185
460	211
461	186
461	185
462	228
462	185
463	185
463	250
463	205
464	185
465	186
465	185
465	378
466	200
466	185
467	237
467	186
467	250
468	185
469	185
470	237
470	188
470	196
471	188
471	186
471	228
472	185
473	228
473	185
474	250
474	205
474	230
475	237
475	188
475	186
476	237
476	239
476	223
477	228
477	223
477	211
478	186
478	185
479	185
480	237
480	196
480	228
481	185
481	202
481	230
482	237
482	239
482	223
483	196
483	185
483	212
484	228
484	185
485	185
486	237
486	188
486	205
487	196
487	239
487	223
488	185
488	223
488	211
489	185
489	241
490	237
490	196
490	185
491	188
491	205
492	200
492	185
492	202
493	185
493	202
493	241
494	228
494	185
495	228
495	211
496	196
496	230
497	200
497	186
497	185
498	228
499	200
499	186
499	185
500	307
501	250
501	230
502	185
502	211
503	185
503	239
503	378
504	185
505	200
505	186
505	185
506	185
506	307
507	196
507	205
508	228
508	185
508	211
509	185
510	200
510	185
510	239
511	185
511	211
511	241
512	188
512	185
512	212
513	185
514	185
515	185
515	431
516	228
516	185
517	188
517	185
517	212
518	186
518	185
518	250
519	186
519	185
519	391
520	185
521	185
521	391
522	186
522	185
522	391
523	186
523	185
523	391
524	185
525	186
525	185
525	307
526	228
526	185
526	241
527	228
527	211
528	185
529	185
529	391
529	250
530	228
530	186
531	186
531	185
531	250
532	186
532	185
532	391
533	185
533	211
534	185
534	391
534	250
535	185
535	211
535	241
536	228
536	186
536	230
537	391
537	250
538	185
538	202
539	196
539	239
539	223
540	228
540	185
541	228
541	186
541	250
542	185
542	241
543	185
543	202
543	230
544	228
544	186
544	185
545	228
545	185
545	211
546	186
546	185
547	228
547	185
547	211
548	185
548	211
549	185
550	237
550	196
550	228
551	196
551	228
551	185
552	228
552	185
553	228
553	185
553	270
554	188
554	196
554	228
555	186
555	185
555	230
556	228
556	185
556	241
557	185
557	205
558	188
558	196
558	205
559	185
559	211
560	188
560	196
560	205
561	186
561	185
562	228
562	185
562	211
563	188
563	196
563	205
564	185
564	211
565	200
565	186
565	185
566	186
566	185
567	185
567	250
567	205
568	186
568	185
568	223
569	188
569	205
569	230
570	185
570	431
571	228
571	185
571	211
572	185
573	185
574	188
574	196
574	205
575	228
575	186
575	185
576	185
576	223
576	250
577	188
577	196
577	185
578	196
578	185
578	223
579	196
579	185
579	223
580	237
580	196
580	228
581	228
581	185
582	185
582	270
583	188
583	196
583	205
584	228
584	307
585	185
585	211
586	186
586	185
586	250
587	196
587	239
587	223
588	188
588	196
588	202
589	185
589	250
589	211
590	228
590	185
590	241
591	237
591	188
591	186
592	188
592	250
592	230
593	186
593	185
593	230
594	196
594	185
594	205
595	196
595	228
595	185
596	185
596	250
596	230
597	237
597	196
597	228
598	185
599	237
599	185
599	239
600	186
600	185
601	186
601	185
601	211
602	185
602	270
602	250
603	237
603	188
603	196
604	186
604	185
604	230
605	185
605	223
605	211
606	200
606	185
607	228
607	185
608	186
608	185
608	230
609	228
609	185
610	185
610	205
611	228
611	270
612	228
612	239
613	188
613	196
613	228
614	228
614	185
614	211
615	185
615	270
615	378
616	188
616	196
616	307
617	200
617	185
617	202
618	196
618	185
618	223
619	228
619	185
619	239
620	228
621	188
621	196
621	200
622	228
622	185
622	211
623	200
623	185
623	241
624	188
624	196
624	212
625	307
625	230
626	200
626	185
626	202
627	186
627	185
627	250
628	228
628	250
628	211
629	185
629	230
630	196
630	200
630	185
631	185
631	250
632	185
632	211
633	196
633	185
634	196
634	185
634	212
635	185
636	185
636	230
636	212
637	186
637	391
637	230
638	228
638	185
638	223
639	228
639	185
639	239
640	185
640	391
640	211
641	186
641	391
641	250
642	185
642	391
643	228
643	211
644	228
644	185
644	211
645	188
645	196
645	211
646	228
646	270
646	378
647	196
647	307
647	205
648	185
648	307
649	223
649	307
650	188
650	228
650	186
651	188
651	185
651	230
652	185
652	270
653	185
654	188
654	185
654	202
655	228
655	185
656	200
656	185
656	202
657	196
657	228
657	239
658	188
658	186
658	185
659	237
659	188
659	196
660	200
660	185
660	431
661	185
662	185
662	202
662	241
663	188
663	196
663	205
664	188
664	196
664	205
665	186
665	185
665	250
666	185
666	211
667	237
667	200
667	186
668	200
668	228
668	185
669	185
669	250
670	185
671	185
671	211
672	228
672	211
673	237
673	188
673	196
674	228
674	185
674	223
675	228
675	185
675	239
676	237
676	200
676	185
677	237
677	196
677	228
678	186
678	185
678	250
679	228
679	185
679	211
680	237
680	188
680	196
681	200
681	228
681	185
682	185
682	230
683	188
683	186
683	185
684	186
684	185
684	250
685	196
685	200
685	186
686	188
686	186
686	185
687	200
687	185
687	202
688	186
688	185
688	250
689	188
689	186
689	230
690	196
690	223
691	185
691	202
691	250
692	186
692	185
692	250
693	185
693	202
693	230
694	228
694	185
695	200
695	185
695	431
696	188
696	230
697	185
697	202
697	241
698	185
698	270
698	211
699	196
699	223
700	185
701	185
701	250
701	211
702	186
702	185
703	200
703	186
703	185
704	188
704	196
704	223
705	185
705	223
705	211
706	188
706	196
706	185
707	228
707	185
708	188
708	228
708	250
709	185
709	223
709	211
710	185
710	239
710	378
711	228
711	186
711	185
712	185
712	211
713	200
713	185
713	431
714	237
714	196
714	228
715	188
715	196
715	205
716	200
716	185
716	270
717	185
718	185
718	211
719	196
719	200
719	185
720	186
720	185
721	237
721	228
721	185
722	188
722	185
722	230
723	188
723	196
723	185
724	237
724	185
724	223
725	200
725	185
725	431
726	188
726	196
726	223
727	185
728	196
728	185
728	211
729	188
729	186
729	230
730	200
730	185
730	230
731	200
731	185
731	239
732	237
732	196
732	228
733	185
733	211
734	186
734	185
734	211
735	185
735	205
735	230
736	188
736	185
736	250
737	185
738	200
738	228
738	185
739	185
740	188
740	200
740	185
741	228
741	185
741	239
742	185
742	211
743	228
743	185
744	188
744	186
744	185
745	186
745	185
745	211
746	237
746	188
746	186
747	188
747	186
747	230
748	228
748	185
749	185
749	223
749	270
750	186
750	185
751	185
751	230
752	200
752	185
753	237
753	196
753	185
754	200
754	185
754	202
755	188
755	186
755	185
756	196
756	228
756	205
757	186
757	185
757	202
758	188
758	196
758	205
759	188
759	228
759	223
760	228
761	228
761	186
761	185
762	196
762	228
762	239
763	185
764	228
764	185
765	200
765	185
765	202
766	188
766	228
766	223
767	196
767	200
767	185
768	228
768	186
768	185
769	239
769	205
770	185
771	185
771	211
772	212
773	196
773	202
773	241
774	185
774	250
774	230
775	237
775	205
776	186
776	185
776	230
777	188
777	186
777	185
778	185
778	270
778	378
779	239
779	223
779	378
780	185
781	230
782	228
782	185
783	188
783	200
783	186
784	185
784	239
784	378
785	228
785	239
785	223
786	188
786	185
786	202
787	185
787	211
788	307
789	186
789	185
790	188
790	196
790	185
791	188
791	186
791	185
792	196
792	228
792	391
793	391
793	230
794	196
794	185
794	212
795	250
795	230
796	228
796	239
796	211
797	185
797	307
797	205
798	228
798	378
798	241
799	188
799	186
799	185
800	185
800	307
800	205
801	185
802	185
802	211
803	188
803	196
803	228
804	186
804	185
804	250
805	307
805	250
805	230
806	188
806	196
806	230
807	228
807	185
807	211
808	228
808	307
809	237
809	185
809	239
810	200
810	185
810	211
811	188
811	196
811	228
812	185
812	211
813	228
813	185
814	228
814	185
815	185
815	211
816	185
816	431
817	185
817	270
817	211
818	188
818	196
818	205
819	185
819	270
819	378
820	196
820	228
820	185
821	237
821	196
821	228
822	237
822	196
822	185
823	185
824	228
824	223
824	211
825	237
825	188
825	196
826	185
826	205
826	230
827	188
827	196
827	205
828	185
828	241
829	200
829	185
830	188
830	196
830	205
831	228
832	188
832	196
832	230
833	228
833	185
833	211
834	200
834	185
834	230
835	228
835	185
835	211
836	196
836	239
836	223
837	237
837	196
837	228
838	200
838	185
838	202
839	237
839	185
839	223
840	200
840	186
840	185
841	228
841	185
841	211
842	237
842	196
842	228
843	186
843	185
843	223
844	186
844	185
845	185
845	205
845	230
846	185
847	200
847	185
847	202
848	186
848	185
848	250
849	188
849	186
849	185
850	185
850	202
850	270
851	200
851	185
851	270
852	237
852	196
852	228
853	185
853	230
853	241
854	185
854	211
855	188
855	186
855	185
856	186
856	185
856	230
857	188
857	228
857	223
858	188
858	250
858	230
859	185
859	230
860	200
860	185
860	270
861	228
861	185
862	196
862	239
862	223
863	188
863	186
863	185
864	237
864	185
864	239
865	188
865	185
866	185
867	228
867	185
867	211
868	185
869	185
870	228
870	185
871	185
871	202
871	241
872	186
872	185
872	230
873	185
873	230
874	185
874	270
875	228
875	185
875	270
876	186
876	230
877	237
877	188
877	223
878	196
878	228
878	186
879	196
879	228
879	185
880	237
880	228
880	223
881	228
882	228
882	185
883	186
883	185
883	230
884	228
884	185
884	211
885	185
885	250
885	205
886	228
886	185
886	223
887	228
887	185
887	211
888	188
888	196
888	205
889	228
890	200
890	186
890	185
891	200
891	185
891	270
892	186
892	185
892	250
893	185
894	185
894	239
894	223
895	228
895	186
895	185
896	200
896	228
896	185
897	228
898	228
898	185
899	185
900	228
900	185
900	239
901	200
901	185
901	202
902	188
902	196
902	185
903	237
903	196
903	228
904	186
904	185
904	250
905	185
905	230
906	185
907	228
907	185
907	230
908	186
908	185
908	230
909	237
909	196
909	228
910	250
910	230
911	228
911	185
912	200
912	185
912	202
913	188
913	185
913	202
914	186
914	185
914	250
915	185
915	250
915	230
916	228
916	223
916	211
917	228
917	186
917	185
918	228
919	185
920	188
920	196
920	205
921	188
921	196
922	185
923	228
924	237
924	196
924	239
925	307
925	230
926	185
926	230
927	228
927	241
928	188
928	186
928	230
929	228
929	212
930	200
930	186
930	185
931	188
931	186
931	185
932	196
932	185
932	230
933	188
933	186
933	185
934	188
934	186
934	230
935	188
935	196
935	241
936	228
937	188
937	196
937	241
938	185
938	211
939	200
939	185
939	202
940	185
940	307
940	230
941	185
941	202
941	241
942	188
942	196
942	230
943	185
943	307
943	250
944	185
944	230
945	185
945	307
945	230
946	188
946	196
946	212
947	185
947	307
948	185
948	307
948	205
949	185
950	228
950	186
951	228
951	185
951	211
952	228
952	185
952	211
953	185
953	205
954	196
954	185
954	211
955	185
955	391
955	211
956	237
956	239
956	223
957	307
957	205
958	200
958	185
958	202
959	185
959	250
959	230
960	228
960	185
961	185
962	185
963	200
963	186
963	185
964	185
965	196
965	228
965	185
966	186
966	185
966	211
967	185
968	188
968	196
968	228
969	188
969	186
969	185
970	188
970	200
970	185
971	185
971	202
971	230
972	237
972	188
972	196
973	237
973	196
973	228
974	188
974	186
974	185
975	185
975	431
976	186
976	185
977	188
977	186
977	185
978	200
978	228
978	185
979	188
979	196
979	185
980	250
980	230
981	188
981	230
982	188
982	186
982	185
983	237
983	196
983	239
984	185
984	270
984	211
985	185
985	212
986	185
986	211
987	237
987	228
987	186
988	228
988	185
988	211
989	188
989	228
989	186
990	188
990	196
990	186
991	200
991	185
991	431
992	185
992	307
992	230
993	196
993	228
993	223
994	185
994	230
995	188
995	196
995	250
996	200
996	185
996	431
997	185
998	185
999	188
999	186
999	185
1000	196
1000	239
1000	223
1001	237
1001	196
1001	239
1002	186
1002	185
1002	250
1003	186
1003	185
1003	250
1004	200
1004	185
1004	270
1005	188
1005	200
1005	185
1006	185
1006	223
1006	250
1007	186
1007	185
1007	230
1008	188
1008	196
1008	239
1009	188
1009	185
1010	185
1010	211
1010	230
1011	188
1011	185
1011	250
1012	188
1012	186
1012	185
1013	307
1013	250
1013	230
1014	185
1015	185
1016	228
1016	185
1016	211
1017	185
1017	250
1017	211
1018	228
1018	185
1019	186
1019	185
1019	230
1020	186
1020	185
1020	230
1021	200
1021	185
1021	239
1022	185
1023	185
1023	205
1023	230
1024	185
1024	307
1024	205
1025	188
1025	196
1025	185
1026	228
1026	185
1027	185
1028	196
1028	239
1028	223
1029	307
1029	250
1029	230
1030	200
1030	186
1030	185
1031	185
1031	202
1031	241
1032	188
1032	186
1032	250
1033	200
1033	185
1033	431
1034	228
1034	186
1034	185
1035	186
1035	185
1035	230
1036	185
1036	241
1037	237
1037	196
1037	239
1038	196
1038	228
1038	185
1039	186
1039	185
1039	230
1040	250
1040	205
1040	230
1041	186
1041	185
1041	230
1042	250
1042	230
1043	185
1043	211
1044	188
1044	196
1044	230
1045	196
1045	185
1045	223
1046	185
1046	211
1047	196
1047	185
1047	202
1048	228
1048	185
1048	211
1049	188
1049	186
1049	185
1050	228
1051	228
1051	186
1052	237
1052	185
1052	211
1053	228
1053	186
1054	228
1054	239
1055	186
1055	185
1056	228
1056	185
1056	211
1057	237
1057	239
1057	223
1058	228
1058	186
1059	228
1059	185
1060	188
1060	186
1060	230
1061	186
1061	185
1061	230
1062	185
1063	188
1063	196
1063	205
1064	188
1064	186
1064	230
1065	196
1065	228
1065	239
1066	188
1066	200
1066	186
1067	237
1067	196
1067	185
1068	200
1068	186
1068	185
1069	185
1069	205
1070	228
1070	186
1070	185
1071	185
1071	241
1071	212
1072	196
1072	228
1072	241
1073	237
1073	196
1073	239
1074	185
1074	250
1074	230
1075	228
1075	270
1075	378
1076	228
1076	185
1076	211
1077	185
1077	212
1078	185
1078	211
1078	241
1079	185
1079	241
1080	186
1080	250
1080	230
\.


--
-- TOC entry 3352 (class 0 OID 17856)
-- Dependencies: 212
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (movie_id, title, release_year, certificate, runtime_min, imdb_rating, overview, meta_score, director_id, no_of_votes, gross_revenue, poster_link) FROM stdin;
81	The Shawshank Redemption	1994	A	142	9.3	Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.	80.0	85	2343110	28,341,469	https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
82	The Godfather	1972	A	175	9.2	An organized crime dynasty's aging patriarch transfers control of his clandestine empire to his reluctant son.	100.0	86	1620367	134,966,411	https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR1,0,67,98_AL_.jpg
83	The Dark Knight	2008	UA	152	9.0	When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.	84.0	87	2303232	534,858,444	https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg
84	The Godfather: Part II	1974	A	202	9.0	The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.	90.0	86	1129952	57,300,000	https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR1,0,67,98_AL_.jpg
85	12 Angry Men	1957	U	96	9.0	A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.	96.0	89	689845	4,360,000	https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
86	The Lord of the Rings: The Return of the King	2003	U	201	8.9	Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.	94.0	90	1642758	377,845,905	https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
87	Pulp Fiction	1994	A	154	8.9	The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.	94.0	91	1826188	107,928,762	https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR0,0,67,98_AL_.jpg
88	Schindler's List	1993	A	195	8.9	In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.	94.0	92	1213505	96,898,818	https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
89	Inception	2010	UA	148	8.8	A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.	74.0	87	2067042	292,576,195	https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg
90	Fight Club	1999	A	139	8.8	An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.	66.0	94	1854740	37,030,102	https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
91	The Lord of the Rings: The Fellowship of the Ring	2001	U	178	8.8	A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.	92.0	90	1661481	315,544,750	https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UX67_CR0,0,67,98_AL_.jpg
92	Forrest Gump	1994	UA	142	8.8	The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.	82.0	96	1809221	330,252,182	https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY98_CR0,0,67,98_AL_.jpg
93	Il buono, il brutto, il cattivo	1966	A	161	8.8	A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.	90.0	97	688390	6,100,000	https://m.media-amazon.com/images/M/MV5BOTQ5NDI3MTI4MF5BMl5BanBnXkFtZTgwNDQ4ODE5MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
94	The Lord of the Rings: The Two Towers	2002	UA	179	8.7	While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron's new ally, Saruman, and his hordes of Isengard.	87.0	90	1485555	342,551,365	https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
95	The Matrix	1999	A	136	8.7	When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.	73.0	99	1676426	171,479,930	https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
96	Goodfellas	1990	A	146	8.7	The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.	90.0	100	1020727	46,836,394	https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
97	Star Wars: Episode V - The Empire Strikes Back	1980	UA	124	8.7	After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy.	82.0	101	1159315	290,475,067	https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
98	One Flew Over the Cuckoo's Nest	1975	A	133	8.7	A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.	83.0	102	918088	112,000,000	https://m.media-amazon.com/images/M/MV5BZjA0OWVhOTAtYWQxNi00YzNhLWI4ZjYtNjFjZTEyYjJlNDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
99	Hamilton	2020	PG-13	160	8.6	The real life of one of America's foremost founding fathers and first Secretary of the Treasury, Alexander Hamilton. Captured live on Broadway from the Richard Rodgers Theater with the original Broadway cast.	90.0	103	55291	NaN	https://m.media-amazon.com/images/M/MV5BNjViNWRjYWEtZTI0NC00N2E3LTk0NGQtMjY4NTM3OGNkZjY0XkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_UX67_CR0,0,67,98_AL_.jpg
100	Gisaengchung	2019	A	132	8.6	Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.	96.0	104	552778	53,367,844	https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UX67_CR0,0,67,98_AL_.jpg
101	Soorarai Pottru	2020	U	153	8.6	Nedumaaran Rajangam "Maara" sets out to make the common man fly and in the process takes on the world's most capital intensive industry and several enemies who stand in his way.	NaN	105	54995	NaN	https://m.media-amazon.com/images/M/MV5BOTc2ZTlmYmItMDBhYS00YmMzLWI4ZjAtMTI5YTBjOTFiMGEwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR0,0,67,98_AL_.jpg
102	Interstellar	2014	UA	169	8.6	A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.	74.0	87	1512360	188,020,017	https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
103	Cidade de Deus	2002	A	130	8.6	In the slums of Rio, two kids' paths diverge as one struggles to become a photographer and the other a kingpin.	79.0	107	699256	7,563,397	https://m.media-amazon.com/images/M/MV5BOTMwYjc5ZmItYTFjZC00ZGQ3LTlkNTMtMjZiNTZlMWQzNzI5XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
104	Sen to Chihiro no kamikakushi	2001	U	125	8.6	During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.	96.0	108	651376	10,055,859	https://m.media-amazon.com/images/M/MV5BMjlmZmI5MDctNDE2YS00YWE0LWE5ZWItZDBhYWQ0NTcxNWRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
105	Saving Private Ryan	1998	R	169	8.6	Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.	91.0	92	1235804	216,540,909	https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX67_CR0,0,67,98_AL_.jpg
106	The Green Mile	1999	A	189	8.6	The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.	61.0	85	1147794	136,801,374	https://m.media-amazon.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_UX67_CR0,0,67,98_AL_.jpg
107	La vita è bella	1997	U	116	8.6	When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.	59.0	111	623629	57,598,247	https://m.media-amazon.com/images/M/MV5BYmJmM2Q4NmMtYThmNC00ZjRlLWEyZmItZTIwOTBlZDQ3NTQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
108	Se7en	1995	A	127	8.6	Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.	65.0	94	1445096	100,125,643	https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
109	The Silence of the Lambs	1991	A	118	8.6	A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.	85.0	113	1270197	130,742,922	https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
110	Star Wars	1977	UA	121	8.6	Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.	90.0	114	1231473	322,740,140	https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
111	Seppuku	1962	NaN	133	8.6	When a ronin requesting seppuku at a feudal lord's palace is told of the brutal suicide of another ronin who previously visited, he reveals how their pasts are intertwined - and in doing so challenges the clan's integrity.	85.0	115	42004	NaN	https://m.media-amazon.com/images/M/MV5BYjBmYTQ1NjItZWU5MS00YjI0LTg2OTYtYmFkN2JkMmNiNWVkXkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_UY98_CR2,0,67,98_AL_.jpg
112	Shichinin no samurai	1954	U	207	8.6	A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.	98.0	116	315744	269,061	https://m.media-amazon.com/images/M/MV5BOWE4ZDdhNmMtNzE5ZC00NzExLTlhNGMtY2ZhYjYzODEzODA1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
113	It's a Wonderful Life	1946	PG	130	8.6	An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.	89.0	117	405801	NaN	https://m.media-amazon.com/images/M/MV5BZjc4NDZhZWMtNGEzYS00ZWU2LThlM2ItNTA0YzQ0OTExMTE2XkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_UY98_CR0,0,67,98_AL_.jpg
114	Joker	2019	A	122	8.5	In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.	59.0	118	939252	335,451,311	https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
115	Whiplash	2014	A	106	8.5	A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student's potential.	88.0	119	717585	13,092,000	https://m.media-amazon.com/images/M/MV5BOTA5NDZlZGUtMjAxOS00YTRkLTkwYmMtYWQ0NWEwZDZiNjEzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
116	The Intouchables	2011	UA	112	8.5	After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.	57.0	120	760360	13,182,281	https://m.media-amazon.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1_UX67_CR0,0,67,98_AL_.jpg
117	The Prestige	2006	U	130	8.5	After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.	66.0	87	1190259	53,089,891	https://m.media-amazon.com/images/M/MV5BMjA4NDI0MTIxNF5BMl5BanBnXkFtZTYwNTM0MzY2._V1_UX67_CR0,0,67,98_AL_.jpg
118	The Departed	2006	A	151	8.5	An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.	85.0	100	1189773	132,384,315	https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_UX67_CR0,0,67,98_AL_.jpg
119	The Pianist	2002	R	150	8.5	A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.	85.0	123	729603	32,572,577	https://m.media-amazon.com/images/M/MV5BOWRiZDIxZjktMTA1NC00MDQ2LWEzMjUtMTliZmY3NjQ3ODJiXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY98_CR2,0,67,98_AL_.jpg
120	Gladiator	2000	UA	155	8.5	A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.	67.0	124	1341460	187,705,427	https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
121	American History X	1998	R	119	8.5	A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.	62.0	125	1034705	6,719,864	https://m.media-amazon.com/images/M/MV5BZjA0MTM4MTQtNzY5MC00NzY3LWI1ZTgtYzcxMjkyMzU4MDZiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX67_CR0,0,67,98_AL_.jpg
122	The Usual Suspects	1995	A	106	8.5	A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.	77.0	126	991208	23,341,568	https://m.media-amazon.com/images/M/MV5BYTViNjMyNmUtNDFkNC00ZDRlLThmMDUtZDU2YWE4NGI2ZjVmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
123	Léon	1994	A	110	8.5	Mathilda, a 12-year-old girl, is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin's trade.	64.0	127	1035236	19,501,238	https://m.media-amazon.com/images/M/MV5BODllNWE0MmEtYjUwZi00ZjY3LThmNmQtZjZlMjI2YTZjYmQ0XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX67_CR0,0,67,98_AL_.jpg
124	The Lion King	1994	U	88	8.5	Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.	88.0	128	942045	422,783,777	https://m.media-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_UX67_CR0,0,67,98_AL_.jpg
125	Terminator 2: Judgment Day	1991	U	137	8.5	A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.	75.0	129	995506	204,843,350	https://m.media-amazon.com/images/M/MV5BMGU2NzRmZjUtOGUxYS00ZjdjLWEwZWItY2NlM2JhNjkxNTFmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
126	Nuovo Cinema Paradiso	1988	U	155	8.5	A filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinema's projectionist.	80.0	130	230763	11,990,401	https://m.media-amazon.com/images/M/MV5BM2FhYjEyYmYtMDI1Yy00YTdlLWI2NWQtYmEzNzAxOGY1NjY2XkEyXkFqcGdeQXVyNTA3NTIyNDg@._V1_UX67_CR0,0,67,98_AL_.jpg
127	Hotaru no haka	1988	U	89	8.5	A young boy and his little sister struggle to survive in Japan during World War II.	94.0	131	235231	NaN	https://m.media-amazon.com/images/M/MV5BZmY2NjUzNDQtNTgxNC00M2Q4LTljOWQtMjNjNDBjNWUxNmJlXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
128	Back to the Future	1985	U	116	8.5	Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.	87.0	96	1058081	210,609,762	https://m.media-amazon.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
129	Once Upon a Time in the West	1968	U	165	8.5	A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.	80.0	97	302844	5,321,508	https://m.media-amazon.com/images/M/MV5BZGI5MjBmYzYtMzJhZi00NGI1LTk3MzItYjBjMzcxM2U3MDdiXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
130	Psycho	1960	A	109	8.5	A Phoenix secretary embezzles $40,000 from her employer's client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.	97.0	134	604211	32,000,000	https://m.media-amazon.com/images/M/MV5BNTQwNDM1YzItNDAxZC00NWY2LTk0M2UtNDIwNWI5OGUyNWUxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
131	Casablanca	1942	U	102	8.5	A cynical expatriate American cafe owner struggles to decide whether or not to help his former lover and her fugitive husband escape the Nazis in French Morocco.	100.0	135	522093	1,024,560	https://m.media-amazon.com/images/M/MV5BY2IzZGY2YmEtYzljNS00NTM5LTgwMzUtMzM1NjQ4NGI0OTk0XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX67_CR0,0,67,98_AL_.jpg
132	Modern Times	1936	G	87	8.5	The Tramp struggles to live in modern industrial society with the help of a young homeless woman.	96.0	136	217881	163,245	https://m.media-amazon.com/images/M/MV5BYjJiZjMzYzktNjU0NS00OTkxLWEwYzItYzdhYWJjN2QzMTRlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
133	City Lights	1931	G	87	8.5	With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.	99.0	136	167839	19,181	https://m.media-amazon.com/images/M/MV5BY2I4MmM1N2EtM2YzOS00OWUzLTkzYzctNDc5NDg2N2IyODJmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
134	Capharnaüm	2018	A	126	8.4	While serving a five-year sentence for a violent crime, a 12-year-old boy sues his parents for neglect.	75.0	138	62635	1,661,096	https://m.media-amazon.com/images/M/MV5BMmExNzU2ZWMtYzUwYi00YmM2LTkxZTQtNmVhNjY0NTMyMWI2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
135	Ayla: The Daughter of War	2017	NaN	125	8.4	In 1950, amid-st the ravages of the Korean War, Sergeant Süleyman stumbles upon a half-frozen little girl, with no parents and no help in sight. Frantic, scared and on the verge of death, ...                See full summary »	NaN	139	34112	NaN	https://m.media-amazon.com/images/M/MV5BNWJhMDlmZGUtYzcxNS00NDRiLWIwNjktNDY1Mjg3ZjBkYzY0XkEyXkFqcGdeQXVyMTU4MjUwMjI@._V1_UY98_CR2,0,67,98_AL_.jpg
136	Vikram Vedha	2017	UA	147	8.4	Vikram, a no-nonsense police officer, accompanied by Simon, his partner, is on the hunt to capture Vedha, a smuggler and a murderer. Vedha tries to change Vikram's life, which leads to a conflict.	NaN	140	28401	NaN	https://m.media-amazon.com/images/M/MV5BY2FiMTFmMzMtZDI2ZC00NDQyLWExYTUtOWNmZWM1ZDg5YjVjXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_UX67_CR0,0,67,98_AL_.jpg
137	Kimi no na wa.	2016	U	106	8.4	Two strangers find themselves linked in a bizarre way. When a connection forms, will distance be the only thing to keep them apart?	79.0	141	194838	5,017,246	https://m.media-amazon.com/images/M/MV5BODRmZDVmNzUtZDA4ZC00NjhkLWI2M2UtN2M0ZDIzNDcxYThjL2ltYWdlXkEyXkFqcGdeQXVyNTk0MzMzODA@._V1_UX67_CR0,0,67,98_AL_.jpg
138	Dangal	2016	U	161	8.4	Former wrestler Mahavir Singh Phogat and his two wrestler daughters struggle towards glory at the Commonwealth Games in the face of societal oppression.	NaN	142	156479	12,391,761	https://m.media-amazon.com/images/M/MV5BMTQ4MzQzMzM2Nl5BMl5BanBnXkFtZTgwMTQ1NzU3MDI@._V1_UY98_CR1,0,67,98_AL_.jpg
139	Spider-Man: Into the Spider-Verse	2018	U	117	8.4	Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.	87.0	143	375110	190,241,310	https://m.media-amazon.com/images/M/MV5BMjMwNDkxMTgzOF5BMl5BanBnXkFtZTgwNTkwNTQ3NjM@._V1_UX67_CR0,0,67,98_AL_.jpg
140	Avengers: Endgame	2019	UA	181	8.4	After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.	78.0	144	809955	858,373,000	https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
141	Avengers: Infinity War	2018	UA	149	8.4	The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.	68.0	144	834477	678,815,482	https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_UX67_CR0,0,67,98_AL_.jpg
142	Coco	2017	U	105	8.4	Aspiring musician Miguel, confronted with his family's ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.	81.0	146	384171	209,726,015	https://m.media-amazon.com/images/M/MV5BYjQ5NjM0Y2YtNjZkNC00ZDhkLWJjMWItN2QyNzFkMDE3ZjAxXkEyXkFqcGdeQXVyODIxMzk5NjA@._V1_UY98_CR1,0,67,98_AL_.jpg
143	Django Unchained	2012	A	165	8.4	With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.	81.0	91	1357682	162,805,434	https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_UX67_CR0,0,67,98_AL_.jpg
144	The Dark Knight Rises	2012	UA	164	8.4	Eight years after the Joker's reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane.	78.0	87	1516346	448,139,099	https://m.media-amazon.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_UX67_CR0,0,67,98_AL_.jpg
145	3 Idiots	2009	UA	170	8.4	Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them "idiots".	67.0	149	344445	6,532,908	https://m.media-amazon.com/images/M/MV5BNTkyOGVjMGEtNmQzZi00NzFlLTlhOWQtODYyMDc2ZGJmYzFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY98_CR0,0,67,98_AL_.jpg
146	Taare Zameen Par	2007	U	165	8.4	An eight-year-old boy is thought to be a lazy trouble-maker, until the new art teacher has the patience and compassion to discover the real problem behind his struggles in school.	NaN	150	168895	1,223,869	https://m.media-amazon.com/images/M/MV5BMDhjZWViN2MtNzgxOS00NmI4LThiZDQtZDI3MzM4MDE4NTc0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR1,0,67,98_AL_.jpg
147	WALL·E	2008	U	98	8.4	In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.	95.0	151	999790	223,808,164	https://m.media-amazon.com/images/M/MV5BMjExMTg5OTU0NF5BMl5BanBnXkFtZTcwMjMxMzMzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
148	The Lives of Others	2006	A	137	8.4	In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.	89.0	152	358685	11,286,112	https://m.media-amazon.com/images/M/MV5BOThkM2EzYmMtNDE3NS00NjlhLTg4YzktYTdhNzgyOWY3ZDYzXkEyXkFqcGdeQXVyNzQzNzQxNzI@._V1_UY98_CR1,0,67,98_AL_.jpg
149	Oldeuboi	2003	A	101	8.4	After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.	77.0	153	515451	707,481	https://m.media-amazon.com/images/M/MV5BMTI3NTQyMzU5M15BMl5BanBnXkFtZTcwMTM2MjgyMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
150	Memento	2000	UA	113	8.4	A man with short-term memory loss attempts to track down his wife's murderer.	80.0	87	1125712	25,544,867	https://m.media-amazon.com/images/M/MV5BZTcyNjk1MjgtOWI3Mi00YzQwLWI5MTktMzY4ZmI2NDAyNzYzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
151	Mononoke-hime	1997	U	134	8.4	On a journey to find the cure for a Tatarigami's curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.	76.0	108	343171	2,375,308	https://m.media-amazon.com/images/M/MV5BNGIzY2IzODQtNThmMi00ZDE4LWI5YzAtNzNlZTM1ZjYyYjUyXkEyXkFqcGdeQXVyODEzNjM5OTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
152	Once Upon a Time in America	1984	A	229	8.4	A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.	NaN	97	311365	5,321,508	https://m.media-amazon.com/images/M/MV5BMGFkNWI4MTMtNGQ0OC00MWVmLTk3MTktOGYxN2Y2YWVkZWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
153	Raiders of the Lost Ark	1981	A	115	8.4	In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler's Nazis can obtain its awesome powers.	85.0	92	884112	248,159,971	https://m.media-amazon.com/images/M/MV5BMjA0ODEzMTc1Nl5BMl5BanBnXkFtZTcwODM2MjAxNA@@._V1_UX67_CR0,0,67,98_AL_.jpg
154	The Shining	1980	A	146	8.4	A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.	66.0	158	898237	44,017,374	https://m.media-amazon.com/images/M/MV5BZWFlYmY2MGEtZjVkYS00YzU4LTg0YjQtYzY1ZGE3NTA5NGQxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
155	Apocalypse Now	1979	R	147	8.4	A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.	94.0	86	606398	83,471,511	https://m.media-amazon.com/images/M/MV5BMDdhODg0MjYtYzBiOS00ZmI5LWEwZGYtZDEyNDU4MmQyNzFkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
156	Alien	1979	R	117	8.4	After a space merchant vessel receives an unknown transmission as a distress call, one of the crew is attacked by a mysterious life form and they soon realize that its life cycle has merely begun.	89.0	124	787806	78,900,000	https://m.media-amazon.com/images/M/MV5BMmQ2MmU3NzktZjAxOC00ZDZhLTk4YzEtMDMyMzcxY2IwMDAyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
157	Anand	1971	U	122	8.4	The story of a terminally ill man who wishes to live life to the fullest before the inevitable occurs, as told by his best friend.	NaN	161	30273	NaN	https://m.media-amazon.com/images/M/MV5BYmYzNmM2MDctZGY3Yi00NjRiLWIxZjctYjgzYTcxYTNhYTMyXkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_UY98_CR1,0,67,98_AL_.jpg
158	Tengoku to jigoku	1963	NaN	143	8.4	An executive of a shoe company becomes a victim of extortion when his chauffeur's son is kidnapped and held for ransom.	NaN	116	34357	NaN	https://m.media-amazon.com/images/M/MV5BOTI4NTNhZDMtMWNkZi00MTRmLWJmZDQtMmJkMGVmZTEzODlhXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
159	Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb	1964	A	95	8.4	An insane general triggers a path to nuclear holocaust that a War Room full of politicians and generals frantically tries to stop.	97.0	158	450474	275,902	https://m.media-amazon.com/images/M/MV5BZWI3ZTMxNjctMjdlNS00NmUwLWFiM2YtZDUyY2I3N2MxYTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
160	Witness for the Prosecution	1957	U	116	8.4	A veteran British barrister must defend his client in a murder trial that has surprise after surprise.	NaN	164	108862	8,175,000	https://m.media-amazon.com/images/M/MV5BNDQwODU5OWYtNDcyNi00MDQ1LThiOGMtZDkwNWJiM2Y3MDg0XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
161	Paths of Glory	1957	A	88	8.4	After refusing to attack an enemy position, a general accuses the soldiers of cowardice and their commanding officer must defend them.	90.0	158	178092	NaN	https://m.media-amazon.com/images/M/MV5BNjViMmRkOTEtM2ViOS00ODg0LWJhYWEtNTBlOGQxNDczOGY3XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UY98_CR2,0,67,98_AL_.jpg
162	Rear Window	1954	U	112	8.4	A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.	100.0	134	444074	36,764,313	https://m.media-amazon.com/images/M/MV5BNGUxYWM3M2MtMGM3Mi00ZmRiLWE0NGQtZjE5ODI2OTJhNTU0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
163	Sunset Blvd.	1950	Passed	110	8.4	A screenwriter develops a dangerous relationship with a faded film star determined to make a triumphant return.	NaN	164	201632	NaN	https://m.media-amazon.com/images/M/MV5BMTU0NTkyNzYwMF5BMl5BanBnXkFtZTgwMDU0NDk5MTI@._V1_UX67_CR0,0,67,98_AL_.jpg
164	The Great Dictator	1940	Passed	125	8.4	Dictator Adenoid Hynkel tries to expand his empire while a poor Jewish barber tries to avoid persecution from Hynkel's regime.	NaN	136	203150	288,475	https://m.media-amazon.com/images/M/MV5BMmExYWJjNTktNGUyZS00ODhmLTkxYzAtNWIzOGEyMGNiMmUwXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
165	1917	2019	R	119	8.3	April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.	78.0	169	425844	159,227,644	https://m.media-amazon.com/images/M/MV5BOTdmNTFjNDEtNzg0My00ZjkxLTg1ZDAtZTdkMDc2ZmFiNWQ1XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_UX67_CR0,0,67,98_AL_.jpg
166	Tumbbad	2018	A	104	8.3	A mythological story about a goddess who created the entire universe. The plot revolves around the consequences when humans build a temple for her first-born.	NaN	170	27793	NaN	https://m.media-amazon.com/images/M/MV5BYmQxNmU4ZjgtYzE5Mi00ZDlhLTlhOTctMzJkNjk2ZGUyZGEwXkEyXkFqcGdeQXVyMzgxMDA0Nzk@._V1_UY98_CR1,0,67,98_AL_.jpg
167	Andhadhun	2018	UA	139	8.3	A series of mysterious events change the life of a blind pianist, who must now report a crime that he should technically know nothing of.	NaN	171	71875	1,373,943	https://m.media-amazon.com/images/M/MV5BZWZhMjhhZmYtOTIzOC00MGYzLWI1OGYtM2ZkN2IxNTI4ZWI3XkEyXkFqcGdeQXVyNDAzNDk0MTQ@._V1_UY98_CR0,0,67,98_AL_.jpg
168	Drishyam	2013	U	160	8.3	A man goes to extreme lengths to save his family from punishment after the family commits an accidental crime.	NaN	172	30722	NaN	https://m.media-amazon.com/images/M/MV5BYmY3MzYwMGUtOWMxYS00OGVhLWFjNmUtYzlkNGVmY2ZkMjA3XkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_UY98_CR4,0,67,98_AL_.jpg
169	Jagten	2012	R	115	8.3	A teacher lives a lonely life, all the while struggling over his son's custody. His life slowly gets better as he finds love and receives good news from his son, but his new luck is about to be brutally shattered by an innocent little lie.	77.0	173	281623	687,185	https://m.media-amazon.com/images/M/MV5BMTg2NDg3ODg4NF5BMl5BanBnXkFtZTcwNzk3NTc3Nw@@._V1_UY98_CR1,0,67,98_AL_.jpg
170	Jodaeiye Nader az Simin	2011	PG-13	123	8.3	A married couple are faced with a difficult decision - to improve the life of their child by moving to another country or to stay in Iran and look after a deteriorating parent who has Alzheimer's disease.	95.0	174	220002	7,098,492	https://m.media-amazon.com/images/M/MV5BN2JmMjViMjMtZTM5Mi00ZGZkLTk5YzctZDg5MjFjZDE4NjNkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
171	Incendies	2010	R	131	8.3	Twins journey to the Middle East to discover their family history and fulfill their mother's last wishes.	80.0	175	150023	6,857,096	https://m.media-amazon.com/images/M/MV5BMWE3MGYzZjktY2Q5Mi00Y2NiLWIyYWUtMmIyNzA3YmZlMGFhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
172	Miracle in cell NO.7	2019	TV-14	132	8.3	A story of love between a mentally-ill father who was wrongly accused of murder and his lovely six years old daughter. The prison would be their home. Based on the 2013 Korean movie 7-beon-bang-ui seon-mul (2013).	NaN	176	33935	NaN	https://m.media-amazon.com/images/M/MV5BOGE3N2QxN2YtM2ZlNS00MWIyLWE1NDAtYWFlN2FiYjY1MjczXkEyXkFqcGdeQXVyOTUwNzc0ODc@._V1_UY98_CR1,0,67,98_AL_.jpg
173	Babam ve Oglum	2005	NaN	112	8.3	The family of a left-wing journalist is torn apart after the military coup of Turkey in 1980.	NaN	177	78925	NaN	https://m.media-amazon.com/images/M/MV5BNjAzMzEwYzctNjc1MC00Nzg5LWFmMGItMTgzYmMyNTY2OTQ4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY98_CR0,0,67,98_AL_.jpg
174	Inglourious Basterds	2009	A	153	8.3	In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner's vengeful plans for the same.	69.0	91	1267869	120,540,719	https://m.media-amazon.com/images/M/MV5BOTJiNDEzOWYtMTVjOC00ZjlmLWE0NGMtZmE1OWVmZDQ2OWJhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX67_CR0,0,67,98_AL_.jpg
175	Eternal Sunshine of the Spotless Mind	2004	UA	108	8.3	When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories.	89.0	179	911664	34,400,301	https://m.media-amazon.com/images/M/MV5BMTY4NzcwODg3Nl5BMl5BanBnXkFtZTcwNTEwOTMyMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
176	Amélie	2001	U	122	8.3	Amélie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.	69.0	180	703810	33,225,499	https://m.media-amazon.com/images/M/MV5BNDg4NjM1YjMtYmNhZC00MjM0LWFiZmYtNGY1YjA3MzZmODc5XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
177	Snatch	2000	UA	104	8.3	Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers and supposedly Jewish jewelers fight to track down a priceless stolen diamond.	55.0	181	782001	30,328,156	https://m.media-amazon.com/images/M/MV5BMTA2NDYxOGYtYjU1Mi00Y2QzLTgxMTQtMWI1MGI0ZGQ5MmU4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UY98_CR0,0,67,98_AL_.jpg
178	Requiem for a Dream	2000	A	102	8.3	The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.	68.0	182	766870	3,635,482	https://m.media-amazon.com/images/M/MV5BOTdiNzJlOWUtNWMwNS00NmFlLWI0YTEtZmI3YjIzZWUyY2Y3XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
179	American Beauty	1999	UA	122	8.3	A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter's best friend.	84.0	169	1069738	130,096,601	https://m.media-amazon.com/images/M/MV5BNTBmZWJkNjctNDhiNC00MGE2LWEwOTctZTk5OGVhMWMyNmVhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
180	Good Will Hunting	1997	U	126	8.3	Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.	70.0	184	861606	138,433,435	https://m.media-amazon.com/images/M/MV5BOTI0MzcxMTYtZDVkMy00NjY1LTgyMTYtZmUxN2M3NmQ2NWJhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
181	Bacheha-Ye aseman	1997	PG	89	8.3	After a boy loses his sister's pair of shoes, he goes on a series of adventures in order to find them. When he can't, he tries a new way to "win" a new pair.	77.0	185	65341	933,933	https://m.media-amazon.com/images/M/MV5BZTYwZWQ4ZTQtZWU0MS00N2YwLWEzMDItZWFkZWY0MWVjODVhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
182	Toy Story	1995	U	81	8.3	A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy's room.	95.0	186	887429	191,796,233	https://m.media-amazon.com/images/M/MV5BMDU2ZWJlMjktMTRhMy00ZTA5LWEzNDgtYmNmZTEwZTViZWJkXkEyXkFqcGdeQXVyNDQ2OTk4MzI@._V1_UX67_CR0,0,67,98_AL_.jpg
183	Braveheart	1995	A	178	8.3	Scottish warrior William Wallace leads his countrymen in a rebellion to free his homeland from the tyranny of King Edward I of England.	68.0	187	959181	75,600,000	https://m.media-amazon.com/images/M/MV5BMzkzMmU0YTYtOWM3My00YzBmLWI0YzctOGYyNTkwMWE5MTJkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
184	Reservoir Dogs	1992	R	99	8.3	When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.	79.0	91	918562	2,832,029	https://m.media-amazon.com/images/M/MV5BZmExNmEwYWItYmQzOS00YjA5LTk2MjktZjEyZDE1Y2QxNjA1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
185	Full Metal Jacket	1987	UA	116	8.3	A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow recruits from their brutal boot camp training to the bloody street fighting in Hue.	76.0	158	675146	46,357,676	https://m.media-amazon.com/images/M/MV5BNzkxODk0NjEtYjc4Mi00ZDI0LTgyYjEtYzc1NDkxY2YzYTgyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
186	Idi i smotri	1985	A	142	8.3	After finding an old rifle, a young boy joins the Soviet resistance movement against ruthless German forces and experiences the horrors of World War II.	NaN	190	59056	NaN	https://m.media-amazon.com/images/M/MV5BODM4Njg0NTAtYjI5Ny00ZjAxLTkwNmItZTMxMWU5M2U3M2RjXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
187	Aliens	1986	U	137	8.3	Fifty-seven years after surviving an apocalyptic attack aboard her space vessel by merciless space creatures, Officer Ripley awakens from hyper-sleep and tries to warn anyone who will listen about the predators.	84.0	129	652719	85,160,248	https://m.media-amazon.com/images/M/MV5BZGU2OGY5ZTYtMWNhYy00NjZiLWI0NjUtZmNhY2JhNDRmODU3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
188	Amadeus	1984	R	160	8.3	The life, success and troubles of Wolfgang Amadeus Mozart, as told by Antonio Salieri, the contemporaneous composer who was insanely jealous of Mozart's talent and claimed to have murdered him.	88.0	102	369007	51,973,029	https://m.media-amazon.com/images/M/MV5BNWJlNzUzNGMtYTAwMS00ZjI2LWFmNWQtODcxNWUxODA5YmU1XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX67_CR0,0,67,98_AL_.jpg
189	Scarface	1983	A	170	8.3	In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.	65.0	193	740911	45,598,982	https://m.media-amazon.com/images/M/MV5BNjdjNGQ4NDEtNTEwYS00MTgxLTliYzQtYzE2ZDRiZjFhZmNlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
190	Star Wars: Episode VI - Return of the Jedi	1983	U	131	8.3	After a daring mission to rescue Han Solo from Jabba the Hutt, the Rebels dispatch to Endor to destroy the second Death Star. Meanwhile, Luke struggles to help Darth Vader back from the dark side without falling into the Emperor's trap.	58.0	194	950470	309,125,409	https://m.media-amazon.com/images/M/MV5BOWZlMjFiYzgtMTUzNC00Y2IzLTk1NTMtZmNhMTczNTk0ODk1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
191	Das Boot	1981	R	149	8.3	The claustrophobic world of a WWII German U-boat; boredom, filth and sheer terror.	86.0	195	231855	11,487,676	https://m.media-amazon.com/images/M/MV5BOGZhZDIzNWMtNjkxMS00MDQ1LThkMTYtZWQzYWU3MWMxMGU5XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
192	Taxi Driver	1976	A	114	8.3	A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute.	94.0	100	724636	28,262,574	https://m.media-amazon.com/images/M/MV5BM2M1MmVhNDgtNmI0YS00ZDNmLTkyNjctNTJiYTQ2N2NmYzc2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
193	The Sting	1973	U	129	8.3	Two grifters team up to pull off the ultimate con.	83.0	197	241513	159,600,000	https://m.media-amazon.com/images/M/MV5BNGU3NjQ4YTMtZGJjOS00YTQ3LThmNmItMTI5MDE2ODI3NzY3XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX67_CR0,0,67,98_AL_.jpg
194	A Clockwork Orange	1971	A	136	8.3	In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesn't go as planned.	77.0	158	757904	6,207,725	https://m.media-amazon.com/images/M/MV5BMTY3MjM1Mzc4N15BMl5BanBnXkFtZTgwODM0NzAxMDE@._V1_UX67_CR0,0,67,98_AL_.jpg
195	2001: A Space Odyssey	1968	U	149	8.3	After discovering a mysterious artifact buried beneath the Lunar surface, mankind sets off on a quest to find its origins with help from intelligent supercomputer H.A.L. 9000.	84.0	158	603517	56,954,992	https://m.media-amazon.com/images/M/MV5BMmNlYzRiNDctZWNhMi00MzI4LThkZTctMTUzMmZkMmFmNThmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
196	Per qualche dollaro in più	1965	U	132	8.3	Two bounty hunters with the same intentions team up to track down a Western outlaw.	74.0	97	232772	15,000,000	https://m.media-amazon.com/images/M/MV5BNWM1NmYyM2ItMTFhNy00NDU0LThlYWUtYjQyYTJmOTY0ZmM0XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
197	Lawrence of Arabia	1962	U	228	8.3	The story of T.E. Lawrence, the English officer who successfully united and led the diverse, often warring, Arab tribes during World War I in order to fight the Turks.	100.0	201	268085	44,824,144	https://m.media-amazon.com/images/M/MV5BYWY5ZjhjNGYtZmI2Ny00ODM0LWFkNzgtZmI1YzA2N2MxMzA0XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UY98_CR0,0,67,98_AL_.jpg
198	The Apartment	1960	U	125	8.3	A man tries to rise in his company by letting its executives use his apartment for trysts, but complications and a romance of his own ensue.	94.0	164	164363	18,600,000	https://m.media-amazon.com/images/M/MV5BNzkwODFjNzItMmMwNi00MTU5LWE2MzktM2M4ZDczZGM1MmViXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UX67_CR0,0,67,98_AL_.jpg
199	North by Northwest	1959	U	136	8.3	A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies.	98.0	134	299198	13,275,000	https://m.media-amazon.com/images/M/MV5BZDA3NDExMTUtMDlhOC00MmQ5LWExZGUtYmI1NGVlZWI4OWNiXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
200	Vertigo	1958	A	128	8.3	A former police detective juggles wrestling with his personal demons and becoming obsessed with a hauntingly beautiful woman.	100.0	134	364368	3,200,000	https://m.media-amazon.com/images/M/MV5BYTE4ODEwZDUtNDFjOC00NjAxLWEzYTQtYTI1NGVmZmFlNjdiL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
201	Singin' in the Rain	1952	G	103	8.3	A silent film production company and cast make a difficult transition to sound.	99.0	205	218957	8,819,028	https://m.media-amazon.com/images/M/MV5BZDRjNGViMjQtOThlMi00MTA3LThkYzQtNzJkYjBkMGE0YzE1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UY98_CR0,0,67,98_AL_.jpg
202	Ikiru	1952	NaN	143	8.3	A bureaucrat tries to find a meaning in his life after he discovers he has terminal cancer.	NaN	116	68463	55,240	https://m.media-amazon.com/images/M/MV5BZmM0NGY3Y2MtMTA1YS00YmQzLTk2YTctYWFhMDkzMDRjZWQzXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
203	Ladri di biciclette	1948	NaN	89	8.3	In post-war Italy, a working-class man's bicycle is stolen. He and his son set out to find it.	NaN	207	146427	332,930	https://m.media-amazon.com/images/M/MV5BNmI1ODdjODctMDlmMC00ZWViLWI5MzYtYzRhNDdjYmM3MzFjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR0,0,67,98_AL_.jpg
204	Double Indemnity	1944	Passed	107	8.3	An insurance representative lets himself be talked by a seductive housewife into a murder/insurance fraud scheme that arouses the suspicion of an insurance investigator.	95.0	164	143525	5,720,000	https://m.media-amazon.com/images/M/MV5BOTdlNjgyZGUtOTczYi00MDdhLTljZmMtYTEwZmRiOWFkYjRhXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UX67_CR0,0,67,98_AL_.jpg
205	Citizen Kane	1941	UA	119	8.3	Following the death of publishing tycoon Charles Foster Kane, reporters scramble to uncover the meaning of his final utterance; 'Rosebud'.	100.0	209	403351	1,585,634	https://m.media-amazon.com/images/M/MV5BYjBiOTYxZWItMzdiZi00NjlkLWIzZTYtYmFhZjhiMTljOTdkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
206	M - Eine Stadt sucht einen Mörder	1931	Passed	117	8.3	When the police in a German city are unable to catch a child-murderer, other criminals join in the manhunt.	NaN	210	143434	28,877	https://m.media-amazon.com/images/M/MV5BODA4ODk3OTEzMF5BMl5BanBnXkFtZTgwMTQ2ODMwMzE@._V1_UX67_CR0,0,67,98_AL_.jpg
207	Metropolis	1927	NaN	153	8.3	In a futuristic city sharply divided between the working class and the city planners, the son of the city's mastermind falls in love with a working-class prophet who predicts the coming of a savior to mediate their differences.	98.0	210	159992	1,236,166	https://m.media-amazon.com/images/M/MV5BMTg5YWIyMWUtZDY5My00Zjc1LTljOTctYmI0MWRmY2M2NmRkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
208	The Kid	1921	Passed	68	8.3	The Tramp cares for an abandoned child, but events put that relationship in jeopardy.	NaN	136	113314	5,450,000	https://m.media-amazon.com/images/M/MV5BZjhhMThhNDItNTY2MC00MmU1LTliNDEtNDdhZjdlNTY5ZDQ1XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
209	Chhichhore	2019	UA	143	8.2	A tragic incident forces Anirudh, a middle-aged man, to take a trip down memory lane and reminisce his college days along with his friends, who were labelled as losers.	NaN	142	33893	898,575	https://m.media-amazon.com/images/M/MV5BYjg2ZDI2YTYtN2EwYi00YWI5LTgyMWQtMWFkYmE3NmJkOGVhXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR0,0,67,98_AL_.jpg
210	Uri: The Surgical Strike	2018	UA	138	8.2	Indian army special forces execute a covert operation, avenging the killing of fellow army men at their base by a terrorist group.	NaN	214	43444	4,186,168	https://m.media-amazon.com/images/M/MV5BMWU4ZjNlNTQtOGE2MS00NDI0LWFlYjMtMmY3ZWVkMjJkNGRmXkEyXkFqcGdeQXVyNjE1OTQ0NjA@._V1_UY98_CR0,0,67,98_AL_.jpg
211	K.G.F: Chapter 1	2018	UA	156	8.2	In the 1970s, a fierce rebel rises against brutal oppression and becomes the symbol of hope to legions of downtrodden people.	NaN	215	36680	NaN	https://m.media-amazon.com/images/M/MV5BZDNlNzBjMGUtYTA0Yy00OTI2LWJmZjMtODliYmUyYTI0OGFmXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_UX67_CR0,0,67,98_AL_.jpg
212	Green Book	2018	UA	130	8.2	A working-class Italian-American bouncer becomes the driver of an African-American classical pianist on a tour of venues through the 1960s American South.	69.0	216	377884	85,080,171	https://m.media-amazon.com/images/M/MV5BYzIzYmJlYTYtNGNiYy00N2EwLTk4ZjItMGYyZTJiOTVkM2RlXkEyXkFqcGdeQXVyODY1NDk1NjE@._V1_UX67_CR0,0,67,98_AL_.jpg
213	Three Billboards Outside Ebbing, Missouri	2017	A	115	8.2	A mother personally challenges the local authorities to solve her daughter's murder when they fail to catch the culprit.	88.0	217	432610	54,513,740	https://m.media-amazon.com/images/M/MV5BMjI0ODcxNzM1N15BMl5BanBnXkFtZTgwMzIwMTEwNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
214	Talvar	2015	UA	132	8.2	An experienced investigator confronts several conflicting theories about the perpetrators of a violent double homicide.	NaN	218	31142	342,370	https://m.media-amazon.com/images/M/MV5BMTYzODg0Mjc4M15BMl5BanBnXkFtZTgwNzY4Mzc3NjE@._V1_UY98_CR2,0,67,98_AL_.jpg
215	Baahubali 2: The Conclusion	2017	UA	167	8.2	When Shiva, the son of Bahubali, learns about his heritage, he begins to look for answers. His story is juxtaposed with past events that unfolded in the Mahishmati Kingdom.	NaN	219	75348	20,186,659	https://m.media-amazon.com/images/M/MV5BOGNlNmRkMjctNDgxMC00NzFhLWIzY2YtZDk3ZDE0NWZhZDBlXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_UX67_CR0,0,67,98_AL_.jpg
216	Klaus	2019	PG	96	8.2	A simple act of kindness always sparks another, even in a frozen, faraway place. When Smeerensburg's new postman, Jesper, befriends toymaker Klaus, their gifts melt an age-old feud and deliver a sleigh full of holiday traditions.	65.0	220	104761	NaN	https://m.media-amazon.com/images/M/MV5BMWYwOThjM2ItZGYxNy00NTQwLWFlZWEtM2MzM2Q5MmY3NDU5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
217	Drishyam	2015	UA	163	8.2	Desperate measures are taken by a man who tries to save his family from the dark side of the law, after they commit an unexpected crime.	NaN	221	70367	739,478	https://m.media-amazon.com/images/M/MV5BYmJhZmJlYTItZmZlNy00MGY0LTg0ZGMtNWFkYWU5NTA1YTNhXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR0,0,67,98_AL_.jpg
218	Queen	2013	UA	146	8.2	A Delhi girl from a traditional family sets out on a solo honeymoon after her marriage gets cancelled.	NaN	222	60701	1,429,534	https://m.media-amazon.com/images/M/MV5BNWYyOWRlOWItZWM5MS00ZjJkLWI0MTUtYTE3NTI5MDAwYjgyXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR0,0,67,98_AL_.jpg
219	Mandariinid	2013	NaN	87	8.2	In 1992, war rages in Abkhazia, a breakaway region of Georgia. An Estonian man Ivo has decided to stay behind and harvest his crops of tangerines. In a bloody conflict at his door, a wounded man is left behind, and Ivo takes him in.	73.0	223	40382	144,501	https://m.media-amazon.com/images/M/MV5BMTgwNzA3MDQzOV5BMl5BanBnXkFtZTgwNTE5MDE5NDE@._V1_UX67_CR0,0,67,98_AL_.jpg
220	Bhaag Milkha Bhaag	2013	U	186	8.2	The truth behind the ascension of Milkha Singh who was scarred because of the India-Pakistan partition.	NaN	224	61137	1,626,289	https://m.media-amazon.com/images/M/MV5BMTY1Nzg4MjcwN15BMl5BanBnXkFtZTcwOTc1NTk1OQ@@._V1_UY98_CR0,0,67,98_AL_.jpg
221	Gangs of Wasseypur	2012	A	321	8.2	A clash between Sultan and Shahid Khan leads to the expulsion of Khan from Wasseypur, and ignites a deadly blood feud spanning three generations.	89.0	225	82365	NaN	https://m.media-amazon.com/images/M/MV5BMTc5NjY4MjUwNF5BMl5BanBnXkFtZTgwODM3NzM5MzE@._V1_UX67_CR0,0,67,98_AL_.jpg
222	Udaan	2010	UA	134	8.2	Expelled from his school, a 16-year old boy returns home to his abusive and oppressive father.	NaN	226	42341	7,461	https://m.media-amazon.com/images/M/MV5BNzgxMzExMzUwNV5BMl5BanBnXkFtZTcwMDc2MjUwNA@@._V1_UY98_CR0,0,67,98_AL_.jpg
223	Paan Singh Tomar	2012	UA	135	8.2	The story of Paan Singh Tomar, an Indian athlete and seven-time national steeplechase champion who becomes one of the most feared dacoits in Chambal Valley after his retirement.	NaN	227	33237	39,567	https://m.media-amazon.com/images/M/MV5BNTgwODM5OTMzN15BMl5BanBnXkFtZTcwMTA3NzI1Nw@@._V1_UY98_CR0,0,67,98_AL_.jpg
224	El secreto de sus ojos	2009	R	129	8.2	A retired legal counselor writes a novel hoping to find closure for one of his past unresolved homicide cases and for his unreciprocated love with his superior - both of which still haunt him decades later.	80.0	228	193217	6,391,436	https://m.media-amazon.com/images/M/MV5BY2FhZGI5M2QtZWFiZS00NjkwLWE4NWQtMzg3ZDZjNjdkYTJiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
225	Warrior	2011	UA	140	8.2	The youngest son of an alcoholic former boxer returns home, where he's trained by his father for competition in a mixed martial arts tournament - a path that puts the fighter on a collision course with his estranged, older brother.	71.0	229	435950	13,657,115	https://m.media-amazon.com/images/M/MV5BMTk4ODk5MTMyNV5BMl5BanBnXkFtZTcwMDMyNTg0Ng@@._V1_UX67_CR0,0,67,98_AL_.jpg
226	Shutter Island	2010	A	138	8.2	In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane.	63.0	100	1129894	128,012,934	https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
227	Up	2009	U	96	8.2	78-year-old Carl Fredricksen travels to Paradise Falls in his house equipped with balloons, inadvertently taking a young stowaway.	88.0	231	935507	293,004,164	https://m.media-amazon.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_UX67_CR0,0,67,98_AL_.jpg
228	The Wolf of Wall Street	2013	A	180	8.2	Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.	75.0	100	1187498	116,900,694	https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
229	Chak De! India	2007	U	153	8.2	Kabir Khan is the coach of the Indian Women's National Hockey Team and his dream is to make his all girls team emerge victorious against all odds.	68.0	233	74129	1,113,541	https://m.media-amazon.com/images/M/MV5BMTUzODMyNzk4NV5BMl5BanBnXkFtZTgwNTk1NTYyNTM@._V1_UY98_CR3,0,67,98_AL_.jpg
230	There Will Be Blood	2007	A	158	8.2	A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.	93.0	234	517359	40,222,514	https://m.media-amazon.com/images/M/MV5BMjAxODQ4MDU5NV5BMl5BanBnXkFtZTcwMDU4MjU1MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
231	Pan's Labyrinth	2006	UA	118	8.2	In the Falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.	98.0	235	618623	37,634,615	https://m.media-amazon.com/images/M/MV5BMTU3ODg2NjQ5NF5BMl5BanBnXkFtZTcwMDEwODgzMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
232	Toy Story 3	2010	U	103	8.2	The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it's up to Woody to convince the other toys that they weren't abandoned and to return home.	92.0	146	757032	415,004,880	https://m.media-amazon.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_UY98_CR1,0,67,98_AL_.jpg
233	V for Vendetta	2005	A	132	8.2	In a future British tyranny, a shadowy freedom fighter, known only by the alias of "V", plots to overthrow it with the help of a young woman.	62.0	237	1032749	70,511,035	https://m.media-amazon.com/images/M/MV5BOTI5ODc3NzExNV5BMl5BanBnXkFtZTcwNzYxNzQzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
234	Rang De Basanti	2006	UA	167	8.2	The story of six young Indians who assist an English woman to film a documentary on the freedom fighters from their past, and the events that lead them to relive the long-forgotten saga of freedom.	NaN	224	111937	2,197,331	https://m.media-amazon.com/images/M/MV5BYThmZDA0YmQtMWJhNy00MDQwLTk0Y2YtMDhmZTE5ZjhlNjliXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR1,0,67,98_AL_.jpg
235	Black	2005	U	122	8.2	The cathartic tale of a young woman who can't see, hear or talk and the teacher who brings a ray of light into her dark world.	NaN	239	33354	733,094	https://m.media-amazon.com/images/M/MV5BNTI5MmE5M2UtZjIzYS00M2JjLWIwNDItYTY2ZWNiODBmYTBiXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UY98_CR0,0,67,98_AL_.jpg
236	Batman Begins	2005	UA	140	8.2	After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.	70.0	87	1308302	206,852,432	https://m.media-amazon.com/images/M/MV5BOTY4YjI2N2MtYmFlMC00ZjcyLTg3YjEtMDQyM2ZjYzQ5YWFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
237	Swades: We, the People	2004	U	210	8.2	A successful Indian scientist returns to an Indian village to take his nanny to America with him and in the process rediscovers his roots.	NaN	241	83005	1,223,240	https://m.media-amazon.com/images/M/MV5BYzExOTcwNjYtZTljMC00YTQ2LWI2YjYtNWFlYzQ0YTJhNzJmXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UY98_CR0,0,67,98_AL_.jpg
238	Der Untergang	2004	R	156	8.2	Traudl Junge, the final secretary for Adolf Hitler, tells of the Nazi dictator's final days in his Berlin bunker at the end of WWII.	82.0	242	331308	5,509,040	https://m.media-amazon.com/images/M/MV5BMTU0NTU5NTAyMl5BMl5BanBnXkFtZTYwNzYwMDg2._V1_UX67_CR0,0,67,98_AL_.jpg
239	Hauru no ugoku shiro	2004	U	119	8.2	When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.	80.0	108	333915	4,711,096	https://m.media-amazon.com/images/M/MV5BNmM4YTFmMmItMGE3Yy00MmRkLTlmZGEtMzZlOTQzYjk3MzA2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
240	A Beautiful Mind	2001	UA	135	8.2	After John Nash, a brilliant but asocial mathematician, accepts secret work in cryptography, his life takes a turn for the nightmarish.	72.0	244	848920	170,742,341	https://m.media-amazon.com/images/M/MV5BMzcwYWFkYzktZjAzNC00OGY1LWI4YTgtNzc5MzVjMDVmNjY0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
241	Hera Pheri	2000	U	156	8.2	Three unemployed men look for answers to all their money problems - but when their opportunity arrives, will they know what to do with it?	NaN	245	57057	NaN	https://m.media-amazon.com/images/M/MV5BMGMzZjY2ZWQtZjQxYS00NWY3LThhNjItNWQzNTkzOTllODljXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_UY98_CR1,0,67,98_AL_.jpg
262	Yôjinbô	1961	NaN	110	8.2	A crafty ronin comes to a town divided by two criminal gangs and decides to play them against each other to free the town.	NaN	116	111244	NaN	https://m.media-amazon.com/images/M/MV5BZThiZjAzZjgtNDU3MC00YThhLThjYWUtZGRkYjc2ZWZlOTVjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
242	Lock, Stock and Two Smoking Barrels	1998	A	107	8.2	A botched card game in London triggers four friends, thugs, weed-growers, hard gangsters, loan sharks and debt collectors to collide with each other in a series of unexpected events, all for the sake of weed, cash and two antique shotguns.	66.0	181	535216	3,897,569	https://m.media-amazon.com/images/M/MV5BMTAyN2JmZmEtNjAyMy00NzYwLThmY2MtYWQ3OGNhNjExMmM4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
243	L.A. Confidential	1997	A	138	8.2	As corruption grows in 1950s Los Angeles, three policemen - one strait-laced, one brutal, and one sleazy - investigate a series of murders with their own brand of justice.	90.0	247	531967	64,616,940	https://m.media-amazon.com/images/M/MV5BMDQ2YzEyZGItYWRhOS00MjBmLTkzMDUtMTdjYzkyMmQxZTJlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
244	Eskiya	1996	NaN	128	8.2	Baran the Bandit, released from prison after 35 years, searches for vengeance and his lover.	NaN	248	64118	NaN	https://m.media-amazon.com/images/M/MV5BOGQ4ZjFmYjktOGNkNS00OWYyLWIyZjgtMGJjM2U1ZTA0ZTlhXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY98_CR1,0,67,98_AL_.jpg
245	Heat	1995	A	170	8.2	A group of professional bank robbers start to feel the heat from police when they unknowingly leave a clue at their latest heist.	76.0	249	577113	67,436,818	https://m.media-amazon.com/images/M/MV5BNGMwNzUwNjYtZWM5NS00YzMyLWI4NjAtNjM0ZDBiMzE1YWExXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
246	Casino	1995	A	178	8.2	A tale of greed, deception, money, power, and murder occur between two best friends: a mafia enforcer and a casino executive compete against each other over a gambling empire, and over a fast-living and fast-loving socialite.	73.0	100	466276	42,438,300	https://m.media-amazon.com/images/M/MV5BMTcxOWYzNDYtYmM4YS00N2NkLTk0NTAtNjg1ODgwZjAxYzI3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
247	Andaz Apna Apna	1994	U	160	8.2	Two slackers competing for the affections of an heiress inadvertently become her protectors from an evil criminal.	NaN	251	49300	NaN	https://m.media-amazon.com/images/M/MV5BZTIwYzRjMGYtZWQ0Ni00NDZhLThhZDYtOGViZGJiZTkwMzk2XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR3,0,67,98_AL_.jpg
248	Unforgiven	1992	A	130	8.2	Retired Old West gunslinger William Munny reluctantly takes on one last job, with the help of his old partner Ned Logan and a young man, The "Schofield Kid."	85.0	252	375935	101,157,447	https://m.media-amazon.com/images/M/MV5BODM3YWY4NmQtN2Y3Ni00OTg0LWFhZGQtZWE3ZWY4MTJlOWU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
249	Indiana Jones and the Last Crusade	1989	U	127	8.2	In 1938, after his father Professor Henry Jones, Sr. goes missing while pursuing the Holy Grail, Professor Henry "Indiana" Jones, Jr. finds himself up against Adolf Hitler's Nazis again to stop them from obtaining its powers.	65.0	92	692366	197,171,806	https://m.media-amazon.com/images/M/MV5BMjNkMzc2N2QtNjVlNS00ZTk5LTg0MTgtODY2MDAwNTMwZjBjXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
250	Dom za vesanje	1988	R	142	8.2	In this luminous tale set in the area around Sarajevo and in Italy, Perhan, an engaging young Romany (gypsy) with telekinetic powers, is seduced by the quick-cash world of petty crime, which threatens to destroy him and those he loves.	NaN	254	26402	280,015	https://m.media-amazon.com/images/M/MV5BODI2ZjVlMGQtMWE5ZS00MjJiLWIyMWYtMGU5NmIxNDc0OTMyXkEyXkFqcGdeQXVyMTQ3Njg3MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
251	Tonari no Totoro	1988	U	86	8.2	When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.	86.0	108	291180	1,105,564	https://m.media-amazon.com/images/M/MV5BYzJjMTYyMjQtZDI0My00ZjE2LTkyNGYtOTllNGQxNDMyZjE0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR1,0,67,98_AL_.jpg
252	Die Hard	1988	A	132	8.2	An NYPD officer tries to save his wife and several others taken hostage by German terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.	72.0	256	793164	83,008,852	https://m.media-amazon.com/images/M/MV5BZjRlNDUxZjAtOGQ4OC00OTNlLTgxNmQtYTBmMDgwZmNmNjkxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
253	Ran	1985	U	162	8.2	In Medieval Japan, an elderly warlord retires, handing over his empire to his three sons. However, he vastly underestimates how the new-found power will corrupt them and cause them to turn on each other...and him.	96.0	116	112505	4,135,750	https://m.media-amazon.com/images/M/MV5BZDBjZTM4ZmEtOTA5ZC00NTQzLTkyNzYtMmUxNGU2YjI5YjU5L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
254	Raging Bull	1980	A	129	8.2	The life of boxer Jake LaMotta, whose violence and temper that led him to the top in the ring destroyed his life outside of it.	89.0	100	321860	23,383,987	https://m.media-amazon.com/images/M/MV5BYjRmODkzNDItMTNhNi00YjJlLTg0ZjAtODlhZTM0YzgzYThlXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
255	Stalker	1979	U	162	8.2	A guide leads two men through an area known as the Zone to find a room that grants wishes.	NaN	259	116945	234,723	https://m.media-amazon.com/images/M/MV5BMDgwODNmMGItMDcwYi00OWZjLTgyZjAtMGYwMmI4N2Q0NmJmXkEyXkFqcGdeQXVyNzY1MTU0Njk@._V1_UY98_CR1,0,67,98_AL_.jpg
256	Höstsonaten	1978	U	99	8.2	A married daughter who longs for her mother's love is visited by the latter, a successful concert pianist.	NaN	260	26875	NaN	https://m.media-amazon.com/images/M/MV5BNGIyMWRlYTctMWNlMi00ZGIzLThjOTgtZjQzZjRjNmRhMDdlXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UX67_CR0,0,67,98_AL_.jpg
257	The Message	1976	PG	177	8.2	This epic historical drama chronicles the life and times of Prophet Muhammad and serves as an introduction to early Islamic history.	NaN	261	43885	NaN	https://m.media-amazon.com/images/M/MV5BMjk3YjJmYTctMTAzZC00MzE4LWFlZGMtNDM5OTMyMDEzZWIxXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
258	Sholay	1975	U	204	8.2	After his family is murdered by a notorious and ruthless bandit, a former police officer enlists the services of two outlaws to capture the bandit.	NaN	262	51284	NaN	https://m.media-amazon.com/images/M/MV5BOGZiM2IwODktNTdiMC00MGU1LWEyZTYtOTk4NTkwYmJkNmI1L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY98_CR2,0,67,98_AL_.jpg
259	Monty Python and the Holy Grail	1975	PG	91	8.2	King Arthur and his Knights of the Round Table embark on a surreal, low-budget search for the Holy Grail, encountering many, very silly obstacles.	91.0	263	500875	1,229,197	https://m.media-amazon.com/images/M/MV5BN2IyNTE4YzUtZWU0Mi00MGIwLTgyMmQtMzQ4YzQxYWNlYWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
260	The Great Escape	1963	U	172	8.2	Allied prisoners of war plan for several hundred of their number to escape from a German camp during World War II.	86.0	264	224730	12,100,000	https://m.media-amazon.com/images/M/MV5BNzA2NmYxMWUtNzBlMC00MWM2LTkwNmQtYTFlZjQwODNhOWE0XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX67_CR0,0,67,98_AL_.jpg
261	To Kill a Mockingbird	1962	U	129	8.2	Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his children against prejudice.	88.0	265	293811	NaN	https://m.media-amazon.com/images/M/MV5BNmVmYzcwNzMtMWM1NS00MWIyLThlMDEtYzUwZDgzODE1NmE2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
263	Judgment at Nuremberg	1961	A	179	8.2	In 1948, an American court in occupied Germany tries four Nazis judged for war crimes.	60.0	267	69458	NaN	https://m.media-amazon.com/images/M/MV5BNDc2ODQ5NTE2MV5BMl5BanBnXkFtZTcwODExMjUyNA@@._V1_UX67_CR0,0,67,98_AL_.jpg
264	Some Like It Hot	1959	U	121	8.2	After two male musicians witness a mob hit, they flee the state in an all-female band disguised as women, but further complications set in.	98.0	164	243943	25,000,000	https://m.media-amazon.com/images/M/MV5BNzAyOGIxYjAtMGY2NC00ZTgyLWIwMWEtYzY0OWQ4NDFjOTc5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
265	Smultronstället	1957	U	91	8.2	After living a life marked by coldness, an aging professor is forced to confront the emptiness of his existence.	88.0	260	96381	NaN	https://m.media-amazon.com/images/M/MV5BZjJhNTBmNTgtMDViOC00NDY2LWE4N2ItMDJiM2ZiYmQzYzliXkEyXkFqcGdeQXVyMzg1ODEwNQ@@._V1_UY98_CR0,0,67,98_AL_.jpg
266	Det sjunde inseglet	1957	A	96	8.2	A man seeks answers about life, death, and the existence of God as he plays chess against the Grim Reaper during the Black Plague.	88.0	260	164939	NaN	https://m.media-amazon.com/images/M/MV5BM2I1ZWU4YjMtYzU0My00YmMzLWFmNTAtZDJhZGYwMmI3YWQ5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
267	Du rififi chez les hommes	1955	NaN	118	8.2	Four men plan a technically perfect crime, but the human element intervenes...	97.0	271	28810	57,226	https://m.media-amazon.com/images/M/MV5BNjZmZGRiMDgtNDkwNi00OTZhLWFhZmMtYTdkYjgyNThhOWY3XkEyXkFqcGdeQXVyMTA1NTM1NDI2._V1_UX67_CR0,0,67,98_AL_.jpg
268	Dial M for Murder	1954	A	105	8.2	A former tennis player tries to arrange his wife's murder after learning of her affair.	75.0	134	158335	12,562	https://m.media-amazon.com/images/M/MV5BOWIwODIxYWItZDI4MS00YzhhLWE3MmYtMzlhZDIwOTMzZmE5L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
269	Tôkyô monogatari	1953	U	136	8.2	An old couple visit their children and grandchildren in the city, but receive little attention.	NaN	273	53153	NaN	https://m.media-amazon.com/images/M/MV5BYWQ4ZTRiODktNjAzZC00Nzg1LTk1YWQtNDFmNDI0NmZiNGIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR0,0,67,98_AL_.jpg
270	Rashômon	1950	NaN	88	8.2	The rape of a bride and the murder of her samurai husband are recalled from the perspectives of a bandit, the bride, the samurai's ghost and a woodcutter.	98.0	116	152572	96,568	https://m.media-amazon.com/images/M/MV5BMjEzMzA4NDE2OF5BMl5BanBnXkFtZTcwNTc5MDI2NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
271	All About Eve	1950	Passed	138	8.2	A seemingly timid but secretly ruthless ingénue insinuates herself into the lives of an aging Broadway star and her circle of theater friends.	98.0	275	120539	10,177	https://m.media-amazon.com/images/M/MV5BMTY2MTAzODI5NV5BMl5BanBnXkFtZTgwMjM4NzQ0MjE@._V1_UX67_CR0,0,67,98_AL_.jpg
272	The Treasure of the Sierra Madre	1948	Passed	126	8.2	Two Americans searching for work in Mexico convince an old prospector to help them mine for gold in the Sierra Madre Mountains.	98.0	276	114304	5,014,000	https://m.media-amazon.com/images/M/MV5BOTJlZWMxYzEtMjlkMS00ODE0LThlM2ItMDI3NGQ2YjhmMzkxXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
273	To Be or Not to Be	1942	Passed	99	8.2	During the Nazi occupation of Poland, an acting troupe becomes embroiled in a Polish soldier's efforts to track down a German spy.	86.0	277	29915	NaN	https://m.media-amazon.com/images/M/MV5BYTIwNDcyMjktMTczMy00NDM5LTlhNDEtMmE3NGVjOTM2YjQ3XkEyXkFqcGdeQXVyNjc0MzMzNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
274	The Gold Rush	1925	Passed	95	8.2	A prospector goes to the Klondike in search of gold and finds it and more.	NaN	136	101053	5,450,000	https://m.media-amazon.com/images/M/MV5BZjEyOTE4MzMtNmMzMy00Mzc3LWJlOTQtOGJiNDE0ZmJiOTU4L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR2,0,67,98_AL_.jpg
275	Sherlock Jr.	1924	Passed	45	8.2	A film projectionist longs to be a detective, and puts his meagre skills to work when he is framed by a rival for stealing his girlfriend's father's pocketwatch.	NaN	279	41985	977,375	https://m.media-amazon.com/images/M/MV5BZWFhOGU5NDctY2Q3YS00Y2VlLWI1NzEtZmIwY2ZiZjY4OTA2XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
276	Portrait de la jeune fille en feu	2019	R	122	8.1	On an isolated island in Brittany at the end of the eighteenth century, a female painter is obliged to paint a wedding portrait of a young woman.	95.0	280	63134	3,759,854	https://m.media-amazon.com/images/M/MV5BNjgwNjkwOWYtYmM3My00NzI1LTk5OGItYWY0OTMyZTY4OTg2XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UX67_CR0,0,67,98_AL_.jpg
277	Pink	2016	UA	136	8.1	When three young women are implicated in a crime, a retired lawyer steps forward to help them clear their names.	NaN	281	39216	1,241,223	https://m.media-amazon.com/images/M/MV5BNGI1MTI1YTQtY2QwYi00YzUzLTg3NWYtNzExZDlhOTZmZWU0XkEyXkFqcGdeQXVyMDkwNTkwNg@@._V1_UY98_CR3,0,67,98_AL_.jpg
278	Koe no katachi	2016	16	130	8.1	A young man is ostracized by his classmates after he bullies a deaf girl to the point where she moves away. Years later, he sets off on a path for redemption.	78.0	282	47708	NaN	https://m.media-amazon.com/images/M/MV5BZGRkOGMxYTUtZTBhYS00NzI3LWEzMDQtOWRhMmNjNjJjMzM4XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR0,0,67,98_AL_.jpg
279	Contratiempo	2016	TV-MA	106	8.1	A successful entrepreneur accused of murder and a witness preparation expert have less than three hours to come up with an impregnable defense.	NaN	283	141516	NaN	https://m.media-amazon.com/images/M/MV5BMDk0YzAwYjktMWFiZi00Y2FmLWJmMmMtMzUyZDZmMmU5MjkzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR1,0,67,98_AL_.jpg
280	Ah-ga-ssi	2016	A	145	8.1	A woman is hired as a handmaiden to a Japanese heiress, but secretly she is involved in a plot to defraud her.	84.0	153	113649	2,006,788	https://m.media-amazon.com/images/M/MV5BNDJhYTk2MTctZmVmOS00OTViLTgxNjQtMzQxOTRiMDdmNGRjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR0,0,67,98_AL_.jpg
281	Mommy	2014	R	139	8.1	A widowed single mother, raising her violent son alone, finds new hope when a mysterious neighbor inserts herself into their household.	74.0	285	50700	3,492,754	https://m.media-amazon.com/images/M/MV5BMGI3YWFmNDQtNjc0Ny00ZDBjLThlNjYtZTc1ZTk5MzU2YTVjXkEyXkFqcGdeQXVyNzA4ODc3ODU@._V1_UY98_CR1,0,67,98_AL_.jpg
282	Haider	2014	UA	160	8.1	A young man returns to Kashmir after his father's disappearance to confront his uncle, whom he suspects of playing a role in his father's fate.	NaN	286	50445	901,610	https://m.media-amazon.com/images/M/MV5BMjA1NTEwMDMxMF5BMl5BanBnXkFtZTgwODkzMzI0MjE@._V1_UY98_CR0,0,67,98_AL_.jpg
283	Logan	2017	A	137	8.1	In a future where mutants are nearly extinct, an elderly and weary Logan leads a quiet life. But when Laura, a mutant child pursued by scientists, comes to him for help, he must get her to safety.	77.0	287	647884	226,277,068	https://m.media-amazon.com/images/M/MV5BYzc5MTU4N2EtYTkyMi00NjdhLTg3NWEtMTY4OTEyMzJhZTAzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
284	Room	2015	R	118	8.1	Held captive for 7 years in an enclosed space, a woman and her young son finally gain their freedom, allowing the boy to experience the outside world for the first time.	86.0	288	371538	14,677,674	https://m.media-amazon.com/images/M/MV5BMjE4NzgzNzEwMl5BMl5BanBnXkFtZTgwMTMzMDE0NjE@._V1_UX67_CR0,0,67,98_AL_.jpg
285	Relatos salvajes	2014	R	122	8.1	Six short stories that explore the extremities of human behavior involving people in distress.	77.0	289	177059	3,107,072	https://m.media-amazon.com/images/M/MV5BNGQzY2Y0MTgtMDA4OC00NjM3LWI0ZGQtNTJlM2UxZDQxZjI0XkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UY98_CR1,0,67,98_AL_.jpg
286	Soul	2020	U	100	8.1	After landing the gig of a lifetime, a New York jazz pianist suddenly finds himself trapped in a strange land between Earth and the afterlife.	83.0	231	159171	NaN	https://m.media-amazon.com/images/M/MV5BZGE1MDg5M2MtNTkyZS00MTY5LTg1YzUtZTlhZmM1Y2EwNmFmXkEyXkFqcGdeQXVyNjA3OTI0MDc@._V1_UX67_CR0,0,67,98_AL_.jpg
287	Kis Uykusu	2014	NaN	196	8.1	A hotel owner and landlord in a remote Turkish village deals with conflicts within his family and a tenant behind on his rent.	88.0	291	46547	165,520	https://m.media-amazon.com/images/M/MV5BYzE2MjEwMTQtOTQ2Mi00ZWExLTkyMjUtNmJjMjBlYWFjZDdlXkEyXkFqcGdeQXVyMTI3ODAyMzE2._V1_UY98_CR0,0,67,98_AL_.jpg
288	PK	2014	UA	153	8.1	An alien on Earth loses the only device he can use to communicate with his spaceship. His innocent nature and child-like questions force the country to evaluate the impact of religion on its people.	NaN	149	163061	10,616,104	https://m.media-amazon.com/images/M/MV5BMTYzOTE2NjkxN15BMl5BanBnXkFtZTgwMDgzMTg0MzE@._V1_UY98_CR0,0,67,98_AL_.jpg
289	OMG: Oh My God!	2012	U	125	8.1	A shopkeeper takes God to court when his shop is destroyed by an earthquake.	NaN	293	51739	923,221	https://m.media-amazon.com/images/M/MV5BMGNhYjUwNmYtNDQxNi00NDdmLTljMDAtZWM1NDQyZTk3ZDYwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR0,0,67,98_AL_.jpg
290	The Grand Budapest Hotel	2014	UA	99	8.1	A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel's glorious years under an exceptional concierge.	88.0	294	707630	59,100,318	https://m.media-amazon.com/images/M/MV5BMzM5NjUxOTEyMl5BMl5BanBnXkFtZTgwNjEyMDM0MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
291	Gone Girl	2014	A	149	8.1	With his wife's disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it's suspected that he may not be innocent.	79.0	94	859695	167,767,189	https://m.media-amazon.com/images/M/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_UX67_CR0,0,67,98_AL_.jpg
292	Ôkami kodomo no Ame to Yuki	2012	U	117	8.1	After her werewolf lover unexpectedly dies in an accident while hunting for food for their children, a young woman must find ways to raise the werewolf son and daughter that she had with him while keeping their trait hidden from society.	71.0	296	38803	NaN	https://m.media-amazon.com/images/M/MV5BYzQxNDZhNDUtNDUwOC00NjQyLTg2OWUtZWVlYThjYjYyMTc2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
293	Hacksaw Ridge	2016	A	139	8.1	World War II American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.	71.0	187	435928	67,209,615	https://m.media-amazon.com/images/M/MV5BMjQ1NjM3MTUxNV5BMl5BanBnXkFtZTgwMDc5MTY5OTE@._V1_UX67_CR0,0,67,98_AL_.jpg
294	Inside Out	2015	U	95	8.1	After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.	94.0	231	616228	356,461,711	https://m.media-amazon.com/images/M/MV5BOTgxMDQwMDk0OF5BMl5BanBnXkFtZTgwNjU5OTg2NDE@._V1_UX67_CR0,0,67,98_AL_.jpg
295	Barfi!	2012	U	151	8.1	Three young people learn that love can neither be defined nor contained by society's definition of normal and abnormal.	NaN	299	75721	2,804,874	https://m.media-amazon.com/images/M/MV5BMTQzMTEyODY2Ml5BMl5BanBnXkFtZTgwMjA0MDUyMjE@._V1_UY98_CR0,0,67,98_AL_.jpg
296	12 Years a Slave	2013	A	134	8.1	In the antebellum United States, Solomon Northup, a free black man from upstate New York, is abducted and sold into slavery.	96.0	300	640533	56,671,993	https://m.media-amazon.com/images/M/MV5BMjExMTEzODkyN15BMl5BanBnXkFtZTcwNTU4NTc4OQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
297	Rush	2013	UA	123	8.1	The merciless 1970s rivalry between Formula One rivals James Hunt and Niki Lauda.	74.0	244	432811	26,947,624	https://m.media-amazon.com/images/M/MV5BOWEwODJmZDItYTNmZC00OGM4LThlNDktOTQzZjIzMGQxODA4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
298	Ford v Ferrari	2019	UA	152	8.1	American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.	81.0	287	291289	117,624,028	https://m.media-amazon.com/images/M/MV5BM2UwMDVmMDItM2I2Yi00NGZmLTk4ZTUtY2JjNTQ3OGQ5ZjM2XkEyXkFqcGdeQXVyMTA1OTYzOTUx._V1_UX67_CR0,0,67,98_AL_.jpg
299	Spotlight	2015	A	129	8.1	The true story of how the Boston Globe uncovered the massive scandal of child molestation and cover-up within the local Catholic Archdiocese, shaking the entire Catholic Church to its core.	93.0	303	420316	45,055,776	https://m.media-amazon.com/images/M/MV5BMjIyOTM5OTIzNV5BMl5BanBnXkFtZTgwMDkzODE2NjE@._V1_UX67_CR0,0,67,98_AL_.jpg
300	Song of the Sea	2014	PG	93	8.1	Ben, a young Irish boy, and his little sister Saoirse, a girl who can turn into a seal, go on an adventure to free the fairies and save the spirit world.	85.0	304	51679	857,524	https://m.media-amazon.com/images/M/MV5BMTQ2MDMwNjEwNV5BMl5BanBnXkFtZTgwOTkxMzI0MzE@._V1_UY98_CR0,0,67,98_AL_.jpg
301	Kahaani	2012	UA	122	8.1	A pregnant woman's search for her missing husband takes her from London to Kolkata, but everyone she questions denies having ever met him.	NaN	305	57806	1,035,953	https://m.media-amazon.com/images/M/MV5BMTQ1NDI0NzkyOF5BMl5BanBnXkFtZTcwNzAyNzE2Nw@@._V1_UY98_CR0,0,67,98_AL_.jpg
302	Zindagi Na Milegi Dobara	2011	U	155	8.1	Three friends decide to turn their fantasy vacation into reality after one of their friends gets engaged.	NaN	306	67927	3,108,485	https://m.media-amazon.com/images/M/MV5BZGFmMjM5OWMtZTRiNC00ODhlLThlYTItYTcyZDMyYmMyYjFjXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UY98_CR0,0,67,98_AL_.jpg
303	Prisoners	2013	A	153	8.1	When Keller Dover's daughter and her friend go missing, he takes matters into his own hands as the police pursue multiple leads and the pressure mounts.	70.0	175	601149	61,002,302	https://m.media-amazon.com/images/M/MV5BMTg0NTIzMjQ1NV5BMl5BanBnXkFtZTcwNDc3MzM5OQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
304	Mad Max: Fury Road	2015	UA	120	8.1	In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper, and a drifter named Max.	90.0	308	882316	154,058,340	https://m.media-amazon.com/images/M/MV5BN2EwM2I5OWMtMGQyMi00Zjg1LWJkNTctZTdjYTA4OGUwZjMyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
305	A Wednesday	2008	UA	104	8.1	A retiring police officer reminisces about the most astounding day of his career. About a case that was never filed but continues to haunt him in his memories - the case of a man and a Wednesday.	NaN	309	73891	NaN	https://m.media-amazon.com/images/M/MV5BOTcwMzdiMWItMjZlOS00MzAzLTg5OTItNTA4OGYyMjBhMmRiXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR1,0,67,98_AL_.jpg
306	Gran Torino	2008	R	116	8.1	Disgruntled Korean War veteran Walt Kowalski sets out to reform his neighbor, Thao Lor, a Hmong teenager who tried to steal Kowalski's prized possession: a 1972 Gran Torino.	72.0	252	720450	148,095,302	https://m.media-amazon.com/images/M/MV5BMTc5NTk2OTU1Nl5BMl5BanBnXkFtZTcwMDc3NjAwMg@@._V1_UX67_CR0,0,67,98_AL_.jpg
307	Harry Potter and the Deathly Hallows: Part 2	2011	UA	130	8.1	Harry, Ron, and Hermione search for Voldemort's remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.	85.0	311	764493	381,011,219	https://m.media-amazon.com/images/M/MV5BMGVmMWNiMDktYjQ0Mi00MWIxLTk0N2UtN2ZlYTdkN2IzNDNlXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UX67_CR0,0,67,98_AL_.jpg
308	Okuribito	2008	PG-13	130	8.1	A newly unemployed cellist takes a job preparing the dead for funerals.	68.0	312	48582	1,498,210	https://m.media-amazon.com/images/M/MV5BMTUzOTcwOTA2NV5BMl5BanBnXkFtZTcwNDczMzczMg@@._V1_UY98_CR0,0,67,98_AL_.jpg
309	Hachi: A Dog's Tale	2009	G	93	8.1	A college professor bonds with an abandoned dog he takes into his home.	NaN	313	253575	NaN	https://m.media-amazon.com/images/M/MV5BNzE4NDg5OWMtMzg3NC00ZDRjLTllMDMtZTRjNWZmNjBmMGZlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR1,0,67,98_AL_.jpg
310	Mary and Max	2009	NaN	92	8.1	A tale of friendship between two unlikely pen pals: Mary, a lonely, eight-year-old girl living in the suburbs of Melbourne, and Max, a forty-four-year old, severely obese man living in New York.	NaN	314	164462	NaN	https://m.media-amazon.com/images/M/MV5BMDgzYjQwMDMtNGUzYi00MTRmLWIyMGMtNjE1OGZkNzY2YWIzL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY98_CR1,0,67,98_AL_.jpg
311	How to Train Your Dragon	2010	U	98	8.1	A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.	75.0	315	666773	217,581,231	https://m.media-amazon.com/images/M/MV5BMjA5NDQyMjc2NF5BMl5BanBnXkFtZTcwMjg5ODcyMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
312	Into the Wild	2007	R	148	8.1	After graduating from Emory University, top student and athlete Christopher McCandless abandons his possessions, gives his entire $24,000 savings account to charity and hitchhikes to Alaska to live in the wilderness. Along the way, Christopher encounters a series of characters that shape his life.	73.0	316	572921	18,354,356	https://m.media-amazon.com/images/M/MV5BMTAwNDEyODU1MjheQTJeQWpwZ15BbWU2MDc3NDQwNw@@._V1_UX67_CR0,0,67,98_AL_.jpg
313	No Country for Old Men	2007	R	122	8.1	Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.	91.0	317	856916	74,283,625	https://m.media-amazon.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
314	Lage Raho Munna Bhai	2006	U	144	8.1	Munna Bhai embarks on a journey with Mahatma Gandhi in order to fight against a corrupt property dealer.	NaN	149	43137	2,217,561	https://m.media-amazon.com/images/M/MV5BN2ZmMDMwODgtMzA5MS00MGU0LWEyYTgtYzQ5MmQzMzU2NTVkXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR0,0,67,98_AL_.jpg
315	Million Dollar Baby	2004	UA	132	8.1	A determined woman works with a hardened boxing trainer to become a professional.	86.0	252	635975	100,492,203	https://m.media-amazon.com/images/M/MV5BMTkxNzA1NDQxOV5BMl5BanBnXkFtZTcwNTkyMTIzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
316	Hotel Rwanda	2004	PG-13	121	8.1	Paul Rusesabagina, a hotel manager, houses over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda, Africa.	79.0	320	334320	23,530,892	https://m.media-amazon.com/images/M/MV5BZGJjYmIzZmQtNWE4Yy00ZGVmLWJkZGEtMzUzNmQ4ZWFlMjRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
317	Taegukgi hwinalrimyeo	2004	R	140	8.1	When two brothers are forced to fight in the Korean War, the elder decides to take the riskiest missions if it will help shield the younger from battle.	64.0	321	37820	1,111,061	https://m.media-amazon.com/images/M/MV5BNjAxZTEzNzQtYjdlNy00ZTJmLTkwZDUtOTAwNTM3YjI2MWUyL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
318	Before Sunset	2004	R	80	8.1	Nine years after Jesse and Celine first met, they encounter each other again on the French leg of Jesse's book tour.	90.0	322	236311	5,820,649	https://m.media-amazon.com/images/M/MV5BMTQ1MjAwNTM5Ml5BMl5BanBnXkFtZTYwNDM0MTc3._V1_UX67_CR0,0,67,98_AL_.jpg
319	Munna Bhai M.B.B.S.	2003	U	156	8.1	A gangster sets out to fulfill his father's dream of becoming a doctor.	NaN	149	73992	NaN	https://m.media-amazon.com/images/M/MV5BMzQ4MTBlYTQtMzJkYS00OGNjLTk1MWYtNzQ0OTQ0OWEyOWU1XkEyXkFqcGdeQXVyNDgyODgxNjE@._V1_UY98_CR1,0,67,98_AL_.jpg
320	Salinui chueok	2003	UA	131	8.1	In a small Korean province in 1986, two detectives struggle with the case of multiple young women being found raped and murdered by an unknown culprit.	82.0	104	139558	14,131	https://m.media-amazon.com/images/M/MV5BOGViNTg4YTktYTQ2Ni00MTU0LTk2NWUtMTI4OTc1YTM0NzQ2XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
321	Dil Chahta Hai	2001	Unrated	183	8.1	Three inseparable childhood friends are just out of college. Nothing comes between them - until they each fall in love, and their wildly different approaches to relationships creates tension.	NaN	325	66803	300,000	https://m.media-amazon.com/images/M/MV5BMjRjMTYwMTYtMmRkNi00MmVkLWE0MjQtNmM3YjI0NWFhZDNmXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UX67_CR0,0,67,98_AL_.jpg
322	Kill Bill: Vol. 1	2003	R	111	8.1	After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her.	69.0	91	1000639	70,099,045	https://m.media-amazon.com/images/M/MV5BNzM3NDFhYTAtYmU5Mi00NGRmLTljYjgtMDkyODQ4MjNkMGY2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
323	Finding Nemo	2003	U	100	8.1	After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.	90.0	151	949565	380,843,261	https://m.media-amazon.com/images/M/MV5BZTAzNWZlNmUtZDEzYi00ZjA5LWIwYjEtZGM1NWE1MjE4YWRhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
324	Catch Me If You Can	2002	A	141	8.1	Barely 21 yet, Frank is a skilled forger who has passed as a doctor, lawyer and pilot. FBI agent Carl becomes obsessed with tracking down the con man, who only revels in the pursuit.	75.0	92	832846	164,615,351	https://m.media-amazon.com/images/M/MV5BMTY5MzYzNjc5NV5BMl5BanBnXkFtZTYwNTUyNTc2._V1_UX67_CR0,0,67,98_AL_.jpg
325	Amores perros	2000	A	154	8.1	A horrific car accident connects three stories, each involving characters dealing with loss, regret, and life's harsh realities, all in the name of love.	83.0	329	223741	5,383,834	https://m.media-amazon.com/images/M/MV5BMjQxMWJhMzMtMzllZi00NzMwLTllYjktNTcwZmU4ZmU3NTA0XkEyXkFqcGdeQXVyMTAzMDM4MjM0._V1_UY98_CR3,0,67,98_AL_.jpg
326	Monsters, Inc.	2001	U	92	8.1	In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, 2 monsters realize things may not be what they think.	79.0	231	815505	289,916,256	https://m.media-amazon.com/images/M/MV5BMTY1NTI0ODUyOF5BMl5BanBnXkFtZTgwNTEyNjQ0MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
327	Shin seiki Evangelion Gekijô-ban: Air/Magokoro wo, kimi ni	1997	UA	87	8.1	Concurrent theatrical ending of the TV series Shin seiki evangerion (1995).	NaN	331	38847	NaN	https://m.media-amazon.com/images/M/MV5BZjJhMThkNTQtNjkxNy00MDdjLTg4MWQtMTI2MmQ3MDVmODUzXkEyXkFqcGdeQXVyMTAwOTA3NzY3._V1_UY98_CR1,0,67,98_AL_.jpg
328	Lagaan: Once Upon a Time in India	2001	U	224	8.1	The people of a small village in Victorian India stake their future on a game of cricket against their ruthless British rulers.	84.0	241	105036	70,147	https://m.media-amazon.com/images/M/MV5BNDYxNWUzZmYtOGQxMC00MTdkLTkxOTctYzkyOGIwNWQxZjhmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
329	The Sixth Sense	1999	A	107	8.1	A boy who communicates with spirits seeks the help of a disheartened child psychologist.	64.0	333	911573	293,506,292	https://m.media-amazon.com/images/M/MV5BMWM4NTFhYjctNzUyNi00NGMwLTk3NTYtMDIyNTZmMzRlYmQyXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UX67_CR0,0,67,98_AL_.jpg
330	La leggenda del pianista sull'oceano	1998	U	169	8.1	A baby boy, discovered in 1900 on an ocean liner, grows into a musical prodigy, never setting foot on land.	58.0	130	59020	259,127	https://m.media-amazon.com/images/M/MV5BMzIwOTdmNjQtOWQ1ZS00ZWQ4LWIxYTMtOWFkM2NjODJiMGY4L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
331	The Truman Show	1998	U	103	8.1	An insurance salesman discovers his whole life is actually a reality TV show.	90.0	335	939631	125,618,201	https://m.media-amazon.com/images/M/MV5BMDIzODcyY2EtMmY2MC00ZWVlLTgwMzAtMjQwOWUyNmJjNTYyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
332	Crna macka, beli macor	1998	R	127	8.1	Matko and his son Zare live on the banks of the Danube river and get by through hustling and basically doing anything to make a living. In order to pay off a business debt Matko agrees to marry off Zare to the sister of a local gangster.	73.0	254	50862	348,660	https://m.media-amazon.com/images/M/MV5BMmExZTZhN2QtMzg5Mi00Y2M5LTlmMWYtNTUzMzUwMGM2OGQ3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
333	The Big Lebowski	1998	R	117	8.1	Jeff "The Dude" Lebowski, mistaken for a millionaire of the same name, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.	71.0	337	732620	17,498,804	https://m.media-amazon.com/images/M/MV5BMTQ0NjUzMDMyOF5BMl5BanBnXkFtZTgwODA1OTU0MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
334	Fa yeung nin wah	2000	U	98	8.1	Two neighbors, a woman and a man, form a strong bond after both suspect extramarital activities of their spouses. However, they agree to keep their bond platonic so as not to commit similar wrongs.	85.0	338	124383	2,734,044	https://m.media-amazon.com/images/M/MV5BYjZjODRlMjQtMjJlYy00ZDBjLTkyYTQtZGQxZTk5NzJhYmNmXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY98_CR1,0,67,98_AL_.jpg
335	Trainspotting	1996	A	93	8.1	Renton, deeply immersed in the Edinburgh drug scene, tries to clean up and get out, despite the allure of the drugs and influence of friends.	83.0	339	634716	16,501,785	https://m.media-amazon.com/images/M/MV5BMzA5Zjc3ZTMtMmU5YS00YTMwLWI4MWUtYTU0YTVmNjVmODZhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
336	Fargo	1996	A	98	8.1	Jerry Lundegaard's inept crime falls apart due to his and his henchmen's bungling and the persistent police work of the quite pregnant Marge Gunderson.	85.0	337	617444	24,611,975	https://m.media-amazon.com/images/M/MV5BNDJiZDgyZjctYmRjMS00ZjdkLTkwMTEtNGU1NDg3NDQ0Yzk1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
337	Underground	1995	NaN	170	8.1	A group of Serbian socialists prepares for the war in a surreal underground filled by parties, tragedies, love and hate.	NaN	254	55220	171,082	https://m.media-amazon.com/images/M/MV5BNzI4YTVmMWEtMWQ3MS00OGE1LWE5YjMtNjc4NWJmYjRmZTQyXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY98_CR0,0,67,98_AL_.jpg
338	La haine	1995	UA	98	8.1	24 hours in the lives of three young men in the French suburbs the day after a violent riot.	NaN	342	150345	309,811	https://m.media-amazon.com/images/M/MV5BNDNiOTA5YjktY2Q0Ni00ODgzLWE5MWItNGExOWRlYjY2MjBlXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UY98_CR1,0,67,98_AL_.jpg
339	Dilwale Dulhania Le Jayenge	1995	U	189	8.1	When Raj meets Simran in Europe, it isn't love at first sight but when Simran moves to India for an arranged marriage, love makes its presence felt.	NaN	343	63516	NaN	https://m.media-amazon.com/images/M/MV5BYmNjYzRlM2YtZTZjZC00ODVmLTljZWMtODg1YmYyNDBiNzU3XkEyXkFqcGdeQXVyNTkzNDQ4ODc@._V1_UY98_CR3,0,67,98_AL_.jpg
340	Before Sunrise	1995	R	101	8.1	A young man and woman meet on a train in Europe, and wind up spending one evening together in Vienna. Unfortunately, both know that this will probably be their only night together.	77.0	322	272291	5,535,405	https://m.media-amazon.com/images/M/MV5BZDdiZTAwYzAtMDI3Ni00OTRjLTkzN2UtMGE3MDMyZmU4NTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
341	Trois couleurs: Rouge	1994	U	99	8.1	A model discovers a retired judge is keen on invading people's privacy.	100.0	345	90729	4,043,686	https://m.media-amazon.com/images/M/MV5BYTg1MmNiMjItMmY4Yy00ZDQ3LThjMzYtZGQ0ZTQzNTdkMGQ1L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
342	Chung Hing sam lam	1994	U	102	8.1	Two melancholy Hong Kong policemen fall in love: one with a mysterious female underworld figure, the other with a beautiful and ethereal server at a late-night restaurant he frequents.	77.0	338	63122	600,200	https://m.media-amazon.com/images/M/MV5BMGQ5MzljNzYtMDM1My00NmI0LThlYzQtMTg0ZmQ0MTk1YjkxXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
343	Jurassic Park	1993	UA	127	8.1	A pragmatic paleontologist visiting an almost complete theme park is tasked with protecting a couple of kids after a power failure causes the park's cloned dinosaurs to run loose.	68.0	92	867615	402,453,882	https://m.media-amazon.com/images/M/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@._V1_UX67_CR0,0,67,98_AL_.jpg
344	In the Name of the Father	1993	UA	133	8.1	A man's coerced confession to an I.R.A. bombing he did not commit results in the imprisonment of his father as well. An English lawyer fights to free them.	84.0	348	156842	25,010,410	https://m.media-amazon.com/images/M/MV5BMmYyOTgwYWItYmU3Ny00M2E2LTk0NWMtMDVlNmQ0MWZiMTMxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
345	Ba wang bie ji	1993	R	171	8.1	Two boys meet at an opera training school in Peking in 1924. Their resulting friendship will span nearly 70 years and will endure some of the most troublesome times in China's history.	NaN	349	25088	5,216,888	https://m.media-amazon.com/images/M/MV5BYmFhZmM3Y2MtNDA1Ny00NjkzLWJkM2EtYWU1ZjEwYmNjZDQ0XkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
346	Dà hóng denglong gaogao guà	1991	PG	125	8.1	A young woman becomes the fourth wife of a wealthy lord, and must learn to live with the strict rules and tensions within the household.	NaN	350	29662	2,603,061	https://m.media-amazon.com/images/M/MV5BMjEzNjY5NDcwNV5BMl5BanBnXkFtZTcwNzEwMzg4NA@@._V1_UX67_CR0,0,67,98_AL_.jpg
514	Vivre sa vie: Film en douze tableaux	1962	NaN	80	8.0	Twelve episodic tales in the life of a Parisian woman and her slow descent into prostitution.	NaN	518	28057	NaN	https://m.media-amazon.com/images/M/MV5BNjMyZmI5NmItY2JlMi00NzU3LWI5ZGItZjhkOTE0YjEyN2Q4XkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_UX67_CR0,0,67,98_AL_.jpg
347	Dead Poets Society	1989	U	128	8.1	Maverick teacher John Keating uses poetry to embolden his boarding school students to new heights of self-expression.	79.0	335	425457	95,860,116	https://m.media-amazon.com/images/M/MV5BOGYwYWNjMzgtNGU4ZC00NWQ2LWEwZjUtMzE1Zjc3NjY3YTU1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
348	Stand by Me	1986	U	89	8.1	After the death of one of his friends, a writer recounts a childhood journey with his friends to find the body of a missing boy.	75.0	352	363401	52,287,414	https://m.media-amazon.com/images/M/MV5BODJmY2Y2OGQtMDg2My00N2Q3LWJmZTUtYTc2ODBjZDVlNDlhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
349	Platoon	1986	A	120	8.1	Chris Taylor, a neophyte recruit in Vietnam, finds himself caught in a battle of wills between two sergeants, one good and the other evil. A shrewd examination of the brutality of war and the duality of man in conflict.	92.0	353	381222	138,530,565	https://m.media-amazon.com/images/M/MV5BMzRjZjdlMjQtODVkYS00N2YzLWJlYWYtMGVlN2E5MWEwMWQzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
350	Paris, Texas	1984	U	145	8.1	Travis Henderson, an aimless drifter who has been missing for four years, wanders out of the desert and must reconnect with society, himself, his life, and his family.	78.0	354	91188	2,181,987	https://m.media-amazon.com/images/M/MV5BM2RjMmU3ZWItYzBlMy00ZmJkLWE5YzgtNTVkODdhOWM3NGZhXkEyXkFqcGdeQXVyNDA5Mjg5MjA@._V1_UX67_CR0,0,67,98_AL_.jpg
351	Kaze no tani no Naushika	1984	U	117	8.1	Warrior and pacifist Princess Nausicaä desperately struggles to prevent two warring nations from destroying themselves and their dying planet.	86.0	108	150924	495,770	https://m.media-amazon.com/images/M/MV5BZWFkN2ZhODAtYTNkZS00Y2NjLWIzNDYtNzJjNDNlMzAyNTIyXkEyXkFqcGdeQXVyODEzNjM5OTQ@._V1_UY98_CR1,0,67,98_AL_.jpg
352	The Thing	1982	A	109	8.1	A research team in Antarctica is hunted by a shape-shifting alien that assumes the appearance of its victims.	57.0	356	371271	13,782,838	https://m.media-amazon.com/images/M/MV5BNGViZWZmM2EtNGYzZi00ZDAyLTk3ODMtNzIyZTBjN2Y1NmM1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
353	Pink Floyd: The Wall	1982	UA	95	8.1	A confined but troubled rock star descends into madness in the midst of his physical and social isolation from everyone.	47.0	357	76081	22,244,207	https://m.media-amazon.com/images/M/MV5BZDhlZTYxOTYtYTk3Ny00ZDljLTk3ZmItZTcxZWU5YTIyYmFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
354	Fitzcarraldo	1982	R	158	8.1	The story of Brian Sweeney Fitzgerald, an extremely determined man who intends to build an opera house in the middle of a jungle.	NaN	358	31595	NaN	https://m.media-amazon.com/images/M/MV5BYjIzNTYxMTctZjAwNS00YzI3LWExMGMtMGQxNGM5ZTc1NzhlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
355	Fanny och Alexander	1982	A	188	8.1	Two young Swedish children experience the many comedies and tragedies of their family, the Ekdahls.	100.0	260	57784	4,971,340	https://m.media-amazon.com/images/M/MV5BZmQzMDE5ZWQtOTU3ZS00ZjdhLWI0OTctZDNkODk4YThmOTRhL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
356	Blade Runner	1982	UA	117	8.1	A blade runner must pursue and terminate four replicants who stole a ship in space, and have returned to Earth to find their creator.	84.0	124	693827	32,868,943	https://m.media-amazon.com/images/M/MV5BNzQzMzJhZTEtOWM4NS00MTdhLTg0YjgtMjM4MDRkZjUwZDBlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
357	The Elephant Man	1980	UA	124	8.1	A Victorian surgeon rescues a heavily disfigured man who is mistreated while scraping a living as a side-show freak. Behind his monstrous façade, there is revealed a person of kindness, intelligence and sophistication.	78.0	361	220078	NaN	https://m.media-amazon.com/images/M/MV5BMDVjNjIwOGItNDE3Ny00OThjLWE0NzQtZTU3YjMzZTZjMzhkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
358	Life of Brian	1979	R	94	8.1	Born on the original Christmas in the stable next door to Jesus Christ, Brian of Nazareth spends his life being mistaken for a messiah.	77.0	362	367250	20,045,115	https://m.media-amazon.com/images/M/MV5BMzAwNjU1OTktYjY3Mi00NDY5LWFlZWUtZjhjNGE0OTkwZDkwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
359	The Deer Hunter	1978	A	183	8.1	An in-depth examination of the ways in which the U.S. Vietnam War impacts and disrupts the lives of people in a small industrial town in Pennsylvania.	86.0	363	311361	48,979,328	https://m.media-amazon.com/images/M/MV5BNDhmNTA0ZDMtYjhkNS00NzEzLWIzYTItOGNkMTVmYjE2YmI3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
360	Rocky	1976	U	120	8.1	A small-time boxer gets a supremely rare chance to fight a heavy-weight champion in a bout in which he strives to go the distance for his self-respect.	70.0	364	518546	117,235,247	https://m.media-amazon.com/images/M/MV5BMTY5MDMzODUyOF5BMl5BanBnXkFtZTcwMTQ3NTMyNA@@._V1_UX67_CR0,0,67,98_AL_.jpg
361	Network	1976	UA	121	8.1	A television network cynically exploits a deranged former anchor's ravings and revelations about the news media for its own profit.	83.0	89	144911	NaN	https://m.media-amazon.com/images/M/MV5BZGNjYjM2MzItZGQzZi00NmY3LTgxOGUtMTQ2MWQxNWQ2MmMwXkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_UX67_CR0,0,67,98_AL_.jpg
362	Barry Lyndon	1975	PG	185	8.1	An Irish rogue wins the heart of a rich widow and assumes her dead husband's aristocratic position in 18th-century England.	89.0	158	149843	NaN	https://m.media-amazon.com/images/M/MV5BNmY0MWY2NDctZDdmMi00MjA1LTk0ZTQtZDMyZTQ1NTNlYzVjXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX67_CR0,0,67,98_AL_.jpg
363	Zerkalo	1975	G	107	8.1	A dying man in his forties remembers his past. His childhood, his mother, the war, personal moments and things that tell of the recent history of all the Russian nation.	NaN	259	40081	177,345	https://m.media-amazon.com/images/M/MV5BMTg1MDg3OTk3M15BMl5BanBnXkFtZTgwMDEzMzE5MTE@._V1_UY98_CR0,0,67,98_AL_.jpg
364	Chinatown	1974	UA	130	8.1	A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption, and murder.	92.0	123	294230	29,000,000	https://m.media-amazon.com/images/M/MV5BOGMwYmY5ZmEtMzY1Yi00OWJiLTk1Y2MtMzI2MjBhYmZkNTQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
365	Paper Moon	1973	U	102	8.1	During the Great Depression, a con man finds himself saddled with a young girl who may or may not be his daughter, and the two forge an unlikely partnership.	77.0	369	42285	30,933,743	https://m.media-amazon.com/images/M/MV5BOWVmYzQwY2MtOTBjNi00MDNhLWI5OGMtN2RiMDYxODI3MjU5XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX67_CR0,0,67,98_AL_.jpg
366	Viskningar och rop	1972	A	91	8.1	When a woman dying of cancer in early twentieth-century Sweden is visited by her two sisters, long-repressed feelings between the siblings rise to the surface.	NaN	260	30206	1,742,348	https://m.media-amazon.com/images/M/MV5BMTg3NzYzOTEtNmE2Ni00M2EyLWJhMjctNjMyMTk4ZTViOGUzXkEyXkFqcGdeQXVyNzQxNDExNTU@._V1_UY98_CR0,0,67,98_AL_.jpg
367	Solaris	1972	PG	167	8.1	A psychologist is sent to a station orbiting a distant planet in order to discover what has caused the crew to go insane.	90.0	259	81021	NaN	https://m.media-amazon.com/images/M/MV5BZmY4Yjc0OWQtZDRhMy00ODc2LWI2NGYtMWFlODYyN2VlNDQyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY98_CR1,0,67,98_AL_.jpg
368	Le samouraï	1967	GP	105	8.1	After professional hitman Jef Costello is seen by witnesses his efforts to provide himself an alibi drive him further into a corner.	NaN	372	45434	39,481	https://m.media-amazon.com/images/M/MV5BMWFjZjRiM2QtZmRkOC00MDUxLTlhYmQtYmY5ZTNiMTI5Nzc2L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
369	Cool Hand Luke	1967	A	127	8.1	A laid back Southern man is sentenced to two years in a rural prison, but refuses to conform.	92.0	373	161984	16,217,773	https://m.media-amazon.com/images/M/MV5BOWFlNzZhYmYtYTI5YS00MDQyLWIyNTUtNTRjMWUwNTEzNjA0XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX67_CR0,0,67,98_AL_.jpg
370	Persona	1966	NaN	85	8.1	A nurse is put in charge of a mute actress and finds that their personae are melding together.	86.0	260	103191	NaN	https://m.media-amazon.com/images/M/MV5BMTM0YzExY2EtMjUyZi00ZmIwLWFkYTktNjY5NmVkYTdkMjI5XkEyXkFqcGdeQXVyNzQxNDExNTU@._V1_UY98_CR0,0,67,98_AL_.jpg
371	Andrei Rublev	1966	R	205	8.1	The life, times and afflictions of the fifteenth-century Russian iconographer St. Andrei Rublev.	NaN	259	46947	102,021	https://m.media-amazon.com/images/M/MV5BNjM2MjMwNzUzN15BMl5BanBnXkFtZTgwMjEzMzE5MTE@._V1_UY98_CR2,0,67,98_AL_.jpg
372	La battaglia di Algeri	1966	NaN	121	8.1	In the 1950s, fear and violence escalate as the people of Algiers fight for independence from the French government.	96.0	376	53089	55,908	https://m.media-amazon.com/images/M/MV5BZWEzMGY4OTQtYTdmMy00M2QwLTliYTQtYWUzYzc3OTA5YzIwXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY98_CR1,0,67,98_AL_.jpg
373	El ángel exterminador	1962	NaN	95	8.1	The guests at an upper-class dinner party find themselves unable to leave.	NaN	377	29682	NaN	https://m.media-amazon.com/images/M/MV5BZTg3M2ExY2EtZmI5Yy00YWM1LTg4NzItZWEzZTgxNzE2MjhhXkEyXkFqcGdeQXVyNDE5MTU2MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
374	What Ever Happened to Baby Jane?	1962	Passed	134	8.1	A former child star torments her paraplegic sister in their decaying Hollywood mansion.	75.0	378	50058	4,050,000	https://m.media-amazon.com/images/M/MV5BZmI0M2VmNTgtMWVhYS00Zjg1LTk1YTYtNmJmMjRkZmMwYTc2XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
375	Sanjuro	1962	U	96	8.1	A crafty samurai helps a young man and his fellow clansmen save his uncle, who has been framed and imprisoned by a corrupt superintendent.	NaN	116	33044	NaN	https://m.media-amazon.com/images/M/MV5BZmY3MDlmODctYTY3Yi00NzYyLWIxNTUtYjVlZWZjMmMwZTBkXkEyXkFqcGdeQXVyMzAxNjg3MjQ@._V1_UX67_CR0,0,67,98_AL_.jpg
376	The Man Who Shot Liberty Valance	1962	NaN	123	8.1	A senator returns to a western town for the funeral of an old friend and tells the story of his origins.	94.0	380	68827	NaN	https://m.media-amazon.com/images/M/MV5BMGEyNzhkYzktMGMyZS00YzRiLWJlYjktZjJkOTU5ZDY0ZGI4XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX67_CR0,0,67,98_AL_.jpg
377	Ivanovo detstvo	1962	NaN	95	8.1	In WW2, twelve year old Soviet orphan Ivan Bondarev works for the Soviet army as a scout behind the German lines and strikes a friendship with three sympathetic Soviet officers.	NaN	259	31728	NaN	https://m.media-amazon.com/images/M/MV5BYTYzYzBhYjQtNDQxYS00MmUwLTkyZjgtZWVkOWFjNzE5OTI2XkEyXkFqcGdeQXVyNjMxMjkwMjI@._V1_UX67_CR0,0,67,98_AL_.jpg
378	Jungfrukällan	1960	A	89	8.1	An innocent yet pampered young virgin and her family's pregnant and jealous servant set out to deliver candles to church, but only one returns from events that transpire in the woods along the way.	NaN	260	26697	1,526,000	https://m.media-amazon.com/images/M/MV5BZjgyMzZkMGUtNTBhZC00OTkzLWI4ZmMtYzcwMzc5MjQ0YTM3XkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_UY98_CR3,0,67,98_AL_.jpg
379	Inherit the Wind	1960	Passed	128	8.1	Based on a real-life case in 1925, two great lawyers argue the case for and against a science teacher accused of the crime of teaching evolution.	75.0	267	27254	NaN	https://m.media-amazon.com/images/M/MV5BMGQ5ODNkNWYtYTgxZS00YjJkLThhODAtYzUwNGNiYjRmNjdkXkEyXkFqcGdeQXVyMTg2NTc4MzA@._V1_UY98_CR4,0,67,98_AL_.jpg
380	Les quatre cents coups	1959	NaN	99	8.1	A young boy, left without attention, delves into a life of petty crime.	NaN	384	105291	NaN	https://m.media-amazon.com/images/M/MV5BYTQ4MjA4NmYtYjRhNi00MTEwLTg0NjgtNjk3ODJlZGU4NjRkL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY98_CR3,0,67,98_AL_.jpg
381	Ben-Hur	1959	U	212	8.1	After a Jewish prince is betrayed and sent into slavery by a Roman friend, he regains his freedom and comes back for revenge.	90.0	385	219466	74,700,000	https://m.media-amazon.com/images/M/MV5BNjgxY2JiZDYtZmMwOC00ZmJjLWJmODUtMTNmNWNmYWI5ODkwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
382	Kakushi-toride no san-akunin	1958	NaN	139	8.1	Lured by gold, two greedy peasants unknowingly escort a princess and her general across enemy lines.	NaN	116	34797	NaN	https://m.media-amazon.com/images/M/MV5BYjJkN2Y5MTktZDRhOS00NTUwLWFiMzEtMTVlNWU4ODM0Y2E5XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY98_CR1,0,67,98_AL_.jpg
383	Le notti di Cabiria	1957	NaN	110	8.1	A waifish prostitute wanders the streets of Rome looking for true love but finds only heartbreak.	NaN	387	42940	752,045	https://m.media-amazon.com/images/M/MV5BOTdhNmUxZmQtNmMwNC00MzE3LWE1MTUtZDgxZTYwYjEzZjcwXkEyXkFqcGdeQXVyNTA1NjYyMDk@._V1_UY98_CR0,0,67,98_AL_.jpg
384	Kumonosu-jô	1957	NaN	110	8.1	A war-hardened general, egged on by his ambitious wife, works to fulfill a prophecy that he would become lord of Spider's Web Castle.	NaN	116	46678	NaN	https://m.media-amazon.com/images/M/MV5BNGYxZjA2M2ItYTRmNS00NzRmLWJkYzgtYTdiNGFlZDI5ZjNmXkEyXkFqcGdeQXVyNDE5MTU2MDE@._V1_UY98_CR0,0,67,98_AL_.jpg
385	The Bridge on the River Kwai	1957	PG	161	8.1	British POWs are forced to build a railway bridge across the river Kwai for their Japanese captors, not knowing that the allied forces are planning to destroy it.	87.0	201	203463	44,908,000	https://m.media-amazon.com/images/M/MV5BMGVhNjhjODktODgxYS00MDdhLTlkZjktYTkyNzQxMTU0ZDYxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
386	On the Waterfront	1954	A	108	8.1	An ex-prize fighter turned longshoreman struggles to stand up to his corrupt union bosses.	91.0	390	142107	9,600,000	https://m.media-amazon.com/images/M/MV5BY2I0MWFiZDMtNWQyYy00Njk5LTk3MDktZjZjNTNmZmVkYjkxXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
387	Le salaire de la peur	1953	U	131	8.1	In a decrepit South American village, four men are hired to transport an urgent nitroglycerine shipment without the equipment that would make it safe.	85.0	391	54588	NaN	https://m.media-amazon.com/images/M/MV5BZDdkNzMwZmUtY2Q5MS00ZmM2LWJhYjItYTBjMWY0MGM4MDRjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY98_CR0,0,67,98_AL_.jpg
388	Ace in the Hole	1951	Approved	111	8.1	A frustrated former big-city journalist now stuck working for an Albuquerque newspaper exploits a story about a man trapped in a cave to rekindle his career, but the situation quickly escalates into an out-of-control circus.	72.0	164	31568	3,969,893	https://m.media-amazon.com/images/M/MV5BNDUzZjlhZTYtN2E5MS00ODQ3LWI1ZjgtNzdiZmI0NTZiZTljXkEyXkFqcGdeQXVyMjI4MjA5MzA@._V1_UX67_CR0,0,67,98_AL_.jpg
389	White Heat	1949	NaN	114	8.1	A psychopathic criminal with a mother complex makes a daring break from prison and leads his old gang in a chemical plant payroll heist.	NaN	393	29807	NaN	https://m.media-amazon.com/images/M/MV5BZmI5NTA3MjItYzdhMi00MWMxLTg3OWMtYWQyYjg5MTFmM2U0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
390	The Third Man	1949	Approved	104	8.1	Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.	97.0	394	158731	449,191	https://m.media-amazon.com/images/M/MV5BYjE2OTdhMWUtOGJlMy00ZDViLWIzZjgtYjZkZGZmMDZjYmEyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
391	The Red Shoes	1948	NaN	135	8.1	A young ballet dancer is torn between the man she loves and her pursuit to become a prima ballerina.	NaN	395	30935	10,900,000	https://m.media-amazon.com/images/M/MV5BOWRmNGEwZjUtZjEwNS00OGZmLThhMmEtZTJlMTU5MGQ3ZWUwXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
392	The Shop Around the Corner	1940	NaN	99	8.1	Two employees at a gift shop can barely stand each other, without realizing that they are falling in love through the post as each other's anonymous pen pal.	96.0	277	28450	203,300	https://m.media-amazon.com/images/M/MV5BNzc1MTcyNTQ5N15BMl5BanBnXkFtZTgwMzgwMDI0MjE@._V1_UX67_CR0,0,67,98_AL_.jpg
393	Rebecca	1940	Approved	130	8.1	A self-conscious woman juggles adjusting to her new role as an aristocrat's wife and avoiding being intimidated by his first wife's spectral presence.	86.0	134	123942	4,360,000	https://m.media-amazon.com/images/M/MV5BYTcxYWExOTMtMWFmYy00ZjgzLWI0YjktNWEzYzJkZTg0NDdmL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY98_CR0,0,67,98_AL_.jpg
394	Mr. Smith Goes to Washington	1939	Passed	129	8.1	A naive man is appointed to fill a vacancy in the United States Senate. His plans promptly collide with political corruption, but he doesn't back down.	73.0	117	107017	9,600,000	https://m.media-amazon.com/images/M/MV5BZTYwYjYxYzgtMDE1Ni00NzU4LWJlMTEtODQ5YmJmMGJhZjI5L2ltYWdlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
395	Gone with the Wind	1939	U	238	8.1	A manipulative woman and a roguish man conduct a turbulent romance during the American Civil War and Reconstruction periods.	97.0	399	290074	198,676,459	https://m.media-amazon.com/images/M/MV5BYjUyZWZkM2UtMzYxYy00ZmQ3LWFmZTQtOGE2YjBkNjA3YWZlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
396	La Grande Illusion	1937	NaN	113	8.1	During WWI, two French soldiers are captured and imprisoned in a German P.O.W. camp. Several escape attempts follow until they are eventually sent to a seemingly inescapable fortress.	NaN	400	33829	172,885	https://m.media-amazon.com/images/M/MV5BMTg3MTI5NTk0N15BMl5BanBnXkFtZTgwMjU1MDM5MTE@._V1_UY98_CR2,0,67,98_AL_.jpg
397	It Happened One Night	1934	Approved	105	8.1	A renegade reporter and a crazy young heiress meet on a bus heading for New York, and end up stuck with each other when the bus leaves them behind at one of the stops.	87.0	117	94016	4,360,000	https://m.media-amazon.com/images/M/MV5BYzJmMWE5NjAtNWMyZS00NmFiLWIwMDgtZDE2NzczYWFhNzIzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
398	La passion de Jeanne d'Arc	1928	Passed	110	8.1	In 1431, Jeanne d'Arc is placed on trial on charges of heresy. The ecclesiastical jurists attempt to force Jeanne to recant her claims of holy visions.	NaN	402	47676	21,877	https://m.media-amazon.com/images/M/MV5BNjBjNDJiYTUtOWY0OS00OGVmLTg2YzctMTE0NzVhODM1ZWJmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
399	The Circus	1928	Passed	72	8.1	The Tramp finds work and the girl of his dreams at a circus.	90.0	136	30205	NaN	https://m.media-amazon.com/images/M/MV5BM2QwYWQ0MWMtNzcwOC00N2Q2LWE1MDEtZmQxZjhiM2U1YzFhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
400	Sunrise: A Song of Two Humans	1927	Passed	94	8.1	An allegorical tale about a man fighting the good and evil within him. Both sides are made flesh - one a sophisticated woman he is attracted to and the other his wife.	NaN	404	46865	539,540	https://m.media-amazon.com/images/M/MV5BNDVkYmYwM2ItNzRiMy00NWQ4LTlhMjMtNDI1ZDYyOGVmMzJjXkEyXkFqcGdeQXVyNTgzMzU5MDI@._V1_UX67_CR0,0,67,98_AL_.jpg
401	The General	1926	Passed	67	8.1	When Union spies steal an engineer's beloved locomotive, he pursues it single-handedly and straight through enemy lines.	NaN	405	81156	1,033,895	https://m.media-amazon.com/images/M/MV5BYmRiMDFlYjYtOTMwYy00OGY2LWE0Y2QtYzQxOGNhZmUwNTIxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
402	Das Cabinet des Dr. Caligari	1920	NaN	76	8.1	Hypnotist Dr. Caligari uses a somnambulist, Cesare, to commit murders.	NaN	406	57428	NaN	https://m.media-amazon.com/images/M/MV5BNWJiNGJiMTEtMGM3OC00ZWNlLTgwZTgtMzdhNTRiZjk5MTQ1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR1,0,67,98_AL_.jpg
403	Badhaai ho	2018	UA	124	8.0	A man is embarrassed when he finds out his mother is pregnant.	NaN	407	27978	NaN	https://m.media-amazon.com/images/M/MV5BNjZlMDdmN2YtYThmZi00NGQzLTk0ZTQtNTUyZDFmODExOGNiXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR0,0,67,98_AL_.jpg
404	Togo	2019	U	113	8.0	The story of Togo, the sled dog who led the 1925 serum run yet was considered by most to be too small and weak to lead such an intense race.	69.0	408	37556	NaN	https://m.media-amazon.com/images/M/MV5BNjJkYTc5N2UtMGRlMC00M2FmLTk0ZWMtOTYxNDUwNjI2YzljXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
405	Airlift	2016	UA	130	8.0	When Iraq invades Kuwait in August 1990, a callous Indian businessman becomes the spokesperson for more than 170,000 stranded countrymen.	NaN	409	52897	NaN	https://m.media-amazon.com/images/M/MV5BMGE1ZTkyOTMtMTdiZS00YzI2LTlmYWQtOTE5YWY0NWVlNjlmXkEyXkFqcGdeQXVyNjQ3ODkxMjE@._V1_UY98_CR0,0,67,98_AL_.jpg
406	Bajrangi Bhaijaan	2015	UA	163	8.0	An Indian man with a magnanimous heart takes a young mute Pakistani girl back to her homeland to reunite her with her family.	NaN	410	72245	8,178,001	https://m.media-amazon.com/images/M/MV5BMjE1NjQ5ODc2NV5BMl5BanBnXkFtZTgwOTM5ODIxNjE@._V1_UY98_CR0,0,67,98_AL_.jpg
407	Baby	2015	UA	159	8.0	An elite counter-intelligence unit learns of a plot, masterminded by a maniacal madman. With the clock ticking, it's up to them to track the terrorists' international tentacles and prevent them from striking at the heart of India.	NaN	309	52848	NaN	https://m.media-amazon.com/images/M/MV5BYTdhNjBjZDctYTlkYy00ZGIxLWFjYTktODk5ZjNlMzI4NjI3XkEyXkFqcGdeQXVyMjY1MjkzMjE@._V1_UY98_CR0,0,67,98_AL_.jpg
408	La La Land	2016	A	128	8.0	While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.	94.0	119	505918	151,101,803	https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_UX67_CR0,0,67,98_AL_.jpg
409	Lion	2016	U	118	8.0	A five-year-old Indian boy is adopted by an Australian couple after getting lost hundreds of kilometers from home. 25 years later, he sets out to find his lost family.	69.0	413	213970	51,739,495	https://m.media-amazon.com/images/M/MV5BMjA3NjkzNjg2MF5BMl5BanBnXkFtZTgwMDkyMzgzMDI@._V1_UX67_CR0,0,67,98_AL_.jpg
410	The Martian	2015	UA	144	8.0	An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.	80.0	124	760094	228,433,663	https://m.media-amazon.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_UX67_CR0,0,67,98_AL_.jpg
411	Zootopia	2016	U	108	8.0	In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy.	78.0	415	434143	341,268,248	https://m.media-amazon.com/images/M/MV5BOTMyMjEyNzIzMV5BMl5BanBnXkFtZTgwNzIyNjU0NzE@._V1_UX67_CR0,0,67,98_AL_.jpg
412	Bãhubali: The Beginning	2015	UA	159	8.0	In ancient India, an adventurous and daring man becomes involved in a decades-old feud between two warring peoples.	NaN	219	102972	6,738,000	https://m.media-amazon.com/images/M/MV5BYWVlMjVhZWYtNWViNC00ODFkLTk1MmItYjU1MDY5ZDdhMTU3XkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_UX67_CR0,0,67,98_AL_.jpg
413	Kaguyahime no monogatari	2013	U	137	8.0	Found inside a shining stalk of bamboo by an old bamboo cutter and his wife, a tiny girl grows rapidly into an exquisite young lady. The mysterious young princess enthralls all who encounter her, but ultimately she must confront her fate, the punishment for her crime.	89.0	131	38746	1,506,975	https://m.media-amazon.com/images/M/MV5BNThmMWMyMWMtOWRiNy00MGY0LTg1OTUtNjYzODg2MjdlZGU5XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR1,0,67,98_AL_.jpg
414	Wonder	2017	U	113	8.0	Based on the New York Times bestseller, this movie tells the incredibly inspiring and heartwarming story of August Pullman, a boy with facial differences who enters the fifth grade, attending a mainstream elementary school for the first time.	66.0	418	141923	132,422,809	https://m.media-amazon.com/images/M/MV5BYjFhOWY0OTgtNDkzMC00YWJkLTk1NGEtYWUxNjhmMmQ5ZjYyXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_UX67_CR0,0,67,98_AL_.jpg
415	Gully Boy	2019	UA	154	8.0	A coming-of-age story based on the lives of street rappers in Mumbai.	65.0	306	31886	5,566,534	https://m.media-amazon.com/images/M/MV5BZDkzMTQ1YTMtMWY4Ny00MzExLTkzYzEtNzZhOTczNzU2NTU1XkEyXkFqcGdeQXVyODY3NjMyMDU@._V1_UY98_CR4,0,67,98_AL_.jpg
416	Special Chabbis	2013	UA	144	8.0	A gang of con-men rob prominent rich businessmen and politicians by posing as C.B.I and income tax officers.	NaN	309	51069	1,079,369	https://m.media-amazon.com/images/M/MV5BMTQ1NDI5MjMzNF5BMl5BanBnXkFtZTcwMTc0MDQwOQ@@._V1_UY98_CR0,0,67,98_AL_.jpg
417	Short Term 12	2013	R	96	8.0	A 20-something supervising staff member of a residential treatment facility navigates the troubled waters of that world alongside her co-worker and longtime boyfriend.	82.0	421	81770	1,010,414	https://m.media-amazon.com/images/M/MV5BMTEwNjE2OTM4NDZeQTJeQWpwZ15BbWU3MDE2MTE4OTk@._V1_UX67_CR0,0,67,98_AL_.jpg
418	Serbuan maut 2: Berandal	2014	A	150	8.0	Only a short time after the first raid, Rama goes undercover with the thugs of Jakarta and plans to bring down the syndicate and uncover the corruption within his police force.	71.0	422	114316	2,625,803	https://m.media-amazon.com/images/M/MV5BMTg5MTE2NjA4OV5BMl5BanBnXkFtZTgwMTUyMjczMTE@._V1_UX67_CR0,0,67,98_AL_.jpg
419	The Imitation Game	2014	UA	114	8.0	During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians.	73.0	423	685201	91,125,683	https://m.media-amazon.com/images/M/MV5BOTgwMzFiMWYtZDhlNS00ODNkLWJiODAtZDVhNzgyNzJhYjQ4L2ltYWdlXkEyXkFqcGdeQXVyNzEzOTYxNTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
420	Guardians of the Galaxy	2014	UA	121	8.0	A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe.	76.0	424	1043455	333,176,600	https://m.media-amazon.com/images/M/MV5BMTAwMjU5OTgxNjZeQTJeQWpwZ15BbWU4MDUxNDYxODEx._V1_UX67_CR0,0,67,98_AL_.jpg
421	Blade Runner 2049	2017	UA	164	8.0	Young Blade Runner K's discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who's been missing for thirty years.	81.0	175	461823	92,054,159	https://m.media-amazon.com/images/M/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_UX67_CR0,0,67,98_AL_.jpg
422	Her	2013	A	126	8.0	In a near future, a lonely writer develops an unlikely relationship with an operating system designed to meet his every need.	90.0	426	540772	25,568,251	https://m.media-amazon.com/images/M/MV5BMjA1Nzk0OTM2OF5BMl5BanBnXkFtZTgwNjU2NjEwMDE@._V1_UX67_CR0,0,67,98_AL_.jpg
423	Bohemian Rhapsody	2018	UA	134	8.0	The story of the legendary British rock band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985).	49.0	126	450349	216,428,042	https://m.media-amazon.com/images/M/MV5BMTA2NDc3Njg5NDVeQTJeQWpwZ15BbWU4MDc1NDcxNTUz._V1_UX67_CR0,0,67,98_AL_.jpg
424	The Revenant	2015	A	156	8.0	A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.	76.0	329	705589	183,637,894	https://m.media-amazon.com/images/M/MV5BMDE5OWMzM2QtOTU2ZS00NzAyLWI2MDEtOTRlYjIxZGM0OWRjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UX67_CR0,0,67,98_AL_.jpg
425	The Perks of Being a Wallflower	2012	UA	103	8.0	An introvert freshman is taken under the wings of two seniors who welcome him to the real world	67.0	418	462252	17,738,570	https://m.media-amazon.com/images/M/MV5BZThjMmQ5YjktMTUyMC00MjljLWJmMTAtOWIzNDIzY2VhNzQ0XkEyXkFqcGdeQXVyMTAyNjg4NjE0._V1_UX67_CR0,0,67,98_AL_.jpg
426	Tropa de Elite 2: O Inimigo Agora é Outro	2010	NaN	115	8.0	After a prison riot, former-Captain Nascimento, now a high ranking security officer in Rio de Janeiro, is swept into a bloody political dispute that involves government officials and paramilitary groups.	71.0	430	79200	100,119	https://m.media-amazon.com/images/M/MV5BMjEzMzMxOTUyNV5BMl5BanBnXkFtZTcwNjI3MDc5Ng@@._V1_UX67_CR0,0,67,98_AL_.jpg
427	The King's Speech	2010	U	118	8.0	The story of King George VI, his impromptu ascension to the throne of the British Empire in 1936, and the speech therapist who helped the unsure monarch overcome his stammer.	88.0	431	639603	138,797,449	https://m.media-amazon.com/images/M/MV5BMzU5MjEwMTg2Nl5BMl5BanBnXkFtZTcwNzM3MTYxNA@@._V1_UY98_CR0,0,67,98_AL_.jpg
428	The Help	2011	UA	146	8.0	An aspiring author during the civil rights movement of the 1960s decides to write a book detailing the African American maids' point of view on the white families for which they work, and the hardships they go through on a daily basis.	62.0	432	428521	169,708,112	https://m.media-amazon.com/images/M/MV5BMTM5OTMyMjIxOV5BMl5BanBnXkFtZTcwNzU4MjIwNQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
429	Deadpool	2016	R	108	8.0	A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.	65.0	433	902669	363,070,709	https://m.media-amazon.com/images/M/MV5BYzE5MjY1ZDgtMTkyNC00MTMyLThhMjAtZGI5OTE1NzFlZGJjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
430	Darbareye Elly	2009	TV-PG	119	8.0	The mysterious disappearance of a kindergarten teacher during a picnic in the north of Iran is followed by a series of misadventures for her fellow travelers.	87.0	174	45803	106,662	https://m.media-amazon.com/images/M/MV5BMTQ0MzQxODQ0MV5BMl5BanBnXkFtZTgwNTQ0NzY4NDE@._V1_UX67_CR0,0,67,98_AL_.jpg
431	Dev.D	2009	A	144	8.0	After breaking up with his childhood sweetheart, a young man finds solace in drugs. Meanwhile, a teenage girl is caught in the world of prostitution. Will they be destroyed, or will they find redemption?	NaN	225	28749	10,950	https://m.media-amazon.com/images/M/MV5BYjU1NjczNzYtYmFjOC00NzkxLTg4YTUtNGYzMTk3NTU0ZDE3XkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UY98_CR0,0,67,98_AL_.jpg
432	Yip Man	2008	R	106	8.0	During the Japanese invasion of China, a wealthy martial artist is forced to leave his home when his city is occupied. With little means of providing for themselves, Ip Man and the remaining members of the city must find a way to survive.	59.0	436	211427	NaN	https://m.media-amazon.com/images/M/MV5BNTFmMjM3M2UtOTIyZC00Zjk3LTkzODUtYTdhNGRmNzFhYzcyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
433	My Name Is Khan	2010	UA	165	8.0	An Indian Muslim man with Asperger's syndrome takes a challenge to speak to the President of the United States seriously and embarks on a cross-country journey.	50.0	437	98575	4,018,695	https://m.media-amazon.com/images/M/MV5BMTUyMTA4NDYzMV5BMl5BanBnXkFtZTcwMjk5MzcxMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
434	Nefes: Vatan Sagolsun	2009	NaN	128	8.0	Story of 40-man Turkish task force who must defend a relay station.	NaN	438	31838	NaN	https://m.media-amazon.com/images/M/MV5BMjE2NjEyMDg0M15BMl5BanBnXkFtZTcwODYyODg5Mg@@._V1_UY98_CR0,0,67,98_AL_.jpg
435	Slumdog Millionaire	2008	UA	120	8.0	A Mumbai teenager reflects on his life after being accused of cheating on the Indian version of "Who Wants to be a Millionaire?".	84.0	339	798882	141,319,928	https://m.media-amazon.com/images/M/MV5BZmNjZWI3NzktYWI1Mi00OTAyLWJkNTYtMzUwYTFlZDA0Y2UwXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
436	Black Swan	2010	A	108	8.0	A committed dancer struggles to maintain her sanity after winning the lead role in a production of Tchaikovsky's "Swan Lake".	79.0	182	699673	106,954,678	https://m.media-amazon.com/images/M/MV5BNzY2NzI4OTE5MF5BMl5BanBnXkFtZTcwMjMyNDY4Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg
437	Tropa de Elite	2007	R	115	8.0	In 1997 Rio de Janeiro, Captain Nascimento has to find a substitute for his position while trying to take down drug dealers and criminals before the Pope visits.	33.0	430	98097	8,060	https://m.media-amazon.com/images/M/MV5BYmI1ODU5ZjMtNWUyNC00YzllLThjNzktODE1M2E4OTVmY2E5XkEyXkFqcGdeQXVyMTExNzQzMDE0._V1_UY98_CR1,0,67,98_AL_.jpg
438	The Avengers	2012	UA	143	8.0	Earth's mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.	69.0	442	1260806	623,279,547	https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
439	Persepolis	2007	PG-13	96	8.0	A precocious and outspoken Iranian girl grows up during the Islamic Revolution.	90.0	443	88656	4,445,756	https://m.media-amazon.com/images/M/MV5BMGRkZThmYzEtYjQxZC00OWEzLThjYjAtYzFkMjY0NGZkZWI4XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
440	Dallas Buyers Club	2013	R	117	8.0	In 1985 Dallas, electrician and hustler Ron Woodroof works around the system to help AIDS patients get the medication they need after he is diagnosed with the disease.	80.0	444	441614	27,298,285	https://m.media-amazon.com/images/M/MV5BMTYwMTA4MzgyNF5BMl5BanBnXkFtZTgwMjEyMjE0MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
441	The Pursuit of Happyness	2006	U	117	8.0	A struggling salesman takes custody of his son as he's poised to begin a life-changing professional career.	64.0	445	448930	163,566,459	https://m.media-amazon.com/images/M/MV5BMTQ5NjQ0NDI3NF5BMl5BanBnXkFtZTcwNDI0MjEzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
442	Blood Diamond	2006	A	143	8.0	A fisherman, a smuggler, and a syndicate of businessmen match wits over the possession of a priceless diamond.	64.0	446	499439	57,366,262	https://m.media-amazon.com/images/M/MV5BZDMxOGZhNWYtMzRlYy00Mzk5LWJjMjEtNmQ4NDU4M2QxM2UzXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
443	The Bourne Ultimatum	2007	UA	115	8.0	Jason Bourne dodges a ruthless C.I.A. official and his Agents from a new assassination program while searching for the origins of his life as a trained killer.	85.0	447	604694	227,471,070	https://m.media-amazon.com/images/M/MV5BNGNiNmU2YTMtZmU4OS00MjM0LTlmYWUtMjVlYjAzYjE2N2RjXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
444	Bin-jip	2004	U	88	8.0	A transient young man breaks into empty homes to partake of the vacationing residents' lives for a few days.	72.0	448	50610	238,507	https://m.media-amazon.com/images/M/MV5BMTM1ODIwNzM5OV5BMl5BanBnXkFtZTcwNjk5MDkyMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
445	Sin City	2005	A	124	8.0	A movie that explores the dark and miserable town, Basin City, tells the story of three different people, all caught up in violent corruption.	74.0	449	738512	74,103,820	https://m.media-amazon.com/images/M/MV5BODZmYjMwNzEtNzVhNC00ZTRmLTk2M2UtNzE1MTQ2ZDAxNjc2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
446	Le scaphandre et le papillon	2007	PG-13	112	8.0	The true story of Elle editor Jean-Dominique Bauby who suffers a stroke and has to live with an almost totally paralyzed body; only his left eye isn't paralyzed.	92.0	450	103284	5,990,075	https://m.media-amazon.com/images/M/MV5BMTc3MjkzMDkxN15BMl5BanBnXkFtZTcwODAyMTU1MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
447	G.O.R.A.	2004	NaN	127	8.0	A slick young Turk kidnapped by extraterrestrials shows his great « humanitarian spirit » by outwitting the evil commander-in-chief of the planet of G.O.R.A.	NaN	451	56960	NaN	https://m.media-amazon.com/images/M/MV5BMjE0MTY2MDI3NV5BMl5BanBnXkFtZTcwNTc1MzEzMQ@@._V1_UY98_CR2,0,67,98_AL_.jpg
448	Ratatouille	2007	U	111	8.0	A rat who can cook makes an unusual alliance with a young kitchen worker at a famous restaurant.	96.0	452	641645	206,445,654	https://m.media-amazon.com/images/M/MV5BMTMzODU0NTkxMF5BMl5BanBnXkFtZTcwMjQ4MzMzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
449	Casino Royale	2006	PG-13	144	8.0	After earning 00 status and a licence to kill, Secret Agent James Bond sets out on his first mission as 007. Bond must defeat a private banker funding terrorists in a high-stakes game of poker at Casino Royale, Montenegro.	80.0	453	582239	167,445,960	https://m.media-amazon.com/images/M/MV5BMDI5ZWJhOWItYTlhOC00YWNhLTlkNzctNDU5YTI1M2E1MWZhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX67_CR0,0,67,98_AL_.jpg
450	Kill Bill: Vol. 2	2004	A	137	8.0	The Bride continues her quest of vengeance against her former boss and lover Bill, the reclusive bouncer Budd, and the treacherous, one-eyed Elle.	83.0	91	683900	66,208,183	https://m.media-amazon.com/images/M/MV5BNmFiYmJmN2QtNWQwMi00MzliLThiOWMtZjQxNGRhZTQ1MjgyXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
451	Vozvrashchenie	2003	NaN	110	8.0	In the Russian wilderness, two brothers face a range of new, conflicting emotions when their father - a man they know only through a single photograph - resurfaces.	82.0	455	42399	502,028	https://m.media-amazon.com/images/M/MV5BYmViZTY1OWEtMTQxMy00OGQ5LTgzZjAtYTQzOTYxNjliYTI4XkEyXkFqcGdeQXVyNjkxOTM4ODY@._V1_UY98_CR1,0,67,98_AL_.jpg
452	Bom Yeoareum Gaeul Gyeoul Geurigo Bom	2003	R	103	8.0	A boy is raised by a Buddhist monk in an isolated floating temple where the years pass like the seasons.	85.0	448	77520	2,380,788	https://m.media-amazon.com/images/M/MV5BZGYxOTRlM2MtNWRjZS00NDk2LWExM2EtMDFiYTgyMGJkZGYyXkEyXkFqcGdeQXVyMTA1NTM1NDI2._V1_UY98_CR1,0,67,98_AL_.jpg
453	Mar adentro	2014	U	126	8.0	The factual story of Spaniard Ramon Sampedro, who fought a thirty-year campaign in favor of euthanasia and his own right to die.	74.0	457	77554	2,086,345	https://m.media-amazon.com/images/M/MV5BMjE0NDk2NjgwMV5BMl5BanBnXkFtZTYwMTgyMzA3._V1_UX67_CR0,0,67,98_AL_.jpg
454	Cinderella Man	2005	UA	144	8.0	The story of James J. Braddock, a supposedly washed-up boxer who came back to become a champion and an inspiration in the 1930s.	69.0	244	176151	61,649,911	https://m.media-amazon.com/images/M/MV5BODEyYmQxZjUtZGQ0NS00ZTAwLTkwOGQtNGY2NzEwMWE0MDc3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
455	Kal Ho Naa Ho	2003	U	186	8.0	Naina, an introverted, perpetually depressed girl's life changes when she meets Aman. But Aman has a secret of his own which changes their lives forever. Embroiled in all this is Rohit, Naina's best friend who conceals his love for her.	54.0	459	63460	1,787,378	https://m.media-amazon.com/images/M/MV5BYmVjNDIxODAtNWZiZi00ZDBlLWJmOTUtNDNjMGExNTViMzE1XkEyXkFqcGdeQXVyNTE0MDc0NTM@._V1_UX67_CR0,0,67,98_AL_.jpg
456	Mou gaan dou	2002	UA	101	8.0	A story between a mole in the police department and an undercover cop. Their objectives are the same: to find out who is the mole, and who is the cop.	75.0	460	117857	169,659	https://m.media-amazon.com/images/M/MV5BM2U0NTcxOTktN2MwZS00N2Q2LWJlYWItMTg0NWIyMDIxNzU5L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
457	Pirates of the Caribbean: The Curse of the Black Pearl	2003	UA	143	8.0	Blacksmith Will Turner teams up with eccentric pirate "Captain" Jack Sparrow to save his love, the governor's daughter, from Jack's former pirate allies, who are now undead.	63.0	461	1015122	305,413,918	https://m.media-amazon.com/images/M/MV5BNGYyZGM5MGMtYTY2Ni00M2Y1LWIzNjQtYWUzM2VlNGVhMDNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
458	Big Fish	2003	U	125	8.0	A frustrated son tries to determine the fact from fiction in his dying father's life.	58.0	462	415218	66,257,002	https://m.media-amazon.com/images/M/MV5BMmU3NzIyODctYjVhOC00NzBmLTlhNWItMzBlODEwZTlmMjUzXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX67_CR0,0,67,98_AL_.jpg
459	The Incredibles	2004	U	115	8.0	A family of undercover superheroes, while trying to live the quiet suburban life, are forced into action to save the world.	90.0	452	657047	261,441,092	https://m.media-amazon.com/images/M/MV5BMTY5OTU0OTc2NV5BMl5BanBnXkFtZTcwMzU4MDcyMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
460	Yeopgijeogin geunyeo	2001	NaN	137	8.0	A young man sees a drunk, cute woman standing too close to the tracks at a metro station in Seoul and pulls her back. She ends up getting him into trouble repeatedly after that, starting on the train.	NaN	464	45403	NaN	https://m.media-amazon.com/images/M/MV5BMjM2NTYxMTE3OV5BMl5BanBnXkFtZTgwNDgwNjgwMzE@._V1_UY98_CR3,0,67,98_AL_.jpg
461	Dogville	2003	R	178	8.0	A woman on the run from the mob is reluctantly accepted in a small Colorado community in exchange for labor, but when a search visits the town she finds out that their support has a price.	60.0	465	137963	1,530,386	https://m.media-amazon.com/images/M/MV5BMTkwNTg2MTI1NF5BMl5BanBnXkFtZTcwMDM1MzUyMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
462	Vizontele	2001	NaN	110	8.0	Lives of residents in a small Anatolian village change when television is introduced to them	NaN	466	33592	NaN	https://m.media-amazon.com/images/M/MV5BMjA2MzM4NjkyMF5BMl5BanBnXkFtZTYwMTQ2ODc5._V1_UY98_CR2,0,67,98_AL_.jpg
463	Donnie Darko	2001	R	113	8.0	After narrowly escaping a bizarre accident, a troubled teenager is plagued by visions of a man in a large rabbit suit who manipulates him to commit a series of crimes.	88.0	467	740086	1,480,006	https://m.media-amazon.com/images/M/MV5BZjZlZDlkYTktMmU1My00ZDBiLWFlNjEtYTBhNjVhOTM4ZjJjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
464	Magnolia	1999	R	188	8.0	An epic mosaic of interrelated characters in search of love, forgiveness, and meaning in the San Fernando Valley.	77.0	234	289742	22,455,976	https://m.media-amazon.com/images/M/MV5BZjk3YThkNDktNjZjMS00MTBiLTllNTAtYzkzMTU0N2QwYjJjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
465	Dancer in the Dark	2000	U	140	8.0	An East European girl travels to the United States with her young son, expecting it to be like a Hollywood film.	61.0	465	102285	4,184,036	https://m.media-amazon.com/images/M/MV5BNDVkYWMxNWEtNjc2MC00OGI5LWI3NmUtYWUwNDQyOTc3YmY5XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
466	The Straight Story	1999	U	112	8.0	An old man makes a long journey by lawnmower to mend his relationship with an ill brother.	86.0	361	82002	6,203,044	https://m.media-amazon.com/images/M/MV5BNmE1MDk4OWEtYjk1NS00MWU2LTk5ZWItYjZhYmRkODRjMDc0XkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_UX67_CR0,0,67,98_AL_.jpg
467	Pâfekuto burû	1997	A	81	8.0	A pop singer gives up her career to become an actress, but she slowly goes insane when she starts being stalked by an obsessed fan and what seems to be a ghost of her past.	NaN	471	58192	776,665	https://m.media-amazon.com/images/M/MV5BMmMzOWNhNTYtYmY0My00OGJiLWIzNDUtZWRhNGY0NWFjNzFmXkEyXkFqcGdeQXVyNjUxMDQ0MTg@._V1_UX67_CR0,0,67,98_AL_.jpg
468	Festen	1998	R	105	8.0	At Helge's 60th birthday party, some unpleasant family truths are revealed.	82.0	173	78341	1,647,780	https://m.media-amazon.com/images/M/MV5BYTg3Yjc4N2QtZDdlNC00NmU2LWFiYjktYjI3NTMwMjk4M2FmXkEyXkFqcGdeQXVyMjgyNjk3MzE@._V1_UY98_CR4,0,67,98_AL_.jpg
469	Central do Brasil	1998	R	110	8.0	An emotive journey of a former school teacher, who writes letters for illiterate people, and a young boy, whose mother has just died, as they search for the father he never knew.	80.0	473	36419	5,595,428	https://m.media-amazon.com/images/M/MV5BMjE3ZDA5ZmUtYTk1ZS00NmZmLWJhNTItYjIwZjUwN2RjNzIyXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_UX67_CR0,0,67,98_AL_.jpg
470	The Iron Giant	1999	PG	86	8.0	A young boy befriends a giant robot from outer space that a paranoid government agent wants to destroy.	85.0	452	172083	23,159,305	https://m.media-amazon.com/images/M/MV5BMjIxNDU2Njk0OV5BMl5BanBnXkFtZTgwODc3Njc3NjE@._V1_UX67_CR0,0,67,98_AL_.jpg
471	Knockin' on Heaven's Door	1997	NaN	87	8.0	Two terminally ill patients escape from a hospital, steal a car and rush towards the sea.	NaN	475	27721	3,296	https://m.media-amazon.com/images/M/MV5BMTk2MjcxNjMzN15BMl5BanBnXkFtZTgwMTE3OTEwNjE@._V1_UY98_CR3,0,67,98_AL_.jpg
472	Sling Blade	1996	R	135	8.0	Karl Childers, a simple man hospitalized since his childhood murder of his mother and her lover, is released to start a new life in a small town.	84.0	476	86838	24,475,416	https://m.media-amazon.com/images/M/MV5BNGY5NWIxMjAtODBjNC00MmZhLTk1ZTAtNGRhYThlOTNjMTQwXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX67_CR0,0,67,98_AL_.jpg
515	The Hustler	1961	A	134	8.0	An up-and-coming pool player plays a long-time champion in a single high-stakes match.	90.0	519	75067	8,284,000	https://m.media-amazon.com/images/M/MV5BNjhjODI2NTItMGE1ZS00NThiLWE1MmYtOWE3YzcyNzY1MTJlXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX67_CR0,0,67,98_AL_.jpg
473	Secrets & Lies	1996	U	136	8.0	Following the death of her adoptive parents, a successful young black optometrist establishes contact with her biological mother -- a lonely white factory worker living in poverty in East London.	91.0	477	37564	13,417,292	https://m.media-amazon.com/images/M/MV5BY2QzMTIxNjItNGQyNy00MjQzLWJiYTItMzIyZjdkYjYyYjRlXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UX67_CR0,0,67,98_AL_.jpg
474	Twelve Monkeys	1995	A	129	8.0	In a future world devastated by disease, a convict is sent back in time to gather information about the man-made virus that wiped out most of the human population on the planet.	74.0	263	578443	57,141,459	https://m.media-amazon.com/images/M/MV5BN2Y2OWU4MWMtNmIyMy00YzMyLWI0Y2ItMTcyZDc3MTdmZDU4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
475	Kôkaku Kidôtai	1995	UA	83	8.0	A cyborg policewoman and her partner hunt a mysterious and powerful hacker called the Puppet Master.	76.0	479	129231	515,905	https://m.media-amazon.com/images/M/MV5BYWRiYjQyOGItNzQ1Mi00MGI1LWE3NjItNTg1ZDQwNjUwNDM2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
476	The Nightmare Before Christmas	1993	U	76	8.0	Jack Skellington, king of Halloween Town, discovers Christmas Town, but his attempts to bring Christmas to his home causes confusion.	82.0	480	300208	75,082,668	https://m.media-amazon.com/images/M/MV5BNWE4OTNiM2ItMjY4Ni00ZTViLWFiZmEtZGEyNGY2ZmNlMzIyXkEyXkFqcGdeQXVyMDU5NDcxNw@@._V1_UX67_CR0,0,67,98_AL_.jpg
477	Groundhog Day	1993	U	101	8.0	A weatherman finds himself inexplicably living the same day over and over again.	72.0	481	577991	70,906,973	https://m.media-amazon.com/images/M/MV5BZWIxNzM5YzQtY2FmMS00Yjc3LWI1ZjUtNGVjMjMzZTIxZTIxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
478	Bound by Honor	1993	R	180	8.0	Based on the true life experiences of poet Jimmy Santiago Baca, the film focuses on step-brothers Paco and Cruz, and their bi-racial cousin Miklo.	47.0	482	28825	4,496,583	https://m.media-amazon.com/images/M/MV5BNzZmMjAxNjQtZjQzOS00NjU4LWI0NDktZjlkZTgwNjVmNzU3XkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
479	Scent of a Woman	1992	UA	156	8.0	A prep school student needing money agrees to "babysit" a blind man, but the job is not at all what he anticipated.	59.0	483	263918	63,895,607	https://m.media-amazon.com/images/M/MV5BZTM3ZjA3NTctZThkYy00ODYyLTk2ZjItZmE0MmZlMTk3YjQwXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
480	Aladdin	1992	U	90	8.0	A kindhearted street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power to make their deepest wishes come true.	86.0	484	373845	217,350,219	https://m.media-amazon.com/images/M/MV5BY2Q2NDI1MjUtM2Q5ZS00MTFlLWJiYWEtNTZmNjQ3OGJkZDgxXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
481	JFK	1991	UA	189	8.0	New Orleans District Attorney Jim Garrison discovers there's more to the Kennedy assassination than the official story.	72.0	353	142110	70,405,498	https://m.media-amazon.com/images/M/MV5BYjYyODExMDctZjgwYy00ZjQwLWI4OWYtOGFlYjA4ZjEzNmY1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
482	Beauty and the Beast	1991	G	84	8.0	A prince cursed to spend his days as a hideous monster sets out to regain his humanity by earning a young woman's love.	95.0	486	417178	218,967,620	https://m.media-amazon.com/images/M/MV5BMzE5MDM1NDktY2I0OC00YWI5LTk2NzUtYjczNDczOWQxYjM0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
483	Dances with Wolves	1990	U	181	8.0	Lieutenant John Dunbar, assigned to a remote western Civil War outpost, befriends wolves and Indians, making him an intolerable aberration in the military.	72.0	487	240266	184,208,848	https://m.media-amazon.com/images/M/MV5BMTY3OTI5NDczN15BMl5BanBnXkFtZTcwNDA0NDY3Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg
484	Do the Right Thing	1989	R	120	8.0	On the hottest day of the year on a street in the Bedford-Stuyvesant section of Brooklyn, everyone's hate and bigotry smolders and builds until it explodes into violence.	93.0	488	89429	27,545,445	https://m.media-amazon.com/images/M/MV5BODA2MjU1NTI1MV5BMl5BanBnXkFtZTgwOTU4ODIwMjE@._V1_UX67_CR0,0,67,98_AL_.jpg
485	Rain Man	1988	U	133	8.0	Selfish yuppie Charlie Babbitt's father left a fortune to his savant brother Raymond and a pittance to Charlie; they travel cross-country.	65.0	489	473064	178,800,000	https://m.media-amazon.com/images/M/MV5BMzVjNzI4NzYtMjE4NS00M2IzLWFkOWMtOTYwMWUzN2ZlNGVjL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
486	Akira	1988	UA	124	8.0	A secret military project endangers Neo-Tokyo when it turns a biker gang member into a rampaging psychic psychopath who can only be stopped by two teenagers and a group of psychics.	NaN	490	164918	553,171	https://m.media-amazon.com/images/M/MV5BM2ZiZTk1ODgtMTZkNS00NTYxLWIxZTUtNWExZGYwZTRjODViXkEyXkFqcGdeQXVyMTE2MzA3MDM@._V1_UX67_CR0,0,67,98_AL_.jpg
487	The Princess Bride	1987	U	98	8.0	While home sick in bed, a young boy's grandfather reads him the story of a farmboy-turned-pirate who encounters numerous obstacles, enemies and allies in his quest to be reunited with his true love.	77.0	352	393899	30,857,814	https://m.media-amazon.com/images/M/MV5BMGM4M2Q5N2MtNThkZS00NTc1LTk1NTItNWEyZjJjNDRmNDk5XkEyXkFqcGdeQXVyMjA0MDQ0Mjc@._V1_UX67_CR0,0,67,98_AL_.jpg
488	Der Himmel über Berlin	1987	U	128	8.0	An angel tires of overseeing human activity and wishes to become human when he falls in love with a mortal.	79.0	354	64722	3,333,969	https://m.media-amazon.com/images/M/MV5BMzMxZjUzOGQtOTFlOS00MzliLWJhNTUtOTgyNzYzMWQ2YzhmXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UY98_CR0,0,67,98_AL_.jpg
489	Au revoir les enfants	1987	U	104	8.0	A French boarding school run by priests seems to be a haven from World War II until a new student arrives. He becomes the roommate of the top student in his class. Rivals at first, the roommates form a bond and share a secret.	88.0	493	31163	4,542,825	https://m.media-amazon.com/images/M/MV5BZmYxOTA5YTEtNDY3Ni00YTE5LWE1MTgtYjc4ZWUxNWY3ZTkxXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
490	Tenkû no shiro Rapyuta	1986	U	125	8.0	A young boy and a girl with a magic crystal must race against pirates and foreign agents in a search for a legendary floating castle.	78.0	108	150140	NaN	https://m.media-amazon.com/images/M/MV5BNTg0NmI1ZGQtZTUxNC00NTgxLThjMDUtZmRlYmEzM2MwOWYwXkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_UY98_CR1,0,67,98_AL_.jpg
491	The Terminator	1984	UA	107	8.0	A human soldier is sent from 2029 to 1984 to stop an almost indestructible cyborg killing machine, sent from the same year, which has been programmed to execute a young woman whose unborn son is the key to humanity's future salvation.	84.0	129	799795	38,400,000	https://m.media-amazon.com/images/M/MV5BYTViNzMxZjEtZGEwNy00MDNiLWIzNGQtZDY2MjQ1OWViZjFmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
492	Gandhi	1982	U	191	8.0	The life of the lawyer who became the famed leader of the Indian revolts against the British rule through his philosophy of nonviolent protest.	79.0	496	217664	52,767,889	https://m.media-amazon.com/images/M/MV5BMzJiZDRmOWUtYjE2MS00Mjc1LTg1ZDYtNTQxYWJkZTg1OTM4XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX67_CR0,0,67,98_AL_.jpg
493	Kagemusha	1980	U	180	8.0	A petty thief with an utter resemblance to a samurai warlord is hired as the lord's double. When the warlord later dies the thief is forced to take up arms in his place.	84.0	116	32195	NaN	https://m.media-amazon.com/images/M/MV5BMzFhNWVmNWItNGM5OC00NjZhLTk3YTQtMjE1ODUyOThlMjNmL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
494	Being There	1979	PG	130	8.0	A simpleminded, sheltered gardener becomes an unlikely trusted advisor to a powerful businessman and an insider in Washington politics.	83.0	498	65625	30,177,511	https://m.media-amazon.com/images/M/MV5BNjAzNzJjYzQtMGFmNS00ZjAzLTkwMjgtMWIzYzFkMzM4Njg3XkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_UX67_CR0,0,67,98_AL_.jpg
495	Annie Hall	1977	A	93	8.0	Neurotic New York comedian Alvy Singer falls in love with the ditzy Annie Hall.	92.0	499	251823	39,200,000	https://m.media-amazon.com/images/M/MV5BZDg1OGQ4YzgtM2Y2NS00NjA3LWFjYTctMDRlMDI3NWE1OTUyXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX67_CR0,0,67,98_AL_.jpg
496	Jaws	1975	A	124	8.0	When a killer shark unleashes chaos on a beach community, it's up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.	87.0	92	543388	260,000,000	https://m.media-amazon.com/images/M/MV5BMmVmODY1MzEtYTMwZC00MzNhLWFkNDMtZjAwM2EwODUxZTA5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
497	Dog Day Afternoon	1975	U	125	8.0	Three amateur bank robbers plan to hold up a bank. A nice simple robbery: Walk in, take the money, and run. Unfortunately, the supposedly uncomplicated heist suddenly becomes a bizarre nightmare as everything that could go wrong does.	86.0	89	235652	50,000,000	https://m.media-amazon.com/images/M/MV5BODExZmE2ZWItYTIzOC00MzI1LTgyNTktMDBhNmFhY2Y4OTQ3XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
498	Young Frankenstein	1974	A	106	8.0	An American grandson of the infamous scientist, struggling to prove that his grandfather was not as insane as people believe, is invited to Transylvania, where he discovers the process that reanimates a dead body.	80.0	502	143359	86,300,000	https://m.media-amazon.com/images/M/MV5BMTEwNjg2MjM2ODFeQTJeQWpwZ15BbWU4MDQ1MDU5OTEx._V1_UX67_CR0,0,67,98_AL_.jpg
499	Papillon	1973	R	151	8.0	A man befriends a fellow criminal as the two of them begin serving their sentence on a dreadful prison island, which inspires the man to plot his escape.	58.0	503	121627	53,267,000	https://m.media-amazon.com/images/M/MV5BZGRjZjQ0NzAtYmZlNS00Zjc1LTk1YWItMDY5YzQxMzA4MTAzXkEyXkFqcGdeQXVyMjI4MjA5MzA@._V1_UX67_CR0,0,67,98_AL_.jpg
500	The Exorcist	1973	A	122	8.0	When a 12-year-old girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her.	81.0	504	362393	232,906,145	https://m.media-amazon.com/images/M/MV5BYjhmMGMxZDYtMTkyNy00YWVmLTgyYmUtYTU3ZjcwNTBjN2I1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
501	Sleuth	1972	PG	138	8.0	A man who loves games and theater invites his wife's lover to meet him, setting up a battle of wits with potentially deadly results.	NaN	275	44748	4,081,254	https://m.media-amazon.com/images/M/MV5BM2EzZmFmMmItODY3Zi00NjdjLWE0MTYtZWQ3MGIyM2M4YjZhXkEyXkFqcGdeQXVyMzg2MzE2OTE@._V1_UX67_CR0,0,67,98_AL_.jpg
502	The Last Picture Show	1971	R	118	8.0	In 1951, a group of high schoolers come of age in a bleak, isolated, atrophied North Texas town that is slowly dying, both culturally and economically.	93.0	369	42456	29,133,000	https://m.media-amazon.com/images/M/MV5BNmVjNzZkZjQtYmM5ZC00M2I0LWJhNzktNDk3MGU1NWMxMjFjXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
503	Fiddler on the Roof	1971	G	181	8.0	In prerevolutionary Russia, a Jewish peasant contends with marrying off three of his daughters while growing anti-Semitic sentiment threatens his village.	67.0	507	39491	80,500,000	https://m.media-amazon.com/images/M/MV5BMWMxNDYzNmUtYjFmNC00MGM2LWFmNzMtODhlMGNkNDg5MjE5XkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_UX67_CR0,0,67,98_AL_.jpg
504	Il conformista	1970	UA	113	8.0	A weak-willed Italian man becomes a fascist flunky who goes abroad to arrange the assassination of his old teacher, now a political dissident.	100.0	508	27067	541,940	https://m.media-amazon.com/images/M/MV5BODFlYzU4YTItN2EwYi00ODI3LTkwNTQtMDdkNjM3YjMyMTgyXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY98_CR0,0,67,98_AL_.jpg
505	Butch Cassidy and the Sundance Kid	1969	PG	110	8.0	Wyoming, early 1900s. Butch Cassidy and The Sundance Kid are the leaders of a band of outlaws. After a train robbery goes wrong they find themselves on the run with a posse hard on their heels. Their solution - escape to Bolivia.	66.0	197	201888	102,308,889	https://m.media-amazon.com/images/M/MV5BMTkyMTM2NDk5Nl5BMl5BanBnXkFtZTgwNzY1NzEyMDE@._V1_UX67_CR0,0,67,98_AL_.jpg
506	Rosemary's Baby	1968	A	137	8.0	A young couple trying for a baby move into a fancy apartment surrounded by peculiar neighbors.	96.0	123	193674	NaN	https://m.media-amazon.com/images/M/MV5BZmEwZGU2NzctYzlmNi00MGJkLWE3N2MtYjBlN2ZhMGJkZTZiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
507	Planet of the Apes	1968	U	112	8.0	An astronaut crew crash-lands on a planet in the distant future where intelligent talking apes are the dominant species, and humans are the oppressed and enslaved.	79.0	503	165167	33,395,426	https://m.media-amazon.com/images/M/MV5BMTg0NjUwMzg5NF5BMl5BanBnXkFtZTgwNDQ0NjcwMTE@._V1_UX67_CR0,0,67,98_AL_.jpg
508	The Graduate	1967	A	106	8.0	A disillusioned college graduate finds himself torn between his older lover and her daughter.	83.0	512	253676	104,945,305	https://m.media-amazon.com/images/M/MV5BMTQ0ODc4MDk4Nl5BMl5BanBnXkFtZTcwMTEzNzgzNA@@._V1_UX67_CR0,0,67,98_AL_.jpg
509	Who's Afraid of Virginia Woolf?	1966	A	131	8.0	A bitter, aging couple, with the help of alcohol, use their young houseguests to fuel anguish and emotional pain towards each other over the course of a distressing night.	75.0	512	68926	NaN	https://m.media-amazon.com/images/M/MV5BMjQ5ODI1MjQtMDc0Zi00OGQ1LWE2NTYtMTg1YTkxM2E5NzFkXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
510	The Sound of Music	1965	U	172	8.0	A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.	63.0	514	205425	163,214,286	https://m.media-amazon.com/images/M/MV5BODIxNjhkYjEtYzUyMi00YTNjLWE1YjktNjAyY2I2MWNkNmNmL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY98_CR1,0,67,98_AL_.jpg
511	Doctor Zhivago	1965	A	197	8.0	The life of a Russian physician and poet who, although married to another, falls in love with a political activist's wife and experiences hardship during World War I and then the October Revolution.	69.0	201	69903	111,722,000	https://m.media-amazon.com/images/M/MV5BNzdmZTk4MTktZmExNi00OWEwLTgxZDctNTE4NWMwNjc1Nzg2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
512	Per un pugno di dollari	1964	A	99	8.0	A wandering gunfighter plays two rival families against each other in a town torn apart by greed, pride, and revenge.	65.0	97	198219	14,500,000	https://m.media-amazon.com/images/M/MV5BYjA1MGVlMGItNzgxMC00OWY4LWI4YjEtNTNmYWIzMGUxOGQzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY98_CR0,0,67,98_AL_.jpg
513	8½	1963	NaN	138	8.0	A harried movie director retreats into his memories and fantasies.	91.0	387	108844	50,690	https://m.media-amazon.com/images/M/MV5BMTQ4MTA0NjEzMF5BMl5BanBnXkFtZTgwMDg4NDYxMzE@._V1_UY98_CR2,0,67,98_AL_.jpg
516	La dolce vita	1960	A	174	8.0	A series of stories following a week in the life of a philandering paparazzo journalist living in Rome.	95.0	387	66621	19,516,000	https://m.media-amazon.com/images/M/MV5BODQ0NzY5NGEtYTc5NC00Yjg4LTg4Y2QtZjE2MTkyYTNmNmU2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY98_CR1,0,67,98_AL_.jpg
517	Rio Bravo	1959	Passed	141	8.0	A small-town sheriff in the American West enlists the help of a cripple, a drunk, and a young gunfighter in his efforts to hold in jail the brother of the local bad guy.	93.0	521	56305	12,535,000	https://m.media-amazon.com/images/M/MV5BZDVhMTk1NjUtYjc0OS00OTE1LTk1NTYtYWMzMDI5OTlmYzU2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
518	Anatomy of a Murder	1959	NaN	161	8.0	In a murder trial, the defendant says he suffered temporary insanity after the victim raped his wife. What is the truth, and will he win his case?	95.0	522	59847	11,900,000	https://m.media-amazon.com/images/M/MV5BMzM0MzE2ZTAtZTBjZS00MTk5LTg5OTEtNjNmYmQ5NzU2OTUyXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UX67_CR0,0,67,98_AL_.jpg
519	Touch of Evil	1958	PG-13	95	8.0	A stark, perverse story of murder, kidnapping, and police corruption in a Mexican border town.	99.0	209	98431	2,237,659	https://m.media-amazon.com/images/M/MV5BOTA1MjA3M2EtMmJjZS00OWViLTkwMTEtM2E5ZDk0NTAyNGJiXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
520	Cat on a Hot Tin Roof	1958	A	108	8.0	Brick is an alcoholic ex-football player who drinks his days away and resists the affections of his wife. A reunion with his terminal father jogs a host of memories and revelations for both father and son.	84.0	524	45062	17,570,324	https://m.media-amazon.com/images/M/MV5BMzFhNTMwNDMtZjY3Yy00NzY3LWI1ZWQtZTQxMWJmODVhZWFkXkEyXkFqcGdeQXVyNjQzNDI3NzY@._V1_UX67_CR0,0,67,98_AL_.jpg
521	Sweet Smell of Success	1957	Approved	96	8.0	Powerful but unethical Broadway columnist J.J. Hunsecker coerces unscrupulous press agent Sidney Falco into breaking up his sister's romance with a jazz musician.	100.0	525	28137	NaN	https://m.media-amazon.com/images/M/MV5BMjE5NTU3YWYtOWIxNi00YWZhLTg2NzktYzVjZWY5MDQ4NzVlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
522	The Killing	1956	Approved	84	8.0	Crook Johnny Clay assembles a five man team to plan and execute a daring race-track robbery.	91.0	158	81702	NaN	https://m.media-amazon.com/images/M/MV5BMDE5ZjAwY2YtOWM5Yi00ZWNlLWE5ODQtYjA4NzA1NGFkZDU5XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
523	The Night of the Hunter	1955	NaN	92	8.0	A religious fanatic marries a gullible widow whose young children are reluctant to tell him where their real daddy hid the $10,000 he'd stolen in a robbery.	99.0	527	81980	654,000	https://m.media-amazon.com/images/M/MV5BYTNjN2M2MzYtZGEwMi00Mzc5LWEwYTMtODM1ZmRiZjFiNTU0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
524	La Strada	1954	NaN	108	8.0	A care-free girl is sold to a traveling entertainer, consequently enduring physical and emotional pain along the way.	NaN	387	58314	NaN	https://m.media-amazon.com/images/M/MV5BYjUyOGMyMTQtYTM5Yy00MjFiLTk2OGItMWYwMDc2YmM1YzhiXkEyXkFqcGdeQXVyMjA0MzYwMDY@._V1_UY98_CR2,0,67,98_AL_.jpg
525	Les diaboliques	1955	NaN	117	8.0	The wife and mistress of a loathed school principal plan to murder him with what they believe is the perfect alibi.	NaN	391	61503	NaN	https://m.media-amazon.com/images/M/MV5BMGJmNmU5OTAtOTQyYy00MmM3LTk4MzUtMGFiZDYzODdmMmU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY98_CR3,0,67,98_AL_.jpg
526	Stalag 17	1953	NaN	120	8.0	When two escaping American World War II prisoners are killed, the German P.O.W. camp barracks black marketeer, J.J. Sefton, is suspected of being an informer.	84.0	164	51046	NaN	https://m.media-amazon.com/images/M/MV5BNDMyNGU0NjUtNTIxMC00ZmU2LWE0ZGItZTdkNGVlODI2ZDcyL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
527	Roman Holiday	1953	NaN	118	8.0	A bored and sheltered princess escapes her guardians and falls in love with an American newsman in Rome.	78.0	385	127256	NaN	https://m.media-amazon.com/images/M/MV5BMTE2MDM4MTMtZmNkZC00Y2QyLWE0YjUtMTAxZGJmODMxMDM0XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
528	A Streetcar Named Desire	1951	A	122	8.0	Disturbed Blanche DuBois moves in with her sister in New Orleans and is tormented by her brutish brother-in-law while her reality crumbles around her.	97.0	390	99182	8,000,000	https://m.media-amazon.com/images/M/MV5BNzk2M2Y3MzYtNGMzMi00Y2FjLTkwODQtNmExYWU3ZWY3NzExXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
529	In a Lonely Place	1950	NaN	94	8.0	A potentially violent screenwriter is a murder suspect until his lovely neighbor clears him. However, she soon starts to have her doubts.	NaN	533	26784	NaN	https://m.media-amazon.com/images/M/MV5BNjRmZjcwZTQtYWY0ZS00ODAwLTg4YTktZDhlZDMwMTM1MGFkXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
530	Kind Hearts and Coronets	1949	U	106	8.0	A distant poor relative of the Duke D'Ascoyne plots to inherit the title by murdering the eight other heirs who stand ahead of him in the line of succession.	NaN	534	34485	NaN	https://m.media-amazon.com/images/M/MV5BZjc1Yzc0ZmItMzU1OS00OWVlLThmYTctMWNlYmFlMjkxMzc0XkEyXkFqcGdeQXVyNTA1NjYyMDk@._V1_UY98_CR32,0,67,98_AL_.jpg
531	Rope	1948	A	80	8.0	Two men attempt to prove they committed the perfect crime by hosting a dinner party after strangling their former classmate to death.	73.0	134	129783	NaN	https://m.media-amazon.com/images/M/MV5BYWFjMDNlYzItY2VlMS00ZTRkLWJjYTEtYjI5NmFlMGE3MzQ2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
532	Out of the Past	1947	NaN	97	8.0	A private eye escapes his past to run a gas station in a small town, but his past catches up with him. Now he must return to the big city world of danger, corruption, double crosses and duplicitous dames.	NaN	536	32784	NaN	https://m.media-amazon.com/images/M/MV5BMDE0MjYxYmMtM2VhMC00MjhiLTg5NjItMDkzZGM5MGVlYjMxL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
533	Brief Encounter	1945	U	86	8.0	Meeting a stranger in a railway station, a woman is tempted to cheat on her husband.	92.0	201	35601	NaN	https://m.media-amazon.com/images/M/MV5BYWQ0MGNjOTYtMWJlNi00YWMxLWFmMzktYjAyNTVkY2U1NWNhL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
534	Laura	1944	Passed	88	8.0	A police detective falls in love with the woman whose murder he is investigating.	NaN	522	42725	4,360,000	https://m.media-amazon.com/images/M/MV5BYjkxOGM5OTktNTRmZi00MjhlLWE2MDktNzY3NjY3NmRjNDUyXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UX67_CR0,0,67,98_AL_.jpg
535	The Best Years of Our Lives	1946	Approved	170	8.0	Three World War II veterans return home to small-town America to discover that they and their families have been irreparably changed.	93.0	385	57259	23,650,000	https://m.media-amazon.com/images/M/MV5BY2RmNTRjYzctODI4Ni00MzQyLWEyNTAtNjU0N2JkMTNhNjJkXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
557	Arrival	2016	UA	116	7.9	A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecrafts appear around the world.	81.0	175	594181	100,546,139	https://m.media-amazon.com/images/M/MV5BMTExMzU0ODcxNDheQTJeQWpwZ15BbWU4MDE1OTI4MzAy._V1_UX67_CR0,0,67,98_AL_.jpg
536	Arsenic and Old Lace	1942	NaN	118	8.0	A writer of books on the futility of marriage risks his reputation when he decides to get married. Things get even more complicated when he learns on his wedding day that his beloved maiden aunts are habitual murderers.	NaN	117	65101	NaN	https://m.media-amazon.com/images/M/MV5BZDVlNTBjMjctNjAzNS00ZGJhLTg2NzMtNzIwYTIzYTBiMDkyXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
537	The Maltese Falcon	1941	NaN	100	8.0	A private detective takes on a case that involves him with three eccentric criminals, a gorgeous liar, and their quest for a priceless statuette.	96.0	276	148928	2,108,060	https://m.media-amazon.com/images/M/MV5BZjIwNGM1ZTUtOThjYS00NDdiLTk2ZDYtNGY5YjJkNzliM2JjL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
538	The Grapes of Wrath	1940	Passed	129	8.0	A poor Midwest family is forced off their land. They travel to California, suffering the misfortunes of the homeless in the Great Depression.	96.0	380	85559	55,000	https://m.media-amazon.com/images/M/MV5BNzJiOGI2MjctYjUyMS00ZjkzLWE2ZmUtOTg4NTZkOTNhZDc1L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
539	The Wizard of Oz	1939	U	102	8.0	Dorothy Gale is swept away from a farm in Kansas to a magical land of Oz in a tornado and embarks on a quest with her new friends to see the Wizard who can help her return home to Kansas and help her friends as well.	92.0	399	371379	2,076,020	https://m.media-amazon.com/images/M/MV5BNjUyMTc4MDExMV5BMl5BanBnXkFtZTgwNDg0NDIwMjE@._V1_UX67_CR0,0,67,98_AL_.jpg
540	La règle du jeu	1939	NaN	110	8.0	A bourgeois life in France at the onset of World War II, as the rich and their poor servants meet up at a French chateau.	NaN	400	26725	NaN	https://m.media-amazon.com/images/M/MV5BYTE4NjYxMGEtZmQxZi00YWVmLWJjZTctYTJmNDFmZGEwNDVhXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR2,0,67,98_AL_.jpg
541	The Thin Man	1934	TV-PG	91	8.0	Former detective Nick Charles and his wealthy wife Nora investigate a murder case, mostly for the fun of it.	86.0	545	26642	NaN	https://m.media-amazon.com/images/M/MV5BYmFlOWMwMjAtMDMyMC00N2JjLTllODUtZjY3YWU3NGRkM2I2L2ltYWdlXkEyXkFqcGdeQXVyMjUxODE0MDY@._V1_UX67_CR0,0,67,98_AL_.jpg
542	All Quiet on the Western Front	1930	U	152	8.0	A German youth eagerly enters World War I, but his enthusiasm wanes as he gets a firsthand view of the horror.	91.0	546	57318	3,270,000	https://m.media-amazon.com/images/M/MV5BMzg2MWQ4MDEtOGZlNi00MTg0LWIwMjQtYWY5NTQwYmUzMWNmXkEyXkFqcGdeQXVyMzg2MzE2OTE@._V1_UX67_CR0,0,67,98_AL_.jpg
543	Bronenosets Potemkin	1925	NaN	75	8.0	In the midst of the Russian Revolution of 1905, the crew of the battleship Potemkin mutiny against the brutal, tyrannical regime of the vessel's officers. The resulting street demonstration in Odessa brings on a police massacre.	97.0	547	53054	50,970	https://m.media-amazon.com/images/M/MV5BMTEyMTQzMjQ0MTJeQTJeQWpwZ15BbWU4MDcyMjg4OTEx._V1_UY98_CR1,0,67,98_AL_.jpg
544	Knives Out	2019	UA	130	7.9	A detective investigates the death of a patriarch of an eccentric, combative family.	82.0	548	454203	165,359,751	https://m.media-amazon.com/images/M/MV5BMGUwZjliMTAtNzAxZi00MWNiLWE2NzgtZGUxMGQxZjhhNDRiXkEyXkFqcGdeQXVyNjU1NzU3MzE@._V1_UX67_CR0,0,67,98_AL_.jpg
545	Dil Bechara	2020	UA	101	7.9	The emotional journey of two hopelessly in love youngsters, a young girl, Kizie, suffering from cancer, and a boy, Manny, whom she meets at a support group.	NaN	549	111478	NaN	https://m.media-amazon.com/images/M/MV5BNmI0MTliMTAtMmJhNC00NTJmLTllMzQtMDI3NzA1ODMyZWI1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR5,0,67,98_AL_.jpg
546	Manbiki kazoku	2018	A	121	7.9	A family of small-time crooks take in a child they find outside in the cold.	93.0	550	62754	3,313,513	https://m.media-amazon.com/images/M/MV5BYWZmOTY0MDAtMGRlMS00YjFlLWFkZTUtYmJhYWNlN2JjMmZkXkEyXkFqcGdeQXVyODAzODU1NDQ@._V1_UX67_CR0,0,67,98_AL_.jpg
547	Marriage Story	2019	U	137	7.9	Noah Baumbach's incisive and compassionate look at a marriage breaking up and a family staying together.	94.0	551	246644	2,000,000	https://m.media-amazon.com/images/M/MV5BZGVmY2RjNDgtMTc3Yy00YmY0LTgwODItYzBjNWJhNTRlYjdkXkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_UX67_CR0,0,67,98_AL_.jpg
548	Call Me by Your Name	2017	UA	132	7.9	In 1980s Italy, romance blossoms between a seventeen-year-old student and the older man hired as his father's research assistant.	93.0	552	212651	18,095,701	https://m.media-amazon.com/images/M/MV5BNDk3NTEwNjc0MV5BMl5BanBnXkFtZTgwNzYxNTMwMzI@._V1_UX67_CR0,0,67,98_AL_.jpg
549	I, Daniel Blake	2016	UA	100	7.9	After having suffered a heart-attack, a 59-year-old carpenter must fight the bureaucratic forces of the system in order to receive Employment and Support Allowance.	78.0	553	53818	258,168	https://m.media-amazon.com/images/M/MV5BMTQ4NTMzMTk4NV5BMl5BanBnXkFtZTgwNTU5MjE4MDI@._V1_UX67_CR0,0,67,98_AL_.jpg
550	Isle of Dogs	2018	U	101	7.9	Set in Japan, Isle of Dogs follows a boy's odyssey in search of his lost dog.	82.0	294	139114	32,015,231	https://m.media-amazon.com/images/M/MV5BZDQwOWQ2NmUtZThjZi00MGM0LTkzNDctMzcyMjcyOGI1OGRkXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_UX67_CR0,0,67,98_AL_.jpg
551	Hunt for the Wilderpeople	2016	UA	101	7.9	A national manhunt is ordered for a rebellious kid and his foster uncle who go missing in the wild New Zealand bush.	81.0	555	111483	5,202,582	https://m.media-amazon.com/images/M/MV5BMjI1MDQ2MDg5Ml5BMl5BanBnXkFtZTgwMjc2NjM5ODE@._V1_UX67_CR0,0,67,98_AL_.jpg
552	Captain Fantastic	2016	R	118	7.9	In the forests of the Pacific Northwest, a father devoted to raising his six kids with a rigorous physical and intellectual education is forced to leave his paradise and enter the world, challenging his idea of what it means to be a parent.	72.0	556	189400	5,875,006	https://m.media-amazon.com/images/M/MV5BMjE5OTM0OTY5NF5BMl5BanBnXkFtZTgwMDcxOTQ3ODE@._V1_UX67_CR0,0,67,98_AL_.jpg
553	Sing Street	2016	PG-13	106	7.9	A boy growing up in Dublin during the 1980s escapes his strained family life by starting a band to impress the mysterious girl he likes.	79.0	557	85109	3,237,118	https://m.media-amazon.com/images/M/MV5BMjEzODA3MDcxMl5BMl5BanBnXkFtZTgwODgxNDk3NzE@._V1_UX67_CR0,0,67,98_AL_.jpg
554	Thor: Ragnarok	2017	UA	130	7.9	Imprisoned on the planet Sakaar, Thor must race against time to return to Asgard and stop Ragnarök, the destruction of his world, at the hands of the powerful and ruthless villain Hela.	74.0	555	587775	315,058,289	https://m.media-amazon.com/images/M/MV5BMjMyNDkzMzI1OF5BMl5BanBnXkFtZTgwODcxODg5MjI@._V1_UX67_CR0,0,67,98_AL_.jpg
555	Nightcrawler	2014	A	117	7.9	When Louis Bloom, a con man desperate for work, muscles into the world of L.A. crime journalism, he blurs the line between observer and participant to become the star of his own story.	76.0	559	466134	32,381,218	https://m.media-amazon.com/images/M/MV5BN2U1YzdhYWMtZWUzMi00OWI1LWFkM2ItNWVjM2YxMGQ2MmNhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY98_CR0,0,67,98_AL_.jpg
556	Jojo Rabbit	2019	UA	108	7.9	A young boy in Hitler's army finds out his mother is hiding a Jewish girl in their home.	58.0	555	297918	349,555	https://m.media-amazon.com/images/M/MV5BZjU0Yzk2MzEtMjAzYy00MzY0LTg2YmItM2RkNzdkY2ZhN2JkXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
558	Star Wars: Episode VII - The Force Awakens	2015	U	138	7.9	As a new threat to the galaxy rises, Rey, a desert scavenger, and Finn, an ex-stormtrooper, must join Han Solo and Chewbacca to search for the one hope of restoring peace.	80.0	562	860823	936,662,225	https://m.media-amazon.com/images/M/MV5BOTAzODEzNDAzMl5BMl5BanBnXkFtZTgwMDU1MTgzNzE@._V1_UX67_CR0,0,67,98_AL_.jpg
559	Before Midnight	2013	R	109	7.9	We meet Jesse and Celine nine years on in Greece. Almost two decades have passed since their first meeting on that train bound for Vienna.	94.0	322	141457	8,114,627	https://m.media-amazon.com/images/M/MV5BMjA5NzgxODE2NF5BMl5BanBnXkFtZTcwNTI1NTI0OQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
560	X-Men: Days of Future Past	2014	UA	132	7.9	The X-Men send Wolverine to the past in a desperate effort to change history and prevent an event that results in doom for both humans and mutants.	75.0	126	659763	233,921,534	https://m.media-amazon.com/images/M/MV5BZGIzNWYzN2YtMjcwYS00YjQ3LWI2NjMtOTNiYTUyYjE2MGNkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
561	Bir Zamanlar Anadolu'da	2011	NaN	157	7.9	A group of men set out in search of a dead body in the Anatolian steppes.	82.0	291	41995	138,730	https://m.media-amazon.com/images/M/MV5BYTRkMDRiYmEtNGM4YS00NzM3LWI4MTMtYzk1MmVjMjM3ODg1XkEyXkFqcGdeQXVyMjgyNjk3MzE@._V1_UY98_CR1,0,67,98_AL_.jpg
562	The Artist	2011	U	100	7.9	An egomaniacal film star develops a relationship with a young dancer against the backdrop of Hollywood's silent era.	89.0	566	230624	44,671,682	https://m.media-amazon.com/images/M/MV5BMDUyZWU5N2UtOWFlMy00MTI0LTk0ZDYtMzFhNjljODBhZDA5XkEyXkFqcGdeQXVyNzA4ODc3ODU@._V1_UY98_CR1,0,67,98_AL_.jpg
563	Edge of Tomorrow	2014	UA	113	7.9	A soldier fighting aliens gets to relive the same day over and over again, the day restarting every time he dies.	71.0	567	600004	100,206,256	https://m.media-amazon.com/images/M/MV5BMTc5OTk4MTM3M15BMl5BanBnXkFtZTgwODcxNjg3MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
564	Amour	2012	UA	127	7.9	Georges and Anne are an octogenarian couple. They are cultivated, retired music teachers. Their daughter, also a musician, lives in Britain with her family. One day, Anne has a stroke, and the couple's bond of love is severely tested.	94.0	568	93090	6,739,492	https://m.media-amazon.com/images/M/MV5BMTk1NTc3NDc4MF5BMl5BanBnXkFtZTcwNjYwNDk0OA@@._V1_UX67_CR0,0,67,98_AL_.jpg
565	The Irishman	2019	R	209	7.9	An old man recalls his time painting houses for his friend, Jimmy Hoffa, through the 1950-70s.	94.0	100	324720	7,000,000	https://m.media-amazon.com/images/M/MV5BMGUyM2ZiZmUtMWY0OC00NTQ4LThkOGUtNjY2NjkzMDJiMWMwXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_UX67_CR0,0,67,98_AL_.jpg
566	Un prophète	2009	A	155	7.9	A young Arab man is sent to a French prison.	90.0	570	93560	2,084,637	https://m.media-amazon.com/images/M/MV5BMTUyMjQ1MTY5OV5BMl5BanBnXkFtZTcwNzY5NjExMw@@._V1_UY98_CR1,0,67,98_AL_.jpg
567	Moon	2009	R	97	7.9	Astronaut Sam Bell has a quintessentially personal encounter toward the end of his three-year stint on the Moon, where he, working alongside his computer, GERTY, sends back to Earth parcels of a resource that has helped diminish our planet's power problems.	67.0	571	335152	5,009,677	https://m.media-amazon.com/images/M/MV5BMTgzODgyNTQwOV5BMl5BanBnXkFtZTcwNzc0NTc0Mg@@._V1_UX67_CR0,0,67,98_AL_.jpg
568	Låt den rätte komma in	2008	R	114	7.9	Oskar, an overlooked and bullied boy, finds love and revenge through Eli, a beautiful but peculiar girl.	82.0	572	205609	2,122,065	https://m.media-amazon.com/images/M/MV5BOWM4NTY2NTMtZDZlZS00NTgyLWEzZDMtODE3ZGI1MzI3ZmU5XkEyXkFqcGdeQXVyNzI1NzMxNzM@._V1_UY98_CR1,0,67,98_AL_.jpg
569	District 9	2009	A	112	7.9	Violence ensues after an extraterrestrial race forced to live in slum-like conditions on Earth finds a kindred spirit in a government agent exposed to their biotechnology.	81.0	573	638202	115,646,235	https://m.media-amazon.com/images/M/MV5BYmQ5MzFjYWMtMTMwNC00ZGU5LWI3YTQtYzhkMGExNGFlY2Q0XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX67_CR0,0,67,98_AL_.jpg
570	The Wrestler	2008	UA	109	7.9	A faded professional wrestler must retire, but finds his quest for a new life outside the ring a dispiriting struggle.	80.0	182	289415	26,236,603	https://m.media-amazon.com/images/M/MV5BMTc5MjYyOTg4MF5BMl5BanBnXkFtZTcwNDc2MzQwMg@@._V1_UX67_CR0,0,67,98_AL_.jpg
571	Jab We Met	2007	U	138	7.9	A depressed wealthy businessman finds his life changing after he meets a spunky and care-free young woman.	NaN	575	47720	410,800	https://m.media-amazon.com/images/M/MV5BYmIzYmY4MGItM2I4YS00OWZhLWFmMzQtYzI2MWY1MmM3NGU1XkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UY98_CR0,0,67,98_AL_.jpg
572	Boyhood	2014	A	165	7.9	The life of Mason, from early childhood to his arrival at college.	100.0	322	335533	25,379,975	https://m.media-amazon.com/images/M/MV5BMTYzNDc2MDc0N15BMl5BanBnXkFtZTgwOTcwMDQ5MTE@._V1_UX67_CR0,0,67,98_AL_.jpg
573	4 luni, 3 saptamâni si 2 zile	2007	NaN	113	7.9	A woman assists her friend in arranging an illegal abortion in 1980s Romania.	97.0	577	56625	1,185,783	https://m.media-amazon.com/images/M/MV5BYzU1YWUzNjYtNmVhZi00ODUyLTg4M2ItMTFlMmU1Mzc5OTE5XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR1,0,67,98_AL_.jpg
574	Star Trek	2009	UA	127	7.9	The brash James T. Kirk tries to live up to his father's legacy with Mr. Spock keeping him in check as a vengeful Romulan from the future creates black holes to destroy the Federation one planet at a time.	82.0	562	577336	257,730,019	https://m.media-amazon.com/images/M/MV5BMjE5NDQ5OTE4Ml5BMl5BanBnXkFtZTcwOTE3NDIzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
575	In Bruges	2008	R	107	7.9	Guilt-stricken after a job gone wrong, hitman Ray and his partner await orders from their ruthless boss in Bruges, Belgium, the last place in the world Ray wants to be.	67.0	217	390334	7,757,130	https://m.media-amazon.com/images/M/MV5BMTUwOGFiM2QtOWMxYS00MjU2LThmZDMtZDM2MWMzNzllNjdhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
576	The Man from Earth	2007	NaN	87	7.9	An impromptu goodbye party for Professor John Oldman becomes a mysterious interrogation after the retiring scholar reveals to his colleagues he has a longer and stranger past than they can imagine.	NaN	580	174125	NaN	https://m.media-amazon.com/images/M/MV5BMzQ5NGQwOTUtNWJlZi00ZTFiLWI0ZTEtOGU3MTA2ZGU5OWZiXkEyXkFqcGdeQXVyMTczNjQwOTY@._V1_UX67_CR0,0,67,98_AL_.jpg
577	Letters from Iwo Jima	2006	UA	141	7.9	The story of the battle of Iwo Jima between the United States and Imperial Japan during World War II, as told from the perspective of the Japanese who fought it.	89.0	252	154011	13,756,082	https://m.media-amazon.com/images/M/MV5BMjE0NzgwODI4M15BMl5BanBnXkFtZTcwNjg3OTA0MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
578	The Fall	2006	R	117	7.9	In a hospital on the outskirts of 1920s Los Angeles, an injured stuntman begins to tell a fellow patient, a little girl with a broken arm, a fantastic story of five mythical heroes. Thanks to his fractured state of mind and her vivid imagination, the line between fiction and reality blurs as the tale advances.	64.0	582	107290	2,280,348	https://m.media-amazon.com/images/M/MV5BMjAzODUwMjM1M15BMl5BanBnXkFtZTcwNjU2MjU2MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
579	Life of Pi	2012	U	127	7.9	A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.	79.0	583	580708	124,987,023	https://m.media-amazon.com/images/M/MV5BNTg2OTY2ODg5OF5BMl5BanBnXkFtZTcwODM5MTYxOA@@._V1_UX67_CR0,0,67,98_AL_.jpg
580	Fantastic Mr. Fox	2009	PG	87	7.9	An urbane fox cannot resist returning to his farm raiding ways and then must help his community survive the farmers' retaliation.	83.0	294	199696	21,002,919	https://m.media-amazon.com/images/M/MV5BOGUwYTU4NGEtNDM4MS00NDRjLTkwNmQtOTkwMWMyMjhmMjdlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
581	C.R.A.Z.Y.	2005	NaN	129	7.9	A young French-Canadian, growing up in the 1960s and 1970s, struggles to reconcile his emerging homosexuality with his father's conservative values and his own Catholic beliefs.	81.0	444	31476	NaN	https://m.media-amazon.com/images/M/MV5BMTU3MDc2MjUwMV5BMl5BanBnXkFtZTcwNzQyMDAzMQ@@._V1_UY98_CR0,0,67,98_AL_.jpg
582	Les choristes	2004	PG-13	97	7.9	The new teacher at a severely administered boys' boarding school works to positively affect the students' lives through music.	56.0	586	57430	3,635,164	https://m.media-amazon.com/images/M/MV5BOGY1M2MwOTEtZDIyNi00YjNlLWExYmEtNzBjOGI3N2QzNTg5XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
583	Iron Man	2008	UA	126	7.9	After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.	79.0	587	939644	318,412,101	https://m.media-amazon.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
584	Shaun of the Dead	2004	UA	99	7.9	A man's uneventful life is disrupted by the zombie apocalypse.	76.0	588	512249	13,542,874	https://m.media-amazon.com/images/M/MV5BMTg5Mjk2NDMtZTk0Ny00YTQ0LWIzYWEtMWI5MGQ0Mjg1OTNkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
585	Gegen die Wand	2004	R	121	7.9	With the intention to break free from the strict familial restrictions, a suicidal young woman sets up a marriage of convenience with a forty-year-old addict, an act that will lead to an outburst of envious love.	78.0	589	51325	NaN	https://m.media-amazon.com/images/M/MV5BODBiNzYxNzYtMjkyMi00MjUyLWJkM2YtZjNkMDhhYmEwMTRiL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
586	Mystic River	2003	A	138	7.9	The lives of three men who were childhood friends are shattered when one of them has a family tragedy.	84.0	252	419420	90,135,191	https://m.media-amazon.com/images/M/MV5BMTIzNDUyMjA4MV5BMl5BanBnXkFtZTYwNDc4ODM3._V1_UX67_CR0,0,67,98_AL_.jpg
587	Harry Potter and the Prisoner of Azkaban	2004	U	142	7.9	Harry Potter, Ron and Hermione return to Hogwarts School of Witchcraft and Wizardry for their third year of study, where they delve into the mystery surrounding an escaped prisoner who poses a dangerous threat to the young wizard.	82.0	591	552493	249,358,727	https://m.media-amazon.com/images/M/MV5BMTY4NTIwODg0N15BMl5BanBnXkFtZTcwOTc0MjEzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
588	Ying xiong	2002	PG-13	120	7.9	A defense officer, Nameless, was summoned by the King of Qin regarding his success of terminating three warriors.	85.0	350	173999	53,710,019	https://m.media-amazon.com/images/M/MV5BMWQ2MjQ0OTctMWE1OC00NjZjLTk3ZDAtNTk3NTZiYWMxYTlmXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
589	Hable con ella	2002	R	112	7.9	Two men share an odd friendship while they care for two women who are both in deep comas.	86.0	593	104691	9,284,265	https://m.media-amazon.com/images/M/MV5BYmVmMGQ3NzEtM2FiNi00YThhLWFkZjYtM2Y0MjZjNGE4NzM0XkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_UY98_CR1,0,67,98_AL_.jpg
590	No Man's Land	2001	R	98	7.9	Bosnia and Herzegovina during 1993 at the time of the heaviest fighting between the two warring sides. Two soldiers from opposing sides in the conflict, Nino and Ciki, become trapped in no man's land, whilst a third soldier becomes a living booby trap.	84.0	594	44618	1,059,830	https://m.media-amazon.com/images/M/MV5BMGFkNjNmZWMtNDdiOS00ZWM3LWE1ZTMtZDU3MGQyMzIyNzZhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
591	Cowboy Bebop: Tengoku no tobira	2001	U	115	7.9	A terrorist explosion releases a deadly virus on the masses, and it's up the bounty-hunting Bebop crew to catch the cold-blooded culprit.	61.0	595	42897	1,000,045	https://m.media-amazon.com/images/M/MV5BMjYzYWM4YTItZjJiMC00OTM5LTg3NDgtOGQ2Njk2ZWNhN2QwXkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_UY98_CR0,0,67,98_AL_.jpg
592	The Bourne Identity	2002	UA	119	7.9	A man is picked up by a fishing boat, bullet-riddled and suffering from amnesia, before racing to elude assassins and attempting to regain his memory.	68.0	567	508771	121,661,683	https://m.media-amazon.com/images/M/MV5BM2JkNGU0ZGMtZjVjNS00NjgyLWEyOWYtZmRmZGQyN2IxZjA2XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX67_CR0,0,67,98_AL_.jpg
593	Nueve reinas	2000	R	114	7.9	Two con artists try to swindle a stamp collector by selling him a sheet of counterfeit rare stamps (the "nine queens").	80.0	597	49721	1,221,261	https://m.media-amazon.com/images/M/MV5BMTYxMDdlYjItMDVkYy00MjYzLThhMTYtYjIzZjZiODk1ZWRmXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
594	Children of Men	2006	A	109	7.9	In 2027, in a chaotic world in which women have become somehow infertile, a former activist agrees to help transport a miraculously pregnant woman to a sanctuary at sea.	84.0	591	465113	35,552,383	https://m.media-amazon.com/images/M/MV5BMTQ5NTI2NTI4NF5BMl5BanBnXkFtZTcwNjk2NDA2OQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
595	Almost Famous	2000	A	122	7.9	A high-school boy is given the chance to write a story for Rolling Stone Magazine about an up-and-coming rock band as he accompanies them on their concert tour.	90.0	599	252586	32,534,850	https://m.media-amazon.com/images/M/MV5BMzY1ZjMwMGEtYTY1ZS00ZDllLTk0ZmUtYzA3ZTA4NmYwNGNkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
596	Mulholland Dr.	2001	R	147	7.9	After a car wreck on the winding Mulholland Drive renders a woman amnesiac, she and a perky Hollywood-hopeful search for clues and answers across Los Angeles in a twisting venture beyond dreams and reality.	85.0	361	322031	7,220,243	https://m.media-amazon.com/images/M/MV5BYjBhZmViNTItMGExMy00MGNmLTkwZDItMDVlMTQ4ODVkYTMwXkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_UY98_CR1,0,67,98_AL_.jpg
597	Toy Story 2	1999	U	92	7.9	When Woody is stolen by a toy collector, Buzz and his friends set out on a rescue mission to save Woody before he becomes a museum toy property with his roundup gang Jessie, Prospector, and Bullseye.	88.0	186	527512	245,852,179	https://m.media-amazon.com/images/M/MV5BMWM5ZDcxMTYtNTEyNS00MDRkLWI3YTItNThmMGExMWY4NDIwXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX67_CR0,0,67,98_AL_.jpg
598	Boogie Nights	1997	R	155	7.9	Back when sex was safe, pleasure was a business and business was booming, an idealistic porn producer aspires to elevate his craft to an art when he discovers a hot young talent.	85.0	234	239473	26,400,640	https://m.media-amazon.com/images/M/MV5BY2E2YWYxY2QtZmJmZi00MjJlLWFiYWItZTk5Y2IyMWQ1ZThhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
599	Mimi wo sumaseba	1995	U	111	7.9	A love story between a girl who loves reading books, and a boy who has previously checked out all of the library books she chooses.	75.0	603	51943	NaN	https://m.media-amazon.com/images/M/MV5BZDg0MWNmNjktMGEwZC00ZDlmLWI1MTUtMDBmNjQzMWM2NjBjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
600	Once Were Warriors	1994	A	102	7.9	A family descended from Maori warriors is bedeviled by a violent father and the societal problems of being treated as outcasts.	77.0	604	31590	2,201,126	https://m.media-amazon.com/images/M/MV5BYTY4MTdjZDMtOTBiMC00MDEwLThhMjUtMjlhMjdlYTBmMzk3XkEyXkFqcGdeQXVyNjMwMjk0MTQ@._V1_UY98_CR1,0,67,98_AL_.jpg
601	True Romance	1993	R	119	7.9	In Detroit, a lonely pop culture geek marries a call girl, steals cocaine from her pimp, and tries to sell it in Hollywood. Meanwhile, the owners of the cocaine, the Mob, track them down in an attempt to reclaim it.	59.0	605	206918	12,281,500	https://m.media-amazon.com/images/M/MV5BMDViNjFjOWMtZGZhMi00NmIyLThmYzktODA4MzJhZDZhMDc5XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR1,0,67,98_AL_.jpg
602	Trois couleurs: Bleu	1993	U	94	7.9	A woman struggles to find a way to live her life after the death of her husband and child.	85.0	345	89836	1,324,974	https://m.media-amazon.com/images/M/MV5BMjg5OGU4OGYtNTZmNy00MjQ1LWIzYzgtMTllMGY2NzlkNzYwXkEyXkFqcGdeQXVyMTI3ODAyMzE2._V1_UY98_CR2,0,67,98_AL_.jpg
603	Jûbê ninpûchô	1993	A	94	7.9	A vagabond swordsman is aided by a beautiful ninja girl and a crafty spy in confronting a demonic clan of killers - with a ghost from his past as their leader - who are bent on overthrowing the Tokugawa Shogunate.	NaN	607	34529	NaN	https://m.media-amazon.com/images/M/MV5BOTMyZGI4N2YtMzdkNi00MDZmLTg4NmItMzg0ODY5NjdhZjYwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_UY98_CR1,0,67,98_AL_.jpg
604	Carlito's Way	1993	A	144	7.9	A Puerto Rican former convict, just released from prison, pledges to stay away from drugs and violence despite the pressure around him and lead on to a better life outside of N.Y.C.	65.0	193	201000	36,948,322	https://m.media-amazon.com/images/M/MV5BN2I2N2Q1YmMtMzZkMC00Y2JjLWJmOWUtNjc2OTM2ZTk1MjUyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
605	Edward Scissorhands	1990	U	105	7.9	An artificial man, who was incompletely constructed and has scissors for hands, leads a solitary life. Then one day, a suburban lady meets him and introduces him to her world.	74.0	462	447368	56,362,352	https://m.media-amazon.com/images/M/MV5BNDUxN2I5NDUtZjdlMC00NjlmLTg0OTQtNjk0NjAxZjFmZTUzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
606	My Left Foot: The Story of Christy Brown	1989	U	103	7.9	Christy Brown, born with cerebral palsy, learns to paint and write with his only controllable limb - his left foot.	97.0	348	68076	14,743,391	https://m.media-amazon.com/images/M/MV5BYjdkNzA4MzYtZThhOS00ZDgzLTlmMDItNmY1ZjI5YjkzZTE1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
607	Crimes and Misdemeanors	1989	PG-13	104	7.9	An ophthalmologist's mistress threatens to reveal their affair to his wife while a married documentary filmmaker is infatuated with another woman.	77.0	499	54670	18,254,702	https://m.media-amazon.com/images/M/MV5BYWY3N2EyOWYtNDVhZi00MWRkLTg2OTUtODNkNDQ5ZTIwMGJkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
608	The Untouchables	1987	A	119	7.9	During the era of Prohibition in the United States, Federal Agent Eliot Ness sets out to stop ruthless Chicago gangster Al Capone and, because of rampant corruption, assembles a small, hand-picked team to help him.	79.0	193	281842	76,270,454	https://m.media-amazon.com/images/M/MV5BYTVjYWJmMWQtYWU4Ni00MWY3LWI2YmMtNTI5MDE0MWVmMmEzL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
609	Hannah and Her Sisters	1986	PG-13	107	7.9	Between two Thanksgivings two years apart, Hannah's husband falls in love with her sister Lee, while her hypochondriac ex-husband rekindles his relationship with her sister Holly.	90.0	499	67176	40,084,041	https://m.media-amazon.com/images/M/MV5BMWZiNWUwYjMtM2Y1Yi00MTZmLWEwYzctNjVmYWM0OTFlZDFhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
610	Brazil	1985	U	132	7.9	A bureaucrat in a dystopic society becomes an enemy of the state as he pursues the woman of his dreams.	84.0	263	187567	9,929,135	https://m.media-amazon.com/images/M/MV5BMzIwM2IwYTItYmM4Zi00OWMzLTkwNjAtYWRmYWNmY2RhMDk0XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
611	This Is Spinal Tap	1984	R	82	7.9	Spinal Tap, one of England's loudest bands, is chronicled by film director Marty DiBergi on what proves to be a fateful tour.	92.0	352	128812	188,751	https://m.media-amazon.com/images/M/MV5BMTQ2MTIzMzg5Nl5BMl5BanBnXkFtZTgwOTc5NDI1MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
612	A Christmas Story	1983	U	93	7.9	In the 1940s, a young boy named Ralphie attempts to convince his parents, his teacher and Santa that a Red Ryder BB gun really is the perfect Christmas gift.	77.0	616	132947	20,605,209	https://m.media-amazon.com/images/M/MV5BOWMyNjE0MzEtMzVjNy00NjIxLTg0ZjMtMWJhNGI1YmVjYTczL2ltYWdlXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_UX67_CR0,0,67,98_AL_.jpg
613	The Blues Brothers	1980	U	133	7.9	Jake Blues, just released from prison, puts together his old band to save the Catholic home where he and his brother Elwood were raised.	60.0	617	183182	57,229,890	https://m.media-amazon.com/images/M/MV5BYTdlMDExOGUtN2I3MS00MjY5LWE1NTAtYzc3MzIxN2M3OWY1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
614	Manhattan	1979	R	96	7.9	The life of a divorced television writer dating a teenage girl is further complicated when he falls in love with his best friend's mistress.	83.0	499	131436	45,700,000	https://m.media-amazon.com/images/M/MV5BMzdmY2I3MmEtOGFiZi00MTg1LWIxY2QtNWUwM2NmNWNlY2U5XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
615	All That Jazz	1979	A	123	7.9	Director/choreographer Bob Fosse tells his own life story as he details the sordid career of Joe Gideon, a womanizing, drug-using dancer.	72.0	619	28223	37,823,676	https://m.media-amazon.com/images/M/MV5BZWE4N2JkNDUtZDU4MC00ZjNhLTlkMjYtOTNkMjZhMDAwMDMyXkEyXkFqcGdeQXVyMTA0MjU0Ng@@._V1_UX67_CR0,0,67,98_AL_.jpg
616	Dawn of the Dead	1978	A	127	7.9	Following an ever-growing epidemic of zombies that have risen from the dead, two Philadelphia S.W.A.T. team members, a traffic reporter, and his television executive girlfriend seek refuge in a secluded shopping mall.	71.0	620	111512	5,100,000	https://m.media-amazon.com/images/M/MV5BMzc1YTIyNjctYzhlNy00ZmYzLWI2ZWQtMzk4MmQwYzA0NGQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
617	All the President's Men	1976	U	138	7.9	"The Washington Post" reporters Bob Woodward and Carl Bernstein uncover the details of the Watergate scandal that leads to President Richard Nixon's resignation.	84.0	621	103031	70,600,000	https://m.media-amazon.com/images/M/MV5BOWI2YWQxM2MtY2U4Yi00YjgzLTgwNzktN2ExNTgzNTIzMmUzXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UX67_CR0,0,67,98_AL_.jpg
659	Kubo and the Two Strings	2016	PG	101	7.8	A young boy named Kubo must locate a magical suit of armour worn by his late father in order to defeat a vengeful spirit from the past.	84.0	663	118035	48,023,088	https://m.media-amazon.com/images/M/MV5BMjA2Mzg2NDMzNl5BMl5BanBnXkFtZTgwMjcwODUzOTE@._V1_UX67_CR0,0,67,98_AL_.jpg
618	La montaña sagrada	1973	R	114	7.9	In a corrupt, greed-fueled world, a powerful alchemist leads a messianic character and seven materialistic figures to the Holy Mountain, where they hope to achieve enlightenment.	76.0	622	37183	61,001	https://m.media-amazon.com/images/M/MV5BN2IzM2I5NTQtMTIyMy00YWM2LWI1OGMtNjI0MWIyNDZkZGFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
619	Amarcord	1973	R	123	7.9	A series of comedic and nostalgic vignettes set in a 1930s Italian coastal town.	NaN	387	39897	NaN	https://m.media-amazon.com/images/M/MV5BZDI2OTg2NDQtMzc0MC00MjRiLWI1NzAtMjY2ZDMwMmUyNzBiXkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_UX67_CR0,0,67,98_AL_.jpg
620	Le charme discret de la bourgeoisie	1972	PG	102	7.9	A surreal, virtually plotless series of dreams centered around six middle-class people and their consistently interrupted attempts to have a meal together.	93.0	377	38737	198,809	https://m.media-amazon.com/images/M/MV5BYzQ5NjJiYWQtYjAzMC00NGU0LWFlMDYtNGFiYjFlMWI1NWM0XkEyXkFqcGdeQXVyODQ0OTczOQ@@._V1_UY98_CR4,0,67,98_AL_.jpg
621	Aguirre, der Zorn Gottes	1972	NaN	95	7.9	In the 16th century, the ruthless and insane Don Lope de Aguirre leads a Spanish expedition in search of El Dorado.	NaN	358	52397	NaN	https://m.media-amazon.com/images/M/MV5BMjRkY2VhYzMtZWQyNS00OTY2LWE5NTAtYjlhNmQyYzE5MmUxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
622	Harold and Maude	1971	PG	91	7.9	Young, rich, and obsessed with death, Harold finds himself changed forever when he meets lively septuagenarian Maude at a funeral.	62.0	498	70826	NaN	https://m.media-amazon.com/images/M/MV5BY2M5Mzg3NjctZTlkNy00MTU0LWFlYTQtY2E2Y2M4NjNiNzllXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UX67_CR0,0,67,98_AL_.jpg
623	Patton	1970	U	172	7.9	The World War II phase of the career of controversial American general George S. Patton.	91.0	503	93741	61,700,000	https://m.media-amazon.com/images/M/MV5BMmNhZmJhMmYtNjlkMC00MjhjLTk1NzMtMTNlMzYzNjZlMjNiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
624	The Wild Bunch	1969	A	145	7.9	An aging group of outlaws look for one last big score as the "traditional" American West is disappearing around them.	97.0	628	77401	12,064,472	https://m.media-amazon.com/images/M/MV5BNGUyYTZmOWItMDJhMi00N2IxLWIyNDMtNjUxM2ZiYmU5YWU1XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
625	Night of the Living Dead	1968	NaN	96	7.9	A ragtag group of Pennsylvanians barricade themselves in an old farmhouse to remain safe from a horde of flesh-eating ghouls that are ravaging the East Coast of the United States.	89.0	620	116557	89,029	https://m.media-amazon.com/images/M/MV5BMzRmN2E1ZDUtZDc2ZC00ZmI3LTkwOTctNzE2ZDIzMGJiMTYzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
626	The Lion in Winter	1968	PG	134	7.9	1183 A.D.: King Henry II's three sons all want to inherit the throne, but he won't commit to a choice. They and his wife variously plot to force him.	NaN	630	29003	22,276,975	https://m.media-amazon.com/images/M/MV5BMTkzNzYyMzA5N15BMl5BanBnXkFtZTgwODcwODQ3MDI@._V1_UX67_CR0,0,67,98_AL_.jpg
627	In the Heat of the Night	1967	U	110	7.9	A black police detective is asked to investigate a murder in a racially hostile southern town.	75.0	507	67804	24,379,978	https://m.media-amazon.com/images/M/MV5BZjZhZTZkNWItZGE1My00MTRkLWI2ZDktMWZkZTIxZWYxOTgzXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UX67_CR0,0,67,98_AL_.jpg
628	Charade	1963	U	113	7.9	Romance and suspense ensue in Paris as a woman is pursued by several men who want a fortune her murdered husband had stolen. Whom can she trust?	83.0	205	68689	13,474,588	https://m.media-amazon.com/images/M/MV5BMTA0Y2UyMDUtZGZiOS00ZmVkLTg3NmItODQyNTY1ZjU1MWE4L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
629	The Manchurian Candidate	1962	PG-13	126	7.9	A former prisoner of war is brainwashed as an unwitting assassin for an international Communist conspiracy.	94.0	633	71122	NaN	https://m.media-amazon.com/images/M/MV5BOTY0ZTA1ZjUtN2MyNi00ZGRmLWExYmMtOTkyNzI1NGQ2Y2RlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
630	Spartacus	1960	A	197	7.9	The slave Spartacus leads a violent revolt against the decadent Roman Republic.	87.0	158	124339	30,000,000	https://m.media-amazon.com/images/M/MV5BMjc4MTUxN2UtMmU1NC00MjQyLTk3YTYtZTQ0YzEzZDc0Njc0XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
631	L'avventura	1960	U	144	7.9	A woman disappears during a Mediterranean boating trip. During the search, her lover and her best friend become attracted to each other.	NaN	635	26542	NaN	https://m.media-amazon.com/images/M/MV5BZDFlODBmZTYtMWU4MS00MzY4LWFmYzYtYzAzZmU1MGUzMDE5XkEyXkFqcGdeQXVyNTc1NDM0NDU@._V1_UY98_CR1,0,67,98_AL_.jpg
632	Hiroshima mon amour	1959	NaN	90	7.9	A French actress filming an anti-war film in Hiroshima has an affair with a married Japanese architect as they share their differing perspectives on war.	NaN	636	28421	88,300	https://m.media-amazon.com/images/M/MV5BMzY2NTA1MzUwN15BMl5BanBnXkFtZTgwOTc4NTU4MjE@._V1_UX67_CR0,0,67,98_AL_.jpg
633	The Ten Commandments	1956	U	220	7.9	Moses, an Egyptian Prince, learns of his true heritage as a Hebrew and his divine mission as the deliverer of his people.	NaN	637	63560	93,740,000	https://m.media-amazon.com/images/M/MV5BODcxYjUxZDgtYTQ5Zi00YmQ1LWJmZmItODZkOTYyNDhiNWM3XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
634	The Searchers	1956	Passed	119	7.9	An American Civil War veteran embarks on a journey to rescue his niece from the Comanches.	94.0	380	80316	NaN	https://m.media-amazon.com/images/M/MV5BYWQ3YWJiMDEtMDBhNS00YjY1LTkzNmEtY2U4Njg4MjQ3YWE3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
635	East of Eden	1955	U	118	7.9	Two brothers struggle to maintain their strict, Bible-toting father's favor.	72.0	390	40313	NaN	https://m.media-amazon.com/images/M/MV5BMzE1MzdjNmUtOWU5MS00OTgwLWIzYjYtYTYwYTM0NDkyOTU1XkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_UX67_CR0,0,67,98_AL_.jpg
636	High Noon	1952	PG	85	7.9	A town Marshal, despite the disagreements of his newlywed bride and the townspeople around him, must face a gang of deadly killers alone at high noon when the gang leader, an outlaw he sent up years ago, arrives on the noon train.	89.0	640	97222	9,450,000	https://m.media-amazon.com/images/M/MV5BOWIzZGUxZmItOThkMS00Y2QxLTg0MTYtMDdhMjRlNTNlYTI3L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
637	Strangers on a Train	1951	A	101	7.9	A psychopath forces a tennis star to comply with his theory that two strangers can get away with murder.	88.0	134	123341	7,630,000	https://m.media-amazon.com/images/M/MV5BNzkwNjk4ODgtYjRmMi00ODdhLWIyNjUtNWQyMjg2N2E2NjlhXkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_UX67_CR0,0,67,98_AL_.jpg
638	Harvey	1950	Approved	104	7.9	Due to his insistence that he has an invisible six foot-tall rabbit for a best friend, a whimsical middle-aged man is thought by his family to be insane - but he may be wiser than anyone knows.	NaN	642	52573	NaN	https://m.media-amazon.com/images/M/MV5BMzg2YTFkNjgtM2ZkNS00MWVkLWIwMTEtZTgzMDM2MmUxNDE2XkEyXkFqcGdeQXVyMjI4MjA5MzA@._V1_UX67_CR0,0,67,98_AL_.jpg
826	Gravity	2013	UA	91	7.7	Two astronauts work together to survive after an accident leaves them stranded in space.	96.0	591	769145	274,092,705	https://m.media-amazon.com/images/M/MV5BNjE5MzYwMzYxMF5BMl5BanBnXkFtZTcwOTk4MTk0OQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
639	Miracle on 34th Street	1947	NaN	96	7.9	When a nice old man who claims to be Santa Claus is institutionalized as insane, a young lawyer decides to defend him by arguing in court that he is the real thing.	88.0	643	41625	2,650,000	https://m.media-amazon.com/images/M/MV5BNjRkOGEwYTUtY2E5Yy00ODg4LTk2ZWItY2IyMzUxOGVhMTM1XkEyXkFqcGdeQXVyNDk0MDg4NDk@._V1_UX67_CR0,0,67,98_AL_.jpg
640	Notorious	1946	U	102	7.9	A woman is asked to spy on a group of Nazi friends in South America. How far will she have to go to ingratiate herself with them?	100.0	134	92306	10,464,000	https://m.media-amazon.com/images/M/MV5BYTc1NGViOTMtNjZhNS00OGY2LWI4MmItOWQwNTY4MDMzNWI3L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
641	The Big Sleep	1946	Passed	114	7.9	Private detective Philip Marlowe is hired by a wealthy family. Before the complex case is over, he's seen murder, blackmail, and what might be love.	NaN	521	78796	6,540,000	https://m.media-amazon.com/images/M/MV5BMjdiM2IyZmQtODJiYy00NDNkLTllYmItMmFjMDNiYTQyOGVkXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UX67_CR0,0,67,98_AL_.jpg
642	The Lost Weekend	1945	Passed	101	7.9	The desperate life of a chronic alcoholic is followed through a four-day drinking bout.	NaN	164	33549	9,460,000	https://m.media-amazon.com/images/M/MV5BMTk4NDQ0NjgyNF5BMl5BanBnXkFtZTgwMTE3NTkxMTE@._V1_UX67_CR0,0,67,98_AL_.jpg
643	The Philadelphia Story	1940	NaN	112	7.9	When a rich woman's ex-husband and a tabloid-type reporter turn up just before her planned remarriage, she begins to learn the truth about herself.	96.0	647	63550	NaN	https://m.media-amazon.com/images/M/MV5BYjQ4ZDA4NGMtMTkwYi00NThiLThhZDUtZTEzNTAxOWYyY2E4XkEyXkFqcGdeQXVyMjUxODE0MDY@._V1_UX67_CR0,0,67,98_AL_.jpg
644	His Girl Friday	1940	Passed	92	7.9	A newspaper editor uses every trick in the book to keep his ace reporter ex-wife from remarrying.	NaN	521	53667	296,000	https://m.media-amazon.com/images/M/MV5BZDVmZTZkYjMtNmViZC00ODEzLTgwNDAtNmQ3OGQwOWY5YjFmXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UX67_CR0,0,67,98_AL_.jpg
645	The Adventures of Robin Hood	1938	PG	102	7.9	When Prince John and the Norman Lords begin oppressing the Saxon masses in King Richard's absence, a Saxon lord fights back as the outlaw leader of a rebel guerrilla army.	97.0	135	47175	3,981,000	https://m.media-amazon.com/images/M/MV5BYjZjOTU3MTMtYTM5YS00YjZmLThmNmMtODcwOTM1NmRiMWM2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
646	A Night at the Opera	1935	Passed	96	7.9	A sly business manager and two wacky friends of two opera singers help them achieve success while humiliating their stuffy and snobbish enemies.	NaN	650	30580	2,537,520	https://m.media-amazon.com/images/M/MV5BYTJmNmQxNGItNDNlMC00MDU3LWFhNzMtZDQ2NDY0ZTVkNjE3XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
647	King Kong	1933	Passed	100	7.9	A film crew goes to a tropical island for an exotic location shoot and discovers a colossal ape who takes a shine to their female blonde star. He is then captured and brought back to New York City for public exhibition.	90.0	651	78991	10,000,000	https://m.media-amazon.com/images/M/MV5BZTY3YjYxZGQtMTM2YS00ZmYwLWFlM2QtOWFlMTU1NTAyZDQ2XkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_UX67_CR0,0,67,98_AL_.jpg
648	Freaks	1932	NaN	64	7.9	A circus' beautiful trapeze artist agrees to marry the leader of side-show performers, but his deformed friends discover she is only marrying him for his inheritance.	80.0	652	42117	NaN	https://m.media-amazon.com/images/M/MV5BMjMyYjgyOTQtZDVlZS00NTQ0LWJiNDItNGRlZmM3Yzc0N2Y0XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
649	Nosferatu	1922	NaN	94	7.9	Vampire Count Orlok expresses interest in a new residence and real estate agent Hutter's wife.	NaN	404	88794	NaN	https://m.media-amazon.com/images/M/MV5BMTAxYjEyMTctZTg3Ni00MGZmLWIxMmMtOGM2NTFiY2U3MmExXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
650	The Gentlemen	2019	A	113	7.8	An American expat tries to sell off his highly profitable marijuana empire in London, triggering plots, schemes, bribery and blackmail in an attempt to steal his domain out from under him.	51.0	181	237392	NaN	https://m.media-amazon.com/images/M/MV5BMTlkMmVmYjktYTc2NC00ZGZjLWEyOWUtMjc2MDMwMjQwOTA5XkEyXkFqcGdeQXVyNTI4MzE4MDU@._V1_UX67_CR0,0,67,98_AL_.jpg
651	Raazi	2018	UA	138	7.8	A Kashmiri woman agrees to marry a Pakistani army officer in order to spy on Pakistan during the Indo-Pakistan War of 1971.	NaN	218	25344	NaN	https://m.media-amazon.com/images/M/MV5BZmVhN2JlYjEtZWFkOS00YzE0LThiNDMtMGI3NDA1MTk2ZDQ2XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR0,0,67,98_AL_.jpg
652	Sound of Metal	2019	R	120	7.8	A heavy-metal drummer's life is thrown into freefall when he begins to lose his hearing.	81.0	656	27187	NaN	https://m.media-amazon.com/images/M/MV5BNjcyYjg0M2ItMzMyZS00NmM1LTlhZDMtN2MxN2RhNWY4YTkwXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_UX67_CR0,0,67,98_AL_.jpg
653	Forushande	2016	UA	124	7.8	While both participating in a production of "Death of a Salesman," a teacher's wife is assaulted in her new home, which leaves him determined to find the perpetrator over his wife's traumatized objections.	85.0	174	51240	2,402,067	https://m.media-amazon.com/images/M/MV5BMTBkMjMyN2UtNzVjNi00Y2ZiLTk2MDYtN2Y0MjgzYjAxNzE4XkEyXkFqcGdeQXVyNjkxOTM4ODY@._V1_UY98_CR1,0,67,98_AL_.jpg
654	Dunkirk	2017	UA	106	7.8	Allied soldiers from Belgium, the British Empire, and France are surrounded by the German Army and evacuated during a fierce battle in World War II.	94.0	87	555092	188,373,161	https://m.media-amazon.com/images/M/MV5BN2YyZjQ0NTEtNzU5MS00NGZkLTg0MTEtYzJmMWY3MWRhZjM2XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_UX67_CR0,0,67,98_AL_.jpg
655	Perfetti sconosciuti	2016	NaN	96	7.8	Seven long-time friends get together for a dinner. When they decide to share with each other the content of every text message, email and phone call they receive, many secrets start to unveil and the equilibrium trembles.	NaN	659	57168	NaN	https://m.media-amazon.com/images/M/MV5BNDQzZmQ5MjItYmJlNy00MGI2LWExMDQtMjBiNjNmMzc5NTk1XkEyXkFqcGdeQXVyNjY1OTY4MTk@._V1_UY98_CR1,0,67,98_AL_.jpg
656	Hidden Figures	2016	UA	127	7.8	The story of a team of female African-American mathematicians who served a vital role in NASA during the early years of the U.S. space program.	74.0	660	200876	169,607,287	https://m.media-amazon.com/images/M/MV5BMzg2Mzg4YmUtNDdkNy00NWY1LWE3NmEtZWMwNGNlMzE5YzU3XkEyXkFqcGdeQXVyMjA5MTIzMjQ@._V1_UX67_CR0,0,67,98_AL_.jpg
657	Paddington 2	2017	U	103	7.8	Paddington (Ben Whishaw), now happily settled with the Brown family and a popular member of the local community, picks up a series of odd jobs to buy the perfect present for his Aunt Lucy's (Imelda Staunton's) 100th birthday, only for the gift to be stolen.	88.0	661	61594	40,442,052	https://m.media-amazon.com/images/M/MV5BMmYwNWZlNzEtNjE4Zi00NzQ4LWI2YmUtOWZhNzZhZDYyNmVmXkEyXkFqcGdeQXVyNzYzODM3Mzg@._V1_UX67_CR0,0,67,98_AL_.jpg
658	Udta Punjab	2016	A	148	7.8	A story that revolves around drug abuse in the affluent north Indian State of Punjab and how the youth there have succumbed to it en-masse resulting in a socio-economic decline.	NaN	662	27175	NaN	https://m.media-amazon.com/images/M/MV5BY2YxNjQxYWYtYzNkMi00YTgyLWIwZTMtYzgyYjZlZmYzZTA0XkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_UX67_CR0,0,67,98_AL_.jpg
660	M.S. Dhoni: The Untold Story	2016	U	184	7.8	The untold story of Mahendra Singh Dhoni's journey from ticket collector to trophy collector - the world-cup-winning captain of the Indian Cricket Team.	NaN	309	40416	1,782,795	https://m.media-amazon.com/images/M/MV5BZjAzZjZiMmQtMDZmOC00NjVmLTkyNTItOGI2Mzg4NTBhZTA1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR0,0,67,98_AL_.jpg
661	Manchester by the Sea	2016	UA	137	7.8	A depressed uncle is asked to take care of his teenage nephew after the boy's father dies.	96.0	665	246963	47,695,120	https://m.media-amazon.com/images/M/MV5BMTYxMjk0NDg4Ml5BMl5BanBnXkFtZTgwODcyNjA5OTE@._V1_UX67_CR0,0,67,98_AL_.jpg
662	Under sandet	2015	R	100	7.8	In post-World War II Denmark, a group of young German POWs are forced to clear a beach of thousands of land mines under the watch of a Danish Sergeant who slowly learns to appreciate their plight.	75.0	666	35539	435,266	https://m.media-amazon.com/images/M/MV5BMjA0MzQzNjM1Ml5BMl5BanBnXkFtZTgwNjM5MjU5NjE@._V1_UX67_CR0,0,67,98_AL_.jpg
663	Rogue One	2016	UA	133	7.8	The daughter of an Imperial scientist joins the Rebel Alliance in a risky move to steal the plans for the Death Star.	65.0	667	556608	532,177,324	https://m.media-amazon.com/images/M/MV5BMjEwMzMxODIzOV5BMl5BanBnXkFtZTgwNzg3OTAzMDI@._V1_UX67_CR0,0,67,98_AL_.jpg
664	Captain America: Civil War	2016	UA	147	7.8	Political involvement in the Avengers' affairs causes a rift between Captain America and Iron Man.	75.0	144	663649	408,084,349	https://m.media-amazon.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_UX67_CR0,0,67,98_AL_.jpg
665	The Hateful Eight	2015	A	168	7.8	In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters.	68.0	91	517059	54,117,416	https://m.media-amazon.com/images/M/MV5BMjA1MTc1NTg5NV5BMl5BanBnXkFtZTgwOTM2MDEzNzE@._V1_UX67_CR0,0,67,98_AL_.jpg
666	Little Women	2019	U	135	7.8	Jo March reflects back and forth on her life, telling the beloved story of the March sisters - four young women, each determined to live life on her own terms.	91.0	670	143250	108,101,214	https://m.media-amazon.com/images/M/MV5BY2QzYTQyYzItMzAwYi00YjZlLThjNTUtNzMyMDdkYzJiNWM4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
667	Loving Vincent	2017	UA	94	7.8	In a story depicted in oil painted animation, a young man comes to the last hometown of painter Vincent van Gogh (Robert Gulaczyk) to deliver the troubled artist's final letter and ends up investigating his final days there.	62.0	671	50778	6,735,118	https://m.media-amazon.com/images/M/MV5BMTU3NjE2NjgwN15BMl5BanBnXkFtZTgwNDYzMzEwMzI@._V1_UX67_CR0,0,67,98_AL_.jpg
668	Pride	2014	R	119	7.8	U.K. gay activists work to help miners during their lengthy strike of the National Union of Mineworkers in the summer of 1984.	79.0	672	51841	NaN	https://m.media-amazon.com/images/M/MV5BMTU2OTcyOTE3MF5BMl5BanBnXkFtZTgwNTg5Mjc1MjE@._V1_UX67_CR0,0,67,98_AL_.jpg
669	Le passé	2013	PG-13	130	7.8	An Iranian man deserts his French wife and her two children to return to his homeland. Meanwhile, his wife starts up a new relationship, a reality her husband confronts upon his wife's request for a divorce.	85.0	174	45002	1,330,596	https://m.media-amazon.com/images/M/MV5BMTcxNTgzNDg1N15BMl5BanBnXkFtZTgwNjg4MzI1MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
670	La grande bellezza	2013	NaN	141	7.8	Jep Gambardella has seduced his way through the lavish nightlife of Rome for decades, but after his 65th birthday and a shock from the past, Jep looks past the nightclubs and parties to find a timeless landscape of absurd, exquisite beauty.	86.0	674	81125	2,852,400	https://m.media-amazon.com/images/M/MV5BNjg5NmI3NmUtZDQ2Mi00ZTI0LWE0YzAtOGRhOWJmNDJkOWNkXkEyXkFqcGdeQXVyMzIzNDU1NTY@._V1_UY98_CR0,0,67,98_AL_.jpg
671	The Lunchbox	2013	U	104	7.8	A mistaken delivery in Mumbai's famously efficient lunchbox delivery system connects a young housewife to an older man in the dusk of his life as they build a fantasy world together through notes in the lunchbox.	76.0	675	50523	4,231,500	https://m.media-amazon.com/images/M/MV5BMTUwMzc1NjIzMV5BMl5BanBnXkFtZTgwODUyMTIxMTE@._V1_UX67_CR0,0,67,98_AL_.jpg
672	Vicky Donor	2012	UA	126	7.8	A man is brought in by an infertility doctor to supply him with his sperm, where he becomes the biggest sperm donor for his clinic.	NaN	676	39710	169,209	https://m.media-amazon.com/images/M/MV5BYWNlODE1ZTEtOTQ5MS00N2QwLTllNjItZDQ2Y2UzMmU5YmI2XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR3,0,67,98_AL_.jpg
673	Big Hero 6	2014	U	102	7.8	A special bond develops between plus-sized inflatable robot Baymax and prodigy Hiro Hamada, who together team up with a group of friends to form a band of high-tech heroes.	74.0	677	410983	222,527,828	https://m.media-amazon.com/images/M/MV5BMDliOTIzNmUtOTllOC00NDU3LWFiNjYtMGM0NDc1YTMxNjYxXkEyXkFqcGdeQXVyNTM3NzExMDQ@._V1_UY98_CR1,0,67,98_AL_.jpg
674	About Time	2013	R	123	7.8	At the age of 21, Tim discovers he can travel in time and change what happens and has happened in his own life. His decision to make his world a better place by getting a girlfriend turns out not to be as easy as you might think.	55.0	678	303032	15,322,921	https://m.media-amazon.com/images/M/MV5BMTA1ODUzMDA3NzFeQTJeQWpwZ15BbWU3MDgxMTYxNTk@._V1_UX67_CR0,0,67,98_AL_.jpg
675	English Vinglish	2012	U	134	7.8	A quiet, sweet tempered housewife endures small slights from her well-educated husband and daughter every day because of her inability to speak and understand English.	NaN	679	33618	1,670,773	https://m.media-amazon.com/images/M/MV5BMjQ5YWVmYmYtOWFiZC00NGMxLWEwODctZDM2MWI4YWViN2E5XkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UY98_CR0,0,67,98_AL_.jpg
676	Kaze tachinu	2013	PG-13	126	7.8	A look at the life of Jiro Horikoshi, the man who designed Japanese fighter planes during World War II.	83.0	108	73690	5,209,580	https://m.media-amazon.com/images/M/MV5BMTU4NDg0MzkzNV5BMl5BanBnXkFtZTgwODA3Mzc1MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
677	Toy Story 4	2019	U	100	7.8	When a new toy called "Forky" joins Woody and the gang, a road trip alongside old and new friends reveals how big the world can be for a toy.	84.0	681	203177	434,038,008	https://m.media-amazon.com/images/M/MV5BMTYzMDM4NzkxOV5BMl5BanBnXkFtZTgwNzM1Mzg2NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
678	La migliore offerta	2013	R	131	7.8	A lonely art expert working for a mysterious and reclusive heiress finds not only her art worth examining.	49.0	130	108399	85,433	https://m.media-amazon.com/images/M/MV5BMTQ4MzQ3NjA0N15BMl5BanBnXkFtZTgwODQyNjQ4MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
679	Moonrise Kingdom	2012	A	94	7.8	A pair of young lovers flee their New England town, which causes a local search party to fan out to find them.	84.0	294	318789	45,512,466	https://m.media-amazon.com/images/M/MV5BMzllMWI1ZDQtMmFhNS00NzJkLThmMTMtNzFmMmMyYjU3ZGVjXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
680	How to Train Your Dragon 2	2014	U	102	7.8	When Hiccup and Toothless discover an ice cave that is home to hundreds of new wild dragons and the mysterious Dragon Rider, the two friends find themselves at the center of a battle to protect the peace.	76.0	315	305611	177,002,924	https://m.media-amazon.com/images/M/MV5BMzMwMTAwODczN15BMl5BanBnXkFtZTgwMDk2NDA4MTE@._V1_UX67_CR0,0,67,98_AL_.jpg
681	The Big Short	2015	A	130	7.8	In 2006-2007 a group of investors bet against the US mortgage market. In their research they discover how flawed and corrupt the market is.	81.0	685	362942	70,259,870	https://m.media-amazon.com/images/M/MV5BNDc4MThhN2EtZjMzNC00ZDJmLThiZTgtNThlY2UxZWMzNjdkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
682	Kokuhaku	2010	NaN	106	7.8	A psychological thriller of a grieving mother turned cold-blooded avenger with a twisty master plan to pay back those who were responsible for her daughter's death.	NaN	686	35713	NaN	https://m.media-amazon.com/images/M/MV5BYzM2OGQ2NzUtNzlmYi00ZDg4LWExODgtMDVmOTU2Yzg2N2U5XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR0,0,67,98_AL_.jpg
683	Ang-ma-reul bo-at-da	2010	NaN	144	7.8	A secret agent exacts revenge on a serial killer through a series of captures and releases.	67.0	687	111252	128,392	https://m.media-amazon.com/images/M/MV5BZjRmNjc5MTYtYjc3My00ZjNiLTg4YjUtMTQ0ZTFkZmMxMDUzXkEyXkFqcGdeQXVyNDY5MTUyNjU@._V1_UY98_CR3,0,67,98_AL_.jpg
684	The Girl with the Dragon Tattoo	2011	R	158	7.8	Journalist Mikael Blomkvist is aided in his search for a woman who has been missing for forty years by Lisbeth Salander, a young computer hacker.	71.0	94	423010	102,515,793	https://m.media-amazon.com/images/M/MV5BMTczNDk4NTQ0OV5BMl5BanBnXkFtZTcwNDAxMDgxNw@@._V1_UX67_CR0,0,67,98_AL_.jpg
685	Captain Phillips	2013	UA	134	7.8	The true story of Captain Richard Phillips and the 2009 hijacking by Somali pirates of the U.S.-flagged MV Maersk Alabama, the first American cargo ship to be hijacked in two hundred years.	82.0	447	421244	107,100,855	https://m.media-amazon.com/images/M/MV5BODhiZWRhMjctNDUyMS00NmUwLTgwYmItMjJhOWNkZWQ3ZTQxXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
686	Ajeossi	2010	R	119	7.8	A quiet pawnshop keeper with a violent past takes on a drug-and-organ trafficking ring in hope of saving the child who is his only friend.	NaN	690	62848	6,460	https://m.media-amazon.com/images/M/MV5BMTgzMTkxNjAxNV5BMl5BanBnXkFtZTgwMDU3MDE0MjE@._V1_UY98_CR0,0,67,98_AL_.jpg
687	Straight Outta Compton	2015	R	147	7.8	The rap group NWA emerges from the mean streets of Compton in Los Angeles, California, in the mid-1980s and revolutionizes Hip Hop culture with their music and tales about life in the hood.	72.0	691	179264	161,197,785	https://m.media-amazon.com/images/M/MV5BMTA5MzkyMzIxNjJeQTJeQWpwZ15BbWU4MDU0MDk0OTUx._V1_UX67_CR0,0,67,98_AL_.jpg
688	Madeo	2009	R	129	7.8	A mother desperately searches for the killer who framed her son for a girl's horrific murder.	79.0	104	52758	547,292	https://m.media-amazon.com/images/M/MV5BMTQzMTg0NDA1M15BMl5BanBnXkFtZTgwODUzMTE0MjE@._V1_UY98_CR0,0,67,98_AL_.jpg
689	Chugyeokja	2008	NaN	125	7.8	A disgraced ex-policeman who runs a small ring of prostitutes finds himself in a race against time when one of his women goes missing.	64.0	693	58468	NaN	https://m.media-amazon.com/images/M/MV5BY2ViOTU5MDQtZTRiZi00YjViLWFiY2ItOTRhNWYyN2ZiMzUyXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
690	The Hobbit: The Desolation of Smaug	2013	UA	161	7.8	The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.	66.0	90	601408	258,366,855	https://m.media-amazon.com/images/M/MV5BMzU0NDY0NDEzNV5BMl5BanBnXkFtZTgwOTIxNDU1MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
691	Das weiße Band - Eine deutsche Kindergeschichte	2009	UA	144	7.8	Strange events happen in a small village in the north of Germany during the years before World War I, which seem to be ritual punishment. Who is responsible?	82.0	568	68715	2,222,647	https://m.media-amazon.com/images/M/MV5BMTQ2OTYyNzUxOF5BMl5BanBnXkFtZTcwMzUwMDY4Mg@@._V1_UX67_CR0,0,67,98_AL_.jpg
692	Män som hatar kvinnor	2009	R	152	7.8	A journalist is aided by a young female hacker in his search for the killer of a woman who has been dead for forty years.	76.0	696	208994	10,095,170	https://m.media-amazon.com/images/M/MV5BMTc2Mjc0MDg3MV5BMl5BanBnXkFtZTcwMjUzMDkxMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
693	The Trial of the Chicago 7	2020	R	129	7.8	The story of 7 people on trial stemming from various charges surrounding the uprising at the 1968 Democratic National Convention in Chicago, Illinois.	77.0	697	89896	NaN	https://m.media-amazon.com/images/M/MV5BYjYzOGE1MjUtODgyMy00ZDAxLTljYTgtNzk0Njg2YWQwMTZhXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
694	Druk	2020	NaN	117	7.8	Four friends, all high school teachers, test a theory that they will improve their lives by maintaining a constant level of alcohol in their blood.	81.0	173	33931	NaN	https://m.media-amazon.com/images/M/MV5BOTNjM2Y2ZjgtMDc5NS00MDQ1LTgyNGYtYzYwMTAyNWQwYTMyXkEyXkFqcGdeQXVyMjE4NzUxNDA@._V1_UX67_CR0,0,67,98_AL_.jpg
695	The Fighter	2010	UA	116	7.8	Based on the story of Micky Ward, a fledgling boxer who tries to escape the shadow of his more famous but troubled older boxing brother and get his own shot at greatness.	79.0	699	340584	93,617,009	https://m.media-amazon.com/images/M/MV5BMTM0ODk3MjM1MV5BMl5BanBnXkFtZTcwNzc1MDIwNA@@._V1_UX67_CR0,0,67,98_AL_.jpg
696	Taken	2008	A	90	7.8	A retired CIA agent travels across Europe and relies on his old skills to save his estranged daughter, who has been kidnapped while on a trip to Paris.	51.0	700	564791	145,000,989	https://m.media-amazon.com/images/M/MV5BMTM4NzQ0OTYyOF5BMl5BanBnXkFtZTcwMDkyNjQyMg@@._V1_UX67_CR0,0,67,98_AL_.jpg
697	The Boy in the Striped Pyjamas	2008	PG-13	94	7.8	Through the innocent eyes of Bruno, the eight-year-old son of the commandant at a German concentration camp, a forbidden friendship with a Jewish boy on the other side of the camp fence has startling and unexpected consequences.	55.0	701	190748	9,030,581	https://m.media-amazon.com/images/M/MV5BMTMzMTc3MjA5NF5BMl5BanBnXkFtZTcwOTk3MDE5MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
698	Once	2007	R	86	7.8	A modern-day musical about a busker and an immigrant and their eventful week in Dublin, as they write, rehearse and record songs that tell their love story.	88.0	557	110656	9,439,923	https://m.media-amazon.com/images/M/MV5BYWUxZjJkMDktZmMxMS00Mzg3LTk4MDItN2IwODlmN2E0MTM0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
699	The Hobbit: An Unexpected Journey	2012	UA	169	7.8	A reluctant Hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home, and the gold within it from the dragon Smaug.	58.0	90	757377	303,003,568	https://m.media-amazon.com/images/M/MV5BMTcwNTE4MTUxMl5BMl5BanBnXkFtZTcwMDIyODM4OA@@._V1_UX67_CR0,0,67,98_AL_.jpg
700	Auf der anderen Seite	2007	NaN	122	7.8	A Turkish man travels to Istanbul to find the daughter of his father's former girlfriend.	85.0	589	30827	741,283	https://m.media-amazon.com/images/M/MV5BMzgxMzYyNzAyOF5BMl5BanBnXkFtZTcwODY5MjY3MQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
701	Atonement	2007	R	123	7.8	Thirteen-year-old fledgling writer Briony Tallis irrevocably changes the course of several lives when she accuses her older sister's lover of a crime he did not commit.	85.0	705	251370	50,927,067	https://m.media-amazon.com/images/M/MV5BMGRiYjE0YzItMzk3Zi00ZmYwLWJjNDktYTAwYjIwMjIxYzM3XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
702	Drive	2011	A	100	7.8	A mysterious Hollywood stuntman and mechanic moonlights as a getaway driver and finds himself in trouble when he helps out his neighbor.	78.0	706	571571	35,061,555	https://m.media-amazon.com/images/M/MV5BZjY5ZjQyMjMtMmEwOC00Nzc2LTllYTItMmU2MzJjNTg1NjY0XkEyXkFqcGdeQXVyNjQ1MTMzMDQ@._V1_UX67_CR0,0,67,98_AL_.jpg
703	American Gangster	2007	A	157	7.8	An outcast New York City cop is charged with bringing down Harlem drug lord Frank Lucas, whose real life inspired this partly biographical film.	76.0	124	392449	130,164,645	https://m.media-amazon.com/images/M/MV5BMjFmZGI2YTEtYmJhMS00YTE5LWJjNjAtNDI5OGY5ZDhmNTRlXkEyXkFqcGdeQXVyODAwMTU1MTE@._V1_UX67_CR0,0,67,98_AL_.jpg
704	Avatar	2009	UA	162	7.8	A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.	83.0	129	1118998	760,507,625	https://m.media-amazon.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
705	Mr. Nobody	2009	R	141	7.8	A boy stands on a station platform as a train is about to leave. Should he go with his mother or stay with his father? Infinite possibilities arise from this decision. As long as he doesn't choose, anything is possible.	63.0	709	216421	3,600	https://m.media-amazon.com/images/M/MV5BMTg4ODkzMDQ3Nl5BMl5BanBnXkFtZTgwNTEwMTkxMDE@._V1_UX67_CR0,0,67,98_AL_.jpg
706	Apocalypto	2006	A	139	7.8	As the Mayan kingdom faces its decline, a young man is taken on a perilous journey to a world ruled by fear and oppression.	68.0	187	291018	50,866,635	https://m.media-amazon.com/images/M/MV5BMzhmNGMzMDMtZDM0Yi00MmVmLWExYjAtZDhjZjcxZDM0MzJhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
707	Little Miss Sunshine	2006	UA	101	7.8	A family determined to get their young daughter into the finals of a beauty pageant take a cross-country trip in their VW bus.	80.0	711	439856	59,891,098	https://m.media-amazon.com/images/M/MV5BMTgzNTgzODU0NV5BMl5BanBnXkFtZTcwMjEyMjMzMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
708	Hot Fuzz	2007	UA	121	7.8	A skilled London police officer is transferred to a small town with a dark secret.	81.0	588	463466	23,637,265	https://m.media-amazon.com/images/M/MV5BMzg4MDJhMDMtYmJiMS00ZDZmLThmZWUtYTMwZDM1YTc5MWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
709	The Curious Case of Benjamin Button	2008	UA	166	7.8	Tells the story of Benjamin Button, a man who starts aging backwards with consequences.	70.0	94	589160	127,509,326	https://m.media-amazon.com/images/M/MV5BNjQ0NTY2ODY2M15BMl5BanBnXkFtZTgwMjE4MzkxMDE@._V1_UX67_CR0,0,67,98_AL_.jpg
710	Veer-Zaara	2004	U	192	7.8	Veer-Zaara is a saga of love, separation, courage and sacrifice. A love story that is an inspiration and will remain a legend forever.	67.0	714	49050	2,921,738	https://m.media-amazon.com/images/M/MV5BY2VlOTc4ZjctYjVlMS00NDYwLWEwZjctZmYzZmVkNGU5NjNjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY98_CR2,0,67,98_AL_.jpg
711	Adams æbler	2005	R	94	7.8	A neo-nazi sentenced to community service at a church clashes with the blindly devotional priest.	51.0	715	45717	1,305	https://m.media-amazon.com/images/M/MV5BMTU4NTc5NjM5M15BMl5BanBnXkFtZTgwODEyMTE0MDE@._V1_UY98_CR1,0,67,98_AL_.jpg
712	Pride & Prejudice	2005	PG	129	7.8	Sparks fly when spirited Elizabeth Bennet meets single, rich, and proud Mr. Darcy. But Mr. Darcy reluctantly finds himself falling in love with a woman beneath his class. Can each overcome their own pride and prejudice?	82.0	705	258924	38,405,088	https://m.media-amazon.com/images/M/MV5BMTA1NDQ3NTcyOTNeQTJeQWpwZ15BbWU3MDA0MzA4MzE@._V1_UX67_CR0,0,67,98_AL_.jpg
713	The World's Fastest Indian	2005	U	127	7.8	The story of New Zealander Burt Munro, who spent years rebuilding a 1920 Indian motorcycle, which helped him set the land speed world record at Utah's Bonneville Salt Flats in 1967.	68.0	717	51980	5,128,124	https://m.media-amazon.com/images/M/MV5BMjE1MjA0MDA3MV5BMl5BanBnXkFtZTcwOTU0MjMzMQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
714	Tôkyô goddofâzâzu	2003	UA	90	7.8	On Christmas Eve, three homeless people living on the streets of Tokyo discover a newborn baby among the trash and set out to find its parents.	73.0	471	31658	128,985	https://m.media-amazon.com/images/M/MV5BNWY2ODRkZDYtMjllYi00Y2EyLWFhYjktMTQ5OGNkY2ViYmY2XkEyXkFqcGdeQXVyNjUxMDQ0MTg@._V1_UY98_CR1,0,67,98_AL_.jpg
715	Serenity	2005	PG-13	119	7.8	The crew of the ship Serenity try to evade an assassin sent to recapture one of their members who is telepathic.	74.0	442	283310	25,514,517	https://m.media-amazon.com/images/M/MV5BOWE2MDAwZjEtODEyOS00ZjYyLTgzNDUtYmNiY2VmNWRiMTQxXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX67_CR0,0,67,98_AL_.jpg
716	Walk the Line	2005	PG-13	136	7.8	A chronicle of country music legend Johnny Cash's life, from his early days on an Arkansas cotton farm to his rise to fame with Sun Records in Memphis, where he recorded alongside Elvis Presley, Jerry Lee Lewis, and Carl Perkins.	72.0	287	234207	119,519,402	https://m.media-amazon.com/images/M/MV5BMjIyOTU3MjUxOF5BMl5BanBnXkFtZTcwMTQ0NjYzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
717	Ondskan	2003	NaN	113	7.8	A teenage boy expelled from school for fighting arrives at a boarding school where the systematic bullying of younger students is encouraged as a means to maintain discipline, and decides to fight back.	61.0	721	35682	15,280	https://m.media-amazon.com/images/M/MV5BMzYwODUxNjkyMF5BMl5BanBnXkFtZTcwODUzNjQyMQ@@._V1_UY98_CR0,0,67,98_AL_.jpg
718	The Notebook	2004	A	123	7.8	A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom, but they are soon separated because of their social differences.	53.0	722	520284	81,001,787	https://m.media-amazon.com/images/M/MV5BMTk3OTM5Njg5M15BMl5BanBnXkFtZTYwMzA0ODI3._V1_UX67_CR0,0,67,98_AL_.jpg
719	Diarios de motocicleta	2004	U	126	7.8	The dramatization of a motorcycle road trip Che Guevara went on in his youth that showed him his life's calling.	75.0	473	96703	16,756,372	https://m.media-amazon.com/images/M/MV5BOTNmZTgyMzAtMTUwZC00NjAwLTk4MjktODllYTY5YTUwN2YwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
720	Lilja 4-ever	2002	R	109	7.8	Sixteen-year-old Lilja and her only friend, the young boy Volodja, live in Russia, fantasizing about a better life. One day, Lilja falls in love with Andrej, who is going to Sweden, and invites Lilja to come along and start a new life.	82.0	724	42673	181,655	https://m.media-amazon.com/images/M/MV5BM2YwNTQwM2ItZTA2Ni00NGY1LThjY2QtNzgyZTBhMTM0MWI4XkEyXkFqcGdeQXVyNzQxNDExNTU@._V1_UY98_CR0,0,67,98_AL_.jpg
721	Les triplettes de Belleville	2003	PG-13	80	7.8	When her grandson is kidnapped during the Tour de France, Madame Souza and her beloved pooch Bruno team up with the Belleville Sisters--an aged song-and-dance team from the days of Fred Astaire--to rescue him.	91.0	725	50622	7,002,255	https://m.media-amazon.com/images/M/MV5BNGRiOTIwNTAtYWM2Yy00Yzc4LTkyZjEtNTM3NTIyZTNhMzg1XkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_UY98_CR1,0,67,98_AL_.jpg
722	Gongdong gyeongbi guyeok JSA	2000	NaN	110	7.8	After a shooting incident at the North/South Korean border/DMZ leaves 2 North Korean soldiers dead, a neutral Swiss/Swedish team investigates, what actually happened.	58.0	153	26518	NaN	https://m.media-amazon.com/images/M/MV5BMTI1NDA4NTMyN15BMl5BanBnXkFtZTYwNTA2ODc5._V1_UY98_CR1,0,67,98_AL_.jpg
723	The Count of Monte Cristo	2002	PG-13	131	7.8	A young man, falsely imprisoned by his jealous "friend", escapes and uses a hidden treasure to exact his revenge.	61.0	727	129022	54,234,062	https://m.media-amazon.com/images/M/MV5BMDM0ZWRjZDgtZWI0MS00ZTIzLTg4MWYtZjU5MDEyMDU0ODBjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
724	Waking Life	2001	R	99	7.8	A man shuffles through a dream meeting various people and discussing the meanings and purposes of the universe.	83.0	322	60684	2,892,011	https://m.media-amazon.com/images/M/MV5BMWM0ZjY5ZjctODNkZi00Nzk0LWE1ODUtNGM4ZDUyMzUwMGYwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
725	Remember the Titans	2000	U	113	7.8	The true story of a newly appointed African-American coach and his high school team on their first season as a racially integrated unit.	48.0	729	198089	115,654,751	https://m.media-amazon.com/images/M/MV5BYThkMzgxNjEtMzFiOC00MTI0LWI5MDItNDVmYjA4NzY5MDQ2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
726	Wo hu cang long	2000	UA	120	7.8	A young Chinese warrior steals a sword from a famed swordsman and then escapes into a world of romantic adventure with a mysterious man in the frontier of the nation.	94.0	583	253228	128,078,872	https://m.media-amazon.com/images/M/MV5BNDdhMzMxOTctNDMyNS00NTZmLTljNWEtNTc4MDBmZTYxY2NmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
727	Todo sobre mi madre	1999	R	101	7.8	Young Esteban wants to become a writer and also to discover the identity of his second mother, a trans woman, carefully concealed by his mother Manuela.	87.0	593	89058	8,264,530	https://m.media-amazon.com/images/M/MV5BZTk2ZTMzMmUtZjUyNi00YzMyLWE3NTAtNDNjNzU3MGQ1YTFjXkEyXkFqcGdeQXVyMTA0MjU0Ng@@._V1_UY98_CR3,0,67,98_AL_.jpg
728	Cast Away	2000	UA	143	7.8	A FedEx executive undergoes a physical and emotional transformation after crash landing on a deserted island.	73.0	96	524235	233,632,142	https://m.media-amazon.com/images/M/MV5BN2Y5ZTU4YjctMDRmMC00MTg4LWE1M2MtMjk4MzVmOTE4YjkzXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX67_CR0,0,67,98_AL_.jpg
729	The Boondock Saints	1999	R	108	7.8	Two Irish Catholic brothers become vigilantes and wipe out Boston's criminal underworld in the name of God.	44.0	733	227143	25,812	https://m.media-amazon.com/images/M/MV5BYzVmMTdjOTYtOTJkYS00ZTg2LWExNTgtNzA1N2Y0MDgwYWFhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
730	The Insider	1999	UA	157	7.8	A research chemist comes under personal and professional attack when he decides to appear in a 60 Minutes exposé on Big Tobacco.	84.0	249	159886	28,965,197	https://m.media-amazon.com/images/M/MV5BODg0YjAzNDQtOGFkMi00Yzk2LTg1NzYtYTNjY2UwZTM2ZDdkL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY98_CR0,0,67,98_AL_.jpg
731	October Sky	1999	PG	108	7.8	The true story of Homer Hickam, a coal miner's son who was inspired by the first Sputnik launch to take up rocketry against his father's wishes.	71.0	735	82855	32,481,825	https://m.media-amazon.com/images/M/MV5BZmIzMjE0M2YtNzliZi00YWNmLTgyNDItZDhjNWVhY2Q2ODk0XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
732	Shrek	2001	U	90	7.8	A mean lord exiles fairytale creatures to the swamp of a grumpy ogre, who must go on a quest and rescue a princess for the lord in order to get his land back.	84.0	736	613941	267,665,011	https://m.media-amazon.com/images/M/MV5BOGZhM2FhNTItODAzNi00YjA0LWEyN2UtNjJlYWQzYzU1MDg5L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
733	Titanic	1997	UA	194	7.8	A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.	75.0	129	1046089	659,325,379	https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
734	Hana-bi	1997	NaN	103	7.8	Nishi leaves the police in the face of harrowing personal and professional difficulties. Spiraling into depression, he makes questionable decisions.	NaN	738	27712	233,986	https://m.media-amazon.com/images/M/MV5BODk4MzE5NjgtN2ZhOS00YTdkLTg0YzktMmE1MTkxZmMyMWI2L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
735	Gattaca	1997	UA	106	7.8	A genetically inferior man assumes the identity of a superior one in order to pursue his lifelong dream of space travel.	64.0	739	280845	12,339,633	https://m.media-amazon.com/images/M/MV5BODI3ZTc5NjktOGMyOC00NjYzLTgwZDYtYmQ4NDc1MmJjMjRlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
736	The Game	1997	UA	129	7.8	After a wealthy banker is given an opportunity to participate in a mysterious game, his life is turned upside down when he becomes unable to distinguish between the game and reality.	61.0	94	345096	48,323,648	https://m.media-amazon.com/images/M/MV5BZGVmMDNmYmEtNGQ2Mi00Y2ZhLThhZTYtYjE5YmQzMjZiZGMxXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UY98_CR1,0,67,98_AL_.jpg
737	Breaking the Waves	1996	R	159	7.8	Oilman Jan is paralyzed in an accident. His wife, who prayed for his return, feels guilty; even more, when Jan urges her to have sex with another.	76.0	465	62428	4,040,691	https://m.media-amazon.com/images/M/MV5BNDYwZTU2MzktNWYxMS00NTYzLTgzOWEtMTRiYjc5NGY2Nzg1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
738	Ed Wood	1994	U	127	7.8	Ambitious but troubled movie director Edward D. Wood Jr. tries his best to fulfill his dreams, despite his lack of talent.	70.0	462	164937	5,887,457	https://m.media-amazon.com/images/M/MV5BNTA5ZjdjNWUtZGUwNy00N2RhLWJiZmItYzFhYjU1NmYxNjY4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
739	What's Eating Gilbert Grape	1993	U	118	7.8	A young man in a small Midwestern town struggles to care for his mentally-disabled younger brother and morbidly obese mother while attempting to pursue his own happiness.	73.0	313	215034	9,170,214	https://m.media-amazon.com/images/M/MV5BY2EyZDlhNjItODYzNi00Mzc3LWJjOWUtMTViODU5MTExZWMyL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
740	Tombstone	1993	R	130	7.8	A successful lawman's plans to retire anonymously in Tombstone, Arizona are disrupted by the kind of outlaws he was famous for eliminating.	50.0	744	126871	56,505,065	https://m.media-amazon.com/images/M/MV5BODRkYzA4MGItODE2MC00ZjkwLWI2NDEtYzU1NzFiZGU1YzA0XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
741	The Sandlot	1993	U	101	7.8	In the summer of 1962, a new kid in town is taken under the wing of a young baseball prodigy and his rowdy team, resulting in many adventures.	55.0	745	78963	32,416,586	https://m.media-amazon.com/images/M/MV5BODllYjM1ODItYjBmOC00MzkwLWJmM2YtMjMyZDU3MGJhNjc4L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
742	The Remains of the Day	1993	U	134	7.8	A butler who sacrificed body and soul to service in the years leading up to World War II realizes too late how misguided his loyalty was to his lordly employer.	84.0	746	66065	22,954,968	https://m.media-amazon.com/images/M/MV5BNDYwOThlMDAtYWUwMS00MjY5LTliMGUtZWFiYTA5MjYwZDAyXkEyXkFqcGdeQXVyNjY1NTQ0NDg@._V1_UX67_CR0,0,67,98_AL_.jpg
1077	Giant	1956	G	201	7.6	Sprawling epic covering the life of a Texas cattle rancher and his family and associates.	84.0	1081	34075	NaN	https://m.media-amazon.com/images/M/MV5BODk3YjdjZTItOGVhYi00Mjc2LTgzMDAtMThmYTVkNTBlMWVkXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UX67_CR0,0,67,98_AL_.jpg
743	Naked	1993	NaN	132	7.8	Parallel tales of two sexually obsessed men, one hurting and annoying women physically and mentally, one wandering around the city talking to strangers and experiencing dimensions of life.	84.0	477	34635	1,769,305	https://m.media-amazon.com/images/M/MV5BMjA3Y2I4NjAtMDQyZS00ZGJhLWEwMzgtODBiNzE5Zjc1Nzk1L2ltYWdlXkEyXkFqcGdeQXVyNTc2MDU0NDE@._V1_UX67_CR0,0,67,98_AL_.jpg
744	The Fugitive	1993	U	130	7.8	Dr. Richard Kimble, unjustly accused of murdering his wife, must find the real killer while being the target of a nationwide manhunt led by a seasoned U.S. Marshal.	87.0	748	267684	183,875,760	https://m.media-amazon.com/images/M/MV5BYmFmOGZjYTItYjY1ZS00OWRiLTk0NDgtMjQ5MzBkYWE2YWE0XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
745	A Bronx Tale	1993	R	121	7.8	A father becomes worried when a local gangster befriends his son in the Bronx in the 1960s.	80.0	749	128171	17,266,971	https://m.media-amazon.com/images/M/MV5BMTczOTczNjE3Ml5BMl5BanBnXkFtZTgwODEzMzg5MTI@._V1_UX67_CR0,0,67,98_AL_.jpg
746	Batman: Mask of the Phantasm	1993	PG	76	7.8	Batman is wrongly implicated in a series of murders of mob bosses actually done by a new vigilante assassin.	NaN	750	43690	5,617,391	https://m.media-amazon.com/images/M/MV5BYTRiMWM3MGItNjAxZC00M2E3LThhODgtM2QwOGNmZGU4OWZhXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_UX67_CR0,0,67,98_AL_.jpg
747	Lat sau san taam	1992	R	128	7.8	A tough-as-nails cop teams up with an undercover agent to shut down a sinister mobster and his crew.	NaN	751	46700	NaN	https://m.media-amazon.com/images/M/MV5BOTIzZGU4ZWMtYmNjMy00NzU0LTljMGYtZmVkMDYwN2U2MzYwL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
748	Night on Earth	1991	R	129	7.8	An anthology of 5 different cab drivers in 5 American and European cities and their remarkable fares on the same eventful night.	68.0	752	55362	2,015,810	https://m.media-amazon.com/images/M/MV5BOGNmMjBmZWEtOWYwZC00NGIzLTg0YWItMzkzMWMwOTU4YTViXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_UX67_CR0,0,67,98_AL_.jpg
749	La double vie de Véronique	1991	R	98	7.8	Two parallel stories about two identical women; one living in Poland, the other in France. They don't know each other, but their lives are nevertheless profoundly connected.	86.0	345	42376	1,999,955	https://m.media-amazon.com/images/M/MV5BYmE0ZGRiMDgtOTU0ZS00YWUwLTk5YWQtMzhiZGVhNzViMGZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
750	Boyz n the Hood	1991	A	112	7.8	Follows the lives of three young males living in the Crenshaw ghetto of Los Angeles, dissecting questions of race, relationships, violence, and future prospects.	76.0	754	126082	57,504,069	https://m.media-amazon.com/images/M/MV5BZmRjNDI5NTgtOTIwMC00MzJhLWI4ZTYtMmU0ZTE3ZmRkZDNhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
751	Misery	1990	R	107	7.8	After a famous author is rescued from a car crash by a fan of his novels, he comes to realize that the care he is receiving is only the beginning of a nightmare of captivity and abuse.	75.0	352	184740	61,276,872	https://m.media-amazon.com/images/M/MV5BNzY0ODQ3MTMxN15BMl5BanBnXkFtZTgwMDkwNTg4NjE@._V1_UX67_CR0,0,67,98_AL_.jpg
752	Awakenings	1990	U	121	7.8	The victims of an encephalitis epidemic many years ago have been catatonic ever since, but now a new drug offers the prospect of reviving them.	74.0	756	125276	52,096,475	https://m.media-amazon.com/images/M/MV5BMjI5NjEzMDYyMl5BMl5BanBnXkFtZTgwNjgwNTg4NjE@._V1_UY98_CR3,0,67,98_AL_.jpg
753	Majo no takkyûbin	1989	U	103	7.8	A young witch, on her mandatory year of independent life, finds fitting into a new community difficult while she supports herself by running an air courier service.	83.0	108	124193	NaN	https://m.media-amazon.com/images/M/MV5BOTc0ODM1Njk1NF5BMl5BanBnXkFtZTcwMDI5OTEyNw@@._V1_UY98_CR1,0,67,98_AL_.jpg
754	Glory	1989	R	122	7.8	Robert Gould Shaw leads the U.S. Civil War's first all-black volunteer company, fighting prejudices from both his own Union Army, and the Confederates.	78.0	446	122779	26,830,000	https://m.media-amazon.com/images/M/MV5BODhlNjA5MDEtZDVhNS00ZmM3LTg1YzAtZGRjNjhjNTAzNzVkXkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_UY98_CR0,0,67,98_AL_.jpg
755	Dip huet seung hung	1989	R	111	7.8	A disillusioned assassin accepts one last hit in hopes of using his earnings to restore vision to a singer he accidentally blinded.	82.0	751	45624	NaN	https://m.media-amazon.com/images/M/MV5BMDQyMDVhZjItMGI0Mi00MDQ1LTk3NmQtZmRjZGQ5ZTQ2ZDU5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
756	Back to the Future Part II	1989	U	108	7.8	After visiting 2015, Marty McFly must repeat his visit to 1955 to prevent disastrous changes to 1985...without interfering with his first trip.	57.0	96	481918	118,500,000	https://m.media-amazon.com/images/M/MV5BZTMxMGM5MjItNDJhNy00MWI2LWJlZWMtOWFhMjI5ZTQwMWM3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
757	Mississippi Burning	1988	A	128	7.8	Two F.B.I. Agents with wildly different styles arrive in Mississippi to investigate the disappearance of some civil rights activists.	65.0	357	88214	34,603,943	https://m.media-amazon.com/images/M/MV5BZTFjNjU4OTktYzljMS00MmFlLWI3NGEtNjNhMTYwYzUyZDgyL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
758	Predator	1987	A	107	7.8	A team of commandos on a mission in a Central American jungle find themselves hunted by an extraterrestrial warrior.	45.0	256	371387	59,735,548	https://m.media-amazon.com/images/M/MV5BY2QwYmFmZTEtNzY2Mi00ZWMyLWEwY2YtMGIyNGZjMWExOWEyXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX67_CR0,0,67,98_AL_.jpg
759	Evil Dead II	1987	A	84	7.8	The lone survivor of an onslaught of flesh-possessing spirits holes up in a cabin with a group of strangers while the demons continue their attack.	72.0	763	148359	5,923,044	https://m.media-amazon.com/images/M/MV5BMWY3ODZlOGMtNzJmOS00ZTNjLWI3ZWEtZTJhZTk5NDZjYWRjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
760	Ferris Bueller's Day Off	1986	U	103	7.8	A high school wise guy is determined to have a day off from school, despite what the Principal thinks of that.	61.0	764	321382	70,136,369	https://m.media-amazon.com/images/M/MV5BMDA0NjZhZWUtNmI2NC00MmFjLTgwZDYtYzVjZmNhMDVmOTBkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
761	Down by Law	1986	R	107	7.8	Two men are framed and sent to jail, where they meet a murderer who helps them escape and leave the state.	75.0	752	47834	1,436,000	https://m.media-amazon.com/images/M/MV5BM2ZmNDJiZTUtYjg5Zi00M2I3LTliZjAtNzQ4NTlkYTAzYTAxXkEyXkFqcGdeQXVyNTkyMDc0MjI@._V1_UX67_CR0,0,67,98_AL_.jpg
762	The Goonies	1985	U	114	7.8	A group of young misfits called The Goonies discover an ancient map and set out on an adventure to find a legendary pirate's long-lost treasure.	62.0	766	244430	61,503,218	https://m.media-amazon.com/images/M/MV5BODRlMjRkZGEtZWM2Zi00ZjYxLWE0MWUtMmM1YWM2NzZlOTE1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
763	The Color Purple	1985	U	154	7.8	A black Southern woman struggles to find her identity after suffering abuse from her father and others over four decades.	78.0	92	78321	98,467,863	https://m.media-amazon.com/images/M/MV5BZDRkOWQ5NGUtYTVmOS00ZjNhLWEwODgtOGI2MmUxNTBkMjU0XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX67_CR0,0,67,98_AL_.jpg
764	The Breakfast Club	1985	UA	97	7.8	Five high school students meet in Saturday detention and discover how they have a lot more in common than they thought.	66.0	764	357026	45,875,171	https://m.media-amazon.com/images/M/MV5BOTM5N2ZmZTMtNjlmOS00YzlkLTk3YjEtNTU1ZmQ5OTdhODZhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
765	The Killing Fields	1984	UA	141	7.8	A journalist is trapped in Cambodia during tyrant Pol Pot's bloody 'Year Zero' cleansing campaign, which claimed the lives of two million 'undesirable' civilians.	76.0	769	51585	34,700,291	https://m.media-amazon.com/images/M/MV5BMGI0NzI5YjAtNTg0MS00NDA2LWE5ZWItODRmOTAxOTAxYjg2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
766	Ghostbusters	1984	UA	105	7.8	Three former parapsychology professors set up shop as a unique ghost removal service.	71.0	770	355413	238,632,124	https://m.media-amazon.com/images/M/MV5BMTkxMjYyNzgwMl5BMl5BanBnXkFtZTgwMTE3MjYyMTE@._V1_UX67_CR0,0,67,98_AL_.jpg
767	The Right Stuff	1983	PG	193	7.8	The story of the original Mercury 7 astronauts and their macho, seat-of-the-pants approach to the space program.	91.0	771	56235	21,500,000	https://m.media-amazon.com/images/M/MV5BOTUwMDA3MTYtZjhjMi00ODFmLTg5ZTAtYzgwN2NlODgzMmUwXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
768	The King of Comedy	1982	U	109	7.8	Rupert Pupkin is a passionate yet unsuccessful comic who craves nothing more than to be in the spotlight and to achieve this, he stalks and kidnaps his idol to take the spotlight for himself.	73.0	100	88511	2,500,000	https://m.media-amazon.com/images/M/MV5BMTViNjlkYjgtMmE3Zi00ZGVkLTkyMjMtNzc3YzAwNzNiODQ1XkEyXkFqcGdeQXVyMjA0MzYwMDY@._V1_UX67_CR0,0,67,98_AL_.jpg
769	E.T. the Extra-Terrestrial	1982	U	115	7.8	A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.	91.0	92	372490	435,110,554	https://m.media-amazon.com/images/M/MV5BMTQ2ODFlMDAtNzdhOC00ZDYzLWE3YTMtNDU4ZGFmZmJmYTczXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
770	Kramer vs. Kramer	1979	A	105	7.8	Ted Kramer's wife leaves him, allowing for a lost bond to be rediscovered between Ted and his son, Billy. But a heated custody battle ensues over the divorced couple's son, deepening the wounds left by the separation.	77.0	774	133351	106,260,000	https://m.media-amazon.com/images/M/MV5BNDM3YjNlYmMtOGY3NS00MmRjLWIyY2UtNDA0MWM3OTNlZTY2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
771	Days of Heaven	1978	PG	94	7.8	A hot-tempered farm laborer convinces the woman he loves to marry their rich but dying boss so that they can have a claim to his fortune.	93.0	775	52852	NaN	https://m.media-amazon.com/images/M/MV5BZjMyZmU4OGYtNjBiYS00YTIxLWJjMDUtZjczZmQwMTM4YjQxXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
772	The Outlaw Josey Wales	1976	A	135	7.8	Missouri farmer Josey Wales joins a Confederate guerrilla unit and winds up on the run from the Union soldiers who murdered his family.	69.0	252	65659	31,800,000	https://m.media-amazon.com/images/M/MV5BMjIxNDYxMTk2MF5BMl5BanBnXkFtZTgwMjQxNjU3MTE@._V1_UY98_CR0,0,67,98_AL_.jpg
773	The Man Who Would Be King	1975	PG	129	7.8	Two British former soldiers decide to set themselves up as Kings in Kafiristan, a land where no white man has set foot since Alexander the Great.	91.0	276	44917	NaN	https://m.media-amazon.com/images/M/MV5BZWQzYjBjZmQtZDFiOS00ZDQ1LWI4MDAtMDk1NGE1NDBhYjNhL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
774	The Conversation	1974	U	113	7.8	A paranoid, secretive surveillance expert has a crisis of conscience when he suspects that the couple he is spying on will be murdered.	85.0	86	98611	4,420,000	https://m.media-amazon.com/images/M/MV5BNzZlMThlYzktMDlmZC00YTI1LThlNzktZWU0MTY4ODc2ZWY4XkEyXkFqcGdeQXVyNTA1NjYyMDk@._V1_UX67_CR0,0,67,98_AL_.jpg
775	La planète sauvage	1973	U	72	7.8	On a faraway planet where blue giants rule, oppressed humanoids rebel against their machine-like leaders.	73.0	779	25229	193,817	https://m.media-amazon.com/images/M/MV5BYjhhMDFlZDctYzg1Mi00ZmZiLTgyNTgtM2NkMjRkNzYwZmQ0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
776	The Day of the Jackal	1973	A	143	7.8	A professional assassin codenamed "Jackal" plots to kill Charles de Gaulle, the President of France.	80.0	640	37445	16,056,255	https://m.media-amazon.com/images/M/MV5BNjZmMWE4NzgtZjc5OS00NTBmLThlY2MtM2MzNTA5NTZiNTFjXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY98_CR0,0,67,98_AL_.jpg
777	Badlands	1973	PG	94	7.8	An impressionable teenage girl from a dead-end town and her older greaser boyfriend embark on a killing spree in the South Dakota badlands.	93.0	775	66009	NaN	https://m.media-amazon.com/images/M/MV5BMDcxNjhiOTEtMzQ0YS00OTBhLTkxM2QtN2UyZDMzNzIzNWFlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY98_CR1,0,67,98_AL_.jpg
778	Cabaret	1972	A	124	7.8	A female girlie club entertainer in Weimar Republic era Berlin romances two men while the Nazi Party rises to power around them.	80.0	619	48334	42,765,000	https://m.media-amazon.com/images/M/MV5BNTEyMzc0Mjk5MV5BMl5BanBnXkFtZTgwMjI2NDIwMTE@._V1_UX67_CR0,0,67,98_AL_.jpg
779	Willy Wonka & the Chocolate Factory	1971	U	100	7.8	A poor but hopeful boy seeks one of the five coveted golden tickets that will send him on a tour of Willy Wonka's mysterious chocolate factory.	67.0	783	178731	4,000,000	https://m.media-amazon.com/images/M/MV5BZTllNDU0ZTItYTYxMC00OTI4LThlNDAtZjNiNzdhMWZiYjNmXkEyXkFqcGdeQXVyNzY1NDgwNjQ@._V1_UX67_CR0,0,67,98_AL_.jpg
780	Midnight Cowboy	1969	A	113	7.8	A naive hustler travels from Texas to New York City to seek personal fortune, finding a new friend in the process.	79.0	784	101124	44,785,053	https://m.media-amazon.com/images/M/MV5BNTgwZmIzMmYtZjE3Yy00NzgzLTgxNmUtNjlmZDlkMzlhOTJkXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX67_CR0,0,67,98_AL_.jpg
781	Wait Until Dark	1967	NaN	108	7.8	A recently blinded woman is terrorized by a trio of thugs while they search for a heroin-stuffed doll they believe is in her apartment.	81.0	785	27733	17,550,741	https://m.media-amazon.com/images/M/MV5BMTQyNTAzOTI3NF5BMl5BanBnXkFtZTcwNTM0Mjg0Mg@@._V1_UX67_CR0,0,67,98_AL_.jpg
782	Guess Who's Coming to Dinner	1967	NaN	108	7.8	A couple's attitudes are challenged when their daughter introduces them to her African-American fiancé.	63.0	267	39642	56,700,000	https://m.media-amazon.com/images/M/MV5BZTVmMTk2NjUtNjVjNC00OTcwLWE4OWEtNzA4Mjk1ZmIwNDExXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX67_CR0,0,67,98_AL_.jpg
783	Bonnie and Clyde	1967	A	111	7.8	Bored waitress Bonnie Parker falls in love with an ex-con named Clyde Barrow and together they start a violent crime spree through the country, stealing cars and robbing banks.	86.0	787	102415	NaN	https://m.media-amazon.com/images/M/MV5BOTViZmMwOGEtYzc4Yy00ZGQ1LWFkZDQtMDljNGZlMjAxMjhiXkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_UX67_CR0,0,67,98_AL_.jpg
784	My Fair Lady	1964	U	170	7.8	Snobbish phonetics Professor Henry Higgins agrees to a wager that he can make flower girl Eliza Doolittle presentable in high society.	95.0	647	86525	72,000,000	https://m.media-amazon.com/images/M/MV5BNGM0ZTU3NmItZmRmMy00YWNjLWEzMWItYzg3MzcwZmM5NjdiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UY98_CR2,0,67,98_AL_.jpg
785	Mary Poppins	1964	U	139	7.8	In turn of the century London, a magical nanny employs music and adventure to help two neglected children become closer to their father.	88.0	789	158029	102,272,727	https://m.media-amazon.com/images/M/MV5BNmJkODczNjItNDI5Yy00MGI1LTkyOWItZDNmNjM4ZGI1ZDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
786	The Longest Day	1962	G	178	7.8	The events of D-Day, told on a grand scale from both the Allied and German points of view.	75.0	790	52141	39,100,000	https://m.media-amazon.com/images/M/MV5BZTM1ZjQ2YTktNDM2MS00NGY2LTkzNzItZTU4ODg1ODNkMWYxL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
787	Jules et Jim	1962	NaN	105	7.8	Decades of a love triangle concerning two friends and an impulsive woman.	97.0	384	37605	NaN	https://m.media-amazon.com/images/M/MV5BZTM1MTRiNDctMTFiMC00NGM1LTkyMWQtNTY1M2JjZDczOWQ3XkEyXkFqcGdeQXVyMDI3OTIzOA@@._V1_UY98_CR3,0,67,98_AL_.jpg
788	The Innocents	1961	A	100	7.8	A young governess for two children becomes convinced that the house and grounds are haunted.	88.0	792	27007	2,616,000	https://m.media-amazon.com/images/M/MV5BNGQyNjBjNTUtNTM1OS00YzcyLWFhNTgtNTU0MDg3NzBlMDQzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY98_CR0,0,67,98_AL_.jpg
789	À bout de souffle	1960	U	90	7.8	A small-time thief steals a car and impulsively murders a motorcycle policeman. Wanted by the authorities, he reunites with a hip American journalism student and attempts to persuade her to run away with him to Italy.	NaN	518	73251	336,705	https://m.media-amazon.com/images/M/MV5BNzk5MDk2MjktY2I3NS00ODZkLTk3OTktY2Q3ZDE2MmQ2M2ZmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UY98_CR2,0,67,98_AL_.jpg
790	Red River	1948	Passed	133	7.8	Dunson leads a cattle drive, the culmination of over 14 years of work, to its destination in Missouri. But his tyrannical behavior along the way causes a mutiny, led by his adopted son.	NaN	521	28167	NaN	https://m.media-amazon.com/images/M/MV5BNzNiOGJhMDUtZjNjMC00YmE5LTk3NjQtNGM4ZjAzOGJjZmRlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
791	Key Largo	1948	NaN	100	7.8	A man visits his war buddy's family hotel and finds a gangster running things. As a hurricane approaches, the two end up confronting each other.	NaN	276	36995	NaN	https://m.media-amazon.com/images/M/MV5BODI3YzNiZTUtYjEyZS00ODkwLWE2ZDUtNGJmMTNiYTc4ZTM4XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
792	To Have and Have Not	1944	PG	100	7.8	During World War II, American expatriate Harry Morgan helps transport a French Resistance leader and his beautiful wife to Martinique while romancing a sensuous lounge singer.	NaN	521	31053	NaN	https://m.media-amazon.com/images/M/MV5BZGU2YmU0MWMtMzg5My00ZmY2LTljMDItMTg2YTI5Y2U2OTE3XkEyXkFqcGdeQXVyMjUxODE0MDY@._V1_UY98_CR0,0,67,98_AL_.jpg
793	Shadow of a Doubt	1943	PG	108	7.8	A young girl, overjoyed when her favorite uncle comes to visit the family, slowly begins to suspect that he is in fact the "Merry Widow" killer sought by the authorities.	94.0	134	59556	NaN	https://m.media-amazon.com/images/M/MV5BM2I1YWM4NTYtYjA0Ny00ZDEwLTg3NTgtNzBjMzZhZTk1YTA1XkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_UX67_CR0,0,67,98_AL_.jpg
794	Stagecoach	1939	Passed	96	7.8	A group of people traveling on a stagecoach find their journey complicated by the threat of Geronimo and learn something about each other in the process.	93.0	380	43621	NaN	https://m.media-amazon.com/images/M/MV5BOGQ4NDUyNWQtZTEyOC00OTMzLWFhYjAtNDNmYmQ2MWQyMTRmXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
795	The Lady Vanishes	1938	NaN	96	7.8	While travelling in continental Europe, a rich young playgirl realizes that an elderly lady seems to have disappeared from the train.	98.0	134	47400	NaN	https://m.media-amazon.com/images/M/MV5BNjk3YzFjYTktOGY0ZS00Y2EwLTk2NTctYTI1Nzc2OWNiN2I4XkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_UX67_CR0,0,67,98_AL_.jpg
796	Bringing Up Baby	1938	Passed	102	7.8	While trying to secure a $1 million donation for his museum, a befuddled paleontologist is pursued by a flighty and often irritating heiress and her pet leopard, Baby.	91.0	521	55163	NaN	https://m.media-amazon.com/images/M/MV5BMmVkOTRiYmItZjE4NS00MWNjLWE0ZmMtYzg5YzFjMjMyY2RkXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
797	Bride of Frankenstein	1935	NaN	75	7.8	Mary Shelley reveals the main characters of her novel survived: Dr. Frankenstein, goaded by an even madder scientist, builds his monster a mate.	95.0	801	43542	4,360,000	https://m.media-amazon.com/images/M/MV5BOTUzMzAzMzEzNV5BMl5BanBnXkFtZTgwOTg1NTAwMjE@._V1_UX67_CR0,0,67,98_AL_.jpg
798	Duck Soup	1933	NaN	69	7.8	Rufus T. Firefly is named president/dictator of bankrupt Freedonia and declares war on neighboring Sylvania over the love of wealthy Mrs. Teasdale.	93.0	802	55581	NaN	https://m.media-amazon.com/images/M/MV5BYmYxZGU2NWYtNzQxZS00NmEyLWIzN2YtMDk5MWM0ODc5ZTE4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
799	Scarface: The Shame of the Nation	1932	PG	93	7.8	An ambitious and nearly insane violent gangster climbs the ladder of success in the mob, but his weaknesses prove to be his downfall.	87.0	521	25312	NaN	https://m.media-amazon.com/images/M/MV5BYmMxZTU2ZDUtM2Y1MS00ZWFmLWJlN2UtNzI0OTJiOTYzMTk3XkEyXkFqcGdeQXVyMjUxODE0MDY@._V1_UX67_CR0,0,67,98_AL_.jpg
800	Frankenstein	1931	Passed	70	7.8	Dr. Frankenstein dares to tamper with life and death by creating a human monster out of lifeless body parts.	91.0	801	65341	NaN	https://m.media-amazon.com/images/M/MV5BMTQ0Njc1MjM0OF5BMl5BanBnXkFtZTgwNTY2NTUyMjE@._V1_UX67_CR0,0,67,98_AL_.jpg
801	Roma	2018	R	135	7.7	A year in the life of a middle-class family's maid in Mexico City in the early 1970s.	96.0	591	140375	NaN	https://m.media-amazon.com/images/M/MV5BMTU0OTc3ODk4Ml5BMl5BanBnXkFtZTgwMzM4NzI5NjM@._V1_UX67_CR0,0,67,98_AL_.jpg
802	God's Own Country	2017	NaN	104	7.7	Spring. Yorkshire. Young farmer Johnny Saxby numbs his daily frustrations with binge drinking and casual sex, until the arrival of a Romanian migrant worker for lambing season ignites an intense relationship that sets Johnny on a new path.	85.0	806	25198	335,609	https://m.media-amazon.com/images/M/MV5BNjRhYzk2NDAtYzA1Mi00MmNmLWE1ZjQtMDBhZmUyMTdjZjBiXkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_UX67_CR0,0,67,98_AL_.jpg
803	Deadpool 2	2018	R	119	7.7	Foul-mouthed mutant mercenary Wade Wilson (a.k.a. Deadpool), brings together a team of fellow mutant rogues to protect a young boy with supernatural abilities from the brutal, time-traveling cyborg Cable.	66.0	807	478586	324,591,735	https://m.media-amazon.com/images/M/MV5BNjk1Njk3YjctMmMyYS00Y2I4LThhMzktN2U0MTMyZTFlYWQ5XkEyXkFqcGdeQXVyODM2ODEzMDA@._V1_UY98_CR15,0,67,98_AL_.jpg
804	Wind River	2017	R	107	7.7	A veteran hunter helps an FBI agent investigate the murder of a young woman on a Wyoming Native American reservation.	73.0	808	205444	33,800,859	https://m.media-amazon.com/images/M/MV5BMTUyMjU1OTUwM15BMl5BanBnXkFtZTgwMDg1NDQ2MjI@._V1_UX67_CR0,0,67,98_AL_.jpg
805	Get Out	2017	R	104	7.7	A young African-American visits his white girlfriend's parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.	85.0	809	492851	176,040,665	https://m.media-amazon.com/images/M/MV5BMjUxMDQwNjcyNl5BMl5BanBnXkFtZTgwNzcwMzc0MTI@._V1_UX67_CR0,0,67,98_AL_.jpg
806	Mission: Impossible - Fallout	2018	UA	147	7.7	Ethan Hunt and his IMF team, along with some familiar allies, race against time after a mission gone wrong.	86.0	810	291257	220,159,104	https://m.media-amazon.com/images/M/MV5BNjRlZmM0ODktY2RjNS00ZDdjLWJhZGYtNDljNWZkMGM5MTg0XkEyXkFqcGdeQXVyNjAwMjI5MDk@._V1_UX67_CR0,0,67,98_AL_.jpg
807	En man som heter Ove	2015	PG-13	116	7.7	Ove, an ill-tempered, isolated retiree who spends his days enforcing block association rules and visiting his wife's grave, has finally given up on life just as an unlikely friendship develops with his boisterous new neighbors.	70.0	811	47444	3,358,518	https://m.media-amazon.com/images/M/MV5BMjE0NDUyOTc2MV5BMl5BanBnXkFtZTgwODk2NzU3OTE@._V1_UX67_CR0,0,67,98_AL_.jpg
808	What We Do in the Shadows	2014	R	86	7.7	Viago, Deacon and Vladislav are vampires who are finding that modern life has them struggling with the mundane - like paying rent, keeping up with the chore wheel, trying to get into nightclubs and overcoming flatmate conflicts.	76.0	812	157498	3,333,000	https://m.media-amazon.com/images/M/MV5BMjAwNDA5NzEwM15BMl5BanBnXkFtZTgwMTA1MDUyNDE@._V1_UX67_CR0,0,67,98_AL_.jpg
809	Omoide no Mânî	2014	U	103	7.7	Due to 12 y.o. Anna's asthma, she's sent to stay with relatives of her guardian in the Japanese countryside. She likes to be alone, sketching. She befriends Marnie. Who is the mysterious, blonde Marnie.	72.0	813	32798	765,127	https://m.media-amazon.com/images/M/MV5BZTlmYTJmMWEtNDRhNy00ODc1LTg2OTMtMjk2ODJhNTA4YTE1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR0,0,67,98_AL_.jpg
810	The Theory of Everything	2014	U	123	7.7	A look at the relationship between the famous physicist Stephen Hawking and his wife.	72.0	814	404182	35,893,537	https://m.media-amazon.com/images/M/MV5BMTAwMTU4MDA3NDNeQTJeQWpwZ15BbWU4MDk4NTMxNTIx._V1_UX67_CR0,0,67,98_AL_.jpg
811	Kingsman: The Secret Service	2014	A	129	7.7	A spy organisation recruits a promising street kid into the agency's training program, while a global threat emerges from a twisted tech genius.	60.0	815	590440	128,261,724	https://m.media-amazon.com/images/M/MV5BYTM3ZTllNzItNTNmOS00NzJiLTg1MWMtMjMxNDc0NmJhODU5XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UX67_CR0,0,67,98_AL_.jpg
812	The Fault in Our Stars	2014	UA	126	7.7	Two teenage cancer patients begin a life-affirming journey to visit a reclusive author in Amsterdam.	69.0	816	344312	124,872,350	https://m.media-amazon.com/images/M/MV5BNTVkMTFiZWItOTFkOC00YTc3LWFhYzQtZTg3NzAxZjJlNTAyXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UX67_CR0,0,67,98_AL_.jpg
813	Me and Earl and the Dying Girl	2015	PG-13	105	7.7	High schooler Greg, who spends most of his time making parodies of classic movies with his co-worker Earl, finds his outlook forever altered after befriending a classmate who has just been diagnosed with cancer.	74.0	817	123210	6,743,776	https://m.media-amazon.com/images/M/MV5BNTA1NzUzNjY4MV5BMl5BanBnXkFtZTgwNDU0MDI0NTE@._V1_UX67_CR0,0,67,98_AL_.jpg
814	Birdman or (The Unexpected Virtue of Ignorance)	2014	A	119	7.7	A washed-up superhero actor attempts to revive his fading career by writing, directing, and starring in a Broadway production.	87.0	329	580291	42,340,598	https://m.media-amazon.com/images/M/MV5BODAzNDMxMzAxOV5BMl5BanBnXkFtZTgwMDMxMjA4MjE@._V1_UX67_CR0,0,67,98_AL_.jpg
815	La vie d'Adèle	2013	A	180	7.7	Adèle's life is changed when she meets Emma, a young woman with blue hair, who will allow her to discover desire and to assert herself as a woman and as an adult. In front of others, Adèle grows, seeks herself, loses herself, and ultimately finds herself through love and loss.	89.0	819	138741	2,199,675	https://m.media-amazon.com/images/M/MV5BMTQ5NTg5ODk4OV5BMl5BanBnXkFtZTgwODc4MTMzMDE@._V1_UX67_CR0,0,67,98_AL_.jpg
816	Kai po che!	2013	U	130	7.7	Three friends growing up in India at the turn of the millennium set out to open a training academy to produce the country's next cricket stars.	40.0	820	32628	1,122,527	https://m.media-amazon.com/images/M/MV5BMTgwNTAwMjEzMF5BMl5BanBnXkFtZTcwNzMzODY4OA@@._V1_UY98_CR3,0,67,98_AL_.jpg
817	The Broken Circle Breakdown	2012	NaN	111	7.7	Elise and Didier fall in love at first sight, in spite of their differences. He talks, she listens. He's a romantic atheist, she's a religious realist. When their daughter becomes seriously ill, their love is put on trial.	70.0	821	39379	175,058	https://m.media-amazon.com/images/M/MV5BMTQzMzg2Nzg2MF5BMl5BanBnXkFtZTgwNjUzNzIzMDE@._V1_UX67_CR0,0,67,98_AL_.jpg
818	Captain America: The Winter Soldier	2014	UA	136	7.7	As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat from history: an assassin known as the Winter Soldier.	70.0	144	736182	259,766,572	https://m.media-amazon.com/images/M/MV5BMzA2NDkwODAwM15BMl5BanBnXkFtZTgwODk5MTgzMTE@._V1_UY98_CR0,0,67,98_AL_.jpg
819	Rockstar	2011	UA	159	7.7	Janardhan Jakhar chases his dreams of becoming a big Rock star, during which he falls in love with Heer.	NaN	575	39501	985,912	https://m.media-amazon.com/images/M/MV5BOTc3NzAxMjg4M15BMl5BanBnXkFtZTcwMDc2ODQwNw@@._V1_UY98_CR3,0,67,98_AL_.jpg
820	Nebraska	2013	UA	115	7.7	An aging, booze-addled father makes the trip from Montana to Nebraska with his estranged son in order to claim a million-dollar Mega Sweepstakes Marketing prize.	87.0	824	112298	17,654,912	https://m.media-amazon.com/images/M/MV5BOGQzODdlMDktNzU4ZC00N2M3LWFkYTAtYTM1NTE0ZWI5YTg4XkEyXkFqcGdeQXVyMTA1NTM1NDI2._V1_UX67_CR0,0,67,98_AL_.jpg
821	Wreck-It Ralph	2012	U	101	7.7	A video game villain wants to be a hero and sets out to fulfill his dream, but his quest brings havoc to the whole arcade where he lives.	72.0	825	380195	189,422,889	https://m.media-amazon.com/images/M/MV5BNzMxNTExOTkyMF5BMl5BanBnXkFtZTcwMzEyNDc0OA@@._V1_UX67_CR0,0,67,98_AL_.jpg
822	Le Petit Prince	2015	PG	108	7.7	A little girl lives in a very grown-up world with her mother, who tries to prepare her for it. Her neighbor, the Aviator, introduces the girl to an extraordinary world where anything is possible, the world of the Little Prince.	70.0	826	56720	1,339,152	https://m.media-amazon.com/images/M/MV5BNjg0OTM5OTQyNV5BMl5BanBnXkFtZTgwNDg5NDQ0NTE@._V1_UY98_CR2,0,67,98_AL_.jpg
823	Detachment	2011	NaN	98	7.7	A substitute teacher who drifts from classroom to classroom finds a connection to the students and teachers during his latest assignment.	52.0	125	77071	71,177	https://m.media-amazon.com/images/M/MV5BMTM3NzQzMDA5Ml5BMl5BanBnXkFtZTcwODA5NTcyNw@@._V1_UY98_CR0,0,67,98_AL_.jpg
824	Midnight in Paris	2011	PG-13	96	7.7	While on a trip to Paris with his fiancée's family, a nostalgic screenwriter finds himself mysteriously going back to the 1920s every day at midnight.	81.0	499	388089	56,816,662	https://m.media-amazon.com/images/M/MV5BMTM4NjY1MDQwMl5BMl5BanBnXkFtZTcwNTI3Njg3NA@@._V1_UX67_CR0,0,67,98_AL_.jpg
825	The Lego Movie	2014	U	100	7.7	An ordinary LEGO construction worker, thought to be the prophesied as "special", is recruited to join a quest to stop an evil tyrant from gluing the LEGO universe into eternal stasis.	83.0	829	323982	257,760,692	https://m.media-amazon.com/images/M/MV5BMTg4MDk1ODExN15BMl5BanBnXkFtZTgwNzIyNjg3MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
827	Star Trek Into Darkness	2013	UA	132	7.7	After the crew of the Enterprise find an unstoppable force of terror from within their own organization, Captain Kirk leads a manhunt to a war-zone world to capture a one-man weapon of mass destruction.	72.0	562	463188	228,778,661	https://m.media-amazon.com/images/M/MV5BMTk2NzczOTgxNF5BMl5BanBnXkFtZTcwODQ5ODczOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
828	Beasts of No Nation	2015	NaN	137	7.7	A drama based on the experiences of Agu, a child soldier fighting in the civil war of an unnamed African country.	79.0	832	73964	83,861	https://m.media-amazon.com/images/M/MV5BMTYwMzMzMDI0NF5BMl5BanBnXkFtZTgwNDQ3NjI3NjE@._V1_UX67_CR0,0,67,98_AL_.jpg
829	The Social Network	2010	UA	120	7.7	As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea, and by the co-founder who was later squeezed out of the business.	95.0	94	624982	96,962,694	https://m.media-amazon.com/images/M/MV5BOGUyZDUxZjEtMmIzMC00MzlmLTg4MGItZWJmMzBhZjE0Mjc1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
830	X: First Class	2011	UA	131	7.7	In the 1960s, superpowered humans Charles Xavier and Erik Lensherr work together to find others like them, but Erik's vengeful pursuit of an ambitious mutant who ruined his life causes a schism to divide them.	65.0	815	645512	146,408,305	https://m.media-amazon.com/images/M/MV5BMTg5OTMxNzk4Nl5BMl5BanBnXkFtZTcwOTk1MjAwNQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
831	The Hangover	2009	UA	100	7.7	Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.	73.0	118	717559	277,322,503	https://m.media-amazon.com/images/M/MV5BNGQwZjg5YmYtY2VkNC00NzliLTljYTctNzI5NmU3MjE2ODQzXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
832	Skyfall	2012	UA	143	7.7	James Bond's loyalty to M is tested when her past comes back to haunt her. When MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.	81.0	169	630614	304,360,277	https://m.media-amazon.com/images/M/MV5BMWZiNjE2OWItMTkwNy00ZWQzLWI0NTgtMWE0NjNiYTljN2Q1XkEyXkFqcGdeQXVyNzAwMjYxMzA@._V1_UX67_CR0,0,67,98_AL_.jpg
833	Silver Linings Playbook	2012	A	122	7.7	After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.	81.0	699	661871	132,092,958	https://m.media-amazon.com/images/M/MV5BMTM2MTI5NzA3MF5BMl5BanBnXkFtZTcwODExNTc0OA@@._V1_UX67_CR0,0,67,98_AL_.jpg
834	Argo	2012	A	120	7.7	Acting under the cover of a Hollywood producer scouting a location for a science fiction film, a CIA agent launches a dangerous operation to rescue six Americans in Tehran during the U.S. hostage crisis in Iran in 1979.	86.0	838	572581	136,025,503	https://m.media-amazon.com/images/M/MV5BNzljNjY3MDYtYzc0Ni00YjU0LWIyNDUtNTE0ZDRiMGExMjZlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
835	(500) Days of Summer	2009	UA	95	7.7	An offbeat romantic comedy about a woman who doesn't believe true love exists, and the young man who falls for her.	76.0	839	472242	32,391,374	https://m.media-amazon.com/images/M/MV5BMTk5MjM4OTU1OV5BMl5BanBnXkFtZTcwODkzNDIzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
836	Harry Potter and the Deathly Hallows: Part 1	2010	A	146	7.7	As Harry, Ron, and Hermione race against time and evil to destroy the Horcruxes, they uncover the existence of the three most powerful objects in the wizarding world: the Deathly Hallows.	65.0	311	479120	295,983,305	https://m.media-amazon.com/images/M/MV5BMTQ2OTE1Mjk0N15BMl5BanBnXkFtZTcwODE3MDAwNA@@._V1_UX67_CR0,0,67,98_AL_.jpg
837	Gake no ue no Ponyo	2008	U	101	7.7	A five-year-old boy develops a relationship with Ponyo, a young goldfish princess who longs to become a human after falling in love with him.	86.0	108	125317	15,090,400	https://m.media-amazon.com/images/M/MV5BOTc3YmM3N2QtODZkMC00ZDE5LThjMTQtYTljN2Y1YTYwYWJkXkEyXkFqcGdeQXVyODEzNjM5OTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
838	Frost/Nixon	2008	R	122	7.7	A dramatic retelling of the post-Watergate television interviews between British talk-show host David Frost and former president Richard Nixon.	80.0	244	103330	18,593,156	https://m.media-amazon.com/images/M/MV5BOTY4NTU2NTU4NF5BMl5BanBnXkFtZTcwNjE0OTc5MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
839	Papurika	2006	U	90	7.7	When a machine that allows therapists to enter their patients' dreams is stolen, all Hell breaks loose. Only a young female therapist, Paprika, can stop it.	81.0	471	71379	881,302	https://m.media-amazon.com/images/M/MV5BNDliMTMxOWEtODM3Yi00N2QwLTg4YTAtNTE5YzBlNTA2NjhlXkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_UX67_CR0,0,67,98_AL_.jpg
840	Changeling	2008	R	141	7.7	Grief-stricken mother Christine Collins (Angelina Jolie) takes on the L.A.P.D. to her own detriment when it tries to pass off an obvious impostor as her missing child.	63.0	252	239203	35,739,802	https://m.media-amazon.com/images/M/MV5BOTA1Mzg3NjIxNV5BMl5BanBnXkFtZTcwNzU2NTc5MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
841	Flipped	2010	PG	90	7.7	Two eighth-graders start to have feelings for each other despite being total opposites.	45.0	352	81446	1,752,214	https://m.media-amazon.com/images/M/MV5BMTU2NjQ1Nzc4MF5BMl5BanBnXkFtZTcwNTM0NDk1Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg
842	Toki o kakeru shôjo	2006	U	98	7.7	A high-school girl named Makoto acquires the power to travel back in time, and decides to use it for her own personal benefits. Little does she know that she is affecting the lives of others just as much as she is her own.	NaN	296	60368	NaN	https://m.media-amazon.com/images/M/MV5BMzA4ZGM1NjYtMjcxYS00MTdiLWJmNzEtMTUzODY0NDQ0YzUzXkEyXkFqcGdeQXVyMzYwMjQ3OTI@._V1_UY98_CR1,0,67,98_AL_.jpg
843	Death Note: Desu nôto	2006	NaN	126	7.7	A battle between the world's two greatest minds begins when Light Yagami finds the Death Note, a notebook with the power to kill, and decides to rid the world of criminals.	NaN	847	28630	NaN	https://m.media-amazon.com/images/M/MV5BZDNlNjEzMzQtZDM0MS00YzhiLTk0MGUtYTdmNDZiZGVjNTk0L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
844	This Is England	2006	NaN	101	7.7	A young boy becomes friends with a gang of skinheads. Friends soon become like family, and relationships will be pushed to the very limit.	86.0	848	115576	327,919	https://m.media-amazon.com/images/M/MV5BMmE3OWZhZDYtOTBjMi00NDIwLTg1NWMtMjg0NjJmZWM4MjliL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
845	Ex Machina	2014	UA	108	7.7	A young programmer is selected to participate in a ground-breaking experiment in synthetic intelligence by evaluating the human qualities of a highly advanced humanoid A.I.	78.0	849	474141	25,442,958	https://m.media-amazon.com/images/M/MV5BMTUxNzc0OTIxMV5BMl5BanBnXkFtZTgwNDI3NzU2NDE@._V1_UX67_CR0,0,67,98_AL_.jpg
846	Efter brylluppet	2006	R	120	7.7	A manager of an orphanage in India is sent to Copenhagen, Denmark, where he discovers a life-altering family secret.	78.0	850	32001	412,544	https://m.media-amazon.com/images/M/MV5BMjIxODEyOTQ5Ml5BMl5BanBnXkFtZTcwNjE3NzI5Mw@@._V1_UY98_CR1,0,67,98_AL_.jpg
847	The Last King of Scotland	2006	R	123	7.7	Based on the events of the brutal Ugandan dictator Idi Amin's regime as seen by his personal physician during the 1970s.	74.0	851	175355	17,605,861	https://m.media-amazon.com/images/M/MV5BMjM1NTkxNjkzMl5BMl5BanBnXkFtZTgwNDgwMDAxMzE@._V1_UY98_CR1,0,67,98_AL_.jpg
848	Zodiac	2007	UA	157	7.7	In the late 1960s/early 1970s, a San Francisco cartoonist becomes an amateur detective obsessed with tracking down the Zodiac Killer, an unidentified individual who terrorizes Northern California with a killing spree.	78.0	94	466080	33,080,084	https://m.media-amazon.com/images/M/MV5BN2UwNDc5NmEtNjVjZS00OTI5LWE5YjctMWM3ZjBiZGYwMGI2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
849	Lucky Number Slevin	2006	R	110	7.7	A case of mistaken identity lands Slevin into the middle of a war being plotted by two of the city's most rival crime bosses. Under constant surveillance by Detective Brikowski and assassin Goodkat, he must get them before they get him.	53.0	853	299524	22,494,487	https://m.media-amazon.com/images/M/MV5BZjczMWI1YWMtYTZjOS00ZDc5LWE2MWItMTY3ZGUxNzFkNjJmL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
850	Joyeux Noël	2005	PG-13	116	7.7	In December 1914, an unofficial Christmas truce on the Western Front allows soldiers from opposing sides of the First World War to gain insight into each other's way of life.	70.0	854	28003	1,054,361	https://m.media-amazon.com/images/M/MV5BMTQyODczNjU3NF5BMl5BanBnXkFtZTcwNjQ0NDIzMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
851	Control	2007	R	122	7.7	A profile of Ian Curtis, the enigmatic singer of Joy Division whose personal, professional, and romantic troubles led him to commit suicide at the age of 23.	78.0	855	61609	871,577	https://m.media-amazon.com/images/M/MV5BNTEzOTYwMTcxN15BMl5BanBnXkFtZTcwNTgyNjI1MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
852	Tangled	2010	U	100	7.7	The magically long-haired Rapunzel has spent her entire life in a tower, but now that a runaway thief has stumbled upon her, she is about to discover the world for the first time, and who she really is.	71.0	856	405922	200,821,936	https://m.media-amazon.com/images/M/MV5BMTAxNDYxMjg0MjNeQTJeQWpwZ15BbWU3MDcyNTk2OTM@._V1_UX67_CR0,0,67,98_AL_.jpg
853	Zwartboek	2006	R	145	7.7	In the Nazi-occupied Netherlands during World War II, a Jewish singer infiltrates the regional Gestapo headquarters for the Dutch resistance.	71.0	857	72643	4,398,392	https://m.media-amazon.com/images/M/MV5BODFlNTI0ZWQtOTcxNC00OTc0LTkwZDUtMmNkM2I1ZWFlYzZkXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UY98_CR2,0,67,98_AL_.jpg
854	Brokeback Mountain	2005	A	134	7.7	The story of a forbidden and secretive relationship between two cowboys, and their lives over the years.	87.0	583	323103	83,043,761	https://m.media-amazon.com/images/M/MV5BMTY5NTAzNTc1NF5BMl5BanBnXkFtZTYwNDY4MDc3._V1_UX67_CR0,0,67,98_AL_.jpg
855	3:10 to Yuma	2007	A	122	7.7	A small-time rancher agrees to hold a captured outlaw who's awaiting a train to go to court in Yuma. A battle of wills ensues as the outlaw tries to psych out the rancher.	76.0	287	288797	53,606,916	https://m.media-amazon.com/images/M/MV5BODE0NTcxNTQzNF5BMl5BanBnXkFtZTcwMzczOTIzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
856	Crash	2004	UA	112	7.7	Los Angeles citizens with vastly separate lives collide in interweaving stories of race, loss and redemption.	66.0	860	419483	54,580,300	https://m.media-amazon.com/images/M/MV5BOTk1OTA1MjIyNV5BMl5BanBnXkFtZTcwODQxMTkyMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
857	Kung fu	2004	UA	99	7.7	In Shanghai, China in the 1940s, a wannabe gangster aspires to join the notorious "Axe Gang" while residents of a housing complex exhibit extraordinary powers in defending their turf.	78.0	861	127250	17,108,591	https://m.media-amazon.com/images/M/MV5BMjZiOTNlMzYtZWYwZS00YWJjLTk5NDgtODkwNjRhMDI0MjhjXkEyXkFqcGdeQXVyMjgyNjk3MzE@._V1_UY98_CR1,0,67,98_AL_.jpg
858	The Bourne Supremacy	2004	A	108	7.7	When Jason Bourne is framed for a CIA operation gone awry, he is forced to resume his former life as a trained assassin to survive.	73.0	447	434841	176,241,941	https://m.media-amazon.com/images/M/MV5BYTIyMDFmMmItMWQzYy00MjBiLTg2M2UtM2JiNDRhOWE4NjBhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
859	The Machinist	2004	R	101	7.7	An industrial worker who hasn't slept in a year begins to doubt his own sanity.	61.0	863	358432	1,082,715	https://m.media-amazon.com/images/M/MV5BNjk1NzBlY2YtNjJmNi00YTVmLWI2OTgtNDUxNDE5NjUzZmE0XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX67_CR0,0,67,98_AL_.jpg
860	Ray	2004	A	152	7.7	The story of the life and career of the legendary rhythm and blues musician Ray Charles, from his humble beginnings in the South, where he went blind at age seven, to his meteoric rise to stardom during the 1950s and 1960s.	73.0	482	138356	75,331,600	https://m.media-amazon.com/images/M/MV5BMTQxNDQwNjQzOV5BMl5BanBnXkFtZTcwNTQxNDYyMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
861	Lost in Translation	2003	UA	102	7.7	A faded movie star and a neglected young woman form an unlikely bond after crossing paths in Tokyo.	89.0	865	415074	44,585,453	https://m.media-amazon.com/images/M/MV5BMTI2NDI5ODk4N15BMl5BanBnXkFtZTYwMTI3NTE3._V1_UX67_CR0,0,67,98_AL_.jpg
862	Harry Potter and the Goblet of Fire	2005	UA	157	7.7	Harry Potter finds himself competing in a hazardous tournament between rival schools of magic, but he is distracted by recurring nightmares.	81.0	866	548619	290,013,036	https://m.media-amazon.com/images/M/MV5BMTI1NDMyMjExOF5BMl5BanBnXkFtZTcwOTc4MjQzMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
863	Man on Fire	2004	UA	146	7.7	In Mexico City, a former CIA operative swears vengeance on those who committed an unspeakable act against the family he was hired to protect.	47.0	605	329592	77,911,774	https://m.media-amazon.com/images/M/MV5BODFlMmEwMDgtYjhmZi00ZTE5LTk2NWQtMWE1Y2M0NjkzOGYxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
864	Coraline	2009	U	100	7.7	An adventurous 11-year-old girl finds another world that is a strangely idealized version of her frustrating home, but it has sinister secrets.	80.0	480	197761	75,286,229	https://m.media-amazon.com/images/M/MV5BMzQxNjM5NzkxNV5BMl5BanBnXkFtZTcwMzg5NDMwMg@@._V1_UX67_CR0,0,67,98_AL_.jpg
865	The Last Samurai	2003	UA	154	7.7	An American military advisor embraces the Samurai culture he was hired to destroy after he is captured in battle.	55.0	446	400049	111,110,575	https://m.media-amazon.com/images/M/MV5BMzkyNzQ1Mzc0NV5BMl5BanBnXkFtZTcwODg3MzUzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
866	The Magdalene Sisters	2002	R	114	7.7	Three young Irish women struggle to maintain their spirits while they endure dehumanizing abuse as inmates of a Magdalene Sisters Asylum.	83.0	870	25938	4,890,878	https://m.media-amazon.com/images/M/MV5BMTI2NzU1NTc1NF5BMl5BanBnXkFtZTcwOTQ1MjAwMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
867	Good Bye Lenin!	2003	R	121	7.7	In 1990, to protect his fragile mother from a fatal shock after a long coma, a young man must keep her from learning that her beloved nation of East Germany as she knew it has disappeared.	68.0	871	137981	4,064,200	https://m.media-amazon.com/images/M/MV5BMTI0MTg4NzI3M15BMl5BanBnXkFtZTcwOTE0MTUyMQ@@._V1_UY98_CR0,0,67,98_AL_.jpg
868	In America	2002	PG-13	105	7.7	A family of Irish immigrants adjust to life on the mean streets of Hell's Kitchen while also grieving the death of a child.	76.0	348	40403	15,539,266	https://m.media-amazon.com/images/M/MV5BOGY1YmUzN2MtNDQ3NC00Nzc4LWI5M2EtYzUwMGQ4NWM4NjE1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY98_CR0,0,67,98_AL_.jpg
869	I Am Sam	2001	PG-13	132	7.7	A mentally handicapped man fights for custody of his 7-year-old daughter and in the process teaches his cold-hearted lawyer the value of love and family.	28.0	873	142863	40,311,852	https://m.media-amazon.com/images/M/MV5BYzEyNzc0NjctZjJiZC00MWI1LWJlOTMtYWZkZDAzNzQ0ZDNkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
870	Adaptation.	2002	R	115	7.7	A lovelorn screenwriter becomes desperate as he tries and fails to adapt 'The Orchid Thief' by Susan Orlean for the screen.	83.0	426	178565	22,245,861	https://m.media-amazon.com/images/M/MV5BZjIwZWU0ZDItNzBlNS00MDIwLWFlZjctZTJjODdjZWYxNzczL2ltYWdlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
871	Black Hawk Down	2001	A	144	7.7	160 elite U.S. soldiers drop into Somalia to capture two top lieutenants of a renegade warlord and find themselves in a desperate battle with a large force of heavily-armed Somalis.	74.0	124	364254	108,638,745	https://m.media-amazon.com/images/M/MV5BYWMwMzQxZjQtODM1YS00YmFiLTk1YjQtNzNiYWY1MDE4NTdiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX67_CR0,0,67,98_AL_.jpg
872	Road to Perdition	2002	A	117	7.7	A mob enforcer's son witnesses a murder, forcing him and his father to take to the road, and his father down a path of redemption and revenge.	72.0	169	246840	104,454,762	https://m.media-amazon.com/images/M/MV5BNjcxMmQ0MmItYTkzYy00MmUyLTlhOTQtMmJmNjE3MDMwYjdlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
873	Das Experiment	2001	R	120	7.7	For two weeks, 20 male participants are hired to play prisoners and guards in a prison. The "prisoners" have to follow seemingly mild rules, and the "guards" are told to retain order without using physical violence.	60.0	242	90842	141,072	https://m.media-amazon.com/images/M/MV5BNThiMDc1YjUtYmE3Zi00MTM1LTkzM2MtNjdlNzQ4ZDlmYjRmXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY98_CR1,0,67,98_AL_.jpg
874	Billy Elliot	2000	R	110	7.7	A talented young boy becomes torn between his unexpected love of dance and the disintegration of his family.	74.0	878	126770	21,995,263	https://m.media-amazon.com/images/M/MV5BNGY3NWYwNzctNWU5Yi00ZjljLTgyNDgtZjNhZjRlNjc0ZTU1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
875	Hedwig and the Angry Inch	2001	R	95	7.7	A gender-queer punk-rock singer from East Berlin tours the U.S. with her band as she tells her life story and follows the former lover/band-mate who stole her songs.	85.0	879	31957	3,029,081	https://m.media-amazon.com/images/M/MV5BZGY5NWUyNDUtZWJhZi00ZjMxLWFmMjMtYmJhZjVkZGZhNWQ4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
876	Ocean's Eleven	2001	UA	116	7.7	Danny Ocean and his ten accomplices plan to rob three Las Vegas casinos simultaneously.	74.0	880	516372	183,417,150	https://m.media-amazon.com/images/M/MV5BYzVmYzVkMmUtOGRhMi00MTNmLThlMmUtZTljYjlkMjNkMjJkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
877	Vampire Hunter D: Bloodlust	2000	U	103	7.7	When a girl is abducted by a vampire, a legendary bounty hunter is hired to bring her back.	62.0	607	29210	151,086	https://m.media-amazon.com/images/M/MV5BNTIyNThlMjMtMzUyMi00YmEyLTljMmYtMWRhN2Q3ZTllZjA4XkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_UY98_CR1,0,67,98_AL_.jpg
878	O Brother, Where Art Thou?	2000	U	107	7.7	In the deep south during the 1930s, three escaped convicts search for hidden treasure while a relentless lawman pursues them.	69.0	337	286742	45,512,588	https://m.media-amazon.com/images/M/MV5BMjZkOTdmMWItOTkyNy00MDdjLTlhNTQtYzU3MzdhZjA0ZDEyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
879	Interstate 60: Episodes of the Road	2002	R	116	7.7	Neal Oliver, a very confused young man and an artist, takes a journey of a lifetime on a highway I60 that doesn't exist on any of the maps, going to the places he never even heard of, searching for an answer and his dreamgirl.	NaN	883	29999	NaN	https://m.media-amazon.com/images/M/MV5BZDYwYzlhOTAtNDAwMC00ZTBhLWI4M2QtMTA1NmJhYTdiNTkxXkEyXkFqcGdeQXVyNTM0NTU5Mg@@._V1_UX67_CR0,0,67,98_AL_.jpg
880	South Park: Bigger, Longer & Uncut	1999	A	81	7.7	When Stan Marsh and his friends go see an R-rated movie, they start cursing and their parents think that Canada is to blame.	73.0	884	192112	52,037,603	https://m.media-amazon.com/images/M/MV5BOGE0ZWI0YzAtY2NkZi00YjkyLWIzYWEtNTJmMzJjODllNjdjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
881	Office Space	1999	R	89	7.7	Three company workers who hate their jobs decide to rebel against their greedy boss.	68.0	885	241575	10,824,921	https://m.media-amazon.com/images/M/MV5BOTA5MzQ3MzI1NV5BMl5BanBnXkFtZTgwNTcxNTYxMTE@._V1_UX67_CR0,0,67,98_AL_.jpg
882	Happiness	1998	NaN	134	7.7	The lives of several individuals intertwine as they go about their lives in their own unique ways, engaging in acts society as a whole might find disturbing in a desperate search for human connection.	81.0	886	66408	2,807,390	https://m.media-amazon.com/images/M/MV5BM2FlNzE0ZmUtMmVkZS00MWQ3LWE4OWQtYjQwZjdhNzRmNWE2XkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UX67_CR0,0,67,98_AL_.jpg
883	Training Day	2001	A	122	7.7	A rookie cop spends his first day as a Los Angeles narcotics officer with a rogue detective who isn't what he appears to be.	69.0	887	390247	76,631,907	https://m.media-amazon.com/images/M/MV5BMDZkMTUxYWEtMDY5NS00ZTA5LTg3MTItNTlkZWE1YWRjYjMwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
884	Rushmore	1998	UA	93	7.7	The extracurricular king of Rushmore Preparatory School is put on academic probation.	86.0	294	169229	17,105,219	https://m.media-amazon.com/images/M/MV5BMjE2OTc3OTk2M15BMl5BanBnXkFtZTgwMjg2NjIyMDE@._V1_UX67_CR0,0,67,98_AL_.jpg
885	Abre los ojos	1997	U	119	7.7	A very handsome man finds the love of his life, but he suffers an accident and needs to have his face rebuilt by surgery after it is severely disfigured.	NaN	457	64082	368,234	https://m.media-amazon.com/images/M/MV5BYjA2MTA1MjUtYmUyNy00NGZiLTk2NTAtMDk3N2M3YmMwOTc1XkEyXkFqcGdeQXVyMjA0MzYwMDY@._V1_UY98_CR0,0,67,98_AL_.jpg
886	Being John Malkovich	1999	R	113	7.7	A puppeteer discovers a portal that leads literally into the head of movie star John Malkovich.	90.0	426	312542	22,858,926	https://m.media-amazon.com/images/M/MV5BYmUxY2MyOTQtYjRlMi00ZWEwLTkzODctZDMxNDcyNTFhYjNjXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UY98_CR1,0,67,98_AL_.jpg
887	As Good as It Gets	1997	A	139	7.7	A single mother and waitress, a misanthropic author, and a gay artist form an unlikely friendship after the artist is assaulted in a robbery.	67.0	891	275755	148,478,011	https://m.media-amazon.com/images/M/MV5BNWMxZTgzMWEtMTU0Zi00NDc5LWFkZjctMzUxNDIyNzZiMmNjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
888	The Fifth Element	1997	UA	126	7.7	In the colorful future, a cab driver unwittingly becomes the central figure in the search for a legendary cosmic weapon to keep Evil and Mr. Zorg at bay.	52.0	127	434125	63,540,020	https://m.media-amazon.com/images/M/MV5BZWFjYmZmZGQtYzg4YS00ZGE5LTgwYzAtZmQwZjQ2NDliMGVmXkEyXkFqcGdeQXVyNTUyMzE4Mzg@._V1_UY98_CR0,0,67,98_AL_.jpg
889	Le dîner de cons	1998	PG-13	80	7.7	A few friends have a weekly fools' dinner, where each brings a fool along. Pierre finds a champion fool for next dinner. Surprise.	73.0	893	37424	4,065,116	https://m.media-amazon.com/images/M/MV5BZjFkOWM5NDUtODYwOS00ZDg0LWFkZGUtYzBkYzNjZjU3ODE3XkEyXkFqcGdeQXVyNzQzNzQxNzI@._V1_UX67_CR0,0,67,98_AL_.jpg
890	Donnie Brasco	1997	A	127	7.7	An FBI undercover agent infiltrates the mob and finds himself identifying more with the mafia life, at the expense of his regular one.	76.0	866	279318	41,909,762	https://m.media-amazon.com/images/M/MV5BYzMzMDZkYWEtODIzNS00YjI3LTkxNTktOWEyZGM3ZWI2MWM4XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
891	Shine	1996	U	105	7.7	Pianist David Helfgott, driven by his father and teachers, has a breakdown. Years later he returns to the piano, to popular if not critical acclaim.	87.0	895	51350	35,811,509	https://m.media-amazon.com/images/M/MV5BMTQzMzcxMzUyMl5BMl5BanBnXkFtZTgwNDI1MjgxMTE@._V1_UX67_CR0,0,67,98_AL_.jpg
892	Primal Fear	1996	A	129	7.7	An altar boy is accused of murdering a priest, and the truth is buried several layers deep.	47.0	896	189716	56,116,183	https://m.media-amazon.com/images/M/MV5BZTM2NWI2OGYtYWNhMi00ZTlmLTg2ZTAtMmI5NWRjODA5YTE1XkEyXkFqcGdeQXVyODE2OTYwNTg@._V1_UX67_CR0,0,67,98_AL_.jpg
893	Hamlet	1996	PG-13	242	7.7	Hamlet, Prince of Denmark, returns home to find his father murdered and his mother remarrying the murderer, his uncle. Meanwhile, war is brewing.	NaN	897	35991	4,414,535	https://m.media-amazon.com/images/M/MV5BM2U5OWM5NWQtZDYwZS00NmI3LTk4NDktNzcwZjYzNmEzYWU1XkEyXkFqcGdeQXVyNjMwMjk0MTQ@._V1_UY98_CR0,0,67,98_AL_.jpg
894	A Little Princess	1995	U	97	7.7	A young girl is relegated to servitude at a boarding school when her father goes missing and is presumed dead.	83.0	591	32236	10,019,307	https://m.media-amazon.com/images/M/MV5BZDQzMGE5ODYtZDdiNC00MzZjLTg2NjAtZTk0ODlkYmY4MTQzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
895	Do lok tin si	1995	UA	99	7.7	This Hong Kong-set crime drama follows the lives of a hitman, hoping to get out of the business, and his elusive female partner.	71.0	338	26429	NaN	https://m.media-amazon.com/images/M/MV5BZjM4NWRhYTQtYTJlNC00ZmMyLWEzNTAtZDA2MjJjYTQ5ZTVmXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
896	Il postino	1994	U	108	7.7	A simple Italian postman learns to love poetry while delivering mail to a famous poet, and then uses this to woo local beauty Beatrice.	81.0	900	33600	21,848,932	https://m.media-amazon.com/images/M/MV5BZmVhNWIzOTMtYmVlZC00ZDVmLWIyODEtODEzOTAxYjAwMzVlXkEyXkFqcGdeQXVyMzIwNDY4NDI@._V1_UY98_CR1,0,67,98_AL_.jpg
897	Clerks	1994	R	92	7.7	A day in the lives of two convenience clerks named Dante and Randal as they annoy customers, discuss movies, and play hockey on the store roof.	70.0	901	211450	3,151,130	https://m.media-amazon.com/images/M/MV5BNzE1Njk0NmItNDhlMC00ZmFlLWI4ZTUtYTY4ZjgzNjkyMTU1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
898	Short Cuts	1993	R	188	7.7	The day-to-day lives of several suburban Los Angeles residents.	79.0	902	42275	6,110,979	https://m.media-amazon.com/images/M/MV5BZWY0ODc2NDktYmYxNS00MGZiLTk5YjktZjgwZWFhNDQ0MzNhXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
899	Philadelphia	1993	UA	125	7.7	When a man with HIV is fired by his law firm because of his condition, he hires a homophobic small time lawyer as the only willing advocate for a wrongful dismissal suit.	66.0	113	224169	77,324,422	https://m.media-amazon.com/images/M/MV5BNDE0MWE1ZTMtOWFkMS00YjdiLTkwZTItMDljYjY3MjM0NTk5XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX67_CR0,0,67,98_AL_.jpg
900	The Muppet Christmas Carol	1992	G	85	7.7	The Muppet characters tell their version of the classic tale of an old and bitter miser's redemption on Christmas Eve.	64.0	904	50298	27,281,507	https://m.media-amazon.com/images/M/MV5BN2Y0NWRkNWItZWEwNi00MDNlLWJmZDYtNTkwYzI5Nzg4MjVjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
901	Malcolm X	1992	U	202	7.7	Biographical epic of the controversial and influential Black Nationalist leader, from his early life and career as a small-time gangster, to his ministry as a member of the Nation of Islam.	73.0	488	85819	48,169,908	https://m.media-amazon.com/images/M/MV5BZDkzOTFmMTUtMmI2OS00MDE4LTg5YTUtODMwNDMzNmI5OGYwL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY98_CR3,0,67,98_AL_.jpg
902	The Last of the Mohicans	1992	UA	112	7.7	Three trappers protect the daughters of a British Colonel in the midst of the French and Indian War.	76.0	249	150409	75,505,856	https://m.media-amazon.com/images/M/MV5BZDNiYmRkNDYtOWU1NC00NmMxLWFkNmUtMGI5NTJjOTJmYTM5XkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
903	Kurenai no buta	1992	U	94	7.7	In 1930s Italy, a veteran World War I pilot is cursed to look like an anthropomorphic pig.	83.0	108	77798	NaN	https://m.media-amazon.com/images/M/MV5BZjVkYmFkZWQtZmNjYy00NmFhLTliMWYtNThlOTUxNjg5ODdhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR4,0,67,98_AL_.jpg
904	Glengarry Glen Ross	1992	R	100	7.7	An examination of the machinations behind the scenes at a real estate office.	82.0	908	95826	10,725,228	https://m.media-amazon.com/images/M/MV5BNTYzN2MxODMtMDBhOC00Y2M0LTgzMTItMzQ4NDIyYWIwMDEzL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX67_CR0,0,67,98_AL_.jpg
905	A Few Good Men	1992	U	138	7.7	Military lawyer Lieutenant Daniel Kaffee defends Marines accused of murder. They contend they were acting under orders.	62.0	352	235388	141,340,178	https://m.media-amazon.com/images/M/MV5BMmRlZDQ1MmUtMzE2Yi00YTkxLTk1MGMtYmIyYWQwODcxYzRlXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
906	Fried Green Tomatoes	1991	PG-13	130	7.7	A housewife who is unhappy with her life befriends an old lady in a nursing home and is enthralled by the tales she tells of people she used to know.	64.0	910	66941	82,418,501	https://m.media-amazon.com/images/M/MV5BOWQ1ZWE0MTQtMmEwOS00YjA3LTgyZTAtNjY5ODEyZTJjNDI2XkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_UX67_CR0,0,67,98_AL_.jpg
907	Barton Fink	1991	U	116	7.7	A renowned New York playwright is enticed to California to write for the movies and discovers the hellish truth of Hollywood.	69.0	337	113240	6,153,939	https://m.media-amazon.com/images/M/MV5BMTgxMDMxMTctNDY0Zi00ZmNlLWFlYmQtODA2YjY4MDk4MjU1XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX67_CR0,0,67,98_AL_.jpg
908	Miller's Crossing	1990	R	115	7.7	Tom Reagan, an advisor to a Prohibition-era crime boss, tries to keep the peace between warring mobs but gets caught in divided loyalties.	66.0	337	125822	5,080,409	https://m.media-amazon.com/images/M/MV5BMTY2Njk3MTAzM15BMl5BanBnXkFtZTgwMTY5Mzk4NjE@._V1_UX67_CR0,0,67,98_AL_.jpg
909	Who Framed Roger Rabbit	1988	U	104	7.7	A toon-hating detective is a cartoon rabbit's only hope to prove his innocence when he is accused of murder.	83.0	96	182009	156,452,370	https://m.media-amazon.com/images/M/MV5BMDhiOTM2OTctODk3Ny00NWI4LThhZDgtNGQ4NjRiYjFkZGQzXkEyXkFqcGdeQXVyMTA0MjU0Ng@@._V1_UX67_CR0,0,67,98_AL_.jpg
931	Enter the Dragon	1973	A	102	7.7	A secret agent comes to an opium lord's island fortress with other fighters for a martial-arts tournament.	83.0	935	96561	25,000,000	https://m.media-amazon.com/images/M/MV5BNGZiMTkyNzQtMDdmZi00ZDNkLWE4YTAtZGNlNTIzYzQyMGM2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
910	Spoorloos	1988	NaN	107	7.7	Rex and Saskia, a young couple in love, are on vacation. They stop at a busy service station and Saskia is abducted. After three years and no sign of Saskia, Rex begins receiving letters from the abductor.	NaN	914	33982	NaN	https://m.media-amazon.com/images/M/MV5BNDcwMTYzMjctN2M2Yy00ZDcxLWJhNTEtMGNhYzEwYzc2NDE4XkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UY98_CR0,0,67,98_AL_.jpg
911	Withnail & I	1987	R	107	7.7	In 1969, two substance-abusing, unemployed actors retreat to the countryside for a holiday that proves disastrous.	84.0	915	40396	1,544,889	https://m.media-amazon.com/images/M/MV5BYjE3ODY5OWEtZmE0Mi00MjUxLTg5MmUtZmFkMzM1N2VjMmU5XkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
912	The Last Emperor	1987	U	163	7.7	The story of the final Emperor of China.	76.0	508	94326	43,984,230	https://m.media-amazon.com/images/M/MV5BZTk0NDU4YmItOTk0ZS00ODc2LTkwNGItNWI5MDJkNTJiYWMxXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX67_CR0,0,67,98_AL_.jpg
913	Empire of the Sun	1987	U	153	7.7	A young English boy struggles to survive under Japanese occupation during World War II.	62.0	92	115677	22,238,696	https://m.media-amazon.com/images/M/MV5BMmQwNzczZDItNmI0OS00MjRmLTliYWItZWIyMjk1MTU4ZTQ4L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
914	Der Name der Rose	1986	R	130	7.7	An intellectually nonconformist friar investigates a series of mysterious deaths in an isolated abbey.	54.0	918	102031	7,153,487	https://m.media-amazon.com/images/M/MV5BZjEyZTdhNDMtMWFkMS00ZmRjLWEyNmEtZDU3MWFkNDEzMDYwXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
915	Blue Velvet	1986	A	120	7.7	The discovery of a severed human ear found in a field leads a young man on an investigation related to a beautiful, mysterious nightclub singer and a group of psychopathic criminals who have kidnapped her child.	76.0	361	181285	8,551,228	https://m.media-amazon.com/images/M/MV5BMzExOTczNTgtN2Q1Yy00MmI1LWE0NjgtNmIwMzdmZGNlODU1XkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_UX67_CR0,0,67,98_AL_.jpg
916	The Purple Rose of Cairo	1985	U	82	7.7	In New Jersey in 1935, a movie character walks off the screen and into the real world.	75.0	499	47102	10,631,333	https://m.media-amazon.com/images/M/MV5BY2E1YWRlNzAtYzAwYy00MDg5LTlmYTUtYjdlZDI0NzFkNjNlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
917	After Hours	1985	UA	97	7.7	An ordinary word processor has the worst night of his life after he agrees to visit a girl in Soho who he met that evening at a coffee shop.	90.0	100	59635	10,600,000	https://m.media-amazon.com/images/M/MV5BMTUxMjEzMzI2MV5BMl5BanBnXkFtZTgwNTU3ODAxMDE@._V1_UX67_CR0,0,67,98_AL_.jpg
918	Zelig	1983	PG	79	7.7	"Documentary" about a man who can look and act like whoever he's around, and meets various famous people.	NaN	499	39881	11,798,616	https://m.media-amazon.com/images/M/MV5BMGUwMjM0MTEtOGY2NS00MjJmLWEyMDAtYmNkMWJjOWJlNGM0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
919	The Verdict	1982	U	129	7.7	A lawyer sees the chance to salvage his career and self-respect by taking a medical malpractice case to trial rather than settling.	77.0	89	36096	54,000,000	https://m.media-amazon.com/images/M/MV5BMTU5MzMwMzAzM15BMl5BanBnXkFtZTcwNjYyMjA0Mg@@._V1_UX67_CR0,0,67,98_AL_.jpg
920	Star Trek II: The Wrath of Khan	1982	U	113	7.7	With the assistance of the Enterprise crew, Admiral Kirk must stop an old nemesis, Khan Noonien Singh, from using the life-generating Genesis Device as the ultimate weapon.	67.0	924	112704	78,912,963	https://m.media-amazon.com/images/M/MV5BMzcyYWE5YmQtNDE1Yi00ZjlmLWFlZTAtMzRjODBiYjM3OTA3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
921	First Blood	1982	A	93	7.7	A veteran Green Beret is forced by a cruel Sheriff and his deputies to flee into the mountains and wage an escalating one-man war against his pursuers.	61.0	925	226541	47,212,904	https://m.media-amazon.com/images/M/MV5BODBmOWU2YWMtZGUzZi00YzRhLWJjNDAtYTUwNWVkNDcyZmU5XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
922	Ordinary People	1980	U	124	7.7	The accidental death of the older son of an affluent family deeply strains the relationships among the bitter mother, the good-natured father, and the guilt-ridden younger son.	86.0	926	47099	54,800,000	https://m.media-amazon.com/images/M/MV5BNWU3MDFkYWQtMWQ5YS00YTcwLThmNDItODY4OWE2ZTdhZmIwXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX67_CR0,0,67,98_AL_.jpg
923	Airplane!	1980	U	88	7.7	A man afraid to fly must ensure that a plane lands safely after the pilots become sick.	78.0	927	214882	83,400,000	https://m.media-amazon.com/images/M/MV5BZjA3YjdhMWEtYjc2Ni00YzVlLWI0MTUtMGZmNTJjNmU0Yzk2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
924	Rupan sansei: Kariosutoro no shiro	1979	U	100	7.7	A dashing thief, his gang of desperadoes and an intrepid policeman struggle to free a princess from an evil count's clutches, and learn the hidden secret to a fabulous treasure that she holds part of a key to.	71.0	108	27014	NaN	https://m.media-amazon.com/images/M/MV5BYzYyNjg3OTctNzA2ZS00NjkzLWE4MmYtZDAzZWQ0NzkyMTJhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
925	Halloween	1978	A	91	7.7	Fifteen years after murdering his sister on Halloween night 1963, Michael Myers escapes from a mental hospital and returns to the small town of Haddonfield, Illinois to kill again.	87.0	356	233106	47,000,000	https://m.media-amazon.com/images/M/MV5BNzk1OGU2NmMtNTdhZC00NjdlLWE5YTMtZTQ0MGExZTQzOGQyXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
926	Le locataire	1976	R	126	7.7	A bureaucrat rents a Paris apartment where he finds himself drawn into a rabbit hole of dangerous paranoia.	71.0	123	39889	1,924,733	https://m.media-amazon.com/images/M/MV5BYmVhMDQ1YWUtYjgxOS00NzYyLWI0ZGItNTg3ZjM0MmQ4NmIwXkEyXkFqcGdeQXVyMjQzMzQzODY@._V1_UY98_CR3,0,67,98_AL_.jpg
927	Love and Death	1975	PG	85	7.7	In czarist Russia, a neurotic soldier and his distant cousin formulate a plot to assassinate Napoleon.	89.0	499	36037	NaN	https://m.media-amazon.com/images/M/MV5BMTYxMDk1NTA5NF5BMl5BanBnXkFtZTcwNDkzNzA2NA@@._V1_UX67_CR0,0,67,98_AL_.jpg
928	The Taking of Pelham One Two Three	1974	U	104	7.7	In New York, armed men hijack a subway car and demand a ransom for the passengers. Even if it's paid, how could they get away?	68.0	932	26729	NaN	https://m.media-amazon.com/images/M/MV5BMjE1NDY0NDk3Ml5BMl5BanBnXkFtZTcwMTAzMTM3NA@@._V1_UX67_CR0,0,67,98_AL_.jpg
929	Blazing Saddles	1974	A	93	7.7	In order to ruin a western town, a corrupt politician appoints a black Sheriff, who promptly becomes his most formidable adversary.	73.0	502	125993	119,500,000	https://m.media-amazon.com/images/M/MV5BZGZmMWE1MDYtNzAyNC00MDMzLTgzZjQtNTQ5NjYzN2E4MzkzXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
930	Serpico	1973	A	130	7.7	An honest New York cop named Frank Serpico blows the whistle on rampant corruption in the force only to have his comrades turn against him.	87.0	89	109941	29,800,000	https://m.media-amazon.com/images/M/MV5BYTU4ZTI0NzAtYzMwNi00YmMxLThmZWItNTY5NzgyMDAwYWVhXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX67_CR0,0,67,98_AL_.jpg
932	Deliverance	1972	U	109	7.7	Intent on seeing the Cahulawassee River before it's dammed and turned into a lake, outdoor fanatic Lewis Medlock takes his friends on a canoeing trip they'll never forget into the dangerous American back-country.	80.0	936	98740	7,056,013	https://m.media-amazon.com/images/M/MV5BZjBhYzU3NWItOWZjMy00NjI5LWFmYmItZmIyOWFlMDIxMWNiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
933	The French Connection	1971	A	104	7.7	A pair of NYC cops in the Narcotics Bureau stumble onto a drug smuggling job with a French connection.	94.0	504	110075	15,630,710	https://m.media-amazon.com/images/M/MV5BOTZhY2E3NmItMGIwNi00OTA2LThkYmEtODFiZTM0NGI0ZWU5XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UY98_CR1,0,67,98_AL_.jpg
934	Dirty Harry	1971	A	102	7.7	When a madman calling himself "the Scorpio Killer" menaces the city, tough-as-nails San Francisco Police Inspector "Dirty" Harry Callahan is assigned to track down and ferret out the crazed psychopath.	90.0	938	143292	35,900,000	https://m.media-amazon.com/images/M/MV5BMzdhMTM2YTItOWU2YS00MTM0LTgyNDYtMDM1OWM3NzkzNTM2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
935	Where Eagles Dare	1968	U	158	7.7	Allied agents stage a daring raid on a castle where the Nazis are holding American brigadier general George Carnaby prisoner, but that's not all that's really going on.	63.0	939	51913	NaN	https://m.media-amazon.com/images/M/MV5BNGE3ZWZiNzktMDIyOC00ZmVhLThjZTktZjQ5NjI4NGVhMDBlXkEyXkFqcGdeQXVyMjI4MjA5MzA@._V1_UX67_CR0,0,67,98_AL_.jpg
936	The Odd Couple	1968	G	105	7.7	Two friends try sharing an apartment, but their ideas of housekeeping and lifestyles are as different as night and day.	86.0	940	31572	44,527,234	https://m.media-amazon.com/images/M/MV5BZDVhNzQxZDEtMzcyZC00ZDg1LWFkZDctOWYxZTY0ZmYzYjc2XkEyXkFqcGdeQXVyMjA0MDQ0Mjc@._V1_UX67_CR0,0,67,98_AL_.jpg
937	The Dirty Dozen	1967	NaN	150	7.7	During World War II, a rebellious U.S. Army Major is assigned a dozen convicted murderers to train and lead them into a mass assassination mission of German officers.	73.0	378	67183	45,300,000	https://m.media-amazon.com/images/M/MV5BM2Y1ZTI0NzktYzU3MS00YmE1LThkY2EtMDc0NGYxNTNlZDA5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
938	Belle de jour	1967	A	100	7.7	A frigid young housewife decides to spend her midweek afternoons as a prostitute.	NaN	377	40274	26,331	https://m.media-amazon.com/images/M/MV5BZjNkNGJjYWEtM2IyNi00ZjM5LWFlYjYtYjQ4NTU5MGFlMTI2XkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_UY98_CR3,0,67,98_AL_.jpg
939	A Man for All Seasons	1966	U	120	7.7	The story of Sir Thomas More, who stood up to King Henry VIII when the King rejected the Roman Catholic Church to obtain a divorce and remarry.	72.0	640	31222	28,350,000	https://m.media-amazon.com/images/M/MV5BMTRjOTA1NzctNzFmMy00ZjcwLWExYjgtYWQyZDM5ZWY1Y2JlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
940	Repulsion	1965	NaN	105	7.7	A sex-repulsed woman who disapproves of her sister's boyfriend sinks into depression and has horrific visions of rape and violence.	91.0	123	48883	NaN	https://m.media-amazon.com/images/M/MV5BZTU5ZThjNzAtNjc4NC00OTViLWIxYTYtODFmMTk5Y2NjZjZiL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
941	Zulu	1964	U	138	7.7	Outnumbered British soldiers do battle with Zulu warriors at Rorke's Drift.	77.0	945	35999	NaN	https://m.media-amazon.com/images/M/MV5BYzdlYmQ3MWMtMDY3My00MzVmLTg0YmMtYjRlZDUzNjBlMmE0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
942	Goldfinger	1964	A	110	7.7	While investigating a gold magnate's smuggling, James Bond uncovers a plot to contaminate the Fort Knox gold reserve.	87.0	946	174119	51,081,062	https://m.media-amazon.com/images/M/MV5BMTQ2MzE0OTU3NV5BMl5BanBnXkFtZTcwNjQxNTgzNA@@._V1_UX67_CR0,0,67,98_AL_.jpg
943	The Birds	1963	A	119	7.7	A wealthy San Francisco socialite pursues a potential boyfriend to a small Northern California town that slowly takes a turn for the bizarre when birds of all kinds suddenly begin to attack people.	90.0	134	171739	11,403,529	https://m.media-amazon.com/images/M/MV5BMTAxNDA1ODc5MDleQTJeQWpwZ15BbWU4MDg2MDA4OTEx._V1_UX67_CR0,0,67,98_AL_.jpg
944	Cape Fear	1962	Passed	106	7.7	A lawyer's family is stalked by a man he once helped put in jail.	76.0	948	26457	NaN	https://m.media-amazon.com/images/M/MV5BOWNlMTJmMWUtYjk0MC00M2U4LWI1ODItZDgxNDZiODFmNjc5XkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UX67_CR0,0,67,98_AL_.jpg
945	Peeping Tom	1960	NaN	101	7.7	A young man murders women, using a movie camera to film their dying expressions of terror.	NaN	395	31354	83,957	https://m.media-amazon.com/images/M/MV5BZjM3ZTAzZDYtZmFjZS00YmQ1LWJlOWEtN2I4MDRmYzY5YmRlL2ltYWdlXkEyXkFqcGdeQXVyMjgyNjk3MzE@._V1_UX67_CR0,0,67,98_AL_.jpg
946	The Magnificent Seven	1960	Approved	128	7.7	Seven gunfighters are hired by Mexican peasants to liberate their village from oppressive bandits.	74.0	264	87719	4,905,000	https://m.media-amazon.com/images/M/MV5BMzYyNzU0MTM1OF5BMl5BanBnXkFtZTcwMzE1ODE1NA@@._V1_UX67_CR0,0,67,98_AL_.jpg
947	Les yeux sans visage	1960	NaN	90	7.7	A surgeon causes an accident which leaves his daughter disfigured, and goes to extremes to give her a new face.	90.0	951	27620	52,709	https://m.media-amazon.com/images/M/MV5BNzBiMWRhNzQtMjZhZS00NzFmLWE5YWMtOWY4NzIxMjYzZTEyXkEyXkFqcGdeQXVyMzg2MzE2OTE@._V1_UY98_CR3,0,67,98_AL_.jpg
948	Invasion of the Body Snatchers	1956	Approved	80	7.7	A small-town doctor learns that the population of his community is being replaced by emotionless alien duplicates.	92.0	938	44839	NaN	https://m.media-amazon.com/images/M/MV5BYTExYjM3MDYtMzg4MC00MjU4LTljZjAtYzdlMTFmYTJmYTE4XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
949	Rebel Without a Cause	1955	PG-13	111	7.7	A rebellious young man with a troubled past comes to a new town, finding friends and enemies.	89.0	533	83363	NaN	https://m.media-amazon.com/images/M/MV5BMTg2ODcxOTU1OV5BMl5BanBnXkFtZTgwNzA3ODI1MDE@._V1_UX67_CR0,0,67,98_AL_.jpg
950	The Ladykillers	1955	NaN	91	7.7	Five oddball criminals planning a bank robbery rent rooms on a cul-de-sac from an octogenarian widow under the pretext that they are classical musicians.	91.0	525	26464	NaN	https://m.media-amazon.com/images/M/MV5BYTVlM2JmOGQtNWEwYy00NDQzLWIyZmEtOGZhMzgxZGRjZDA0XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
951	Sabrina	1954	Passed	113	7.7	A playboy becomes interested in the daughter of his family's chauffeur, but it's his more serious brother who would be the better man for her.	72.0	164	59415	NaN	https://m.media-amazon.com/images/M/MV5BYmFlNTA1NWItODQxNC00YjFmLWE3ZWYtMzg3YTkwYmMxMjY2XkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
952	The Quiet Man	1952	Passed	129	7.7	A retired American boxer returns to the village of his birth in Ireland, where he falls for a spirited redhead whose brother is contemptuous of their union.	NaN	380	34677	10,550,000	https://m.media-amazon.com/images/M/MV5BMWM1ZDhlM2MtNDNmMi00MDk4LTg5MjgtODE4ODk1MjYxOTIwXkEyXkFqcGdeQXVyNjc0MzMzNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
953	The Day the Earth Stood Still	1951	U	92	7.7	An alien lands and tells the people of Earth that they must live peacefully or be destroyed as a danger to other planets.	NaN	514	76315	NaN	https://m.media-amazon.com/images/M/MV5BMTU5NTBmYTAtOTgyYi00NGM0LWE0ODctZjNiYWM5MmIxYzE4XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
954	The African Queen	1951	PG	105	7.7	In WWI Africa, a gin-swilling riverboat captain is persuaded by a strait-laced missionary to use his boat to attack an enemy warship.	91.0	276	71481	536,118	https://m.media-amazon.com/images/M/MV5BYzM3YjE2NGMtODY3Zi00NTY0LWE4Y2EtMTE5YzNmM2U1NTg2XkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_UX67_CR0,0,67,98_AL_.jpg
955	Gilda	1946	Approved	110	7.7	A small-time gambler hired to work in a Buenos Aires casino discovers his employer's new wife is his former lover.	NaN	959	27991	NaN	https://m.media-amazon.com/images/M/MV5BYWUxMzViZTUtNTYxNy00YjY4LWJmMjYtMzNlOThjNjhiZmZkXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
956	Fantasia	1940	G	125	7.7	A collection of animated interpretations of great works of Western classical music.	96.0	960	88662	76,408,097	https://m.media-amazon.com/images/M/MV5BMjAxMTI1Njk3OF5BMl5BanBnXkFtZTgwNjkzODk4NTE@._V1_UX67_CR0,0,67,98_AL_.jpg
957	The Invisible Man	1933	TV-PG	71	7.7	A scientist finds a way of becoming invisible, but in doing so, he becomes murderously insane.	87.0	801	30683	NaN	https://m.media-amazon.com/images/M/MV5BYjllMmE0Y2YtYWIwZi00OWY1LWJhNWItYzM2MmNiYmFiZmRmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
958	Dark Waters	2019	PG-13	126	7.6	A corporate defense attorney takes on an environmental lawsuit against a chemical company that exposes a lengthy history of pollution.	73.0	962	60408	NaN	https://m.media-amazon.com/images/M/MV5BODQ0M2Y5M2QtZGIwMC00MzJjLThlMzYtNmE3ZTMzZTYzOGEwXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
959	Searching	2018	U/A	102	7.6	After his teenage daughter goes missing, a desperate father tries to find clues on her laptop.	71.0	963	140840	26,020,957	https://m.media-amazon.com/images/M/MV5BMjIwOTA3NDI3MF5BMl5BanBnXkFtZTgwNzIzMzA5NTM@._V1_UX67_CR0,0,67,98_AL_.jpg
960	Once Upon a Time... in Hollywood	2019	A	161	7.6	A faded television actor and his stunt double strive to achieve fame and success in the final years of Hollywood's Golden Age in 1969 Los Angeles.	83.0	91	551309	142,502,728	https://m.media-amazon.com/images/M/MV5BOTg4ZTNkZmUtMzNlZi00YmFjLTk1MmUtNWQwNTM0YjcyNTNkXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_UX67_CR0,0,67,98_AL_.jpg
961	Nelyubov	2017	R	127	7.6	A couple going through a divorce must team up to find their son who has disappeared during one of their bitter arguments.	86.0	455	29765	566,356	https://m.media-amazon.com/images/M/MV5BNzk2NmU3NmEtMTVhNS00NzJhLWE1M2ItMThjZjI5NWM3YmFmXkEyXkFqcGdeQXVyMjA1MzUyODk@._V1_UY98_CR1,0,67,98_AL_.jpg
962	The Florida Project	2017	A	111	7.6	Set over one summer, the film follows precocious six-year-old Moonee as she courts mischief and adventure with her ragtag playmates and bonds with her rebellious but caring mother, all while living in the shadows of Walt Disney World.	92.0	966	95181	5,904,366	https://m.media-amazon.com/images/M/MV5BMjg4ZmY1MmItMjFjOS00ZTg2LWJjNDYtNDM2YmM2NzhiNmZhXkEyXkFqcGdeQXVyNTAzMTY4MDA@._V1_UX67_CR0,0,67,98_AL_.jpg
963	Just Mercy	2019	A	137	7.6	World-renowned civil rights defense attorney Bryan Stevenson works to free a wrongly condemned death row prisoner.	68.0	421	46739	NaN	https://m.media-amazon.com/images/M/MV5BYmM4YzA5NjUtZGEyOS00YzllLWJmM2UtZjhhNmJhM2E1NjUxXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
964	Gifted	2017	PG-13	101	7.6	Frank, a single man raising his child prodigy niece Mary, is drawn into a custody battle with his mother.	60.0	839	99643	24,801,212	https://m.media-amazon.com/images/M/MV5BMjQ2NDU3NDE0M15BMl5BanBnXkFtZTgwMjA3OTg0MDI@._V1_UX67_CR0,0,67,98_AL_.jpg
965	The Peanut Butter Falcon	2019	PG-13	97	7.6	Zak runs away from his care home to make his dream of becoming a wrestler come true.	70.0	969	66346	13,122,642	https://m.media-amazon.com/images/M/MV5BOWVmZGQ0MGYtMDI1Yy00MDkxLWJiYjQtMmZjZmQ0NDFmMDRhXkEyXkFqcGdeQXVyNjg3MDMxNzU@._V1_UX67_CR0,0,67,98_AL_.jpg
966	Victoria	2015	NaN	138	7.6	A young Spanish woman who has recently moved to Berlin finds her flirtation with a local guy turn potentially deadly as their night out with his friends reveals a dangerous secret.	77.0	970	52903	NaN	https://m.media-amazon.com/images/M/MV5BMTc5NzQzNjk2NF5BMl5BanBnXkFtZTgwODU0MjI5NjE@._V1_UY98_CR0,0,67,98_AL_.jpg
967	Mustang	2015	PG-13	97	7.6	When five orphan girls are seen innocently playing with boys on a beach, their scandalized conservative guardians confine them while forced marriages are arranged.	83.0	971	35785	845,464	https://m.media-amazon.com/images/M/MV5BMTkwODUzODA0OV5BMl5BanBnXkFtZTgwMTA3ODkxNzE@._V1_UY98_CR0,0,67,98_AL_.jpg
968	Guardians of the Galaxy Vol. 2	2017	UA	136	7.6	The Guardians struggle to keep together as a team while dealing with their personal family issues, notably Star-Lord's encounter with his father the ambitious celestial being Ego.	67.0	424	569974	389,813,101	https://m.media-amazon.com/images/M/MV5BNjM0NTc0NzItM2FlYS00YzEwLWE0YmUtNTA2ZWIzODc2OTgxXkEyXkFqcGdeQXVyNTgwNzIyNzg@._V1_UX67_CR0,0,67,98_AL_.jpg
969	Baby Driver	2017	UA	113	7.6	After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.	86.0	588	439406	107,825,862	https://m.media-amazon.com/images/M/MV5BMjM3MjQ1MzkxNl5BMl5BanBnXkFtZTgwODk1ODgyMjI@._V1_UX67_CR0,0,67,98_AL_.jpg
970	Only the Brave	2017	UA	134	7.6	Based on the true story of the Granite Mountain Hotshots, a group of elite firefighters who risk everything to protect a town from a historic wildfire.	72.0	974	58371	18,340,051	https://m.media-amazon.com/images/M/MV5BYWFlOWI3YTMtYTk3NS00YWQ2LTlmYTMtZjk0ZDk4Y2NjODI0XkEyXkFqcGdeQXVyNTQxNTQ4Mg@@._V1_UX67_CR0,0,67,98_AL_.jpg
971	Bridge of Spies	2015	UA	142	7.6	During the Cold War, an American lawyer is recruited to defend an arrested Soviet spy in court, and then help the CIA facilitate an exchange of the spy for the Soviet captured American U2 spy plane pilot, Francis Gary Powers.	81.0	92	287659	72,313,754	https://m.media-amazon.com/images/M/MV5BMjIxOTI0MjU5NV5BMl5BanBnXkFtZTgwNzM4OTk4NTE@._V1_UX67_CR0,0,67,98_AL_.jpg
972	Incredibles 2	2018	UA	118	7.6	The Incredibles family takes on a new mission which involves a change in family roles: Bob Parr (Mr. Incredible) must manage the house while his wife Helen (Elastigirl) goes out to save the world.	80.0	452	250057	608,581,744	https://m.media-amazon.com/images/M/MV5BMTEzNzY0OTg0NTdeQTJeQWpwZ15BbWU4MDU3OTg3MjUz._V1_UX67_CR0,0,67,98_AL_.jpg
973	Moana	2016	U	107	7.6	In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches Moana's island, she answers the Ocean's call to seek out the Demigod to set things right.	81.0	484	272784	248,757,044	https://m.media-amazon.com/images/M/MV5BMjI4MzU5NTExNF5BMl5BanBnXkFtZTgwNzY1MTEwMDI@._V1_UX67_CR0,0,67,98_AL_.jpg
974	Sicario	2015	A	121	7.6	An idealistic FBI agent is enlisted by a government task force to aid in the escalating war against drugs at the border area between the U.S. and Mexico.	82.0	175	371291	46,889,293	https://m.media-amazon.com/images/M/MV5BMjA5NjM3NTk1M15BMl5BanBnXkFtZTgwMzg1MzU2NjE@._V1_UX67_CR0,0,67,98_AL_.jpg
975	Creed	2015	A	133	7.6	The former World Heavyweight Champion Rocky Balboa serves as a trainer and mentor to Adonis Johnson, the son of his late friend and former rival Apollo Creed.	82.0	979	247666	109,767,581	https://m.media-amazon.com/images/M/MV5BNmZkYjQzY2QtNjdkNC00YjkzLTk5NjUtY2MyNDNiYTBhN2M2XkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_UX67_CR0,0,67,98_AL_.jpg
976	Leviafan	2014	R	140	7.6	In a Russian coastal town, Kolya is forced to fight the corrupt mayor when he is told that his house will be demolished. He recruits a lawyer friend to help, but the man's arrival brings further misfortune for Kolya and his family.	92.0	455	49397	1,092,800	https://m.media-amazon.com/images/M/MV5BYTYxZjQ2YTktNmVkMC00ZTY4LThkZmItMDc4MTJiYjVhZjM0L2ltYWdlXkEyXkFqcGdeQXVyMjgyNjk3MzE@._V1_UY98_CR1,0,67,98_AL_.jpg
977	Hell or High Water	2016	R	102	7.6	A divorced father and his ex-con older brother resort to a desperate scheme in order to save their family's ranch in West Texas.	88.0	981	204175	26,862,450	https://m.media-amazon.com/images/M/MV5BMTg4NDA1OTA5NF5BMl5BanBnXkFtZTgwMDQ2MDM5ODE@._V1_UX67_CR0,0,67,98_AL_.jpg
978	Philomena	2013	PG-13	98	7.6	A world-weary political journalist picks up the story of a woman's search for her son, who was taken away from her decades ago after she became pregnant and was forced to live in a convent.	77.0	982	94212	37,707,719	https://m.media-amazon.com/images/M/MV5BMjA5ODgyNzcxMV5BMl5BanBnXkFtZTgwMzkzOTYzMDE@._V1_UX67_CR0,0,67,98_AL_.jpg
979	Dawn of the Planet of the Apes	2014	UA	130	7.6	A growing nation of genetically evolved apes led by Caesar is threatened by a band of human survivors of the devastating virus unleashed a decade earlier.	79.0	983	411599	208,545,589	https://m.media-amazon.com/images/M/MV5BMTgwODk3NDc1N15BMl5BanBnXkFtZTgwNTc1NjQwMjE@._V1_UX67_CR0,0,67,98_AL_.jpg
980	El cuerpo	2012	NaN	112	7.6	A detective searches for the body of a femme fatale which has gone missing from a morgue.	NaN	283	57549	NaN	https://m.media-amazon.com/images/M/MV5BNGMxZjFkN2EtMDRiMS00ZTBjLWI0M2MtZWUyYjFhZGViZDJlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
981	Serbuan maut	2011	A	101	7.6	A S.W.A.T. team becomes trapped in a tenement run by a ruthless mobster and his army of killers and thugs.	73.0	422	190531	4,105,123	https://m.media-amazon.com/images/M/MV5BZGIxODNjM2YtZjA5Mi00MjA5LTk2YjItODE0OWI5NThjNTBmXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
982	End of Watch	2012	A	109	7.6	Shot documentary-style, this film follows the daily grind of two young police officers in LA who are partners and friends, and what happens when they meet criminal forces greater than themselves.	68.0	986	228132	41,003,371	https://m.media-amazon.com/images/M/MV5BMjMxNjU0ODU5Ml5BMl5BanBnXkFtZTcwNjI4MzAyOA@@._V1_UX67_CR0,0,67,98_AL_.jpg
983	Kari-gurashi no Arietti	2010	U	94	7.6	The Clock family are four-inch-tall people who live anonymously in another family's residence, borrowing simple items to make their home. Life changes for the Clocks when their teenage daughter, Arrietty, is discovered.	80.0	987	80939	19,202,743	https://m.media-amazon.com/images/M/MV5BZDY3ZGI0ZDAtMThlNy00MzAxLTg4YjAtNjkwYTkxNmQ4MjdlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
984	A Star Is Born	2018	UA	136	7.6	A musician helps a young singer find fame as age and alcoholism send his own career into a downward spiral.	88.0	988	334312	215,288,866	https://m.media-amazon.com/images/M/MV5BNmE5ZmE3OGItNTdlNC00YmMxLWEzNjctYzAwOGQ5ODg0OTI0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
985	True Grit	2010	PG-13	110	7.6	A stubborn teenager enlists the help of a tough U.S. Marshal to track down her father's murderer.	80.0	317	311822	171,243,005	https://m.media-amazon.com/images/M/MV5BODhkZDIzNjgtOTA5ZS00MmMzLWFkNjYtM2Y2MzFjN2FkNjAzL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
986	Hævnen	2010	R	118	7.6	The lives of two Danish families cross each other, and an extraordinary but risky friendship comes into bud. But loneliness, frailty and sorrow lie in wait.	65.0	850	38491	1,008,098	https://m.media-amazon.com/images/M/MV5BNDY2OTE5MzE0Nl5BMl5BanBnXkFtZTcwNDAyOTc2NA@@._V1_UX67_CR0,0,67,98_AL_.jpg
987	Despicable Me	2010	U	95	7.6	When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better.	72.0	991	500851	251,513,985	https://m.media-amazon.com/images/M/MV5BMTY3NjY0MTQ0Nl5BMl5BanBnXkFtZTcwMzQ2MTc0Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg
988	50/50	2011	R	100	7.6	Inspired by a true story, a comedy centered on a 27-year-old guy who learns of his cancer diagnosis and his subsequent struggle to beat the disease.	72.0	992	315426	35,014,192	https://m.media-amazon.com/images/M/MV5BNjg3ODQyNTIyN15BMl5BanBnXkFtZTcwMjUzNzM5NQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
989	Kick-Ass	2010	UA	117	7.6	Dave Lizewski is an unnoticed high school student and comic book fan who one day decides to become a superhero, even though he has no powers, training or meaningful reason to do so.	66.0	815	524081	48,071,303	https://m.media-amazon.com/images/M/MV5BMTMzNzEzMDYxM15BMl5BanBnXkFtZTcwMTc0NTMxMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
990	Celda 211	2009	NaN	113	7.6	The story of two men on different sides of a prison riot -- the inmate leading the rebellion and the young guard trapped in the revolt, who poses as a prisoner in a desperate attempt to survive the ordeal.	NaN	994	63882	NaN	https://m.media-amazon.com/images/M/MV5BMjI2ODE4ODAtMDA3MS00ODNkLTg4N2EtOGU0YjZmNGY4NjZlXkEyXkFqcGdeQXVyMTY5MDE5NA@@._V1_UY98_CR0,0,67,98_AL_.jpg
991	Moneyball	2011	PG-13	133	7.6	Oakland A's general manager Billy Beane's successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players.	87.0	995	369529	75,605,492	https://m.media-amazon.com/images/M/MV5BMjAxOTU3Mzc1M15BMl5BanBnXkFtZTcwMzk1ODUzNg@@._V1_UX67_CR0,0,67,98_AL_.jpg
992	La piel que habito	2011	R	120	7.6	A brilliant plastic surgeon, haunted by past tragedies, creates a type of synthetic skin that withstands any kind of damage. His guinea pig: a mysterious and volatile woman who holds the key to his obsession.	70.0	593	138959	3,185,812	https://m.media-amazon.com/images/M/MV5BYmFmNjY5NDYtZjlhNi00YjQ5LTgzNzctNWRiNWUzNmIyNjc4XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY98_CR0,0,67,98_AL_.jpg
993	Zombieland	2009	A	88	7.6	A shy student trying to reach his family in Ohio, a gun-toting tough guy trying to find the last Twinkie, and a pair of sisters trying to get to an amusement park join forces to travel across a zombie-filled America.	73.0	997	520041	75,590,286	https://m.media-amazon.com/images/M/MV5BMTU5MDg0NTQ1N15BMl5BanBnXkFtZTcwMjA4Mjg3Mg@@._V1_UY98_CR1,0,67,98_AL_.jpg
1015	Mysterious Skin	2004	R	105	7.6	A teenage hustler and a young man obsessed with alien abductions cross paths, together discovering a horrible, liberating truth.	73.0	1019	65939	697,181	https://m.media-amazon.com/images/M/MV5BMTgxMjQ4NzE5OF5BMl5BanBnXkFtZTcwNzkwOTkyMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
994	Die Welle	2008	NaN	107	7.6	A high school teacher's experiment to demonstrate to his students what life is like under a dictatorship spins horribly out of control when he forms a social unit with a life of its own.	NaN	998	102742	NaN	https://m.media-amazon.com/images/M/MV5BMzc0ZmUyZjAtZThkMi00ZDY5LTg5YjctYmUwM2FiYjMyMDI5XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
995	Sherlock Holmes	2009	PG-13	128	7.6	Detective Sherlock Holmes and his stalwart partner Watson engage in a battle of wits and brawn with a nemesis whose plot is a threat to all of England.	57.0	181	583158	209,028,679	https://m.media-amazon.com/images/M/MV5BMTg0NjEwNjUxM15BMl5BanBnXkFtZTcwMzk0MjQ5Mg@@._V1_UX67_CR0,0,67,98_AL_.jpg
996	The Blind Side	2009	UA	129	7.6	The story of Michael Oher, a homeless and traumatized boy who became an All-American football player and first-round NFL draft pick with the help of a caring woman and her family.	53.0	1000	293266	255,959,475	https://m.media-amazon.com/images/M/MV5BMjEzOTE3ODM3OF5BMl5BanBnXkFtZTcwMzYyODI4Mg@@._V1_UX67_CR0,0,67,98_AL_.jpg
997	The Visitor	2007	PG-13	104	7.6	A college professor travels to New York City to attend a conference and finds a young couple living in his apartment.	79.0	303	41544	9,422,422	https://m.media-amazon.com/images/M/MV5BMTIzNTg3NzkzNV5BMl5BanBnXkFtZTcwNzMwMjU2MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
998	Seven Pounds	2008	UA	123	7.6	A man with a fateful secret embarks on an extraordinary journey of redemption by forever changing the lives of seven strangers.	36.0	445	286770	69,951,824	https://m.media-amazon.com/images/M/MV5BMTU0NzY0MTY5OF5BMl5BanBnXkFtZTcwODY3MDEwMg@@._V1_UY98_CR3,0,67,98_AL_.jpg
999	Eastern Promises	2007	R	100	7.6	A teenager who dies during childbirth leaves clues in her journal that could tie her child to a rape involving a violent Russian mob family.	82.0	1003	227760	17,114,882	https://m.media-amazon.com/images/M/MV5BMTcwMzU0OTY3NF5BMl5BanBnXkFtZTYwNzkwNjg2._V1_UX67_CR0,0,67,98_AL_.jpg
1000	Stardust	2007	U	127	7.6	In a countryside town bordering on a magical land, a young man makes a promise to his beloved that he'll retrieve a fallen star by venturing into the magical realm.	66.0	815	255036	38,634,938	https://m.media-amazon.com/images/M/MV5BMjkyMTE1OTYwNF5BMl5BanBnXkFtZTcwMDIxODYzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
1001	The Secret of Kells	2009	NaN	71	7.6	A young boy in a remote medieval outpost under siege from barbarian raids is beckoned to adventure when a celebrated master illuminator arrives with an ancient book, brimming with secret wisdom and powers.	81.0	304	31779	686,383	https://m.media-amazon.com/images/M/MV5BMjEzMjEzNTIzOF5BMl5BanBnXkFtZTcwMTg2MjAyMw@@._V1_UY98_CR0,0,67,98_AL_.jpg
1002	Inside Man	2006	R	129	7.6	A police detective, a bank robber, and a high-power broker enter high-stakes negotiations after the criminal's brilliant heist spirals into a hostage situation.	76.0	488	339757	88,513,495	https://m.media-amazon.com/images/M/MV5BYjc4MjA2ZDgtOGY3YS00NDYzLTlmNTEtYWMxMzcwZjgzYWNjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
1003	Gone Baby Gone	2007	R	114	7.6	Two Boston area detectives investigate a little girl's kidnapping, which ultimately turns into a crisis both professionally and personally.	72.0	838	250590	20,300,218	https://m.media-amazon.com/images/M/MV5BYmM2NDNiNGItMTRhMi00ZDA2LTgzOWMtZTE2ZjFhMDQ2M2U5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
1004	La Vie En Rose	2007	PG-13	140	7.6	Biopic of the iconic French singer Édith Piaf. Raised by her grandmother in a brothel, she was discovered while singing on a street corner at the age of 19. Despite her success, Piaf's life was filled with tragedy.	66.0	1008	82781	10,301,706	https://m.media-amazon.com/images/M/MV5BOTBmZDZkNWYtODIzYi00N2Y4LWFjMmMtNmM1OGYyNGVhYzUzXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
1005	Huo Yuan Jia	2006	PG-13	104	7.6	A biography of Chinese Martial Arts Master Huo Yuanjia, who is the founder and spiritual guru of the Jin Wu Sports Federation.	70.0	1009	72863	24,633,730	https://m.media-amazon.com/images/M/MV5BMTI5MjA2Mzk2M15BMl5BanBnXkFtZTcwODY1MDUzMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
1006	The Illusionist	2006	U	110	7.6	In turn-of-the-century Vienna, a magician uses his abilities to secure the love of a woman far above his social standing.	68.0	1010	354728	39,868,642	https://m.media-amazon.com/images/M/MV5BY2VkMzZlZDAtNTkzNS00MDIzLWFmOTctMWQwZjQ1OWJiYzQ1XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UY98_CR1,0,67,98_AL_.jpg
1007	Dead Man's Shoes	2004	NaN	90	7.6	A disaffected soldier returns to his hometown to get even with the thugs who brutalized his mentally-challenged brother years ago.	52.0	848	49728	6,013	https://m.media-amazon.com/images/M/MV5BMTI5Mzk1MDc2M15BMl5BanBnXkFtZTcwMjIzMDA0MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
1008	Harry Potter and the Half-Blood Prince	2009	UA	153	7.6	As Harry Potter begins his sixth year at Hogwarts, he discovers an old book marked as "the property of the Half-Blood Prince" and begins to learn more about Lord Voldemort's dark past.	78.0	311	474827	301,959,197	https://m.media-amazon.com/images/M/MV5BNzU3NDg4NTAyNV5BMl5BanBnXkFtZTcwOTg2ODg1Mg@@._V1_UX67_CR0,0,67,98_AL_.jpg
1009	300	2006	A	117	7.6	King Leonidas of Sparta and a force of 300 men fight the Persians at Thermopylae in 480 B.C.	52.0	1013	732876	210,614,939	https://m.media-amazon.com/images/M/MV5BNWMxYTZlOTUtZDExMi00YzZmLTkwYTMtZmM2MmRjZmQ3OGY4XkEyXkFqcGdeQXVyMTAwMzUyMzUy._V1_UX67_CR0,0,67,98_AL_.jpg
1010	Match Point	2005	R	124	7.6	At a turning point in his life, a former tennis pro falls for an actress who happens to be dating his friend and soon-to-be brother-in-law.	72.0	499	206294	23,089,926	https://m.media-amazon.com/images/M/MV5BMjRjOTMwMDEtNTY4NS00OWRjLWI4ZWItZDgwYmZhMzlkYzgxXkEyXkFqcGdeQXVyODIxOTg5MTc@._V1_UY98_CR1,0,67,98_AL_.jpg
1011	Watchmen	2009	A	162	7.6	In 1985 where former superheroes exist, the murder of a colleague sends active vigilante Rorschach into his own sprawling investigation, uncovering something that could completely change the course of history as we know it.	56.0	1013	500799	107,509,799	https://m.media-amazon.com/images/M/MV5BY2IzNGNiODgtOWYzOS00OTI0LTgxZTUtOTA5OTQ5YmI3NGUzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
1012	Lord of War	2005	R	122	7.6	An arms dealer confronts the morality of his work as he is being chased by an INTERPOL Agent.	62.0	739	294140	24,149,632	https://m.media-amazon.com/images/M/MV5BMTYzZWE3MDAtZjZkMi00MzhlLTlhZDUtNmI2Zjg3OWVlZWI0XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
1013	Saw	2004	UA	103	7.6	Two strangers awaken in a room with no recollection of how they got there, and soon discover they're pawns in a deadly game perpetrated by a notorious serial killer.	46.0	1017	379020	56,000,369	https://m.media-amazon.com/images/M/MV5BMzQ2ZTBhNmEtZDBmYi00ODU0LTgzZmQtNmMxM2M4NzM1ZjE4XkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_UX67_CR0,0,67,98_AL_.jpg
1014	Synecdoche, New York	2008	R	124	7.6	A theatre director struggles with his work, and the women in his life, as he creates a life-size replica of New York City inside a warehouse as part of his new play.	67.0	1018	83158	3,081,925	https://m.media-amazon.com/images/M/MV5BMjA0MjIyOTI3MF5BMl5BanBnXkFtZTcwODM5NTY5MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
1016	Jeux d'enfants	2003	R	93	7.6	As adults, best friends Julien and Sophie continue the odd game they started as children -- a fearless competition to outdo one another with daring and outrageous stunts. While they often act out to relieve one another's pain, their game might be a way to avoid the fact that they are truly meant for one another.	45.0	1020	67360	548,707	https://m.media-amazon.com/images/M/MV5BNjIwOGJhY2QtMTA5Yi00MDhlLWE5OTgtYmIzZDNlM2UwZjMyXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX67_CR0,0,67,98_AL_.jpg
1017	Un long dimanche de fiançailles	2004	U	133	7.6	Tells the story of a young woman's relentless search for her fiancé, who has disappeared from the trenches of the Somme during World War One.	76.0	180	70925	6,167,817	https://m.media-amazon.com/images/M/MV5BZWI4ZTgwMzktNjk3Yy00OTlhLTg3YTAtMTA1MWVlMWJiOTRiXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UX67_CR0,0,67,98_AL_.jpg
1018	The Station Agent	2003	R	89	7.6	When his only friend dies, a man born with dwarfism moves to rural New Jersey to live a life of solitude, only to meet a chatty hot dog vendor and a woman dealing with her own personal loss.	81.0	303	67370	5,739,376	https://m.media-amazon.com/images/M/MV5BMTUzNDgyMzg3Ml5BMl5BanBnXkFtZTcwMzIxNTAwMQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
1019	21 Grams	2003	UA	124	7.6	A freak accident brings together a critically ill mathematician, a grieving mother, and a born-again ex-con.	70.0	329	224545	16,290,476	https://m.media-amazon.com/images/M/MV5BMjA4MjI2OTM5N15BMl5BanBnXkFtZTcwNDA1NjUzMw@@._V1_UX67_CR0,0,67,98_AL_.jpg
1020	Boksuneun naui geot	2002	R	129	7.6	A recently laid off factory worker kidnaps his former boss' friend's daughter, hoping to use the ransom money to pay for his sister's kidney transplant.	56.0	153	62659	45,289	https://m.media-amazon.com/images/M/MV5BYmNlNDVjMWUtZDZjNS00YTBmLWE3NGUtNDcxMzE0YTQ2ODMxXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
1021	Finding Neverland	2004	U	106	7.6	The story of Sir J.M. Barrie's friendship with a family who inspired him to create Peter Pan.	67.0	1025	198677	51,680,613	https://m.media-amazon.com/images/M/MV5BMTMxNzYzNzUzMV5BMl5BanBnXkFtZTYwNjcwMjE3._V1_UX67_CR0,0,67,98_AL_.jpg
1022	25th Hour	2002	R	135	7.6	Cornered by the DEA, convicted New York drug dealer Montgomery Brogan reevaluates his life in the 24 remaining hours before facing a seven-year jail term.	68.0	488	169708	13,060,843	https://m.media-amazon.com/images/M/MV5BNmE0YjdlYTktMTU4Ni00Mjk2LWI3NWMtM2RjNmFiOTk4YjYxL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR1,0,67,98_AL_.jpg
1023	The Butterfly Effect	2004	U	113	7.6	Evan Treborn suffers blackouts during significant events of his life. As he grows up, he finds a way to remember these lost memories and a supernatural way to alter his life by reading his journal.	30.0	1027	451479	57,938,693	https://m.media-amazon.com/images/M/MV5BODNiZmY2MWUtMjFhMy00ZmM2LTg2MjYtNWY1OTY5NGU2MjdjL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR0,0,67,98_AL_.jpg
1024	28 Days Later...	2002	A	113	7.6	Four weeks after a mysterious, incurable virus spreads throughout the UK, a handful of survivors try to find sanctuary.	73.0	339	376853	45,064,915	https://m.media-amazon.com/images/M/MV5BYTFkM2ViMmQtZmI5NS00MjQ2LWEyN2EtMTI1ZmNlZDU3MTZjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
1025	Batoru rowaiaru	2000	NaN	114	7.6	In the future, the Japanese government captures a class of ninth-grade students and forces them to kill each other under the revolutionary "Battle Royale" act.	81.0	1029	169091	NaN	https://m.media-amazon.com/images/M/MV5BMDc2MGYwYzAtNzE2Yi00YmU3LTkxMDUtODk2YjhiNDM5NDIyXkEyXkFqcGdeQXVyMTEwNDU1MzEy._V1_UX67_CR0,0,67,98_AL_.jpg
1026	The Royal Tenenbaums	2001	A	110	7.6	The eccentric members of a dysfunctional family reluctantly gather under the same roof for various reasons.	76.0	294	266842	52,364,010	https://m.media-amazon.com/images/M/MV5BYmUzODQ5MGItZTZlNy00MDBhLWIxMmItMjg4Y2QyNDFlMWQ2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
1027	Y tu mamá también	2001	A	106	7.6	In Mexico, two teenage boys and an attractive older woman embark on a road trip and learn a thing or two about life, friendship, sex, and each other.	88.0	591	115827	13,622,333	https://m.media-amazon.com/images/M/MV5BNDhjMzc3ZTgtY2Y4MC00Y2U3LWFiMDctZGM3MmM4N2YzNDQ5XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
1028	Harry Potter and the Sorcerer's Stone	2001	U	152	7.6	An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.	64.0	1032	658185	317,575,550	https://m.media-amazon.com/images/M/MV5BNjQ3NWNlNmQtMTE5ZS00MDdmLTlkZjUtZTBlM2UxMGFiMTU3XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX67_CR0,0,67,98_AL_.jpg
1029	The Others	2001	PG-13	101	7.6	A woman who lives in her darkened old family house with her two photosensitive children becomes convinced that the home is haunted.	74.0	457	337651	96,522,687	https://m.media-amazon.com/images/M/MV5BMTAxMDE4Mzc3ODNeQTJeQWpwZ15BbWU4MDY2Mjg4MDcx._V1_UX67_CR0,0,67,98_AL_.jpg
1030	Blow	2001	R	124	7.6	The story of how George Jung, along with the Medellín Cartel headed by Pablo Escobar, established the American cocaine market in the 1970s in the United States.	52.0	1034	240714	52,990,775	https://m.media-amazon.com/images/M/MV5BYjg5ZDkzZWEtZDQ2ZC00Y2ViLThhMzYtMmIxZDYzYTY2Y2Y2XkEyXkFqcGdeQXVyODAwMTU1MTE@._V1_UY98_CR1,0,67,98_AL_.jpg
1031	Enemy at the Gates	2001	A	131	7.6	A Russian and a German sniper play a game of cat-and-mouse during the Battle of Stalingrad.	53.0	918	243729	51,401,758	https://m.media-amazon.com/images/M/MV5BYWFlY2E3ODQtZWNiNi00ZGU4LTkzNWEtZTQ2ZTViMWRhYjIzL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
1032	Minority Report	2002	A	145	7.6	In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.	80.0	92	508417	132,072,926	https://m.media-amazon.com/images/M/MV5BZTI3YzZjZjEtMDdjOC00OWVjLTk0YmYtYzI2MGMwZjFiMzBlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
1033	The Hurricane	1999	R	146	7.6	The story of Rubin 'Hurricane' Carter, a boxer wrongly imprisoned for murder, and the people who aided in his fight to prove his innocence.	74.0	507	91557	50,668,906	https://m.media-amazon.com/images/M/MV5BMTA3OTYxMzg0MDFeQTJeQWpwZ15BbWU4MDY1MjY0MTEx._V1_UX67_CR0,0,67,98_AL_.jpg
1034	American Psycho	2000	A	101	7.6	A wealthy New York City investment banking executive, Patrick Bateman, hides his alternate psychopathic ego from his co-workers and friends as he delves deeper into his violent, hedonistic fantasies.	64.0	1038	490062	15,070,285	https://m.media-amazon.com/images/M/MV5BZTM2ZGJmNjQtN2UyOS00NjcxLWFjMDktMDE2NzMyNTZlZTBiXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
1035	Lola rennt	1998	UA	81	7.6	After a botched money delivery, Lola has 20 minutes to come up with 100,000 Deutschmarks.	77.0	1039	188317	7,267,585	https://m.media-amazon.com/images/M/MV5BMmU5ZjFmYjQtYmNjZC00Yjk4LWI1ZTQtZDJiMjM0YjQyNDU0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
1036	The Thin Red Line	1998	A	170	7.6	Adaptation of James Jones' autobiographical 1962 novel, focusing on the conflict at Guadalcanal during the second World War.	78.0	775	172710	36,400,491	https://m.media-amazon.com/images/M/MV5BYjEzMTM2NjAtNWFmZC00MTVlLTgyMmQtMGQyNTFjZDk5N2NmXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_UX67_CR0,0,67,98_AL_.jpg
1037	Mulan	1998	U	88	7.6	To save her father from death in the army, a young maiden secretly goes in his place and becomes one of China's greatest heroines in the process.	71.0	1041	256906	120,620,254	https://m.media-amazon.com/images/M/MV5BODkxNGQ1NWYtNzg0Ny00Yjg3LThmZTItMjE2YjhmZTQ0ODY5XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
1038	Fear and Loathing in Las Vegas	1998	R	118	7.6	An oddball journalist and his psychopathic lawyer travel to Las Vegas for a series of psychedelic escapades.	41.0	263	259753	10,680,275	https://m.media-amazon.com/images/M/MV5BNjA2ZDY3ZjYtZmNiMC00MDU5LTgxMWEtNzk1YmI3NzdkMTU0XkEyXkFqcGdeQXVyNjQyMjcwNDM@._V1_UX67_CR0,0,67,98_AL_.jpg
1039	Funny Games	1997	A	108	7.6	Two violent young men take a mother, father, and son hostage in their vacation cabin and force them to play sadistic "games" with one another for their own amusement.	69.0	568	65058	NaN	https://m.media-amazon.com/images/M/MV5BMTkyNTAzZDYtNWUzYi00ODVjLTliZjYtNjc2YzJmODZhNTg3XkEyXkFqcGdeQXVyNjUxMDQ0MTg@._V1_UY98_CR6,0,67,98_AL_.jpg
1040	Dark City	1998	A	100	7.6	A man struggles with memories of his past, which include a wife he cannot remember and a nightmarish world no one else ever seems to wake up from.	66.0	1044	187927	14,378,331	https://m.media-amazon.com/images/M/MV5BMGExOGExM2UtNWM5ZS00OWEzLTllNzYtM2NlMTJlYjBlZTJkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
1041	Sleepers	1996	UA	147	7.6	After a prank goes disastrously wrong, a group of boys are sent to a detention center where they are brutalized. Thirteen years later, an unexpected random encounter with a former guard gives them a chance for revenge.	49.0	489	186734	49,100,000	https://m.media-amazon.com/images/M/MV5BMzk1MmI4NzAtOGRiNS00YjY1LTllNmEtZDhiZDM4MjU2NTMxXkEyXkFqcGdeQXVyNjc3MjQzNTI@._V1_UY98_CR1,0,67,98_AL_.jpg
1042	Lost Highway	1997	A	134	7.6	Anonymous videotapes presage a musician's murder conviction, and a gangster's girlfriend leads a mechanic astray.	52.0	361	131101	3,796,699	https://m.media-amazon.com/images/M/MV5BYWUxOWY4NDctMDFmMS00ZTQwLWExMGEtODg0ZWNhOTE5NzZmXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY98_CR0,0,67,98_AL_.jpg
1043	Sense and Sensibility	1995	U	136	7.6	Rich Mr. Dashwood dies, leaving his second wife and her three daughters poor by the rules of inheritance. The two eldest daughters are the title opposites.	84.0	583	102598	43,182,776	https://m.media-amazon.com/images/M/MV5BNzk1MjU3MDQyMl5BMl5BanBnXkFtZTcwNjc1OTM2MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
1044	Die Hard: With a Vengeance	1995	A	128	7.6	John McClane and a Harlem store owner are targeted by German terrorist Simon in New York City, where he plans to rob the Federal Reserve Building.	58.0	256	364420	100,012,499	https://m.media-amazon.com/images/M/MV5BZjI0ZWFiMmQtMjRlZi00ZmFhLWI4NmYtMjQ5YmY0MzIyMzRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
1045	Dead Man	1995	R	121	7.6	On the run after murdering a man, accountant William Blake encounters a strange aboriginal American man named Nobody who prepares him for his journey into the spiritual world.	62.0	752	90442	1,037,847	https://m.media-amazon.com/images/M/MV5BYTJlZmQ1OTAtODQzZi00NGIzLWI1MmEtZGE4NjFlOWRhODIyXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UY98_CR0,0,67,98_AL_.jpg
1046	The Bridges of Madison County	1995	A	135	7.6	Photographer Robert Kincaid wanders into the life of housewife Francesca Johnson for four days in the 1960s.	69.0	252	73172	71,516,617	https://m.media-amazon.com/images/M/MV5BNmRiZDZkN2EtNWI5ZS00ZDg3LTgyNDItMWI5NjVlNmE5ODJiXkEyXkFqcGdeQXVyMjQwMjk0NjI@._V1_UX67_CR0,0,67,98_AL_.jpg
1047	Apollo 13	PG	U	140	7.6	NASA must devise a strategy to return Apollo 13 to Earth safely after the spacecraft undergoes massive internal damage putting the lives of the three astronauts on board in jeopardy.	77.0	244	269197	173,837,933	https://m.media-amazon.com/images/M/MV5BNjEzYjJmNzgtNDkwNy00MTQ4LTlmMWMtNzA4YjE2NjI0ZDg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg
1048	Trois couleurs: Blanc	1994	U	92	7.6	After his wife divorces him, a Polish immigrant plots to get even with her.	88.0	345	64390	1,464,625	https://m.media-amazon.com/images/M/MV5BNTliYTI1YTctMTE0Mi00NDM0LThjZDgtYmY3NGNiODBjZjAwXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UX67_CR0,0,67,98_AL_.jpg
1049	Falling Down	1993	R	113	7.6	An ordinary man frustrated with the various flaws he sees in society begins to psychotically and violently lash out against them.	56.0	1053	171640	40,903,593	https://m.media-amazon.com/images/M/MV5BYjcxMzM3OWMtNmM3Yy00YzBkLTkxMmQtMDk4MmM3Y2Y4MDliL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
1050	Dazed and Confused	1993	U	102	7.6	The adventures of high school and junior high students on the last day of school in May 1976.	78.0	322	165465	7,993,039	https://m.media-amazon.com/images/M/MV5BMTM5MDY5MDQyOV5BMl5BanBnXkFtZTgwMzM3NzMxMDE@._V1_UX67_CR0,0,67,98_AL_.jpg
1051	My Cousin Vinny	1992	UA	120	7.6	Two New Yorkers accused of murder in rural Alabama while on their way back to college call in the help of one of their cousins, a loudmouth lawyer with no trial experience.	68.0	1055	107325	52,929,168	https://m.media-amazon.com/images/M/MV5BMTQxNDYzMTg1M15BMl5BanBnXkFtZTgwNzk4MDgxMTE@._V1_UX67_CR0,0,67,98_AL_.jpg
1052	Omohide poro poro	1991	U	118	7.6	A twenty-seven-year-old office worker travels to the countryside while reminiscing about her childhood in Tokyo.	90.0	131	27071	453,243	https://m.media-amazon.com/images/M/MV5BMTY5NjI2MjQxMl5BMl5BanBnXkFtZTgwMDA2MzM2NzE@._V1_UY98_CR0,0,67,98_AL_.jpg
1053	Delicatessen	1991	R	99	7.6	Post-apocalyptic surrealist black comedy about the landlord of an apartment building who occasionally prepares a delicacy for his odd tenants.	66.0	1057	80487	1,794,187	https://m.media-amazon.com/images/M/MV5BNjg5ZDM0MTEtYTZmNC00NDJiLWI5MTktYzk4N2QxY2IxZTc2L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR3,0,67,98_AL_.jpg
1054	Home Alone	1990	U	103	7.6	An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.	63.0	1032	488817	285,761,243	https://m.media-amazon.com/images/M/MV5BMzFkM2YwOTQtYzk2Mi00N2VlLWE3NTItN2YwNDg1YmY0ZDNmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg
1055	The Godfather: Part III	1990	A	162	7.6	Follows Michael Corleone, now in his 60s, as he seeks to free his family from crime and find a suitable successor to his empire.	60.0	86	359809	66,666,062	https://m.media-amazon.com/images/M/MV5BNWFlYWY2YjYtNjdhNi00MzVlLTg2MTMtMWExNzg4NmM5NmEzXkEyXkFqcGdeQXVyMDk5Mzc5MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
1056	When Harry Met Sally...	1989	UA	95	7.6	Harry and Sally have known each other for years, and are very good friends, but they fear sex would ruin the friendship.	76.0	352	195663	92,823,600	https://m.media-amazon.com/images/M/MV5BMjE0ODEwNjM2NF5BMl5BanBnXkFtZTcwMjU2Mzg3NA@@._V1_UX67_CR0,0,67,98_AL_.jpg
1057	The Little Mermaid	1989	U	83	7.6	A mermaid princess makes a Faustian bargain in an attempt to become human and win a prince's love.	88.0	484	237696	111,543,479	https://m.media-amazon.com/images/M/MV5BN2JlZTBhYTEtZDE3OC00NTA3LTk5NTQtNjg5M2RjODllM2M0XkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_UX67_CR0,0,67,98_AL_.jpg
1058	The Naked Gun: From the Files of Police Squad!	1988	U	85	7.6	Incompetent police Detective Frank Drebin must foil an attempt to assassinate Queen Elizabeth II.	76.0	1062	152871	78,756,177	https://m.media-amazon.com/images/M/MV5BODk1ZWM4ZjItMjFhZi00MDMxLTgxNmYtODFhNWZlZTkwM2UwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX67_CR0,0,67,98_AL_.jpg
1059	Planes, Trains & Automobiles	1987	U	93	7.6	A man must struggle to travel home for Thanksgiving with a lovable oaf of a shower curtain ring salesman as his only companion.	72.0	764	124773	49,530,280	https://m.media-amazon.com/images/M/MV5BM2I1ZWNkYjEtYWY3ZS00MmMwLWI5OTEtNWNkZjNiYjIwNzY0XkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
1060	Lethal Weapon	1987	A	109	7.6	Two newly paired cops who are complete opposites must put aside their differences in order to catch a gang of drug smugglers.	68.0	766	236894	65,207,127	https://m.media-amazon.com/images/M/MV5BZTllNWNlZjctMWQwMS00ZDc3LTg5ZjMtNzhmNzhjMmVhYTFlXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX67_CR0,0,67,98_AL_.jpg
1061	Blood Simple	1984	A	99	7.6	The owner of a seedy small-town Texas bar discovers that one of his employees is having an affair with his wife. A chaotic chain of misunderstandings, lies and mischief ensues after he devises a plot to have them murdered.	82.0	337	87745	2,150,000	https://m.media-amazon.com/images/M/MV5BZmI5YzM1MjItMzFmNy00NGFkLThlMDUtZjZmYTZkM2QxMjU3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg
1062	On Golden Pond	1981	UA	109	7.6	Norman is a curmudgeon with an estranged relationship with his daughter Chelsea. At Golden Pond, he and his wife nevertheless agree to care for Billy, the son of Chelsea's new boyfriend, and a most unexpected relationship blooms.	68.0	1066	27650	119,285,432	https://m.media-amazon.com/images/M/MV5BNWQ4MGZlZmYtZjY0MS00N2JhLWE0NmMtOTMwMTk4NDQ4NjE2XkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX67_CR0,0,67,98_AL_.jpg
1063	Mad Max 2	1981	A	96	7.6	In the post-apocalyptic Australian wasteland, a cynical drifter agrees to help a small, gasoline-rich community escape a horde of bandits.	77.0	308	166588	12,465,371	https://m.media-amazon.com/images/M/MV5BN2VlNjNhZWQtMTY2OC00Y2E1LWJkNGUtMDU4M2ViNzliMGYwXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
1064	The Warriors	1979	UA	92	7.6	In the near future, a charismatic leader summons the street gangs of New York City in a bid to take it over. When he is killed, The Warriors are falsely blamed and now must fight their way home while every other gang is hunting them down.	65.0	1068	93878	22,490,039	https://m.media-amazon.com/images/M/MV5BYTU2MWRiMTMtYzAzZi00NGYzLTlkMDEtNWQ3MzZlNTJlNzZkL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
1065	The Muppet Movie	1979	U	95	7.6	Kermit and his newfound friends trek across America to find success in Hollywood, but a frog legs merchant is after Kermit.	74.0	1069	32802	76,657,000	https://m.media-amazon.com/images/M/MV5BMGQ0OGM5YjItYzYyMi00NmVmLWI3ODMtMTY2NGRkZmI5MWU2XkEyXkFqcGdeQXVyMzI0NDc4ODY@._V1_UX67_CR0,0,67,98_AL_.jpg
1066	Escape from Alcatraz	1979	A	112	7.6	Alcatraz is the most secure prison of its time. It is believed that no one can ever escape from it, until three daring men make a possible successful attempt at escaping from one of the most infamous prisons in the world.	76.0	938	121731	43,000,000	https://m.media-amazon.com/images/M/MV5BNDQ3MzNjMDItZjE0ZS00ZTYxLTgxNTAtM2I4YjZjNWFjYjJlL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
1067	Watership Down	1978	U	91	7.6	Hoping to escape destruction by human developers and save their community, a colony of rabbits, led by Hazel and Fiver, seek out a safe place to set up a new warren.	64.0	1071	33656	NaN	https://m.media-amazon.com/images/M/MV5BMzZiODUwNzktNzBiZi00MDc4LThkMGMtZmE3MTE0M2E1MTM3L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX67_CR0,0,67,98_AL_.jpg
1068	Midnight Express	1978	A	121	7.6	Billy Hayes, an American college student, is caught smuggling drugs out of Turkey and thrown into prison.	59.0	357	73662	35,000,000	https://m.media-amazon.com/images/M/MV5BNDU1MjQ0YWMtMWQ2MS00NTdmLTg1MGItNDA5NTNkNTRhOTIyXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX67_CR0,0,67,98_AL_.jpg
1069	Close Encounters of the Third Kind	1977	U	138	7.6	Roy Neary, an electric lineman, watches how his quiet and ordinary daily life turns upside down after a close encounter with a UFO.	90.0	92	184966	132,088,635	https://m.media-amazon.com/images/M/MV5BMjM1NjE5NjQxN15BMl5BanBnXkFtZTgwMjYzMzQxMDE@._V1_UX67_CR0,0,67,98_AL_.jpg
1070	The Long Goodbye	1973	A	112	7.6	Private investigator Philip Marlowe helps a friend out of a jam, but in doing so gets implicated in his wife's murder.	87.0	902	26337	959,000	https://m.media-amazon.com/images/M/MV5BYzZhODNiOWYtMmNkNS00OTFhLTkzYzktYTQ4ZmNmZWMyN2ZiL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
1071	Giù la testa	1971	PG	157	7.6	A low-life bandit and an I.R.A. explosives expert rebel against the government and become heroes of the Mexican Revolution.	77.0	97	30144	696,690	https://m.media-amazon.com/images/M/MV5BYjRmY2VjN2ItMzBmYy00YTRjLWFiMTgtNGZhNWJjMjk3YjZjXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
1072	Kelly's Heroes	1970	GP	144	7.6	A group of U.S. soldiers sneaks across enemy lines to get their hands on a secret stash of Nazi treasure.	50.0	939	45338	1,378,435	https://m.media-amazon.com/images/M/MV5BMzAyNDUwYzUtN2NlMC00ODliLWExMjgtMGMzNmYzZmUwYTg1XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
1073	The Jungle Book	1967	U	78	7.6	Bagheera the Panther and Baloo the Bear have a difficult time trying to convince a boy to leave the jungle for human civilization.	65.0	1077	166409	141,843,612	https://m.media-amazon.com/images/M/MV5BMjAwMTExODExNl5BMl5BanBnXkFtZTgwMjM2MDgyMTE@._V1_UX67_CR0,0,67,98_AL_.jpg
1074	Blowup	1966	A	111	7.6	A fashion photographer unknowingly captures a death on film after following two lovers in a park.	82.0	635	56513	NaN	https://m.media-amazon.com/images/M/MV5BYTE4YWU0NjAtMjNiYi00MTNiLTgwYzctZjk0YjY5NGVhNWQwXkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_UY98_CR0,0,67,98_AL_.jpg
1075	A Hard Day's Night	1964	U	87	7.6	Over two "typical" days in the life of The Beatles, the boys struggle to keep themselves and Sir Paul McCartney's mischievous grandfather in check while preparing for a live television performance.	96.0	1079	40351	13,780,024	https://m.media-amazon.com/images/M/MV5BZjQyMGUwNzAtNTc2MC00Y2FjLThlM2ItZGRjNzM0OWVmZGYyXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
1076	Breakfast at Tiffany's	1961	A	115	7.6	A young New York socialite becomes interested in a young man who has moved into her apartment building, but her past threatens to get in the way.	76.0	1080	166544	NaN	https://m.media-amazon.com/images/M/MV5BNGEwMTRmZTQtMDY4Ni00MTliLTk5ZmMtOWMxYWMyMTllMDg0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
1078	From Here to Eternity	1953	Passed	118	7.6	In Hawaii in 1941, a private is cruelly punished for not boxing on his unit's team, while his captain's wife and second-in-command are falling in love.	85.0	640	43374	30,500,000	https://m.media-amazon.com/images/M/MV5BM2U3YzkxNGMtYWE0YS00ODk0LTk1ZGEtNjk3ZTE0MTk4MzJjXkEyXkFqcGdeQXVyNDk0MDg4NDk@._V1_UX67_CR0,0,67,98_AL_.jpg
1079	Lifeboat	1944	NaN	97	7.6	Several survivors of a torpedoed merchant ship in World War II find themselves in the same lifeboat with one of the crew members of the U-boat that sank their ship.	78.0	134	26471	NaN	https://m.media-amazon.com/images/M/MV5BZTBmMjUyMjItYTM4ZS00MjAwLWEyOGYtYjMyZTUxN2I3OTMxXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg
1080	The 39 Steps	1935	NaN	86	7.6	A man in London tries to help a counter-espionage Agent. But when the Agent is killed, and the man stands accused, he must go on the run to save himself and stop a spy ring which is trying to steal top secret information.	93.0	134	51853	NaN	https://m.media-amazon.com/images/M/MV5BMTY5ODAzMTcwOF5BMl5BanBnXkFtZTcwMzYxNDYyNA@@._V1_UX67_CR0,0,67,98_AL_.jpg
\.


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 216
-- Name: actors_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_actor_id_seq', 4320, true);


--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 209
-- Name: directors_director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.directors_director_id_seq', 1084, true);


--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 213
-- Name: genres_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_genre_id_seq', 2725, true);


--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 211
-- Name: movies_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_movie_id_seq', 1080, true);


--
-- TOC entry 3200 (class 2606 OID 17898)
-- Name: actors actors_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_name_key UNIQUE (name);


--
-- TOC entry 3202 (class 2606 OID 17896)
-- Name: actors actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (actor_id);


--
-- TOC entry 3188 (class 2606 OID 17854)
-- Name: directors directors_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_name_key UNIQUE (name);


--
-- TOC entry 3190 (class 2606 OID 17852)
-- Name: directors directors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (director_id);


--
-- TOC entry 3194 (class 2606 OID 17875)
-- Name: genres genres_genre_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_genre_name_key UNIQUE (genre_name);


--
-- TOC entry 3196 (class 2606 OID 17873)
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre_id);


--
-- TOC entry 3204 (class 2606 OID 17903)
-- Name: movie_actors movie_actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_actors
    ADD CONSTRAINT movie_actors_pkey PRIMARY KEY (movie_id, actor_id);


--
-- TOC entry 3198 (class 2606 OID 17880)
-- Name: movie_genres movie_genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_genres
    ADD CONSTRAINT movie_genres_pkey PRIMARY KEY (movie_id, genre_id);


--
-- TOC entry 3192 (class 2606 OID 17862)
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (movie_id);


--
-- TOC entry 3209 (class 2606 OID 17909)
-- Name: movie_actors movie_actors_actor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_actors
    ADD CONSTRAINT movie_actors_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES public.actors(actor_id);


--
-- TOC entry 3208 (class 2606 OID 17904)
-- Name: movie_actors movie_actors_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_actors
    ADD CONSTRAINT movie_actors_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- TOC entry 3207 (class 2606 OID 17886)
-- Name: movie_genres movie_genres_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_genres
    ADD CONSTRAINT movie_genres_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genres(genre_id);


--
-- TOC entry 3206 (class 2606 OID 17881)
-- Name: movie_genres movie_genres_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_genres
    ADD CONSTRAINT movie_genres_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- TOC entry 3205 (class 2606 OID 17863)
-- Name: movies movies_director_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_director_id_fkey FOREIGN KEY (director_id) REFERENCES public.directors(director_id);


-- Completed on 2026-04-07 17:51:43

--
-- PostgreSQL database dump complete
--

