--
-- PostgreSQL database dump
--

-- Dumped from database version 13.20
-- Dumped by pg_dump version 13.20

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

DROP TABLE public.populationttrend;
DROP TABLE public.populationstatus;
DROP TABLE public.countries;
DROP TABLE public.continents;
DROP TABLE public.books_authors;
DROP TABLE public.books;
DROP TABLE public.authors;
DROP TABLE public.animals_countries;
DROP TABLE public.animals_continents;
DROP TABLE public.animals_concern;
DROP TABLE public.animals;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: animals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.animals (
    id integer NOT NULL,
    animal_name text,
    animal_species text,
    animal_lifespan text
);


--
-- Name: animals_concern; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.animals_concern (
    animal_id integer,
    trend_id integer,
    status_id integer
);


--
-- Name: animals_continents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.animals_continents (
    animal_id integer,
    continent_id integer
);


--
-- Name: animals_countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.animals_countries (
    animal_id integer,
    country_id integer
);


--
-- Name: authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    surname text,
    given_name text,
    birth_year integer,
    death_year integer
);


--
-- Name: books; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.books (
    id integer NOT NULL,
    title text,
    publication_year integer
);


--
-- Name: books_authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.books_authors (
    book_id integer,
    author_id integer
);


--
-- Name: continents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.continents (
    id integer NOT NULL,
    continent_name text
);


--
-- Name: countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    country_name text
);


--
-- Name: populationstatus; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.populationstatus (
    id integer NOT NULL,
    status text
);


--
-- Name: populationttrend; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.populationttrend (
    id integer NOT NULL,
    trend text
);


--
-- Data for Name: animals; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.animals (id, animal_name, animal_species, animal_lifespan) FROM stdin;
1	Grey Wolf	Canis lupus	10-20 yrs
2	Tiger	Panthera tigris	10-15 yrs
3	Brown Bear	Ursus arctos	20-50 yrs
4	Blue Whale	Balaenoptera musculus	80-90 yrs
5	Giant Panda	Ailuropoda melanoleuca	20-30 yrs
6	Lion	Panthera leo	12-25 yrs
7	Koala	Phascolarctos cinereus	15 yrs
8	Cougar	Puma concolor	10-20 yrs
9	Quokka	Setonix brachyurus	5-10 yrs
10	Jaguar	Panthera onca	11-20 yrs
11	Raccoon	Procyon lotor	2-20 yrs
12	Cheetah	Acinonyx jubatus	10-20 yrs
13	Platypus	Ornithorhynchus anatinus	12-20 yrs
14	Coyote	Canis latrans	10-18 yrs
15	Moose	Alces alces	15-25 years
16	Bobcat	Lynx rufus	12-25 yrs
17	Leopard	Panthera pardus	10-20 yrs
18	Common Hippo	Hippopotamus amphibius	40-50 yrs
19	Wolverine	Gulo gulo	5-17 yrs
20	Red Panda	Ailurus fulgens	8-14 yrs
21	Capybara	Hydrochoerus hydrochaeris	6-12 yrs
22	Tasmanian Devil	Sarcophilus harrisii	5-8 yrs
23	American Bison	Bison bison	15-40 yrs
24	Bonobo	Pan paniscus	35-50 yrs
25	Honey Badger	Mellivora capensis	7-26 yrs
26	Red Fox	Vulpes vulpes	5-15 yrs
27	Groundhog	Marmota monax	3-10 yrs
28	Snow Leopard	Uncia uncia	15-21 yrs
29	Raccoon Dog	Nyctereutes procyonoides	6-11 yrs
30	American Black Bear	Ursus americanus	10-30 yrs
31	Meerkat	Suricata suricatta	5-15 yrs
32	African Wild Dog	Lycaon pictus	10-11 yrs
33	Reindeer	Rangifer tarandus	15-20 yrs
34	Elk	Cervus canadensis	8-20 yrs
35	Ocelot	Leopardus pardalis	7-20 yrs
36	Coypu	Myocastor coypus	6-10 yrs
37	Sugar Glider	Petaurus breviceps	4-14 yrs
38	Common Chimpanzee	Pan troglodytes	50-60 yrs
39	Serval	Leptailurus serval	
40	Bush Rat	Rattus fuscipes	1-5 yrs
41	Okapi	Okapia johnstoni	20-33 yrs
42	Humpback Whale	Megaptera novaeangliae	100 yrs
43	Arctic Fox	Vulpes lagopus	3-14 yrs
44	Fennec Fox	Vulpes zerda	10-12 yrs
45	Muskart	Ondatra zibethicus	3-10 yrs
46	Ermine	Mustela erminea	1-12.5 yrs
47	Pronghorn	Antilocapra americana	10-12 yrs
48	White-Tailed Deer	Odocoileus virginianus	6-20 yrs
49	Sea Otter	Enhydra lutris	19-23 yrs
50	Water Buffalo	Bubalus bubalis	25-29 yrs
51	Sable	Martes zibellina	8-18 yrs
52	Mandrill	Mandrillus sphinx	25-40 yrs
53	Spotted Hyena	Crocuta crocuta	20-40 yrs
54	Fossa	Cryptoprocta ferox	15-20 yrs
55	White Rhinoceros	Ceratotherium simum	45-50 yrs
56	Vaquita	Phocoena sinus	20 yrs
57	Binturong	Arctictis binturong	18-25 yrs
58	Gaur	Bos gaurus	26 yrs
59	Asian Elephant	Elephas maximus	70 yrs
60	Dugong	Dugong dugon	70 yrs
61	Asian Palm Civet	Paradoxurus hermaphroditus	15-24 yrs
62	Naked Mole-Rat	Heterocephalus glaber	32 yrs
63	Red Deer	Cervus elaphus	20 yrs
64	Sloth Bear	Melursus ursinus	40 yrs
65	House Mouse	Mus musculus	12 mos-6 yrs
66	Giant Golden-Crowned Flying Fox	Acerodon jubatus	12-23 yrs
67	Muskox	Ovibos moschatus	12-20 yrs
68	Brown Rat	Rattus norvegicus	2-4 yrs
69	African Buffalo	Syncerus caffer	11-29 yrs
70	Rusty-Spotted Cat	Prionailurus rubiginosus	18 yrs
71	Dhole	Cuon alpinus	16 yrs
72	Clouded Leopard	Neofelis nebulosa	11-17 yrs
73	Sun Bear	Helarctos malayanus	30 yrs
74	Pallas's Cat	Otocolobus manul	8-11.5 yrs
75	African Bush Elephant	Loxodonta africana	60-75 yrs
76	Eastern Gray Squirrel	Sciurus carolinensis	12.5-20 yrs
77	Indian Rhinoceros	Rhinoceros unicornis	40-50 yrs
78	Black Rhinoceros	Diceros bicornis	30-49 yrs
79	Markhor	Capra falconeri	10-13 yrs
80	Eurasian Lynx	Lynx lynx	13-25 yrs
81	Common Warthog	Phacochoerus africanus	12-18 yrs
82	Canadian Lynx	Lynx canadensis	15 yrs
83	Aye-Aye	Daubentonia madagascariensis	23 yrs
84	Impala	Aepyceros melampus	15 yrs
85	Pine Marten	Martes martes	10-17 yrs
86	American Badger	Taxidea taxus	9-15 yrs
87	Nilgai	Boselaphus tragocamelus	10-21 yrs
88	Vicuna	Vicugna vicugna	20-25 yrs
89	Blackbuck	Antilope cervicapra	10-15 yrs
90	Wisent	Bison bonasus	14-28 yrs
91	Kinkajou	Potos flavus	20-40 yrs
92	Amazon River Dolphin	Inia geoffrensis	30 yrs
93	Red Squirrel	Sciurus vulgaris	5-10 yrs
94	North American River Otter	Lontra canadensis	14-25 yrs
95	Bowhead Whale	Balaena mysticetus	100-200 yrs
96	Virginia Opossum	Didelphis virginiana	2-4 yrs
97	Black-Footed Cat	Felis nigripes	10-12 yrs
98	Mule Deer	Odocoileus hemionus	9-22 yrs
99	American Mink	Neovison vison	10 yrs
100	Jaguarundi	Puma yagouaroundi	15 yrs
101	Bighorn Sheep	Ovis canadensis	9-14 yrs
102	Spectacled Bear	Tremarctos ornatus	20-36 yrs
103	Guanaco	Lama guanicoe	20-25 yrs
104	Mountain Goat	Oreamnos americanus	12-20 yrs
105	Black Rat	Rattus rattus	1-4 yrs
106	Striped Hyena	Hyaena hyaena	10-25 yrs
107	Asiatic Black Bear	Ursus thibetanus	25 yrs
108	Przewalski's Horse	Equus ferus	20-25 yrs
109	Chamois	Rupicapra rupicapra	15-22 yrs
110	Roe Deer	Capreolus capreolus	10-12 yrs
111	Springbok	Antidorcas marsupialis	10 yrs
112	Sumatran Rhinoceros	Dicerorhinus sumatrensis	35-40 yrs
113	Saiga Antelope	Saiga tatarica	10-12 yrs
114	Aardwolf	Proteles cristata	8-20 yrs
115	Indian Giant Squirrel	Ratufa indica	20 yrs
116	Red Kangaroo	Macropus rufus	16-23 yrs
117	Gray Fox	Urocyon cinereoargenteus	6-8 yrs
118	Eastern Fox Squirrel	Sciurus niger	13-18 yrs
119	European Badger	Meles meles	6-16 yrs
120	Fin Whale	Balaenoptera physalus	80-90 yrs
121	Least Weasel	Mustela nivalis	1-10 yrs
122	American Marten	Martes americana	12-17 yrs
123	Leopard Cat	Prionailurus bengalensis	4-20 yrs
124	Wildcat	Felis silvestris	15 years
125	Proboscis Monkey	Nasalis larvatus	13-23 yrs
126	Giant Otter	Pteronura brasiliensis	8-19 yrs
127	Japanese Macaque	Macaca fuscata	6.3-32 yrs
128	Common Brushtail Possum	Trichosurus vulpecula	13-15 yrs
129	European Polecat	Mustela putorius	6-14 yrs
130	European Hare	Lepus europaeus	12 yrs
131	Gray Whale	Eschrichtius robustus	80 yrs
132	Sika Deer	Cervus nippon	12-25 yrs
133	Iberian Lynx	Lynx pardinus	13 yrs
134	Javan Rhinoceros	Rhinoceros sondaicus	30-45 yrs
135	Alpine Ibex	Capra ibex	10-21 yrs
136	Golden Jackal	Canis aureus	8-16 yrs
137	Ring-Tailed Lemur	Lemur catta	15-33 yrs
138	Bornean Orangutan	Pongo pygmaeus	45-60 yrs
139	American Beaver	Castor canadensis	10-20 yrs
140	Black-Footed Ferret	Mustela nigripes	3-9 yrs
141	Baiji	Lipotes vexillifer	24 yrs
142	Giant Anteater	Myrmecophaga tridactyla	25 yrs
143	European Rabbit	Oryctolagus cuniculus	9 yrs
144	Jungle Cat	Felis chaus	15 yrs
145	Pygmy Hippo	Choeropsis liberiensis	30-50 yrs
146	Water Deer	Hydropotes inermis	12 yrs
147	Ethiopian Wolf	Canis simensis	8-10 yrs
148	American Red Squirrel	Tamiasciurus hudsonicus	5-10 yrs
149	Fishing Cat	Prionailurus viverrinus	12 yrs
150	Rock Hyrax	Procavia capensis	12 yrs
151	Vervet Monkey	Chlorocebus pygerythrus	12-24 yrs
152	Arabian Oryx	Oryx leucoryx	20 yrs
153	Asian Wild Water Buffalo	Bubalus arnee	12-25 yrs
154	South Asian River Dolphin	Platanista gangetica	28 yrs
155	Margay	Leopardus wiedii	10-20 yrs
156	Plains Zebra	Equus quagga	9-40 yrs
157	Long-Tailed Macaque	Macaca fascicularis	15-30 yrs
158	Sambar	Rusa unicolor	20-26 yrs
159	Western Gorilla	Gorilla gorilla	35-50 yrs
160	Syrian Hamster	Mesocricetus auratus	2-4 yrs
161	Nine-Banded Armadillo	Dasypus novemcinctus	7-8 years
162	Numbat	Myrmecobius fasciatus	5-6 yrs
163	Onager	Equus hemionus	14-26 yrs
164	Saola	Pseudoryx nghetinhensis	8-10 yrs
165	North American Porcupine	Erethizon dorsatum	18 yrs
166	Bush Dog	Speothos venaticus	10 yrs
167	Sumatran Orangutan	Pongo abelii	35-50 yrs
168	Wild Bactrian Camel	Camelus ferus	40 yrs
169	Common Eland	Taurotragus oryx	15-25 yrs
170	Eastern Gorilla	Gorilla beringei	30-60 yrs
171	Large Flying Fox	Pteropus vampyrus	15-30 yrs
172	Star-Nosed Mole	Condylura cristata	2-4 yrs
173	Lion-Tailed Macaque	Macaca silenus	20-38 yrs
174	Greater Kudu	Tragelaphus strepsiceros	7-23 yrs
175	Golden Snub-Nosed Monkey	Rhinopithecus roxellana	26 yrs
176	Harp Seal	Pagophilus groenlandicus	35 yrs
177	Black-Tailed Jackrabbit	Lepus californicus	5-6 yrs
178	West Indian Manatee	Trichechus manatus	28-60 yrs
179	Pygmy Marmoset	Cebuella pygmaea	11-18.6 yrs
180	Gemsbok	Oryx gazella	18-22 yrs
181	Malayan Tapir	Tapirus indicus	30-36.5 yrs
182	Snowshoe Hare	Lepus americanus	1-5 yrs
183	Barbary Macaque	Macaca sylvanus	30 yrs
184	Long-Tailed Weasel	Mustela frenata	8 yrs
185	African Wild Ass	Equus africanus	25-50 yrs
186	Nilgiri Tahr	Nilgiritragus hylocrius	3-9 yrs
187	Takin	Budorcas taxicolor	16-20 yrs
188	Indian Flying Fox	Pteropus giganteus	15-31.5 yrs
189	Blue Wildebeest	Connochaetes taurinus	20-24.3 yrs
190	Gelada	Theropithecus gelada	30 yrs
191	Striped Skunk	Mephitis mephitis	1-10 yrs
192	California Sea Lion	Zalophus californianus	17-30 yrs
193	Philippine Tarsier	Carlito syrichta	12-20 yrs
194	Irrawaddy Dolphin	Orcaella brevirostris	30 yrs
195	Baikal Seal	Pusa sibirica	50-56 yrs
196	Wild Yak	Bos mutus	25 yrs
197	European Hedgehog	Erinaceus europaeus	6-10 yrs
198	Little Brown Bat	Myotis lucifugus	6-30 yrs
199	Tapanuli Orangutan	Pongo tapanuliensis	30 yrs
200	Siamang Gibbon	Symphalangus syndactylus	25-30 yrs
201	Indian Pangolin	Manis crassicaudata	13 yrs
202	Common Vampire Bat	Desmodus rotundus	9-12 yrs
203	European Otter	Lutra lutra	22 yrs
204	Mexican Free-Tailed Bat	Tadarida brasiliensis	
205	Black-Backed Jackal	Canis mesomelas	8-14 yrs
206	Gray Seal	Halichoerus grypus	25-35 yrs
207	Banteng	Bos javanicus	16-26 yrs
208	Gilbert's Potoroo	Potorous gilbertii	7-12 yrs
209	Eastern Grey Kangaroo	Macropus giganteus	7-20 yrs
210	Eurasian Beaver	Castor fiber	10-25 yrs
211	Grévy's Zebra	Equus grevyi	12-30 yrs
212	Sei Whale	Balaenoptera borealis	50-75 yrs
213	Kit Fox	Vulpes macrotis	5.5-12 yrs
214	Yellow-Bellied Marmot	Marmota flaviventris	13-15 yrs
215	Brown Hyena	Hyaena brunnea	12-13 yrs
216	Kitti's hog-nosed bat	Craseonycteris thonglongyai	
217	Asian Golden Cat	Catopuma temminckii	20 yrs
218	Southern Right Whale	Eubalaena australis	50-100 yrs
219	Giant Armadillo	Priodontes maximus	12-15 yrs
220	Thomson's Gazelle	Eudorcas thomsonii	10-20 yrs
221	Addax	Addax nasomaculatus	19-25 yrs
222	Patagonian Mara	Dolichotis patagonum	7-10 yrs
223	Golden Lion Tamarin	Leontopithecus rosalia	15-25 yrs
224	Giraffe	Giraffa camelopardalis	28 yrs
225	Tamaraw	Bubalus mindorensis	20-25 yrs
226	Elephant Seal	Genus Mirounga	22 yrs
227	Sable Antelope	Hippotragus niger	17-19 yrs
228	Short-Beaked Echidna	Tachyglossus aculeatus	30-50 yrs
229	Hamadryas Baboon	Papio hamadryas	37 yrs
230	Thinhorn Sheep	Ovis dalli	12-20 yrs
231	White-Nosed Coati	Nasua narica	14 yrs
232	Chacma Baboon	Papio ursinus	40 yrs
233	Bat-Eared Fox	Otocyon megalotis	6-13 yrs
234	Mediterranean Monk Seal	Monachus monachus	20-45 yrs
235	Polynesian Rat	Rattus exulans	12-15 mos
236	Tayra	Eira barbara	18 yrs
237	South American Coati	Nasua nasua	7-14 yrs
238	Island Fox	Urocyon littoralis	4-8 yrs
239	Sunda Clouded Leopard	Neofelis diardi	13 yrs
240	Nyala	Tragelaphus angasii	16-19 yrs
241	Grey-Headed Flying Fox	Pteropus poliocephalus	15-23 yrs
242	Steller Sea Lion	Eumetopias jubatus	20-30 yrs
243	Giant Pangolin	Smutsia gigantea	20 yrs
244	Northern Flying Squirrel	Glaucomys sabrinus	4-13 yrs
245	Oriental Small-Clawed Otter	Aonyx cinerea	11-16 yrs
246	European Mink	Mustela lutreola	6-12 yrs
247	Waterbuck	Kobus ellipsiprymnus	18-30 yrs
248	Barbary Sheep	Ammotragus lervia	10-20 yrs
249	Wild Goat	Capra aegagrus	12-22
250	Hartebeest	Alcelaphus buselaphus	12-15 yrs
251	Wood Mouse	Apodemus sylvaticus	1-4 yrs
252	Sooty Mangabey	Cercocebus atys	18-26 yrs
253	Himalayan Tahr	Hemitragus jemlahicus	14-22 yrs
254	Gerenuk	Litocranius walleri	8-13 yrs
255	Beech Marten	Martes foina	3-18 yrs
256	Gambian Pouched Rat	Cricetomys gambianus	2-7 yrs
257	Thomasomys ucucha	Thomasomys ucucha	
258	Klipspringer	Oreotragus oreotragus	15-17 yrs
259	Giant Eland	Taurotragus derbianus	20-25 yrs
260	Indian Gray Mongoose	Herpestes edwardsii	7-11 yrs
261	Brazilian Tapir	Tapirus terrestris	30-35 yrs
262	Swift Fox	Vulpes velox	3-14 yrs
263	Tibetan Antelope	Pantholops hodgsonii	8-10 yrs
264	Chinkara	Gazella bennettii	12-15 yrs
265	Giant Forest Hog	Hylochoerus meinertzhageni	5-18 yrs
266	Eastern Chipmunk	Tamias striatus	2-8 yrs
267	Collared Peccary	Pecari tajacu	10-30 yrs
268	Common Genet	Genetta genetta	8-20 yrs
269	Argali	Ovis ammon	10-13 yrs
270	Mountain Zebra	Equus zebra	20-30 yrs
271	American Pika	Ochotona princeps	3-7 yrs
272	Mountain Beaver	Aplodontia rufa	6-10 yrs
273	Swamp Rabbit	Sylvilagus aquaticus	1.8-9 yrs
274	Andean Mountain Cat	Leopardus jacobita	16 yrs
275	European Water Vole	Arvicola amphibius	5-29 mos
276	Olive Baboon	Papio anubis	25-30 yrs
277	Nubian Ibex	Capra nubiana	10-17 yrs
278	Amazonian Manatee	Trichechus inunguis	12.5-30 yrs
279	Tiger Quoll	Dasyurus maculatus	2-5 yrs
280	Kodkod	Leopardus guigna	11 yrs
281	Southern Pig-Tailed Macaque	Macaca nemestrina	26-35 yrs
282	Black-Tailed Prairie Dog	Cynomys ludovicianus	5-8.5 yrs
283	Water Opossum	Chironectes minimus	1-3 yrs
284	Southern Flying Squirrel	Glaucomys volans	5-10 yrs
285	Oncilla	Leopardus tigrinus	17 yrs
286	Chinese Pangolin	Manis pentadactyla	20 yrs
287	Indri	Indri indri	15-22 yrs
288	Yellow-Throated Marten	Martes flavigula	16 yrs
289	Olinguito	Bassaricyon neblina	20-25 yrs
290	Pygmy three-toed sloth	Bradypus pygmaeus	
291	Crab-Eating Fox	Cerdocyon thous	11 yrs
292	Urial	Ovis orientalis	8-12 yrs
293	Emperor Tamarin	Saguinus imperator	20 yrs
294	Bay Cat	Catopuma badia	10-17 yrs
295	Green Monkey	Chlorocebus sabaeus	17-30 yrs
296	Marbled Cat	Pardofelis marmorata	12 yrs
297	Common Opossum	Didelphis marsupialis	2.5 yrs
298	Cotton-Top Tamarin	Saguinus oedipus	13-23 yrs
299	Japanese Serow	Capricornis crispus	20-25 yrs
300	Finless Porpoise	Neophocaena phocaenoides	25 yrs
301	Northern Short-Tailed Shrew	Blarina brevicauda	1-3 yrs
302	Indian Palm Squirrel	Funambulus palmarum	2-5.5 yrs
303	Common Shrew	Sorex araneus	15-18 mos
304	Lar Gibbon	Hylobates lar	30-44 yrs
305	Ground Pangolin	Smutsia temminckii	20 yrs
306	Smooth-Coated Otter	Lutrogale perspicillata	4-20 yrs
307	Common Wombat	Vombatus ursinus	15-20 yrs
308	Roborovski Hamster	Phodopus roborovskii	2-4 yrs
309	Mountain Hare	Lepus timidus	12 yrs
310	African Golden Cat	Caracal aurata	15 yrs
311	Red-Necked Wallaby	Macropus rufogriseus	7-15 yrs
312	Campbell's Dwarf Hamster	Phodopus campbelli	2-2.5 yrs
313	Red River Hog	Potamochoerus porcus	15-20 yrs
314	Deer Mouse	Peromyscus maniculatus	1.5-8 yrs
315	Senegal Bushbaby	Galago senegalensis	3-14 yrs
316	Silver-Backed Chevrotain	Tragulus versicolor	
317	Monito Del Monte	Dromiciops gliroides	26 months
318	Thirteen-Lined Ground Squirrel	Ictidomys tridecemlineatus	7.9 yrs
319	Siberian Musk Deer	Moschus moschiferus	10-20 yrs
320	Alpine Marmot	Marmota marmota	15-18 yrs
321	European Mole	Talpa europaea	3-5 yrs
322	Eurasian Harvest Mouse	Micromys minutus	1-5 yrs
323	Pygmy sperm whale	Kogia breviceps	
324	Indian Muntjac	Muntiacus muntjak	15-20 yrs
325	White-Tailed Jackrabbit	Lepus townsendii	3-8 yrs
326	Drill	Mandrillus leucophaeus	28-30 yrs
327	Kiang	Equus kiang	20 yrs
328	Pseudoryzomys	Pseudoryzomys simplex	
329	Black Flying Fox	Pteropus alecto	15-20 yrs
330	Common Ringtail Possum	Pseudocheirus peregrinus	5-8 years
331	Honduran White Bat	Ectophylla alba	20 yrs
332	Common Vole	Microtus arvalis	4.5 mos
333	Culpeo	Lycalopex culpaeus	11 yrs
334	Black Wildebeest	Connochaetes gnou	20 yrs
335	Douglas Squirrel	Tamiasciurus douglasii	5-6 yrs
336	Tucuxi	Sotalia fluviatilis	35 yrs
337	Bushpig	Potamochoerus larvatus	20 yrs
338	Hoary Marmot	Marmota caligata	12 yrs
339	Eastern Barred Bandicoot	Perameles gunnii	2-3 yrs
340	Banded Mongoose	Mungos mungo	12 yrs
341	Panamanian White-Faced Capuchin	Cebus imitator	over 54 yrs
342	Marine Otter	Lontra felina	14 yrs
343	Reeves's Muntjac	Muntiacus reevesi	10-18 yrs
344	Red-Shanked Douc	Pygathrix nemaeus	25 yrs
345	Lechwe	Kobus leche	15 yrs
346	Common Marmoset	Callithrix jacchus	10-16 yrs
347	Big Brown Bat	Eptesicus fuscus	6.5-20 yrs
348	Abert's Squirrel	Sciurus aberti	7 yrs
349	Four-Toed Hedgehog	Atelerix albiventris	3-10 yrs
350	California Ground Squirrel	Otospermophilus beecheyi	6-10 yrs
351	Siberian Weasel	Mustela sibirica	2-8 yrs
352	Common Minke Whale	Balaenoptera acutorostrata	45-50 trs
353	Northern Hairy-Nosed Wombat	Lasiorhinus krefftii	25 yrs
354	Pampas Cat	Leopardus colocola	10-15 yrs
355	Galápagos Sea Lion	Zalophus wollebaeki	15-24 yrs
356	Tree Pangolin	Phataginus tricuspis	13 yrs
357	Geoffroy's Cat	Leopardus geoffroyi	14 yrs
358	Meadow Vole	Microtus pennsylvanicus	1-5 yrs
359	Indian Porcupine	Hystrix indica	20 yrs
360	Desert Cottontail	Sylvilagus audubonii	up to 2 yrs
361	Celebes Crested Macaque	Macaca nigra	18-20 yrs
362	Hector's Dolphin	Cephalorhynchus hectori	20 yrs
363	Side-Striped Jackal	Canis adustus	10 yrs
364	Chinese Mountain Cat	Felis bieti	
365	Large Indian Civet	Viverra zibetha	15-20 yrs
366	Western Grey Kangaroo	Macropus fuliginosus	10-20 yrs
367	Japanese Badger	Meles anakuma	10-19.5 yrs
368	Sunda Pangolin	Manis javanica	
369	Flat-Headed Cat	Prionailurus planiceps	14 yrs
370	Paca	Cuniculus paca	12.5 yrs
371	European Hamster	Cricetus cricetus	up to 8 yrs
372	Gee's Golden Langur	Trachypithecus geei	
373	Coquerel's Sifaka	Propithecus coquereli	25-30 yrs
374	Pygmy killer whale	Feresa attenuata	
375	Roan Antelope	Hippotragus equinus	15-17 yrs
376	Mountain Tapir	Tapirus pinchaque	28.5 yrs
377	Sitatunga	Tragelaphus spekii	20-23 yrs
378	Asian House Shrew	Suncus murinus	1-2 yrs
379	Dorcas Gazelle	Gazella dorcas	15 yrs
380	Siberian Chipmunk	Eutamias sibiricus	2-10 yrs
381	Egyptian Fruit Bat	Rousettus aegyptiacus	22-25 yrs
382	Visayan Warty Pig	Sus cebifrons	10-15 yrs
383	Bengal Fox	Vulpes bengalensis	10 yrs
384	Crab-Eating Raccoon	Procyon cancrivorus	14 yrs
385	Bornean Bearded Pig	Sus barbatus	13-16 yrs
386	Northern Fur Seal	Callorhinus ursinus	26 yrs
387	Geoffroy's Spider Monkey	Ateles geoffroyi	33 yrs
388	Antarctic Fur Seal	Arctocephalus gazella	15-25 yrs
389	Cozumel Raccoon	Procyon pygmaeus	1.8-20 yrs
390	Madame Berthe's Mouse Lemur	Microcebus berthae	
391	Four-Horned Antelope	Tetracerus quadricornis	10 yrs
392	Masked Palm Civet	Paguma larvata	10-20 yrs
393	Lesser Kudu	Tragelaphus imberbis	10-15 yrs
394	Small Indian Civet	Viverricula indica	8-9 yrs
395	White-Footed Mouse	Peromyscus leucopus	1-3 yrs
396	Siberian Ibex	Capra sibirica	10-22 yrs
397	African Clawless Otter	Aonyx capensis	10-15 yrs
398	White-Lipped Peccary	Tayassu pecari	13 yrs
399	Egyptian Mongoose	Herpestes ichneumon	12-20yrs
400	Striped Polecat	Ictonyx striatus	13-14 yrs
401	Common Pipistrelle	Pipistrellus pipistrellus	4-16 yrs
402	Oribi	Ourebia ourebi	8-14 yrs
403	Black-Capped Capuchin	Sapajus apella	25-45 yrs
404	Tammar Wallaby	Macropus eugenii	10-14 yrs
405	Hog Deer	Hyelaphus porcinus	10-20 yrs
406	South American Sea Lion	Otaria flavescens	16-30 yrs
407	Norway Lemming	Lemmus lemmus	1-3.3 yrs
408	Olympic Marmot	Marmota olympus	2-6 yrs
409	Kirk's Dik-Dik	Madoqua kirkii	5-18 yrs
410	Blue Monkey	Cercopithecus mitis	20-30 yrs
411	Philippine Flying Lemur	Cynocephalus volans	17.5 yrs
412	Bontebok	Damaliscus pygargus	17 yrs
413	Antelope Jackrabbit	Lepus alleni	1-5 yrs
414	Yellow Baboon	Papio cynocephalus	20-30 yrs
415	Patas Monkey	Erythrocebus patas	15-24 yrs
416	Antilopine Kangaroo	Macropus antilopinus	16 yrs
417	Sunda Flying Lemur	Galeopterus variegatus	17.5 yrs
418	Puku	Kobus vardonii	17 yrs
419	Steenbok	Raphicerus campestris	7-9 yrs
420	Amami rabbit	Pentalagus furnessi	
421	Philippine Mouse-Deer	Tragulus nigricans	14 yrs
422	Goodman's Mouse Lemur	Microcebus lehilahytsara	5 yrs
423	Short-Eared Dog	Atelocynus microtis	9-11 yrs
424	Eastern Quoll	Dasyurus viverrinus	3-6 yrs
425	Marbled Polecat	Vormela peregusna	8.8 yrs
426	Central American Agouti	Dasyprocta punctata	10 yrs
427	Australian Sea Lion	Neophoca cinerea	12-16 yrs
428	Tufted Deer	Elaphodus cephalophus	7-12 yrs
429	Nilgiri Langur	Semnopithecus johnii	up to 29 yrs
430	Rusa Deer	Rusa timorensis	15-20 yrs
431	Blanford's Fox	Vulpes cana	4-10 yrs
432	Bushy-Tailed Woodrat	Neotoma cinerea	5.8 yrs
433	Bonnet Macaque	Macaca radiata	20-35 yrs
434	Goitered Gazelle	Gazella subgutturosa	12-20 yrs
435	Cape Fox	Vulpes chama	10 yrs
436	Eastern Mole	Scalopus aquaticus	36 months
437	Bank Vole	Myodes glareolus	2 yrs
438	Greater Horseshoe Bat	Rhinolophus ferrumequinum	30 yrs
439	Chacoan Peccary	Catagonus wagneri	9 yrs
440	Prairie Vole	Microtus ochrogaster	1-3 yrs
441	Mexican agouti	Dasyprocta mexicana	
442	South American Gray Fox	Lycalopex griseus	
443	Siberian Roe Deer	Capreolus pygargus	8-18 yrs
444	Australian Fur Seal	Arctocephalus pusillus	19-21 yrs
445	Brown Fur Seal	Arctocephalus pusillus	19-21 yrs
446	Darwin's Fox	Lycalopex fulvipes	7 yrs
447	Grant's Gazelle	Nanger granti	12-14 yrs
448	Rock Cavy	Kerodon rupestris	3-11 yrs
449	Walia Ibex	Capra walie	11-15 yrs
450	Yellow Mongoose	Cynictis penicillata	15 yrs
451	Southern Hairy-Nosed Wombat	Lasiorhinus latifrons	15-25 yrs
452	Cuban Solenodon	Solenodon cubanus	5 yrs
453	Black Giant Squirrel	Ratufa bicolor	18-19 yrs
454	Eld's Deer	Panolia eldii	20 yrs
455	Hog Badger	Arctonyx collaris	14 yrs
456	Golden Monkey	Cercopithecus kandti	19 yrs
457	Grizzled Giant Squirrel	Ratufa macroura	7-8 yrs
458	Kob	Kobus kob	17 yrs
459	Black-and-White Ruffed Lemur	Varecia variegata	19-32 yrs
460	East African Oryx	Oryx beisa	18 yrs
461	Water Chevrotain	Hyemoschus aquaticus	8-13 yrs
462	Grey Rhebok	Pelea capreolus	8-10 yrs
463	Richardson's Ground Squirrel	Urocitellus richardsonii	1-5 yrs
464	Toque Macaque	Macaca sinica	30-35 yrs
465	Volcano Rabbit	Romerolagus diazi	7-9 yrs
466	Western Long-Beaked Echidna	Zaglossus bruijnii	30 yrs
467	Swamp Wallaby	Wallabia bicolor	15 yrs
468	Long-Tailed Chinchilla	Chinchilla lanigera	10-20 yrs
469	Bushbuck	Tragelaphus sylvaticus	15 yrs
470	Eastern Spotted Skunk	Spilogale putorius	10 yrs
471	Indiana Bat	Myotis sodalis	5-12 yrs
472	Ili Pika	Ochotona iliensis	7 yrs
473	Desert Warthog	Phacochoerus aethiopicus	7-18 yrs
474	Spectral Bat	Vampyrum spectrum	5.5 yrs
475	Cape Hare	Lepus capensis	1-5 yrs
476	Golden-Mantled Ground Squirrel	Callospermophilus lateralis	5-7 yrs
477	Laotian Rock Rat	Laonastes aenigmamus	
478	Greater Bilby	Macrotis lagotis	6-10 yrs
479	Hispid Hare	Caprolagus hispidus	3 yrs
480	Bald Uakari	Cacajao calvus	15-30 yrs
481	Screaming Hairy Armadillo	Chaetophractus vellerosus	16 yrs
482	Dama Gazelle	Nanger dama	12-19 yrs
483	Damaraland Mole-Rat	Fukomys damarensis	15-16 yrs
484	Philippine Pangolin	Manis culionensis	20 yrs
485	Leadbeater's Possum	Gymnobelideus leadbeateri	7.5-9 yrs
486	Western Red Colobus	Piliocolobus badius	
487	Guinea Baboon	Papio papio	35-45 yrs
488	Slender Mongoose	Galerella sanguinea	8-12.6 yrs
489	Steppe Polecat	Mustela eversmanii	4-5 yrs
490	Hooded Skunk	Mephitis macroura	3 yrs
491	Eastern Red Bat	Lasiurus borealis	12 yrs
492	Mountain Pygmy Possum	Burramys parvus	4-7 yrs
493	Red Ruffed Lemur	Varecia rubra	15-20 yrs
494	Hairy-Legged Vampire Bat	Diphylla ecaudata	8 yrs
495	Southern Brown Bandicoot	Isoodon obesulus	2-4 yrs
496	Common Wallaroo	Macropus robustus	22-24 yrs
497	Aquatic Genet	Genetta piscivora	
498	Philippine Deer	Rusa marianna	15 yrs
499	Mantled Howler Monkey	Alouatta palliata	20-25 yrs
500	Cape Genet	Genetta tigrina	15 yrs
501	Black Lion Tamarin	Leontopithecus chrysopygus	10-28 yrs
502	Nilgiri Marten	Martes gwatkinsii	
503	Red-Legged Pademelon	Thylogale stigmatica	9.7 yrs
504	Spectacled Flying Fox	Pteropus conspicillatus	12-30 yrs
505	Brush Rabbit	Sylvilagus bachmani	2 yrs
506	Dusky Leaf Monkey	Trachypithecus obscurus	25 yrs
507	Silky Sifaka	Propithecus candidus	23 yrs
508	Spanish Ibex	Capra pyrenaica	12-16 yrs
509	Huemul	Hippocamelus bisulcus	14 yrs
510	Brown Spider Monkey	Ateles hybridus	10-27 yrs
511	Greater Grison	Galictis vittata	10 yrs
512	Japanese Marten	Martes melampus	12 yrs
513	Tasmanian Pademelon	Thylogale billardierii	5-6 yrs
514	Marsh Deer	Blastocerus dichotomus	10 yrs
515	Mantled Guereza	Colobus guereza	20-29 yrs
516	Hispaniolan Solenodon	Solenodon paradoxus	11 yrs
517	Malagasy Civet	Fossa fossana	21 yrs
518	Common Duiker	Sylvicapra grimmia	8-14 yrs
519	Stump-Tailed Macaque	Macaca arctoides	up to 30 yrs
520	Mountain Gazelle	Gazella gazella	8-15 yrs
521	Meadow Jumping Mouse	Zapus hudsonius	3-5 yrs
522	Western Spotted Skunk	Spilogale gracilis	10 yrs
523	Red-Faced Spider Monkey	Ateles paniscus	34-46 yrs
524	Snow sheep	Ovis nivicola	
525	Black-Headed Spider Monkey	Ateles fusciceps	24 yrs
526	Feathertail Glider	Acrobates pygmaeus	4-7 yrs
730	Dibatag	Ammodorcas clarkei	
527	Spotted-Necked Otter	Hydrictis maculicollis	20 yrs
528	Silvery Lutung	Trachypithecus cristatus	31 yrs
529	American Hog-Nosed Skunk	Conepatus leuconotus	7-8 yrs
530	Neotropical River Otter	Lontra longicaudis	
531	Goeldi's Marmoset	Callimico goeldii	10 yrs
532	White-Faced Saki	Pithecia pithecia	15-36 yrs
533	Rock Squirrel	Otospermophilus variegatus	2-3 yrs
534	Black and Rufous Elephant Shrew	Rhynchocyon petersi	
535	Japanese Weasel	Mustela itatsi	2-8 yrs
536	Central American Squirrel Monkey	Saimiri oerstedii	15-20 yrs
537	Matschie's Tree-Kangaroo	Dendrolagus matschiei	14-20 yrs
538	Vancouver Island marmot	Marmota vancouverensis	10 yrs
539	New Zealand Fur Seal	Arctocephalus forsteri	12-15 yrs
540	Squirrel Glider	Petaurus norfolcensis	3-6 yrs
541	Diana Monkey	Cercopithecus diana	20 yrs
542	Giant Otter Shrew	Potamogale velox	
543	Mountain Cottontail	Sylvilagus nuttallii	3-7.4 yrs
544	Woodland Jumping Mouse	Napaeozapus insignis	2-4 yrs
545	Russian Desman	Desmana moschata	4 yrs
546	White-Bellied Musk Deer	Moschus leucogaster	10-14 yrs
547	Red Slender Loris	Loris tardigradus	15-20 yrs
548	Brown Long-Eared Bat	Plecotus auritus	4-30 yrs
549	Yellow-Necked Mouse	Apodemus flavicollis	12-24 mos
550	Cape Ground Squirrel	Xerus inauris	11.5 yrs
551	Field Vole	Microtus agrestis	18 mos
552	Pygmy Slow Loris	Nycticebus pygmaeus	20 yrs
553	Woylie	Bettongia penicillata	4-14 yrs
554	North Sulawesi Babirusa	Babyrousa celebensis	23 yrs
555	Flores Giant Rat	Papagomys armandvillei	
556	Eurasian Water Shrew	Neomys fodiens	1.5-3 yrs
557	White-Tailed Mongoose	Ichneumia albicauda	10-14 yrs
558	Gray Mouse Lemur	Microcebus murinus	3-15.5 yrs
559	Pampas Deer	Ozotoceros bezoarticus	12-20 yrs
560	Great Flying Fox	Pteropus neohibernicus	9-23 years
561	Long-Nosed Potoroo	Potorous tridactylus	5-12 yrs
562	Silver-Haired Bat	Lasionycteris noctivagans	up to 12 yrs
563	Hoary Fox	Lycalopex vetulus	
564	Common Dwarf Mongoose	Helogale parvula	10-18 yrs
565	Townsend's big-eared bat	Corynorhinus townsendii	
566	Desert Hedgehog	Paraechinus aethiopicus	3-10 yrs
567	Gunnison's Prairie Dog	Cynomys gunnisoni	3-8 yrs
568	Northern Quoll	Dasyurus hallucatus	1-3 yrs
569	François' Langur	Trachypithecus francoisi	26 yrs
570	Hirola	Beatragus hunteri	10-15 yrs
571	Pampas fox	Lycalopex gymnocercus	
572	Gray bat	Myotis grisescens	
573	Desert Kangaroo Rat	Dipodomys deserti	5.5-8 yrs
574	Lesser Hedgehog Tenrec	Echinops telfairi	10-14 yrs
575	Palawan stink badger	Mydaus marchei	
576	Greater Glider	Petauroides volans	15 yrs
577	North African hedgehog	Atelerix algirus	
578	Sir David's long-beaked echidna	Zaglossus attenboroughi	
579	Least Chipmunk	Tamias minimus	2-6 yrs
580	Tapeti	Sylvilagus brasiliensis	
581	Myanmar snub-nosed monkey	Rhinopithecus strykeri	
582	Malayan Civet	Viverra tangalunga	11-12 yrs
583	Verreaux's Sifaka	Propithecus verreauxi	18-23 yrs
584	Botta's Pocket Gopher	Thomomys bottae	2.5 yrs
585	Spinifex Hopping Mouse	Notomys alexis	2 yrs
586	Mongolian gazelle	Procapra gutturosa	
587	Bornean ferret-badger	Melogale everetti	
588	Utah Prairie Dog	Cynomys parvidens	8 yrs
589	Agile Wallaby	Macropus agilis	11-14 yrs
590	Banded palm civet	Hemigalus derbyanus	
591	Goodfellow's Tree-Kangaroo	Dendrolagus goodfellowi	8-14 yrs
592	Musky Rat-Kangaroo	Hypsiprymnodon moschatus	4 yrs
593	Honey Possum	Tarsipes rostratus	1-2 yrs
594	Liberian mongoose	Liberiictis kuhni	
595	Hainan black crested gibbon	Nomascus hainanus	
596	Japanese Squirrel	Sciurus lis	12-14 yrs
597	Northern pig-tailed macaque	Macaca leonina	
598	Indo-Pacific humpback dolphin	Sousa chinensis	
599	Pyrenean Desman	Galemys pyrenaicus	3.5 yrs
600	Short-Tailed Chinchilla	Chinchilla chinchilla	8-20 yrs
601	Galápagos Fur Seal	Arctocephalus galapagoensis	22 yrs
602	Gray short-tailed opossum	Monodelphis domestica	
603	Bengal slow loris	Nycticebus bengalensis	
604	Black Howler Monkey	Alouatta caraya	15-20 yrs
605	South American Fur Seal	Arctocephalus australis	12-30 yrs
606	Indian hare	Lepus nigricollis	
607	European Ground Squirrel	Spermophilus citellus	8-10 yrs
608	Daubenton's bat	Myotis daubentonii	
609	Golden Bamboo Lemur	Hapalemur aureus	12-23 yrs
610	Belding's ground squirrel	Urocitellus beldingi	
611	Marsh Mongoose	Atilax paludinosus	17 yrs
612	Tricolored bat	Perimyotis subflavus	
613	Columbian Ground Squirrel	Urocitellus columbianus	2-3 yrs
614	Banded linsang	Prionodon linsang	
615	White-Tailed Prairie Dog	Cynomys leucurus	4 yrs
616	Giant muntjac	Muntiacus vuquangensis	
617	Tonkin Snub-Nosed Monkey	Rhinopithecus avunculus	20-29 yrs
618	Southern African Hedgehog	Atelerix frontalis	3-7 yrs
619	Mountain Reedbuck	Redunca fulvorufula	14 yrs
620	Greater bulldog bat	Noctilio leporinus	
621	Sunda stink badger	Mydaus javanensis	
622	Bobak marmot	Marmota bobak	
623	Buru babirusa	Babyrousa babyrussa	
624	Taruca	Hippocamelus antisensis	
625	Royal Antelope	Neotragus pygmaeus	6.8 yrs
626	Indian spotted chevrotain	Moschiola indica	
627	Formosan Rock Macaque	Macaca cyclopis	up to 30 yrs
628	Round-Tailed Ground Squirrel	Xerospermophilus tereticaudus	8.9 yrs
629	Garden dormouse	Eliomys quercinus	
630	Guadalupe fur seal	Arctocephalus townsendi	
631	Cactus mouse	Peromyscus eremicus	
632	Mahogany Glider	Petaurus gracilis	5-6 yrs
633	Lesser grison	Galictis cuja	
634	Southern Three-Banded Armadillo	Tolypeutes matacus	36 yrs
635	Yellow-Backed Duiker	Cephalophus silvicultor	10-22 yrs
636	Brush-Tailed Phascogale	Phascogale tapoatafa	1-3 yrs
637	Egyptian weasel	Mustela subpalmata	
638	Red-crested tree-rat	Santamartamys rufodorsalis	
639	Molina's hog-nosed skunk	Conepatus chinga	
640	Red-Tailed Monkey	Cercopithecus ascanius	28 yrs
641	Humboldt's hog-nosed skunk	Conepatus humboldtii	
642	Agile gibbon	Hylobates agilis	
643	Javan ferret-badger	Melogale orientalis	
644	Straw-Coloured Fruit Bat	Eidolon helvum	15-22 yrs
645	Clymene dolphin	Stenella clymene	
646	Large-eared pika	Ochotona macrotis	
647	Malayan Porcupine	Hystrix brachyura	27 yrs
648	Blue-Eyed Black Lemur	Eulemur flavifrons	20-25 yrs
649	Spotted linsang	Prionodon pardicolor	
650	Bohor Reedbuck	Redunca redunca	10 yrs
651	Tailless Tenrec	Tenrec ecaudatus	5-6 yrs
652	Eastern Long-Beaked Echidna	Zaglossus bartoni	30 yrs
653	Pied tamarin	Saguinus bicolor	
654	Japanese giant flying squirrel	Petaurista leucogenys	
655	Common noctule	Nyctalus noctula	
656	Allen's Swamp Monkey	Allenopithecus nigroviridis	23 yrs
657	Hose's langur	Presbytis hosei	
658	Pallid bat	Antrozous pallidus	
659	Western hoolock gibbon	Hoolock hoolock	
660	Southern Viscacha	Lagidium viscacia	19 yrs
661	Northern white-breasted hedgehog	Erinaceus roumanicus	
662	Günther's dik-dik	Madoqua guentheri	
663	Buettikofer's Epauletted Fruit Bat	Epomops buettikoferi	
664	Chinese Ferret-Badger	Melogale moschata	10-17 yrs
665	Eurasian Pygmy Shrew	Sorex minutus	15 mos
666	Pyrenean Chamois	Rupicapra pyrenaica	22 yrs
667	Arabian Tahr	Arabitragus jayakari	22 yrs
668	Grivet	Chlorocebus aethiops	13-30 yrs
669	Hairy-Nosed Otter	Lutra sumatrana	10 yrs
670	Mauritanian Flying Fox	Pteropus niger	19 yrs
671	Sunda Slow Loris	Nycticebus coucang	20-24 yrs
672	Southern River Otter	Lontra provocax	3-10 yrs
673	Bouvier's Red Colobus	Piliocolobus bouvieri	
674	European wildcat	Felis silvestris silvestris	15 YEARS
675	Southern Pudu	Pudu puda	10-17 yrs
676	Greater Mouse-Deer	Tragulus napu	14 yrs
677	Bongo Antelope	Tragelaphus eurycerus	19 yrs
678	Baird's Tapir	Tapirus bairdii	over 30 yrs
679	Barasingha	Rucervus duvaucelii	20-23 yrs
680	Purple-Faced Langur	Semnopithecus vetulus	23 yrs
681	Brazilian Three-Banded Armadillo	Tolypeutes tricinctus	12-19 yrs
682	Ghost Bat	Macroderma gigas	16 yrs
683	Greater Short-Nosed Fruit Bat	Cynopterus sphinx	10 yrs
684	Mountain Anoa	Bubalus quarlesi	20-30 yrs
685	Blue Duiker	Philantomba monticola	10-16 yrs
686	New England Cottontail	Sylvilagus transitionalis	3 yrs
687	Lowland Anoa	Bubalus depressicornis	20-30 yrs
688	Siberian Flying Squirrel	Pteromys volans	5 yrs
689	Suni	Nesotragus moschatus	10 yrs
690	Mountain Weasel	Mustela altaica	
691	Himalayan Goral	Naemorhedus goral	14-15 yrs
692	Cape Porcupine	Hystrix africaeaustralis	
693	Mountain Nyala	Tragelaphus buxtoni	15-20 yrs
694	Maned Sloth	Bradypus torquatus	12 yrs
695	Greater Mouse-Eared Bat	Myotis myotis	3-14 yrs
696	Common Spotted Cuscus	Spilocuscus maculatus	11 yrs
697	Black Snub-Nosed Monkey	Rhinopithecus bieti	
698	Marsh Rice Rat	Oryzomys palustris	up to 1 yr
699	Visayan Spotted Deer	Rusa alfredi	15-20 yrs
700	American water shrew	Sorex palustris	1.5 years
701	Fat-Tailed Dwarf Lemur	Cheirogaleus medius	15-30 yrs
702	Yellow-Tailed Woolly Monkey	Oreonax flavicauda	10-20 yrs
703	Lesser horseshoe bat	Rhinolophus hipposideros	
704	Ruddy mongoose	Herpestes smithii	
705	Cuvier's Gazelle	Gazella cuvieri	18 yrs
706	Rodrigues Flying Fox	Pteropus rodricensis	30 yrs
707	La Plata Dolphin	Pontoporia blainvillei	20 yrs
708	American pygmy shrew	Sorex hoyi	
709	Dusky pademelon	Thylogale brunii	
710	Servaline genet	Genetta servalina	
711	Sumatran striped rabbit	Nesolagus netscheri	
712	White-Headed Capuchin	Cebus capucinus	30-55 yrs
713	White-eared opossum	Didelphis albiventris	1.5 years
714	Mona Monkey	Cercopithecus mona	30 yrs
715	Prehesile-Tailed Porcupine	Coendou prehensilis	17-27 yrs
716	Indian long-eared hedgehog	Hemiechinus collaris	
717	Spectral Tarsier	Tarsius spectrum	10-17 yrs
718	Javan slow loris	Nycticebus javanicus	
719	Tibetan macaque	Macaca thibetana	
720	Golden-Headed Lion Tamarin	Leontopithecus chrysomelas	21 yrs
721	Prevost's squirrel	Callosciurus prevostii	
722	Diademed Sifaka	Propithecus diadema	25 yrs
723	Gray Four-Eyed Opossum	Philander opossum	2.5-3.5 yrs
724	Malagasy giant rat	Hypogeomys antimena	
725	Long-Tailed Goral	Naemorhedus caudatus	15-17 yrs
726	Capped Langur	Trachypithecus pileatus	10-12 yrs
727	Northern olingo	Bassaricyon gabbii	
728	Northern right whale dolphin	Lissodelphis borealis	
729	Ryukyu Flying Fox	Pteropus dasymallus	10-24 yrs
731	African striped weasel	Poecilogale albinucha	
732	Southern reedbuck	Redunca arundinum	
733	Crowned Lemur	Eulemur coronatus	20-36 yrs
734	Red Giant Flying Squirrel	Petaurista petaurista	16 yrs
735	Subantarctic Fur Seal	Arctocephalus tropicalis	20-25 yrs
736	Zebra duiker	Cephalophus zebra	
737	Javan warty pig	Sus verrucosus	
738	Greater noctule bat	Nyctalus lasiopterus	
739	Round-tailed muskrat	Neofiber alleni	
740	Common Brown Lemur	Eulemur fulvus	above 30 yrs
741	Southern bog lemming	Synaptomys cooperi	
742	Saharan striped polecat	Ictonyx libycus	
743	Otter civet	Cynogale bennettii	
744	Silvery Gibbon	Hylobates moloch	30-40 yrs
745	Northern plains gray langur	Semnopithecus entellus	
746	Camas pocket gopher	Thomomys bulbivorus	
747	Speke's Gazelle	Gazella spekei	12 yrs
748	Golden palm civet	Paradoxurus zeylonensis	
749	Woodland vole	Microtus pinetorum	
750	Assam macaque	Macaca assamensis	
751	Gray brocket	Mazama gouazoubira	
752	Brush-Tailed Rock-Wallaby	Petrogale penicillata	5-10 yrs
753	Mohol bushbaby	Galago moholi	
754	Australian Snubfin Dolphin	Orcaella heinsohni	20-28 yrs
755	Chilean dolphin	Cephalorhynchus eutropia	
756	Nile Lechwe	Kobus megaceros	10-12 yrs
757	Lesser Egyptian jerboa	Jaculus jaculus	
758	Japanese Hare	Lepus brachyurus	4 yrs
759	Red Howler Monkey	Alouatta seniculus	25 yrs
760	Southern white-breasted hedgehog	Erinaceus concolor	
761	Evening bat	Nycticeius humeralis	
762	Angola Colobus	Colobus angolensis	20-30 yrs
763	Bawean deer	Hyelaphus kuhlii	
764	Indian giant flying squirrel	Petaurista philippensis	
765	Pygmy spotted skunk	Spilogale pygmaea	
766	Striped Possum	Dactylopsila trivirgata	5-9.7 yrs
767	Amur hedgehog	Erinaceus amurensis	
768	Alaska marmot	Marmota broweri	
769	Ring-Tailed Mongoose	Galidia elegans	13 yrs
770	Striped hog-nosed skunk	Conepatus semistriatus	
771	Red-rumped Agouti	Dasyprocta leporina	15-20 yrs
772	Sechuran fox	Lycalopex sechurae	
773	Ord's kangaroo rat	Dipodomys ordii	
774	Gray Slender Loris	Loris lydekkerianus	15-20 yrs
775	Salt Marsh Harvest Mouse	Reithrodontomys raviventris	12-18 mos
776	Jamaican fruit bat	Artibeus jamaicensis	
777	Indian hedgehog	Paraechinus micropus	
778	Red-Handed Tamarin	Saguinus midas	10-16 yrs
779	Brown greater galago	Otolemur crassicaudatus	
780	Strap-toothed whale	Mesoplodon layardii	
781	Stripe-necked mongoose	Herpestes vitticollis	
782	North American least shrew	Cryptotis parva	
783	Serotine bat	Eptesicus serotinus	
784	Black Lemur	Eulemur macaco	20-25 yrs
785	White-Tailed Antelope Squirrel	Ammospermophilus leucurus	5.10 yrs
786	Great Gebril	Rhombomys opimus	2-4 yrs
787	Bonin flying fox	Pteropus pselaphon	
788	Bemaraha woolly lemur	Avahi cleesei	
789	Colombian weasel	Mustela felipei	
790	Phayre's leaf monkey	Trachypithecus phayrei	
791	Six-banded armadillo	Euphractus sexcinctus	
792	Greater Bamboo Lemur	Prolemur simus	17 yrs
793	Amazon weasel	Mustela africana	
794	Lesser short-nosed fruit bat	Cynopterus brachyotis	
795	Juan Fernández fur seal	Arctocephalus philippii	
796	Large mole	Mogera robusta	
797	Blond Capuchin	Sapajus flavius	
798	Lesser mole-rat	Spalax leucodon	
799	Goa	Procapra picticaudata	
800	Southern Short-Tailed Shrew	Blarina carolinensis	1 yr
801	Azara's Agouti	Dasyprocta azarae	up to 20 yrs
802	Yellow-Bellied Glider	Petaurus australis	10 yrs
803	Mongoose Lemur	Eulemur mongoz	18-26 yrs
804	Pichi	Zaedyus pichiy	
805	Pileated gibbon	Hylobates pileatus	
806	Southern tree hyrax	Dendrohyrax arboreus	
807	Hose's palm civet	Diplogale hosei	
808	Yellow-bellied weasel	Mustela kathiah	
809	Brants's whistling rat	Parotomys brantsii	
810	Horsfield'd Tarsier	Cephalopachus bancanus	12-17 yrs
811	Brazilian Guinea Pig	Cavia aperea	3-10 yrs
812	Scrub Hare	Lepus saxatilis	1-7 yrs
813	Brandt's bat	Myotis brandtii	
814	Common treeshrew	Tupaia glis	
815	Golden-Crowned Sifaka	Propithecus tattersalli	17-20 yrs
816	Hispid Cotton Rat	Sigmodon hispidus	6 mos-5 yrs
817	Pen-tailed treeshrew	Ptilocercus lowii	
818	Geoffroy's Tamarin	Saguinus geoffroyi	up to 13 yrs
819	Roloway Monkey	Cercopithecus roloway	20-30 yrs
820	Northern bat	Eptesicus nilssonii	
821	Plantain squirrel	Callosciurus notatus	
822	Kipunji	Rungwecebus kipunji	
823	Delacour's langur	Trachypithecus delacouri	
824	Brown palm civet	Paradoxurus jerdoni	
825	Cinereus shrew	Sorex cinereus	
826	Philippine naked-backed fruit bat	Dobsonia chapmani	
827	Salt's dik-dik	Madoqua saltiana	
828	Tufted Gray Langur	Semnopithecus priam	
829	Indian brown mongoose	Herpestes fuscus	
830	Chinese Goral	Naemorhedus griseus	15-17 yrs
831	Dingiso	Dendrolagus mbaiso	
832	Alaskan hare	Lepus othus	
833	Soprano pipistrelle	Pipistrellus pygmaeus	
834	Northern pocket gopher	Thomomys talpoides	
835	Large-spotted civet	Viverra megaspila	
836	Livingstone's fruit bat	Pteropus livingstonii	
837	Malayan weasel	Mustela nudipes	
838	Hero shrew	Scutisorex somereni	
839	Painted bat	Kerivoula picta	
840	Shepherd's beaked whale	Tasmacetus shepherdi	
841	Pallas's squirrel	Callosciurus erythraeus	
842	Barbary ground squirrel	Atlantoxerus getulus	
843	Appalachian Cottontail	Sylvilagus obscurus	1 yr
844	Northern Pika	Ochotona hyperborea	3 yrs
845	Dibbler	Parantechinus apicalis	2-3 yrs
846	Fat-Tailed Dunnart	Sminthopsis crassicaudata	1.3-1.5 yrs
847	Myotis septentrionalis	Myotis septentrionalis	
848	Southern spotted skunk	Spilogale angustifrons	
849	Black-Capped Squirrel Monkey	Saimiri boliviensis	up to 30 yrs
850	Ricefield rat	Rattus argentiventer	
851	Leopardus guttulus	Leopardus guttulus	
852	Northern collared lemming	Dicrostonyx groenlandicus	
853	Back-striped weasel	Mustela strigidorsa	
854	Lesser long-nosed bat	Leptonycteris yerbabuenae	
855	Black Jackrabbit	Lepus insularis	1-5 yrs
856	Fraser's dolphin	Lagenodelphis hosei	
857	Fat Sand Mouse	Psammomys obesus	14 mos-4 yrs
858	Cream-coloured giant squirrel	Ratufa affinis	
859	Nepal gray langur	Semnopithecus schistaceus	
860	Ornate shrew	Sorex ornatus	
861	Pygmy Tarsier	Tarsius pumilus	12-20 yrs
862	Western Pygmy Possum	Cercartetus concinnus	1-3 yrs
863	Bennett's Tree-Kangaroo	Dendrolagus bennettianus	15-20 yrs
864	Yellow-Pine Chipmunk	Neotamias amoenus	3-5 yrs
865	Kashmir gray langur	Semnopithecus ajax	
866	Sulawesi bear cuscus	Ailurops ursinus	
867	Plateau pika	Ochotona curzoniae	
868	Peruvian Spider Monkey	Ateles chamek	20-48 yrs
869	Annamite striped rabbit	Nesolagus timminsi	
870	Variegated Squirrel	Sciurus variegatoides	8-23 yrs
871	Northern Luzon giant cloud rat	Phloeomys pallidus	
872	Collared Mangabey	Cercocebus torquatus	14-30 yrs
873	Taiwan serow	Capricornis swinhoei	
874	African giant shrew	Crocidura olivieri	
875	Black-Tufted Marmoset	Callithrix penicillata	15 yrs
876	Giant Kangaroo Rat	Dipodomys ingens	5-9.8 yrs
877	Beira	Dorcatragus megalotis	
878	American shrew mole	Neurotrichus gibbsii	
879	Togian babirusa	Babyrousa togeanensis	
880	Golden-Bellied Capuchin	Sapajus xanthosternos	30 yrs
881	Yellow-cheeked gibbon	Nomascus gabriellae	
882	Forest dormouse	Dryomys nitedula	
883	Lundomys	Lundomys molitor	
884	Franklin's Ground Squirrel	Poliocitellus franklinii	1-5 yrs
885	Bridled Nail-Tail Wallaby	Onychogalea fraenata	6-12 yrs
886	Mexican Gray Squirrel	Sciurus aureogaster	6 yrs
887	Rusty-spotted genet	Genetta maculata	
888	Greater false vampire bat	Lyroderma lyra	
889	Greater spot-nosed monkey	Cercopithecus nictitans	
890	Northern naked-tailed armadillo	Cabassous centralis	
891	Abyssinian genet	Genetta abyssinica	
892	Striped Field Mouse	Apodemus agrarius	1-4 yrs
893	Desert Woodrat	Neotoma lepida	3-5 yrs
894	Brown Woolly Monkey	Lagothrix lagothricha	25-30 yrs
895	Calabar angwantibo	Arctocebus calabarensis	
896	Grey-cheeked mangabey	Lophocebus albigena	
897	Northern greater galago	Otolemur garnettii	
898	Brown Antechinus	Antechinus stuartii	1-3 yrs
899	Tehuantepec jackrabbit	Lepus flavigularis	
900	Guatemalan Black Howler	Alouatta pigra	up to 20 yrs
901	Naked-rumped tomb bat	Taphozous nudiventris	
902	Caucasian squirrel	Sciurus anomalus	
903	Southern Muriqui	Brachyteles arachnoides	
904	African pygmy squirrel	Myosciurus pumilio	
905	Brown-mantled tamarin	Leontocebus fuscicollis	
906	Merriam's Kangaroo Rat	Dipodomys merriami	9 yrs
907	Seychelles fruit bat	Pteropus seychellensis	
908	Spotted bat	Euderma maculatum	
909	Red forest duiker	Cephalophus natalensis	
910	Nasuella olivacea	Nasuella olivacea	
911	African brush-tailed porcupine	Atherurus africanus	
912	L'Hoest's Monkey	Cercopithecus lhoesti	above 30 yrs
913	Northern grasshopper mouse	Onychomys leucogaster	
914	Brown Howler	Alouatta guariba	15-20 yrs
915	Burmeister's porpoise	Phocoena spinipinnis	
916	Red goral	Naemorhedus baileyi	
917	King Colobus	Colobus polykomos	23.5 yrs
918	Pig-tailed langur	Simias concolor	
919	Banded Hare-Wallaby	Lagostrophus fasciatus	6 yrs
920	Western harvest mouse	Reithrodontomys megalotis	
921	Arizona gray squirrel	Sciurus arizonensis	
922	Wedge-capped capuchin	Cebus olivaceus	
923	Daurian hedgehog	Mesechinus dauuricus	
924	Eastern falanouc	Eupleres goudotii	
925	White-headed marmoset	Callithrix geoffroyi	
926	Red-Tailed Squirrel	Sciurus granatensis	6-11.5 yrs
927	Northern brown bandicoot	Isoodon macrourus	
928	Natterer's bat	Myotis nattereri	
929	White-Cheeked Spider Monkey	Ateles marginatus	20 yrs
930	Big-Headed Mole-Rat	Tachyoryctes macrocephalus	1-3 yrs
931	Gray-shanked douc	Pygathrix cinerea	
932	Indian Ocean humpback dolphin	Sousa plumbea	
933	Hairy-tailed mole	Parascalops breweri	
934	Derby's woolly opossum	Caluromys derbianus	6.5 years
935	Finlayson's squirrel	Callosciurus finlaysonii	
936	Indonesian mountain weasel	Mustela lutreolina	
937	Owston's palm civet	Chrotogale owstoni	
938	Banded surili	Presbytis femoralis	
939	Mauritian tomb bat	Taphozous mauritianus	
940	Chacoan pygmy opossum	Chacodelphys formosa	
941	Seven-banded armadillo	Dasypus septemcinctus	
942	Somali hedgehog	Atelerix sclateri	
943	Western tree hyrax	Dendrohyrax dorsalis	
944	Guiana dolphin	Sotalia guianensis	
945	Grandidier's mongoose	Galidictis grandidieri	
946	Greater long-nosed bat	Leptonycteris nivalis	
947	Chacoan mara	Dolichotis salinicola	
948	Townsend's Chipmunk	Neotamias townsendii	2-7 yrs
949	Red-Necked Pademelon	Thylogale thetis	9 yrs
950	Eastern black crested gibbon	Nomascus nasutus	
951	Golden-Mantled Tree-Kangaroo	Dendrolagus pulcherrimus	5-15 yrs
952	Eastern Pygmy Possum	Cercartetus nanus	5-7.5 yrs
953	Pardine genet	Genetta pardina	
954	Mongalla gazelle	Eudorcas albonotata	
955	Tantalus monkey	Chlorocebus tantalus	
956	Narrow-striped mongoose	Mungotictis decemlineata	
957	Bechstein's bat	Myotis bechsteinii	
958	Big-eared opossum	Didelphis aurita	
959	Uinta Chipmunk	Neotamias umbrinus	2 yrs
960	Roosevelt's muntjac	Muntiacus rooseveltorum	
961	Pipistrellus raceyi	Pipistrellus raceyi	
962	Bornean White-Bearded Gibbon	Hylobates albibarbis	25 yrs
963	Southern red-backed vole	Myodes gapperi	
964	Petter's big-footed mouse	Macrotarsomys petteri	
965	Woolly hare	Lepus oiostolus	
966	Tundra vole	Microtus oeconomus	
967	Asiatic brush-tailed porcupine	Atherurus macrourus	
968	Wahlberg's Epauletted Fruit Bat	Epomophorus wahlbergi	10 yrs
969	Lesula	Cercopithecus lomamiensis	28 yrs
970	Desert hare	Lepus tibetanus	
971	Pied bat	Niumbaha superba	
972	Pemba flying fox	Pteropus voeltzkowi	
973	Short-tailed mongoose	Herpestes brachyurus	
974	Red-Bellied Lemur	Eulemur rubriventer	20-25 yrs
975	Eastern hoolock gibbon	Hoolock leuconedys	
976	Miniopterus griveaudi	Miniopterus griveaudi	
977	Pretty-Faced Wallaby	Macropus parryi	10 yrs
978	Miniopterus aelleni	Miniopterus aelleni	
979	Rafinesque's big-eared bat	Corynorhinus rafinesquii	
980	Black-striped capuchin	Sapajus libidinosus	
981	Red-Flanked Duiker	Cephalophus rufilatus	5-15 yrs
982	Tufted ground squirrel	Rheithrosciurus macrotis	
983	Sharpe's Grysbok	Raphicerus sharpei	
984	Angolan slender mongoose	Galerella flavescens	
985	Greater white-toothed shrew	Crocidura russula	1.5 years
986	Cairo Spiny Mouse	Acomys cahirinus	4 yrs
987	Florida Mouse	Podomys floridanus	1-7.4 yrs
988	Pygmy mouse lemur	Microcebus myoxinus	
989	Bare-bellied hedgehog	Paraechinus nudiventris	
990	Woodland Dormouse	Graphiurus murinus	5-6 yrs
991	Oryzomys couesi	Oryzomys couesi	
992	Ginkgo-toothed beaked whale	Mesoplodon ginkgodens	
993	Greater hedgehog tenrec	Setifer setosus	
994	Northern common cuscus	Phalanger orientalis	
995	Jentink's duiker	Cephalophus jentinki	
996	True's beaked whale	Mesoplodon mirus	
997	Northern Sportive Lemur	Lepilemur septentrionalis	8-15 yrs
998	Lesser noctule	Nyctalus leisleri	
999	Nasuella meridensis	Nasuella meridensis	
1000	White-lipped tamarin	Saguinus labiatus	
1001	Brown four-eyed opossum	Metachirus nudicaudatus	
1002	Red and white giant flying squirrel	Petaurista alborufus	
1003	Grey long-eared bat	Plecotus austriacus	
1004	Whiskered bat	Myotis mystacinus	
1005	Arunachal macaque	Macaca munzala	
1006	Bushy-tailed mongoose	Bdeogale crassicauda	
1007	White-bellied spider monkey	Ateles belzebuth	
1008	Southern long-nosed armadillo	Dasypus hybridus	
1009	Red serow	Capricornis rubidus	
1010	Tube-lipped nectar bat	Anoura fistulata	
1011	Large bamboo rat	Rhizomys sumatrensis	
1012	Tent-making bat	Uroderma bilobatum	
1013	Black-footed gray langur	Semnopithecus hypoleucos	
1014	Black squirrel monkey	Saimiri vanzolinii	
1015	Ugandan red colobus	Piliocolobus tephrosceles	
1016	Yuma myotis	Myotis yumanensis	
1017	Dassie rat	Petromus typicus	
1018	Lesser white-toothed shrew	Crocidura suaveolens	
1019	Sulawesi palm civet	Macrogalidia musschenbroekii	
1020	Central African oyan	Poiana richardsonii	
1021	Striped Ground Squirrel	Xerus erythropus	2-6 yrs
1022	Lesser false vampire bat	Megaderma spasma	
1023	Black Capuchin	Sapajus nigritus	
1024	Black Duiker	Cephalophus niger	10-14 yrs
1025	Black musk deer	Moschus fuscus	
1026	Andean hairy armadillo	Chaetophractus nationi	
1027	California leaf-nosed bat	Macrotus californicus	
1028	Black-spotted cuscus	Spilocuscus rufoniger	
1029	Nabarlek	Petrogale concinna	17 yrs
1030	Golden Bandicoot	Isoodon auratus	2-3 yrs
1031	Greater fairy armadillo	Calyptophractus retusus	
1032	Northern ghost bat	Diclidurus albus	
1033	Ryukyu spiny rat	Tokudaia osimensis	
1034	Greater long-nosed armadillo	Dasypus kappleri	
1035	Bates's pygmy antelope	Nesotragus batesi	
1036	Eastern lowland olingo	Bassaricyon alleni	
1037	Bunyoro rabbit	Poelagus marjorita	
1038	Andaman shrew	Crocidura andamanensis	
1039	Spotted Ground Squirrel	Xerospermophilus spilosoma	2-3 yrs
1040	Maroon Leaf Monkey	Presbytis rubicunda	
1041	Tropical bottlenose whale	Indopacetus pacificus	
1042	Small-toothed sportive lemur	Lepilemur microdon	
1043	Speckled Ground Squirrel	Spermophilus suslicus	1-6 yrs
1044	Abbott's duiker	Cephalophus spadix	
1045	Gray's beaked whale	Mesoplodon grayi	
1046	Mexican mouse opossum	Marmosa mexicana	
1047	Lesser Spot-Nosed Monkey	Cercopithecus petaurista	29 yrs
1048	Korean hare	Lepus coreanus	
1049	Red-Fronted Lemur	Eulemur rufifrons	20-25 yrs
1050	Transandinomys bolivaris	Transandinomys bolivaris	
1051	Silvery Marmoset	Mico argentatus	16 yrs
1052	Malbrouck	Chlorocebus cynosuros	
1053	Angolan genet	Genetta angolensis	
1054	Canyon bat	Parastrellus hesperus	
1055	Philippine slow loris	Nycticebus menagensis	
1056	Haussa genet	Genetta thierryi	
1057	North American brown lemming	Lemmus trimucronatus	
1058	Buffy-tufted marmoset	Callithrix aurita	
1059	Black shrew	Suncus ater	
1060	Ghost-faced bat	Mormoops megalophylla	
1061	Black-shanked douc	Pygathrix nigripes	
1062	Giant forest genet	Genetta victoriae	
1063	Bornean horseshoe bat	Rhinolophus borneensis	
1064	Western barbastelle	Barbastella barbastellus	
1065	Maxwell's duiker	Philantomba maxwellii	
1066	Dryas monkey	Cercopithecus dryas	
1067	New Guinean quoll	Dasyurus albopunctatus	
1068	Müller's gibbon	Hylobates muelleri	
1069	Eastern small-footed myotis	Myotis leibii	
1070	Armored rat	Hoplomys gymnurus	
1071	Crested servaline genet	Genetta cristata	
1072	Brown-tailed mongoose	Salanoia concolor	
1073	Lyle's Flying Fox	Pteropus lylei	
1074	Black Agouti	Dasyprocta fuliginosa	up to 18 yrs
1075	Myotis vivesi	Myotis vivesi	
1076	Gongshan muntjac	Muntiacus gongshanensis	
1077	Mexican long-tongued bat	Choeronycteris mexicana	
1078	Brazilian squirrel	Sciurus aestuans	
1079	Eastern Woolly Lemur	Avahi laniger	10 yrs
1080	Madagascan Flying Fox	Pteropus rufus	6-17 yrs
1081	King genet	Genetta poensis	
1082	Alcathoe bat	Myotis alcathoe	
1083	Southern naked-tailed armadillo	Cabassous unicinctus	
1084	Atlantic humpback dolphin	Sousa teuszii	
1085	California myotis	Myotis californicus	
1086	Northern red-backed vole	Myodes rutilus	
1087	Mexican fox squirrel	Sciurus nayaritensis	
1088	Golden-rumped elephant shrew	Rhynchocyon chrysopygus	
1089	Granada hare	Lepus granatensis	
1090	Big-eared woolly bat	Chrotopterus auritus	
1091	Gray snub-nosed monkey	Rhinopithecus brelichi	
1092	Parti-coloured bat	Vespertilio murinus	
1093	Greater spear-nosed bat	Phyllostomus hastatus	
1094	Moor macaque	Macaca maura	
1095	Chinese hare	Lepus sinensis	
1096	Crested capuchin	Sapajus robustus	
1097	Aders's duiker	Cephalophus adersi	
1098	Kloss's gibbon	Hylobates klossii	
1099	Harpy fruit bat	Harpyionycteris whiteheadi	
1100	Red-tailed chipmunk	Neotamias ruficaudus	
1101	Rothschild's porcupine	Coendou rothschildi	
1102	Tonkean Macaque	Macaca tonkeana	28 yrs
1103	Angolan talapoin	Miopithecus talapoin	
1104	Plains viscacha	Lagostomus maximus	
1105	Meller's mongoose	Rhynchogale melleri	
1106	Himalayan pika	Ochotona himalayana	
1107	Broad-striped Malagasy mongoose	Galidictis fasciata	
1108	Montane vole	Microtus montanus	
1109	Azara's night monkey	Aotus azarae	
1110	Laxmann's shrew	Sorex caecutiens	
1111	Gray woolly monkey	Lagothrix cana	
1112	Black-footed mongoose	Bdeogale nigripes	
1113	Crowned Sifaka	Propithecus coronatus	17.5 yrs
1114	Japanese mole	Mogera wogura	
1115	Ursine tree-kangaroo	Dendrolagus ursinus	
1116	Andean white-eared opossum	Didelphis pernigra	
1117	Long-nosed mongoose	Herpestes naso	
1118	Common Squirrel Monkey	Saimiri sciureus	21-27 yrs
1119	Seba's short-tailed bat	Carollia perspicillata	
1120	Cotton Mouse	Peromyscus gossypinus	4-5 mos
1121	Broom hare	Lepus castroviejoi	
1122	Mazama pocket gopher	Thomomys mazama	
1123	Western lowland olingo	Bassaricyon medius	
1124	Bronze quoll	Dasyurus spartacus	
1125	North African elephant shrew	Petrosaltator rozeti	
1126	Malagasy mountain mouse	Monticolomys koopmani	
1127	Alpine Chipmunk	Neotamias alpinus	2-3 yrs
1128	Lodgepole chipmunk	Neotamias speciosus	
1129	Lac Alaotra bamboo lemur	Hapalemur alaotrensis	
1130	Common blossom bat	Syconycteris australis	
1131	Cliff Chipmunk	Neotamias dorsalis	12.5 yrs
1132	Corsican hare	Lepus corsicanus	
1133	Linnaeus's mouse opossum	Marmosa murina	
1134	Gray-bellied night monkey	Aotus lemurinus	
1135	Central American red brocket	Mazama temama	
1136	Amazonian brown brocket	Mazama nemorivaga	
1137	Collared Brown Lemur	Eulemur collaris	20-25 yrs
1138	Eastern lesser bamboo lemur	Hapalemur griseus	
1139	Siberian brown lemming	Lemmus sibiricus	
1140	Moustached guenon	Cercopithecus cephus	
1141	Transandinomys talamancae	Transandinomys talamancae	
1142	West African oyan	Poiana leightoni	
1143	Red-eared guenon	Cercopithecus erythrotis	
1144	Black titi	Cheracebus lugens	
1145	Gabon Talapoin	Miopithecus ogouensis	28 yrs
1146	Hairy long-nosed armadillo	Dasypus pilosus	
1147	Greater naked-tailed armadillo	Cabassous tatouay	
1148	White-eared titi	Plecturocebus donacophilus	
1149	Yucatan brown brocket	Mazama pandora	
1150	Mohave Ground Squirrel	Xerospermophilus mohavensis	5-7.8 yrs
1151	Hamlyn's monkey	Cercopithecus hamlyni	
1152	Black-fronted duiker	Cephalophus nigrifons	
1153	Heuglin's gazelle	Eudorcas tilonura	
1154	Western mastiff bat	Eumops perotis	
1155	Franquet's epauletted fruit bat	Epomops franqueti	
1156	Hugh's hedgehog	Mesechinus hughi	
1157	Mexican cottontail	Sylvilagus cunicularius	
1158	Florida bonneted bat	Eumops floridanus	
1159	Campbell's mona monkey	Cercopithecus campbelli	
1160	Black-eared flying fox	Pteropus melanotus	
1161	Tolai hare	Lepus tolai	
1162	Yepes's mulita	Dasypus mazzai	
1163	Blue-eyed spotted cuscus	Spilocuscus wilsoni	
1164	Jackson's mongoose	Bdeogale jacksoni	
1165	Ethiopian dwarf mongoose	Helogale hirtula	
1166	Philippine porcupine	Hystrix pumila	
1167	Desert red bat	Lasiurus blossevillii	
1168	Tarai gray langur	Semnopithecus hector	
1169	Kaapori capuchin	Cebus kaapori	
1170	Black crested mangabey	Lophocebus aterrimus	
1171	Milne-Edwards's sifaka	Propithecus edwardsi	
1172	Golden-mantled tamarin	Leontocebus tripartitus	
1173	Northern bog lemming	Synaptomys borealis	
1174	Elliot's short-tailed shrew	Blarina hylophaga	
1175	Gambian mongoose	Mungos gambianus	
1176	Sanje mangabey	Cercocebus sanjei	
1177	Bale Mountains vervet	Chlorocebus djamdjamensis	
1178	Broad-Footed Mole	Scapanus latimanus	1-2 yrs
1179	Northern Muriqui	Brachyteles hypoxanthus	30 yrs
1180	Ursine colobus	Colobus vellerosus	
1181	Nancy Ma's night monkey	Aotus nancymaae	
1182	Townsend's mole	Scapanus townsendii	
1183	Common gundi	Ctenodactylus gundi	
1184	White-throated guenon	Cercopithecus erythrogaster	
1185	Abyssinian hare	Lepus habessinicus	
1186	Patagonian opossum	Lestodelphys halli	
1187	Guyanan red howler	Alouatta macconnelli	
1188	Wied's marmoset	Callithrix kuhlii	
1189	Western jumping mouse	Zapus princeps	
1190	Ussuri shrew	Sorex mirabilis	
1191	Buffy-Headed Marmoset	Callithrix flaviceps	10-16 yrs
1192	Bourlon's genet	Genetta bourloni	
1193	Web-footed tenrec	Microgale mergulus	
1194	Pygmy brocket	Mazama nana	
1195	White-Fronted Brown Lemur	Eulemur albifrons	20-36 yrs
1196	Mountain giant Sunda rat	Sundamys infraluteus	
1197	Kuhl's pipistrelle	Pipistrellus kuhlii	
1198	Moustached Tamarin	Saguinus mystax	20 yrs
1199	Hopi Chipmunk	Neotamias rufus	3-8 yrs
1200	Perrier's sifaka	Propithecus perrieri	
1201	Llanos long-nosed armadillo	Dasypus sabanicola	
1202	Great evening bat	Ia io	
1203	Humboldt's squirrel monkey	Saimiri cassiquiarensis	
1204	Black tamarin	Saguinus niger	
1205	Cape golden mole	Chrysochloris asiatica	
1206	Stejneger's beaked whale	Mesoplodon stejnegeri	
1207	European free-tailed bat	Tadarida teniotis	
1208	Collared mongoose	Herpestes semitorquatus	
1209	Akodon spegazzinii	Akodon spegazzinii	
1210	Somalian slender mongoose	Galerella ochracea	
1211	Pousargues's mongoose	Dologale dybowskii	
1212	Drymoreomys	Drymoreomys albimaculatus	
1213	Alexander's kusimanse	Crossarchus alexandri	
1214	Ethiopian highland hare	Lepus starcki	
1215	Black bearded saki	Chiropotes satanas	
1216	Ogilby's duiker	Cephalophus ogilbyi	
1217	Bicolored-spined porcupine	Coendou bicolor	
1218	Johnston's genet	Genetta johnstoni	
1219	East African springhare	Pedetes surdaster	
1220	Ground cuscus	Phalanger gymnotis	
1221	Three-striped night monkey	Aotus trivirgatus	
1222	Perrin's beaked whale	Mesoplodon perrini	
1223	Biak glider	Petaurus biacensis	
1224	San Joaquin Antelope Squirrel	Ammospermophilus nelsoni	8 mos-4 yrs
1225	Black-shouldered opossum	Caluromysiops irrupta	
1226	Madras treeshrew	Anathana ellioti	
1227	Angolan kusimanse	Crossarchus ansorgei	
1228	Wimmer's shrew	Crocidura wimmeri	
1229	Olive colobus	Procolobus verus	
1230	Cave nectar bat	Eonycteris spelaea	
1231	Sun-tailed monkey	Allochrocebus solatus	
1232	Euryoryzomys emmonsae	Euryoryzomys emmonsae	
1233	Sonoma Chipmunk	Neotamias sonomae	3-5 yrs
1234	Pagai Island macaque	Macaca pagensis	
1235	Mindomys	Mindomys hammondi	
1236	Oryzomys gorgasi	Oryzomys gorgasi	
1237	Red-handed howler	Alouatta belzebul	
1238	Little red brocket	Mazama rufina	
1239	Long-Tongued Nectar Bat	Macroglossus minimus	
1240	Hairy-eared dwarf lemur	Allocebus trichotis	
1241	Pond bat	Myotis dasycneme	
1242	Lesser Egyptian gerbil	Gerbillus gerbillus	
1243	Plains viscacha rat	Tympanoctomys barrerae	
1244	Thomas's langur	Presbytis thomasi	
1245	Sumatran surili	Presbytis melalophos	
1246	Rufous elephant shrew	Elephantulus rufescens	
1247	Afghan pika	Ochotona rufescens	
1248	Roosmalens' dwarf marmoset	Mico humilis	
1249	Japanese shrew mole	Urotrichus talpoides	
1250	Geoffroy's bat	Myotis emarginatus	
1251	Crested mona monkey	Cercopithecus pogonias	
1252	Red-bellied titi	Plecturocebus moloch	
1253	Red Lemur	Eulemur rufus	20-25 yrs
1254	Andrews' beaked whale	Mesoplodon bowdoini	
1255	White-bellied duiker	Cephalophus leucogaster	
1256	Long-eared chipmunk	Neotamias quadrimaculatus	
1257	Macroscelides proboscideus	Macroscelides proboscideus	
1258	Small flying fox	Pteropus hypomelanus	
1259	Heck's macaque	Macaca hecki	
1260	Elegant fat-tailed mouse opossum	Thylamys elegans	
1261	Rondo dwarf galago	Paragalago rondoensis	
1262	Small red brocket	Mazama bororo	
1263	Seminole bat	Lasiurus seminolus	
1264	Hector's beaked whale	Mesoplodon hectori	
1265	Oryzomys dimidiatus	Oryzomys dimidiatus	
1266	Northern yellow bat	Lasiurus intermedius	
1267	Brown's pademelon	Thylogale browni	
1268	Preuss's monkey	Allochrocebus preussi	
1269	Heart-nosed bat	Cardioderma cor	
1270	Turkestan red pika	Ochotona rutila	
1271	Brown Mouse Lemur	Microcebus rufus	6-15 yrs
1272	Bhutan giant flying squirrel	Petaurista nobilis	
1273	Coast mole	Scapanus orarius	
1274	Wrinkle-faced bat	Centurio senex	
1275	Long-tailed shrew	Sorex dispar	
1276	Black-mantled tamarin	Leontocebus nigricollis	
1277	Palawan fruit bat	Acerodon leucotis	
1278	Pacific jumping mouse	Zapus trinotatus	
1279	Ethiopian hare	Lepus fagani	
1280	Booted macaque	Macaca ochreata	
1281	Bare-eared squirrel monkey	Saimiri ustus	
1282	White-Fronted Capuchin	Cebus albifrons	15-40 yrs
1283	Siberut macaque	Macaca siberu	
1284	Dian's tarsier	Tarsius dentatus	
1285	Long-eared myotis	Myotis evotis	
1286	Eremoryzomys	Eremoryzomys polius	
1287	Flat-headed kusimanse	Crossarchus platycephalus	
1288	Egyptian tomb bat	Taphozous perforatus	
1289	Fringe-lipped bat	Trachops cirrhosus	
1290	Guianan white-eared opossum	Didelphis imperfecta	
1291	Crawford's gray shrew	Notiosorex crawfordi	
1292	Yarkand hare	Lepus yarkandensis	
1293	Pennant's colobus	Procolobus pennantii	
1294	Sulawesi dwarf cuscus	Strigocuscus celebensis	
1295	Southeastern myotis	Myotis austroriparius	
1296	Smith's bush squirrel	Paraxerus cepapi	
1297	Dwarf brocket	Mazama chunyi	
1298	Highland streaked tenrec	Hemicentetes nigriceps	
1299	Nimba otter shrew	Micropotamogale lamottei	
1300	Algerian mouse	Mus spretus	
1301	Hubbs' beaked whale	Mesoplodon carlhubbsi	
1302	Blind mole	Talpa caeca	
1303	Mediterranean water shrew	Neomys anomalus	
1304	White-striped dorcopsis	Dorcopsis hageni	
1305	Southern giant slender-tailed cloud rat	Phloeomys cumingi	
1306	Ethiopian epauletted fruit bat	Epomophorus labiatus	
1307	Yellow-winged bat	Lavia frons	
1308	Manchurian hare	Lepus mandshuricus	
1309	Prince Demidoff's bushbaby	Galagoides demidovii	
1310	Sunda porcupine	Hystrix javanica	
1311	Long-fingered bat	Myotis capaccinii	
1312	Rock vole	Microtus chrotorrhinus	
1313	Vagrant shrew	Sorex vagrans	
1314	Hodgson's giant flying squirrel	Petaurista magnificus	
1315	Water vole	Microtus richardsoni	
1316	Javan surili	Presbytis comata	
1317	Merriam's Chipmunk	Neotamias merriami	5 yrs
1318	Himalayan field rat	Rattus nitidus	
1319	Velvety free-tailed bat	Molossus molossus	
1320	Geoffroy's rousette	Rousettus amplexicaudatus	
1321	Sclater's guenon	Cercopithecus sclateri	
1322	Northern voalavo	Voalavo gymnocaudus	
1323	Northern birch mouse	Sicista betulina	
1324	Greater guinea pig	Cavia magna	
1325	Tana River mangabey	Cercocebus galeritus	
1326	Leschenault's rousette	Rousettus leschenaultii	
1327	Spotted-winged fruit bat	Balionycteris maculata	
1328	Sulawesi flying fox	Acerodon celebensis	
1329	Helan Shan pika	Ochotona argentata	
1330	Black-tailed marmoset	Mico melanurus	
1331	Burmese hare	Lepus peguensis	
1332	Gray-headed lemur	Eulemur cinereiceps	
1333	Agile mangabey	Cercocebus agilis	
1334	Birdlike noctule	Nyctalus aviator	
1335	Pallas's long-tongued bat	Glossophaga soricina	
1336	Southwestern water vole	Arvicola sapidus	
1337	Black-tailed tree rat	Thallomys nigricauda	
1338	Madagascan fruit bat	Eidolon dupreanum	
1339	Weyns's duiker	Cephalophus weynsi	
1340	Deppe's squirrel	Sciurus deppei	
1341	Hatinh langur	Trachypithecus hatinhensis	
1342	New Holland Mouse	Pseudomys novaehollandiae	1.5-2 yrs
1343	Pygmy beaked whale	Mesoplodon peruvianus	
1344	Pallas's pika	Ochotona pallasi	
1345	Anderson's four-eyed opossum	Philander andersoni	
1346	Golden-Bellied Mangabey	Cercocebus chrysogaster	20-35 yrs
1347	Muennink's spiny rat	Tokudaia muenninki	
1348	Omilteme cottontail	Sylvilagus insonus	
1349	Banana bat	Musonycteris harrisoni	
1350	Long-legged myotis	Myotis volans	
1351	Yunnan hare	Lepus comus	
1352	Long-tailed pygmy possum	Cercartetus caudatus	
1353	Zanzibar bushbaby	Paragalago zanzibaricus	
1354	Gorontalo macaque	Macaca nigrescens	
1355	Talaud bear cuscus	Ailurops melanotis	
1356	Four-toed elephant shrew	Petrodromus tetradactylus	
1357	Duthie's golden mole	Chlorotalpa duthieae	
1358	Large-eared tenrec	Geogale aurita	
1359	Peters's duiker	Cephalophus callipygus	
1360	Seri's tree-kangaroo	Dendrolagus stellarum	
1361	Lagidium ahuacaense	Lagidium ahuacaense	
1362	Plains Rat	Pseudomys australis	1-4.5 yrs
1363	Feather-tailed possum	Distoechurus pennatus	
1364	Sanford's brown lemur	Eulemur sanfordi	
1365	Sangihe tarsier	Tarsius sangirensis	
2309	Greater dwarf shrew	Suncus lixus	
1366	Chacoan naked-tailed armadillo	Cabassous chacoensis	
1367	Yellow-cheeked chipmunk	Neotamias ochrogenys	
1368	Bicolored shrew	Crocidura leucodon	
1369	Sarawak surili	Presbytis chrysomelas	
1370	Small Japanese mole	Mogera imaizumii	
1371	Gold-and-white marmoset	Mico chrysoleucos	
1372	Southern needle-clawed bushbaby	Euoticus elegantulus	
1373	Robinson's mouse opossum	Marmosa robinsoni	
1374	Tres Marias rabbit	Sylvilagus graysoni	
1375	Colombian woolly monkey	Lagothrix lugens	
1376	Dice's cottontail	Sylvilagus dicei	
1377	Greater Dwarf Lemur	Cheirogaleus major	20 yrs
1378	Western woolly lemur	Avahi occidentalis	
1379	Bolivian red howler	Alouatta sara	
1380	White-winged flying fox	Desmalopex leucopterus	
1381	Southern common cuscus	Phalanger mimicus	
1382	Lesser mouse-eared bat	Myotis blythii	
1383	Harenna shrew	Crocidura harenna	
1384	Grey red-backed vole	Myodes rufocanus	
1385	Salim Ali's fruit bat	Latidens salimalii	
1386	Four-toed jerboa	Allactaga tetradactyla	
1387	Cape elephant shrew	Elephantulus edwardii	
1388	Short-snouted elephant shrew	Elephantulus brachyrhynchus	
1389	Kalinowski's mouse opossum	Hyladelphys kalinowskii	
1390	Large-headed capuchin	Sapajus macrocephalus	
1391	Chinese red pika	Ochotona erythrotis	
1392	Proboscis bat	Rhynchonycteris naso	
1393	Thick-spined porcupine	Hystrix crassispinis	
1394	Aldabra flying fox	Pteropus aldabrensis	
1395	European pine vole	Microtus subterraneus	
1396	Von der Decken's sifaka	Propithecus deckenii	
1397	White-footed tamarin	Saguinus leucopus	
1398	Ilin Island cloudrunner	Crateromys paulus	
1399	White marmoset	Mico leucippe	
1400	Golden angwantibo	Arctocebus aureus	
1401	Guramba shrew	Crocidura phaeura	
1402	Ring-tailed ground squirrel	Notocitellus annulatus	
1403	Western small-footed bat	Myotis ciliolabrum	
1404	Mountain treeshrew	Tupaia montana	
1405	Grayish mouse opossum	Tlacuatzin canescens	
1406	Sagebrush vole	Lemmiscus curtatus	
1407	Andean porcupine	Coendou quichua	
1408	Short-tailed gymnure	Hylomys suillus	
1409	Cascade golden-mantled ground squirrel	Callospermophilus saturatus	
1410	Bastard big-footed mouse	Macrotarsomys bastardi	
1411	Large treeshrew	Tupaia tana	
1412	Northern giant mouse lemur	Mirza zaza	
1413	Checkered elephant shrew	Rhynchocyon cirnei	
1414	Great Basin pocket mouse	Perognathus parvus	
1415	Borneo fruit bat	Aethalops aequalis	
1416	Indochinese lutung	Trachypithecus germaini	
1417	Echigo mole	Mogera etigo	
1418	Monk Saki	Pithecia monachus	14-24 yrs
1419	Spix's night monkey	Aotus vociferans	
1420	Townsend's vole	Microtus townsendii	
1421	Fringed myotis	Myotis thysanodes	
1422	Cameroon clawless otter	Aonyx congicus	
1423	Silvery woolly monkey	Lagothrix poeppigii	
1424	Gray dorcopsis	Dorcopsis luctuosa	
1425	Rio Acari marmoset	Mico acariensis	
1426	Panay cloudrunner	Crateromys heaneyi	
1427	Forrest's pika	Ochotona forresti	
1428	Lariang tarsier	Tarsius lariang	
1429	Japanese mountain mole	Euroscaptor mizura	
1430	Dusky bushbaby	Galago matschiei	
1431	Nicobar treeshrew	Tupaia nicobarica	
1432	Large-eared free-tailed bat	Otomops martiensseni	
1433	Big free-tailed bat	Nyctinomops macrotis	
1434	Lucifer titi	Cheracebus lucifer	
1435	Pygmy short-tailed opossum	Monodelphis kunsi	
1436	Golden bat	Mimon bennettii	
1437	Parnell's mustached bat	Pteronotus parnellii	
1438	Large Mindoro forest mouse	Apomys gracilirostris	
1439	Spotted giant flying squirrel	Petaurista elegans	
1440	Bale shrew	Crocidura bottegoides	
1441	Atlantic titi	Callicebus personatus	
1442	Hoffmann's pika	Ochotona hoffmanni	
1443	Idaho Ground Squirrel	Urocitellus brunneus	5 yrs
1444	Red-backed bearded saki	Chiropotes chiropotes	
1445	Ugandan musk shrew	Crocidura mutesae	
1446	Natuna Island surili	Presbytis natunae	
1447	Azumi shrew	Sorex hosonoi	
1448	Collins' squirrel monkey	Saimiri collinsi	
1449	Peruvian night monkey	Aotus miconax	
1450	Mentawai langur	Presbytis potenziani	
1451	Santa Catarina's guinea pig	Cavia intermedia	
1452	Philippine tube-nosed fruit bat	Nyctimene rabori	
1453	Reddish-gray mouse lemur	Microcebus griseorufus	
1454	Preuss's red colobus	Procolobus preussi	
1455	Greater sac-winged bat	Saccopteryx bilineata	
1456	Swamp musk shrew	Crocidura mariquensis	
1457	Brown titi	Plecturocebus brunneus	
1458	Andean squirrel	Sciurus pucheranii	
1459	Santarem marmoset	Mico humeralifer	
1460	Mountain cuscus	Phalanger carmelitae	
1461	Cave myotis	Myotis velifer	
1462	Alpine shrew	Sorex alpinus	
1463	Senkaku mole	Mogera uchidai	
1464	Somali bushbaby	Galago gallarum	
1465	Eastern rock elephant shrew	Elephantulus myurus	
1466	Ursine howler	Alouatta arctoidea	
1467	Indochinese hog deer	Hyelaphus annamiticus	
1468	Pinyon Mouse	Peromyscus truei	
1469	Bailey's shrew	Crocidura baileyi	
1470	Venezuelan lowland rabbit	Sylvilagus varynaensis	
1471	White-thighed surili	Presbytis siamensis	
1472	Lesser mouse-tailed bat	Rhinopoma hardwickii	
1473	Caquetá titi	Plecturocebus caquetensis	
1474	Pygmy fruit bat	Aethalops alecto	
1475	Canary big-eared bat	Plecotus teneriffae'	
1476	Black dwarf porcupine	Coendou nycthemera	
1477	Brown dorcopsis	Dorcopsis muelleri	
1478	Gray-handed night monkey	Aotus griseimembra	
1479	MacMillan's shrew	Crocidura macmillani	
1480	Madagascar sucker-footed bat	Myzopoda aurita	
1481	Oligoryzomys longicaudatus	Oligoryzomys longicaudatus	
1482	Yucatan squirrel	Sciurus yucatanensis	
1483	Kilimanjaro shrew	Crocidura monax	
1484	Creeping vole	Microtus oregoni	
1485	Agile gracile opossum	Gracilinanus agilis	
1486	Bioko Allen's bushbaby	Sciurocheirus alleni	
1487	Waigeou cuscus	Spilocuscus papuensis	
1488	Western heather vole	Phenacomys intermedius	
1489	Udzungwa red colobus	Procolobus gordonorum	
1490	Little collared fruit bat	Myonycteris torquata	
1491	Montane shrew	Sorex monticolus	
1492	Nicobar shrew	Crocidura nicobarica	
1493	Guayaquil squirrel	Sciurus stramineus	
1494	Black-headed marmoset	Mico nigriceps	
1495	Canarian shrew	Crocidura canariensis	
1496	Black-headed night monkey	Aotus nigriceps	
1497	Kolar leaf-nosed bat	Hipposideros hypophyllus	
1498	Mole-like rice tenrec	Oryzorictes hova	
1499	Black-bearded tomb bat	Taphozous melanopogon	
1500	Southern lesser bamboo lemur	Hapalemur meridionalis	
1501	Golden-backed uakari	Cacajao melanocephalus	
1502	Sumatran porcupine	Hystrix sumatrae	
1503	Chinese giant flying squirrel	Petaurista xanthotis	
1504	Peleng tarsier	Tarsius pelengensis	
1505	Furry-eared dwarf lemur	Cheirogaleus crossleyi	
1506	Bushveld elephant shrew	Elephantulus intufi	
1507	Collared titi	Cheracebus torquatus	
1508	Emilia's marmoset	Mico emiliae	
1509	Neblina uakari	Cacajao hosomi	
1510	Giant bushy-tailed cloud rat	Crateromys schadenbergi	
1511	Southeastern four-eyed opossum	Philander frenatus	
1512	Hildegarde's broad-headed mouse	Zelotomys hildegardeae	
1513	Julia Creek Dunnart	Sminthopsis douglasi	2-3 yrs
1514	Hewitt's red rock hare	Pronolagus saundersiae	
1515	Silky cuscus	Phalanger sericeus	
1516	Western lesser bamboo lemur	Hapalemur occidentalis	
1517	Patrizi's trident leaf-nosed bat	Asellia patrizii	
1518	Black-rumped agouti	Dasyprocta prymnolopha	
1519	Peters's dwarf epauletted fruit bat	Micropteropus pusillus	
1520	Southern yellow bat	Lasiurus ega	
1521	Fiery squirrel	Sciurus flammifer	
1522	Gerp's mouse lemur	Microcebus gerpi	
1523	Barbara Brown's titi	Callicebus barbarabrownae	
1524	Glass's shrew	Crocidura glassi	
1525	Streaked dwarf porcupine	Coendou ichillus	
1526	Lucina's shrew	Crocidura lucina	
1527	Himalayan mole	Euroscaptor micrura	
1528	Buffy flower bat	Erophylla sezekorni	
1529	Gebe cuscus	Phalanger alexandrae	
1530	Spanish mole	Talpa occidentalis	
1531	Sibree's dwarf lemur	Cheirogaleus sibreei	
1532	Greater mouse-tailed bat	Rhinopoma microphyllum	
1533	Singing vole	Microtus miurus	
1534	Trowbridge's shrew	Sorex trowbridgii	
1535	Cretan shrew	Crocidura zimmermanni	
1536	Long-fingered triok	Dactylopsila palpator	
1537	Superagüi lion tamarin	Leontopithecus caissara	
1538	Amazon dwarf squirrel	Microsciurus flaviventer	
1539	Hildegarde's shrew	Crocidura hildegardeae	
1540	Horsfield's treeshrew	Tupaia javanica	
1541	Amazonian red-sided opossum	Monodelphis glirina	
1542	Long-eared flying mouse	Idiurus macrotis	
1543	Blue-eyed cuscus	Phalanger matabiru	
1544	Dsinezumi shrew	Crocidura dsinezumi	
1545	Andaman spiny shrew	Crocidura hispida	
1546	Silky pocket mouse	Perognathus flavus	
1547	Little golden-mantled flying fox	Pteropus pumilus	
1548	Small dorcopsis	Dorcopsulus vanheurni	
1549	Mottle-faced tamarin	Saguinus inustus	
1550	Gansu pika	Ochotona cansus	
1551	Shortridge's langur	Trachypithecus shortridgei	
1552	Bolivian squirrel	Sciurus ignitus	
1553	Azaras's capuchin	Sapajus cay	
1554	Endo's pipistrelle	Pipistrellus endoi	
1555	Lesser cane rat	Thryonomys gregorianus	
1556	Sahamalaza sportive lemur	Lepilemur sahamalazensis	
1557	Aracá uakari	Cacajao ayresi	
1558	Northern needle-clawed bushbaby	Euoticus pallidus	
1559	Eurasian least shrew	Sorex minutissimus	
1560	Thomas's bushbaby	Galagoides thomasi	
1561	Amazon black howler	Alouatta nigerrima	
1562	Golden-brown mouse lemur	Microcebus ravelobensis	
1563	Grant's bushbaby	Paragalago granti	
1564	Spix's disk-winged bat	Thyroptera tricolor	
1565	White-mantled tamarin	Leontocebus weddelli melanoleucus	
1566	Southern long-nosed bat	Leptonycteris curasoae	
1567	Seram bandicoot	Rhynchomeles prattorum	
1568	Morris's bat	Myotis morrisi	
1569	Macroscelides micus	Macroscelides micus	
1570	Lesser bulldog bat	Noctilio albiventris	
1571	Japanese water shrew	Chimarrogale platycephalus	
1572	Short-tailed shrew tenrec	Microgale brevicaudata	
1573	Fraternal myotis	Myotis frater	
1574	Masoala fork-marked lemur	Phaner furcifer	
1575	Rondon's marmoset	Mico rondoni	
1576	Tundra shrew	Sorex tundrensis	
1577	Pacific shrew	Sorex pacificus	1.5 years
1578	Rio Mayo titi	Plecturocebus oenanthe	
1579	Antillean fruit-eating bat	Brachyphylla cavernarum	
1580	Anderson's shrew mole	Uropsilus andersoni	
1581	True's shrew mole	Dymecodon pilirostris	
1582	Great fruit-eating bat	Artibeus lituratus	
1583	White-tailed mole	Parascaptor leucura	
1584	Mehely's horseshoe bat	Rhinolophus mehelyi	
1585	Red-tailed sportive lemur	Lepilemur ruficaudatus	
1586	White-nosed saki	Chiropotes albinasus	
1587	Nubra pika	Ochotona nubrica	
1588	Slender squirrel	Sundasciurus tenuis	
1589	Gray-bellied caenolestid	Caenolestes caniventer	
1590	Taiga vole	Microtus xanthognathus	1.5 years
1591	Hildegarde's tomb bat	Taphozous hildegardeae	
1592	Hainan gymnure	Neohylomys hainanensis	
1593	Southeastern shrew	Sorex longirostris	
1594	Turuchan pika	Ochotona turuchanensis	
1595	White-fronted surili	Presbytis frontata	
1596	Peters's epauletted fruit bat	Epomophorus crypturus	
1597	Cuban greater funnel-eared bat	Natalus primus	
1598	Juliana's golden mole	Neamblysomus julianae	
1599	Mindoro stripe-faced fruit bat	Styloctenium mindorensis	
1600	Laotian langur	Trachypithecus laotum	
1601	Long-tongued fruit bat	Macroglossus sobrinus	
1602	Koslov's pika	Ochotona koslowi	
1603	Uta Hick's bearded saki	Chiropotes utahicki	
1604	Roman mole	Talpa romana	
1605	Andean caenolestid	Caenolestes condorensis	
1606	Chinese shrew mole	Uropsilus soricipes	
1607	Banggai cuscus	Strigocuscus pelengensis	
1608	Lesser long-tailed shrew tenrec	Microgale longicaudata	
1609	Blasius's horseshoe bat	Rhinolophus blasii	
1610	Tropical ground squirrel	Notocitellus adocetus	
1611	Tenasserim lutung	Trachypithecus barbei	
1612	Indonesian short-nosed fruit bat	Cynopterus titthaecheilus	
1613	Great-tailed triok	Dactylopsila megalura	
1614	Pale spear-nosed bat	Phyllostomus discolor	
1615	Epixerus	Epixerus ebii	
1616	Gracile shrew mole	Uropsilus gracilis	
1617	Malabar spiny dormouse	Platacanthomys lasiurus	
1618	Inquisitive shrew mole	Uropsilus investigator	
1619	Mondolfi's four-eyed opossum	Philander mondolfii	
1620	Kobe mole	Mogera kobeae	
1621	Tsing-ling pika	Ochotona huangensis	
1622	Ornate cuscus	Phalanger ornatus	
1623	Pale fork-marked lemur	Phaner pallescens	
1624	Marca's marmoset	Mico marcai	
1625	Amber Mountain fork-marked lemur	Phaner electromontis	
1626	Underwood's long-tongued bat	Hylonycteris underwoodi	
1627	Gansu mole	Scapanulus oweni	
1628	Hodgson's bat	Myotis formosus	
1629	Weasel sportive lemur	Lepilemur mustelinus	
1630	Mindanao treeshrew	Tupaia everetti	
1631	Black-bearded flying fox	Pteropus melanopogon	
1632	Orange nectar bat	Lonchophylla robusta	
1633	Frosted myotis	Myotis pruinosus	
1634	Martins's tamarin	Saguinus martinsi	
1635	Collie's squirrel	Sciurus colliaei	
1636	Sunda flying fox	Acerodon mackloti	
1637	Jolly's mouse lemur	Microcebus jollyae	
1638	San José brush rabbit	Sylvilagus mansuetus	
1639	Ankarana Sportive Lemur	Lepilemur ankaranensis	
1640	Mindanao pygmy fruit bat	Alionycteris paucidentata	
1641	Javanese flying squirrel	Iomys horsfieldii	
1642	Negros shrew	Crocidura negrina	
1643	Spix's red-handed howler	Alouatta discolor	
1644	Western red-backed vole	Myodes californicus	
1645	Long-tailed forest shrew	Myosorex longicaudatus	
1646	Sepia short-tailed opossum	Monodelphis adusta	
1647	Brazilian gracile opossum	Gracilinanus microtarsus	
1648	Stuhlmann's golden mole	Chrysochloris stuhlmanni	
1649	Merriam's shrew	Sorex merriami	
1650	Northern three-striped opossum	Monodelphis americana	
1651	Kihaule's mouse shrew	Myosorex kihaulei	
1652	Peters's squirrel	Sciurus oculatus	
1653	Northwestern deer mouse	Peromyscus keeni	
1654	Arizona myotis	Myotis occultus	
1655	North African gerbil	Dipodillus campestris	
1656	Thollon's red colobus	Procolobus tholloni	
1657	Yellow-sided opossum	Monodelphis dimidiata	
1658	White-coated titi	Plecturocebus pallescens	
1659	Asian gray shrew	Crocidura attenuata	
1660	Gray-tailed vole	Microtus canicaudus	
1661	Zenker's fruit bat	Scotonycteris zenkeri	
1662	Horsfield's fruit bat	Cynopterus horsfieldii	2.5 years
1663	Great roundleaf bat	Hipposideros armiger	
1664	Long-tailed mole	Scaptonyx fusicaudus	
1665	Yellow-throated squirrel	Sciurus gilvigularis	
1666	McIlhenny's four-eyed opossum	Philander mcilhennyi	
1667	Luzon fruit bat	Otopteropus cartilagonodus	
1668	Western rock elephant shrew	Elephantulus rupestris	
1669	Velvety fruit-eating bat	Enchisthenes hartii	
1670	Ungava collared lemming	Dicrostonyx hudsonius	
1671	Uluguru bushbaby	Paragalago orinus	
1672	Pygmy treeshrew	Tupaia minor	
1673	Thomas's pika	Ochotona thomasi	
1674	Heavy-browed mouse opossum	Marmosa andersoni	
1675	Common tube-nosed fruit bat	Nyctimene albiventer	
1676	Brumback's night monkey	Aotus brumbacki	
1677	Maués marmoset	Mico mauesi	
1678	Insular vole	Microtus abbreviatus	
1679	Brazilian slender opossum	Marmosops paulensis	
1680	Claire's mouse lemur	Microcebus mamiratra	
1681	Peyrieras's woolly lemur	Avahi peyrierasi	
1682	Pocketed free-tailed bat	Nyctinomops femorosaccus	
1683	Little yellow-shouldered bat	Sturnira lilium	
1684	Somali golden mole	Calcochloris tytonis	
1685	Iberian shrew	Sorex granarius	
1686	Northern red-sided opossum	Monodelphis brevicaudata	
1687	Madagascan rousette	Rousettus madagascariensis	
1688	Van Zyl's golden mole	Cryptochloris zyli	
1689	Arfak pygmy bandicoot	Microperoryctes aplini	
1690	Val's gundi	Ctenodactylus vali	
1691	Père David's rock squirrel	Sciurotamias davidianus	
1692	Maranhão red-handed howler	Alouatta ululata	
1693	Caucasian mole	Talpa caucasica	
1694	Junín red squirrel	Sciurus pyrrhinus	
1695	Little woolly mouse opossum	Marmosa phaea	
1696	Osman Hill's mangabey	Lophocebus osmani	
1697	White-footed sportive lemur	Lepilemur leucopus	
1698	Alta Floresta titi	Plecturocebus grovesi	
1699	Nelson's collared lemming	Dicrostonyx nelsoni	
1700	Buff-bellied fat-tailed mouse opossum	Thylamys venustus	
1701	White-tailed titi	Plecturocebus discolor	
1702	Jenkins's shrew	Crocidura jenkinsi	
1703	Woolly mouse opossum	Marmosa demerarae	
1704	Dwarf shrew	Sorex nanus	
1705	Marsupial Mole	Genus Notoryctes	1.5 yrs
1706	Talaud flying fox	Acerodon humilis	
1707	Holochilus brasiliensis	Holochilus brasiliensis	
1708	Ornate titi	Plecturocebus ornatus	
1709	Incan caenolestid	Lestoros inca	
1710	Keen's myotis	Myotis keenii	
1711	Northern smooth-tailed treeshrew	Dendrogale murina	
1712	Stein's cuscus	Phalanger vestitus	
1713	White-footed saki	Pithecia albicans	
1714	Himalayan water shrew	Chimarrogale himalayica	
1715	Yellow golden mole	Calcochloris obtusirostris	
1716	Northern rufous mouse lemur	Microcebus tavaratra	
1717	Père David's mole	Talpa davidiana	
1718	Altai mole	Talpa altaica	
1719	Central American dwarf squirrel	Microsciurus alfari	
1720	Luzon montane forest mouse	Apomys datae	
1721	Balkan mole	Talpa stankovici	
1722	Deltaic four-eyed opossum	Philander deltae	
1723	Balkan snow vole	Dinaromys bogdanovi	
1724	Lord Derby's scaly-tailed squirrel	Anomalurus derbianus	
1725	Prince Bernhard's titi	Plecturocebus bernhardi	
1726	Dwarf little fruit bat	Rhinophylla pumilio	
1727	Selous's mongoose	Paracynictis selousi	
1728	Negev shrew	Crocidura ramona	
1729	Juruá red howler	Alouatta juara	
1730	Pribilof Island shrew	Sorex pribilofensis	
1731	Satéré marmoset	Mico saterei	
1732	Tokunoshima spiny rat	Tokudaia tokunoshimensis	
1733	Black mastiff bat	Molossus rufus	
1734	Apennine shrew	Sorex samniticus	
1735	Sado mole	Mogera tokudae	
1736	Roach's mouse-tailed dormouse	Myomimus roachi	
1737	Rothschild's cuscus	Phalanger rothschildi	
1738	Arnhold's mouse lemur	Microcebus arnholdi	
1739	Ussuri tube-nosed bat	Murina ussuriensis	
1740	Nelson's small-eared shrew	Cryptotis nelsoni	
1741	Red-cheeked dunnart	Sminthopsis virginiae	
1742	Hernández-Camacho's night monkey	Aotus jorgehernandezi	
1743	White-tailed antsangy	Brachytarsomys albicauda	
1744	Little white-shouldered bat	Ametrida centurio	
1745	Alston's mouse opossum	Marmosa alstoni	
1746	Three-striped dasyure	Myoictis melas	
1747	Gabon bushbaby	Sciurocheirus gabonensis	
1748	Minute fruit bat	Cynopterus minutus	
1749	Dwarf dog-faced bat	Molossops temminckii	
1750	Pygmy scaly-tailed flying squirrel	Idiurus zenkeri	
1751	Borneo black-banded squirrel	Callosciurus orestes	
1752	Bornean smooth-tailed treeshrew	Dendrogale melanura	
1753	Black-fronted titi	Callicebus nigrifrons	
1754	Four-toed rice tenrec	Oryzorictes tetradactylus	
1755	Dusky-footed elephant shrew	Elephantulus fuscipes	
1756	Karoo rock elephant shrew	Elephantulus pilicaudus	
1757	Sambirano mouse lemur	Microcebus sambiranensis	
1758	Milne-Edwards' sportive lemur	Lepilemur edwardsi	
1759	Dusky elephant shrew	Elephantulus fuscus	
1760	Visagie's golden mole	Chrysochloris visagiei	
1761	Handley's slender opossum	Marmosops handleyi	
1762	Merriam's pocket gopher	Cratogeomys merriami	
1763	Panama slender opossum	Marmosops invictus	
1764	Jamaican fig-eating bat	Ariteus flavescens	
1765	Dusky leaf-nosed bat	Hipposideros ater	
1766	Argentine fat-tailed mouse opossum	Thylamys sponsorius	
1767	Diadem leaf-nosed bat	Hipposideros diadema	
1768	Long-haired rousette	Rousettus lanosus	
1769	Levant mole	Talpa levantis	
1770	Narrow-striped marsupial shrew	Phascolosorex dorsalis	
1771	Long-eared gymnure	Hylomys megalotis	
1772	Geoffroy's tailless bat	Anoura geoffroyi	
1773	Baptista Lake titi	Plecturocebus baptista	
1774	Cuban flower bat	Phyllonycteris poeyi	
1775	Beecroft's flying squirrel	Anomalurus beecrofti	
1776	Trident bat	Asellia tridens	
1777	Gunning's golden mole	Neamblysomus gunningi	
1778	Greater musky fruit bat	Ptenochirus jagori	
1779	Pygmy shrew tenrec	Microgale parvula	
1780	Speckled dasyure	Neophascogale lorentzi	
1781	Andaman horseshoe bat	Rhinolophus cognatus	
1782	Dwarf fat-tailed mouse opossum	Thylamys velutinus	
1783	Togo mouse	Leimacomys buettneri	
1784	Coimbra Filho's titi	Callicebus coimbrai	
1785	Mittermeier's mouse lemur	Microcebus mittermeieri	
1786	Yanbaru whiskered bat	Myotis yanbarensis	
1787	Rufous mouse opossum	Marmosa lepida	
1788	White-bellied slender opossum	Marmosops noctivagus	
1789	Aceramarca gracile opossum	Gracilinanus aceramarcae	
1790	Argentine brown bat	Eptesicus furinalis	
1791	Plush-coated ringtail possum	Pseudochirops corinnae	
1792	Pale-faced bat	Phylloderma stenops	
1793	Cabrera's vole	Microtus cabrerae	
1794	Chinese mole shrew	Anourosorex squamipes	
1795	White-bellied woolly mouse opossum	Marmosa constantiae	
1796	East African epauletted fruit bat	Epomophorus minimus	
1797	Tomes's sword-nosed bat	Lonchorhina aurita	
1798	Neotropical pygmy squirrel	Sciurillus pusillus	
1799	Richmond's squirrel	Sciurus richmondi	
1800	Hubbard's sportive lemur	Lepilemur hubbardorum	
1801	New Guinean planigale	Planigale novaeguineae	
1802	Taiga shrew	Sorex isodon	
1803	Ryukyu shrew	Crocidura orii	
1804	Short-faced mole	Scaptochirus moschatus	
1805	Southern woolly lemur	Avahi meridionalis	
1806	Raffray's bandicoot	Peroryctes raffrayana	
1807	Northern shrew tenrec	Microgale jobihely	
1808	Manado fruit bat	Boneia bidens	
1809	White-bellied fat-tailed mouse opossum	Thylamys pallidior	
1810	Gray slender opossum	Marmosops incanus	
1811	Cinderella fat-tailed mouse opossum	Thylamys cinderella	
1812	Big-eared flying fox	Pteropus macrotis	
1813	Myosorex varius	Myosorex varius	
1814	Philippine gray flying fox	Pteropus speciosus	
1815	Brazilian brown bat	Eptesicus brasiliensis	
1816	Sicilian shrew	Crocidura sicula	
1817	Annandale's rat	Sundamys annandalei	
1818	Wallace's dasyure	Myoictis wallacei	
1819	Sulawesi rousette	Rousettus celebensis	
1820	Eastern heather vole	Phenacomys ungava	
1821	Betsileo woolly lemur	Avahi betsileo	
1822	Jungle shrew	Suncus zeylanicus	
1823	Ashy black titi	Plecturocebus cinerascens	
1824	Sambirano woolly lemur	Avahi unicolor	
1825	Masked flying fox	Pteropus personatus	
1826	Montane water vole	Arvicola scherman	
1827	Big naked-backed bat	Pteronotus gymnonotus	
1828	Malayan water shrew	Chimarrogale hantu	
1829	Greater Chinese mole	Euroscaptor grandis	
1830	Richardson's collared lemming	Dicrostonyx richardsoni	
1831	Horsfield's shrew	Crocidura horsfieldii	
1832	Cuban fruit-eating bat	Brachyphylla nana	
1833	Small-toothed mole	Euroscaptor parvidens	
1834	Rickett's big-footed bat	Myotis pilosus	
1835	Lowland ringtail possum	Pseudochirulus canescens	
1836	Black-tailed dasyure	Murexia melanurus	
1837	Moore's woolly lemur	Avahi mooreorum	
1838	Van Gelder's bat	Bauerus dubiaquercus	
1839	Speke's pectinator	Pectinator spekei	
1840	Madeira pipistrelle	Pipistrellus maderensis	
1841	Kelaart's long-clawed shrew	Feroculus feroculus	
1842	Ceram fruit bat	Pteropus ocularis	
1843	Gray sac-winged bat	Balantiopteryx plicata	
1844	Greater long-tailed shrew tenrec	Microgale principula	
1845	Colombian black-handed titi	Cheracebus medemi	
1846	Tate's woolly mouse opossum	Marmosa paraguayana	
1847	Intermediate roundleaf bat	Hipposideros larvatus	
1848	White-collared fruit bat	Megaerops wetmorei	
1849	Tailed tailless bat	Anoura caudifer	
1850	Tree bat	Ardops nichollsi	
1851	Fire-footed rope squirrel	Funisciurus pyrropus	
1852	De Winton's shrew	Chodsigoa hypsibius	
1853	Moluccan flying fox	Pteropus chrysoproctus	
1854	Rio Beni titi	Plecturocebus modestus	
1855	Wagner's mustached bat	Pteronotus personatus	
1856	Western yellow bat	Lasiurus xanthinus	
1857	Marley's golden mole	Amblysomus marleyi	
1858	Mouse bandicoot	Microperoryctes murina	
1859	Red-bellied marsupial shrew	Phascolosorex doriae	
1860	Silky short-tailed bat	Carollia brevicauda	
1861	Jamaican flower bat	Phyllonycteris aphylla	
1862	Philippine dawn bat	Eonycteris robusta	
1863	Kloss's mole	Euroscaptor klossi	
1864	Small white-winged flying fox	Desmalopex microleucopterus	
1865	Sri Lankan long-tailed shrew	Crocidura miya	
1866	Marohita mouse lemur	Microcebus marohita	
1867	Olive-backed pocket mouse	Perognathus fasciatus	
1868	D'Albertis' ringtail possum	Pseudochirops albertisii	
1869	Fischer's pygmy fruit bat	Haplonycteris fischeri	
1870	Wrangel lemming	Dicrostonyx vinogradovi	
1871	Transcaucasian water shrew	Neomys teres	
1872	Southern red-sided opossum	Monodelphis sorex	
1873	Crowned shrew	Sorex coronatus	
1874	AEECL's sportive lemur	Lepilemur aeeclis	
1875	Madagascan pygmy shrew	Suncus madagascariensis	
1876	Southeast Asian shrew	Crocidura fuliginosa	
1877	Golden-bellied treeshrew	Tupaia chrysogaster	
1878	Common fat-tailed mouse opossum	Thylamys pusillus	
1879	Preble's shrew	Sorex preblei	
1880	Major's long-tailed tenrec	Microgale majori	
1881	Gray-backed sportive lemur	Lepilemur dorsalis	
1882	Taiva shrew tenrec	Microgale taiva	
1883	Long-nosed mole	Euroscaptor longirostris	
1884	Olrog's four-eyed opossum	Philander olrogi	
1885	Drouhard's shrew tenrec	Microgale drouhardi	
1886	Simmons' mouse lemur	Microcebus simmonsi	
1887	Agricola's gracile opossum	Cryptonanus agricolai	
1888	Dragon tube-nosed fruit bat	Nyctimene draconilla	
1889	Shrew-faced squirrel	Rhinosciurus laticaudatus	
1890	Insular mole	Mogera insularis	
1891	Hawks' sportive lemur	Lepilemur tymerlachsoni	
1892	Arends's golden mole	Carpitalpa arendsi	
1893	Randrianasolo's sportive lemur	Lepilemur randrianasoloi	
1894	Robust golden mole	Amblysomus robustus	
1895	Wagner's bonneted bat	Eumops glaucinus	
1896	Bongolava mouse lemur	Microcebus bongolavensis	
1897	Bare-backed fruit bat	Dobsonia moluccensis	
1898	Lesser sac-winged bat	Saccopteryx leptura	
1899	Common echymipera	Echymipera kalubu	
1900	MacArthur's mouse lemur	Microcebus macarthurii	
1901	Blyth's horseshoe bat	Rhinolophus lepidus	
1902	Large myotis	Myotis chinensis	
1903	Greater dog-like bat	Peropteryx kappleri	
1904	Perote ground squirrel	Xerospermophilus perotensis	
1905	Long-legged bat	Macrophyllum macrophyllum	
1906	Dryad shrew tenrec	Microgale dryas	
1907	Stephen Nash's titi	Plecturocebus stephennashi	
1908	Siberian zokor	Myospalax myospalax	
1909	Glacier Bay water shrew	Sorex alaskanus	
1910	Xanthippe's shrew	Crocidura xantippe	
1911	Beijing mouse-eared bat	Myotis pequinius	
1912	Long-winged tomb bat	Taphozous longimanus	
1913	Nasolo's shrew tenrec	Microgale nasoloi	
1914	Lusitanian pine vole	Microtus lusitanicus	
1915	Horn-skinned bat	Eptesicus floweri	
1916	Pariente's fork-marked lemur	Phaner parienti	
1917	Müller's giant Sunda rat	Sundamys muelleri	
1918	Mexican big-eared bat	Corynorhinus mexicanus	
1919	Waterhouse's leaf-nosed bat	Macrotus waterhousii	
1920	Schneider's leaf-nosed bat	Hipposideros speoris	
1921	Shrew-toothed shrew tenrec	Microgale soricoides	
1922	Dwarf scaly-tailed squirrel	Anomalurus pusillus	
1923	Pygmy ringtail possum	Pseudochirulus mayeri	
1924	Fawn leaf-nosed bat	Hipposideros cervinus	
1925	Montane shrew tenrec	Microgale monticola	
1926	Least shrew tenrec	Microgale pusilla	
1927	Bare-backed rousette	Rousettus spinalatus	
1928	Piebald shrew	Diplomesodon pulchellum	
1929	Big red bat	Lasiurus egregius	
1930	Short-furred dasyure	Murexia longicaudata	
1931	Naked-rumped pouched bat	Saccolaimus saccolaimus	
1932	Insular single leaf bat	Monophyllus plethodon	
1933	Emilia's short-tailed opossum	Monodelphis emiliae	
1934	Margot Marsh's mouse lemur	Microcebus margotmarshae	
1935	Long-nosed short-tailed opossum	Monodelphis scalops	
1936	Smoky bat	Amorphochilus schnablii	
1937	Mount Lyell shrew	Sorex lyelli	
1938	Naked-nosed shrew tenrec	Microgale gymnorhyncha	
1939	Delicate slender opossum	Marmosops parvidens	
1940	Ogilvie Mountains collared lemming	Dicrostonyx nunatakensis	
1941	Sundevall's roundleaf bat	Hipposideros caffer	
1942	Bare-tailed woolly mouse opossum	Marmosa regina	
1943	Comoro rousette	Rousettus obliviosus	
1944	Mittermeier's sportive lemur	Lepilemur mittermeieri	
1945	Alaska tiny shrew	Sorex yukonicus	
1946	Coastal black-handed titi	Callicebus melanochir	
1947	Long-footed treeshrew	Tupaia longipes	
1948	Flat-faced fruit-eating bat	Artibeus planirostris	
1949	Sierra Madre ground squirrel	Callospermophilus madrensis	
1950	Guajira mouse opossum	Marmosa xerophila	
1951	Tschudi's slender opossum	Marmosops impavidus	
1952	Ramanantsoavana's woolly lemur	Avahi ramanantsoavanai	
1953	Baird's shrew	Sorex bairdi	
1954	Manicore marmoset	Mico manicorensis	
1955	Grassland mosaic-tailed rat	Melomys burtoni	
1956	Small-toothed fruit bat	Neopteryx frosti	
1957	Fog shrew	Sorex sonomae	
1958	Flower's shrew	Crocidura floweri	
1959	Gray flying fox	Pteropus griseus	
1960	Neblina slender opossum	Marmosops neblina	
1961	Red climbing mouse	Vernaya fulva	
1962	Angolan rousette	Myonycteris angolensis	
1963	Dobson's shrew tenrec	Nesogale dobsoni	
1964	Hairy-faced bat	Myotis annectans	
1965	Greater nectar bat	Eonycteris major	
1966	James' sportive lemur	Lepilemur jamesorum	
1967	Wood sprite gracile opossum	Gracilinanus dryas	
1968	Shrew gymnure	Neotetracus sinensis	
1969	Hershkovitz's titi	Plecturocebus dubius	
1970	Woolly horseshoe bat	Rhinolophus luctus	
1971	Tome's spiny rat	Proechimys semispinosus	
1972	Brazilian big-eyed bat	Chiroderma doriae	
1973	Temminck's flying fox	Pteropus temminckii	
1974	Pygmy fruit-eating bat	Dermanura phaeotis	
1975	Chacoan gracile opossum	Cryptonanus chacoensis	
1976	Quechuan mouse opossum	Marmosa macrotarsus	
1977	Thomas's shrew tenrec	Microgale thomasi	
1978	Crocidura hikmiya	Crocidura hikmiya	
1979	Red-headed titi	Cheracebus regulus	
1980	Striped treeshrew	Tupaia dorsalis	
1981	Southwestern myotis	Myotis auriculus	
1982	African sheath-tailed bat	Coleura afra	
1983	Sumatran water shrew	Chimarrogale sumatrana	
1984	Inyo shrew	Sorex tenellus	
1985	Dinagat gymnure	Podogymnura aureospinula	
1986	Arabian shrew	Crocidura arabica	
1987	Fleurete's sportive lemur	Lepilemur fleuretae	
1988	Ruddy treeshrew	Tupaia splendidula	
1989	Black myotis	Myotis nigricans	
1990	Lesser musky fruit bat	Ptenochirus minor	
1991	Weyland ringtail possum	Pseudochirulus caroli	
1992	Habbema dasyure	Murexia habbema	
1993	Lesser dog-like bat	Peropteryx macrotis	
1994	Gracile shrew tenrec	Microgale gracilis	
1995	Elegant water shrew	Nectogale elegans	
1996	Western dwarf squirrel	Microsciurus mimulus	
1997	Timor shrew	Crocidura tenuis	
1998	Eastern long-eared bat	Nyctophilus bifax	
1999	Visored bat	Sphaeronycteris toxophyllum	
2000	Nigerian shrew	Crocidura nigeriae	
2001	Hoffmanns's titi	Plecturocebus hoffmannsi	
2002	Eastern broad-toothed field mouse	Apodemus mystacinus	
2003	Seal's sportive lemur	Lepilemur seali	
2004	Silver-tipped myotis	Myotis albescens	
2005	Semliki red colobus	Piliocolobus semlikiensis	
2006	Veldkamp's dwarf epauletted fruit bat	Nanonycteris veldkampii	
2007	Pale shrew tenrec	Microgale fotsifotsy	
2008	Reclusive ringtail possum	Pseudochirops coronatus	
2009	Western naked-backed fruit bat	Dobsonia peronii	
2010	Bishop's slender opossum	Marmosops bishopi	
2011	Blanford's fruit bat	Sphaerias blanfordi	
2012	Masked ringtail possum	Pseudochirulus larvatus	
2013	Marajó short-tailed opossum	Monodelphis maraxina	
2014	Nicobar flying fox	Pteropus faunulus	
2015	Smaller horseshoe bat	Rhinolophus megaphyllus	
2016	Pallas's tube-nosed bat	Nyctimene cephalotes	
2017	Climbing shrew	Suncus megalura	
2018	Slender treeshrew	Tupaia gracilis	
2019	Egyptian pygmy shrew	Crocidura religiosa	
2020	Large-footed bat	Myotis adversus	
2021	Greater big-footed mouse	Macrotarsomys ingens	
2022	Thumbless bat	Furipterus horrens	
2023	Malayan shrew	Crocidura malayana	
2024	Rufous horseshoe bat	Rhinolophus rouxii	
2025	Geoffroy's horseshoe bat	Rhinolophus clivosus	
2026	Shaggy bat	Centronycteris maximiliani	
2027	Broad-striped tube-nosed fruit bat	Nyctimene aello	
2028	Large-eared horseshoe bat	Rhinolophus philippinensis	
2029	Little black serotine	Eptesicus andinus	
2030	Red mouse opossum	Marmosa rubra	
2031	Siberian shrew	Crocidura sibirica	
2032	Dusky fruit bat	Penthetor lucasi	
2033	Ahmanson's sportive lemur	Lepilemur ahmansonorum	
2034	Angolan epauletted fruit bat	Epomophorus angolensis	
2035	Palawan treeshrew	Tupaia palawanensis	
2036	Narrow-headed slender opossum	Marmosops cracens	
2037	Beaufort's naked-backed fruit bat	Dobsonia beauforti	
2038	Black bonneted bat	Eumops auripendulus	
2039	Cyrenaica shrew	Crocidura aleksandrisi	
2040	Davy's naked-backed bat	Pteronotus davyi	
2041	Sulawesi harpy fruit bat	Harpyionycteris celebensis	
2042	Bicolored musk shrew	Crocidura fuscomurina	
2043	Honduran fruit-eating bat	Artibeus inopinatus	
2044	Chestnut-bellied titi	Plecturocebus caligatus	
2045	Ihering's three-striped opossum	Monodelphis iheringi	
2046	Ecuadorian sac-winged bat	Balantiopteryx infusca	
2047	Ronald's opossum	Monodelphis ronaldi	
2048	Maritime shrew	Sorex maritimensis	
2049	Common big-eared bat	Micronycteris microtis	
2050	Ollala brothers's titi	Plecturocebus olallae	
2051	Ikonnikov's bat	Myotis ikonnikovi	
2052	Painted treeshrew	Tupaia picta	
2053	Tyler's mouse opossum	Marmosa tyleriana	
2054	Dekeyser's nectar bat	Lonchophylla dekeyseri	
2055	Eastern water bat	Myotis petax	
2056	Hooded red-sided opossum	Monodelphis palliolata	
2057	Lang's red colobus	Piliocolobus langi	
2058	Karimi's fat-tailed mouse opossum	Thylamys karimii	
2059	Moss-forest blossom bat	Syconycteris hobbit	
2060	Giant mole shrew	Anourosorex schmidi	
2061	Common punaré	Thrichomys apereoides	
2062	Para dog-faced bat	Cynomops paranus	
2063	Paraguayan fat-tailed mouse opossum	Thylamys macrurus	
2064	Petter's sportive lemur	Lepilemur petteri	
2065	Whitaker's shrew	Crocidura whitakeri	
2066	Euroscaptor subanura	Euroscaptor subanura	
2067	Ratanaworabhan's fruit bat	Megaerops niphanae	
2068	Peters's fruit bat	Cynopterus luzoniensis	
2069	Sri Lankan shrew	Suncus fellowesgordoni	
2070	Striped bandicoot	Microperoryctes longicauda	
2071	Nusatenggara short-nosed fruit bat	Cynopterus nusatenggara	
2072	Aberdare mole shrew	Surdisorex norae	
2073	Fulvus roundleaf bat	Hipposideros fulvus	
2074	Maghreb garden dormouse	Eliomys munbyanus	
2075	Mzab gundi	Massoutiera mzabi	
2076	Ashy-headed flying fox	Pteropus caniceps	
2077	Sulawesi white-handed shrew	Crocidura rhoditis	
2078	Voalavoanala	Gymnuromys roberti	
2079	Dwarf gymnure	Hylomys parvus	
2080	Javan tailless fruit bat	Megaerops kusnotoi	
2081	Sunda shrew	Crocidura monticola	
2082	Talazac's shrew tenrec	Nesogale talazaci	
2083	Assam mole shrew	Anourosorex assamensis	
2084	Long-nosed echymipera	Echymipera rufescens	
2085	Tailless fruit bat	Megaerops ecaudatus	
2086	Tate's fat-tailed mouse opossum	Thylamys tatei	
2087	East Asian tailless leaf-nosed bat	Coelops frithii	
2088	Nilgiri long-tailed tree mouse	Vandeleuria nilagirica	
2089	Linduan rousette	Rousettus linduensis	
2090	Indian roundleaf bat	Hipposideros lankadiva	
2091	Barren ground shrew	Sorex ugyunak	
2092	Lesser ricefield rat	Rattus losea	
2093	East African little collared fruit bat	Myonycteris relicta	
2094	Pygmy round-eared bat	Lophostoma brasiliense	
2095	Chestnut-striped opossum	Monodelphis rubida	
2096	Dark long-tongued bat	Lichonycteris obscura	
2097	Cape horseshoe bat	Rhinolophus capensis	
2098	Guatemalan broad-clawed shrew	Cryptotis griseoventris	
2099	Sumichrast's vesper rat	Nyctomys sumichrasti	
2100	Long-clawed shrew	Sorex unguiculatus	
2101	Silvery flying fox	Pteropus argentatus	
2102	Mauritanian shrew	Crocidura lusitania	
2103	Oustalet's red colobus	Piliocolobus oustaleti	
2104	Golden-tipped bat	Phoniscus papuensis	
2105	Felou gundi	Felovia vae	
2106	Small big-eared brown bat	Histiotus montanus	
2107	Lomami red colobus	Piliocolobus parmentieri	
2108	Vogelkop ringtail possum	Pseudochirulus schlegeli	
2109	Caspian shrew	Crocidura caspica	
2110	Sulawesi stripe-faced fruit bat	Styloctenium wallacei	
2111	Betsileo sportive lemur	Lepilemur betsileo	
2112	Wright's sportive lemur	Lepilemur wrightae	
2113	Decken's horseshoe bat	Rhinolophus deckenii	
2114	Chinese water shrew	Chimarrogale styani	
2115	Hun shrew	Crocidura attila	
2116	Yucatan yellow bat	Rhogeessa aeneus	
2117	Dusky slender opossum	Marmosops fuscatus	
2118	Hamiguitan hairy-tailed rat	Batomys hamiguitan	
2119	Luzon shrew	Crocidura grayi	
2120	Mindanao shrew	Crocidura beatus	
2121	Northern gracile opossum	Gracilinanus marica	
2122	Reddish-gray musk shrew	Crocidura cyanea	
2123	Savanna shrew	Crocidura fulvastra	
2124	Pinheiro's slender opossum	Marmosops pinheiroi	
2125	Santander dwarf squirrel	Microsciurus santanderensis	
2126	Meridional serotine	Eptesicus isabellinus	
2127	Gray-bellied mountain rat	Limnomys bryophilus	
2128	Paucidentomys	Paucidentomys vermidax	
2129	Mexican dog-faced bat	Cynomops mexicanus	
2130	Siberian large-toothed shrew	Sorex daphaenodon	
2131	Camiguin forest rat	Bullimus gamay	
2132	Common thick-thumbed bat	Glischropus tylopus	
2133	Creighton's slender opossum	Marmosops creightoni	
2134	Pohle's fruit bat	Casinycteris ophiodon	
2135	Prairie shrew	Sorex haydeni	
2136	Ashy roundleaf bat	Hipposideros cineraceus	
2137	Emilia's gracile opossum	Gracilinanus emiliae	
2138	Woermann's bat	Megaloglossus woermanni	
2139	Jackass shrew	Crocidura arispa	
2140	Rüppell's horseshoe bat	Rhinolophus fumigatus	
2141	Sulawesi shrew	Crocidura lea	
2142	Goldman's nectar bat	Lonchophylla mordax	
2143	Grewcock's sportive lemur	Lepilemur grewcockorum	
2144	Toltec fruit-eating bat	Dermanura tolteca	
2145	Otto's sportive lemur	Lepilemur otto	
2146	Large fruit-eating bat	Artibeus amplus	
2147	Southern three-striped opossum	Monodelphis theresa	
2148	Diminutive serotine	Eptesicus diminutus	
2149	Arcuate horseshoe bat	Rhinolophus arcuatus	
2150	East African highland shrew	Crocidura allex	
2151	Kei flying fox	Pteropus keyensis	
2152	Blunt-eared bat	Tomopeas ravus	
2153	Rufous trident bat	Triaenops persicus	
2154	Southern little yellow-eared bat	Vampyressa pusilla	
2155	Osgood's short-tailed opossum	Monodelphis osgoodi	
2156	Lombok flying fox	Pteropus lombocensis	
2157	Biak naked-backed fruit bat	Dobsonia emersa	
2158	Taiwanese mole shrew	Anourosorex yamashinai	
2159	Lesser ghost bat	Diclidurus sctutatus	
2160	Cinnamon red bat	Lasiurus varius	
2161	Daraina sportive lemur	Lepilemur milanoii	
2162	Dark fruit-eating bat	Artibeus obscurus	
2163	Saint Lawrence Island shrew	Sorex jacksoni	
2164	North African white-toothed shrew	Crocidura pachyura	
2165	Aztec fruit-eating bat	Dermanura azteca	
2166	Trefoil horseshoe bat	Rhinolophus trifoliatus	
2167	Reig's opossum	Monodelphis reigi	
2168	Ussuri white-toothed shrew	Crocidura lasiura	
2169	Mindanao mountain rat	Limnomys sibuanus	
2170	Clear-winged woolly bat	Kerivoula pellucida	
2171	Cuban fig-eating bat	Phyllops falcatus	
2172	Saharan shrew	Crocidura tarfayensis	
2173	Mexican small-eared shrew	Cryptotis mexicana	
2174	Rufous mouse-eared bat	Myotis bocagii	
2175	Armenian shrew	Crocidura armenica	
2176	Minor epauletted fruit bat	Epomophorus minor	
2177	Bicolored roundleaf bat	Hipposideros bicolor	
2178	White-throated round-eared bat	Lophostoma silvicolum	
2179	Brooks's dyak fruit bat	Dyacopterus brooksi	
2180	Crocidura grandiceps	Crocidura grandiceps	
2181	Asian highland shrew	Suncus montanus	
2182	Aztec mouse	Peromyscus aztecus	
2183	Commissaris's long-tongued bat	Glossophaga commissarisi	
2184	Harmless serotine	Eptesicus innoxius	
2185	Isabelle's ghost bat	Diclidurus isabella	
2186	Big-eared horseshoe bat	Rhinolophus macrotis	
2187	Mossy forest shrew	Crocidura musseri	
2188	Benkeith's short-tailed bat	Carollia benkeithi	
2189	Asian lesser white-toothed shrew	Crocidura shantungensis	
2190	Greater red musk shrew	Crocidura flavescens	
2191	Ansell's shrew	Crocidura ansellorum	
2192	Halmahera blossom bat	Syconycteris carolinae	
2193	Rickart's dyak fruit bat	Dyacopterus rickarti	
2194	Lesser red musk shrew	Crocidura hirta	
2195	Hayman's dwarf epauletted fruit bat	Micropteropus intermedius	
2196	Cyclops roundleaf bat	Doryrhina cyclops	
2197	Greater ghost bat	Diclidurus ingens	
2198	Noack's roundleaf bat	Hipposideros ruber	
2199	Junin slender opossum	Marmosops juninensis	
2200	Scott's sportive lemur	Lepilemur scottorum	
2201	Yellow-throated big-eared bat	Lampronycteris brachyotis	
2202	Lesser spear-nosed bat	Phyllostomus elongatus	
2203	Chinese noctule	Nyctalus plancyi	
2521	Somali shrew	Crocidura somalica	
2204	Black-gilded pipistrelle	Arielulus circumdatus	
2205	Desperate shrew	Crocidura desperata	
2206	Lamotte's roundleaf bat	Hipposideros lamottei	
2207	Greenish naked-backed fruit bat	Dobsonia viridis	
2208	Long-snouted bat	Platalina genovensium	
2209	African black shrew	Crocidura nigrofusca	
2210	Halmahera naked-backed fruit bat	Dobsonia crenulata	
2211	Holland's sportive lemur	Lepilemur hollandorum	
2212	Amazonian sac-winged bat	Saccopteryx gymnura	
2213	Cinnamon dog-faced bat	Cynomops abrasus	
2214	Voi shrew	Crocidura voi	
2215	Gmelin's white-toothed shrew	Crocidura gmelini	
2216	Highland yellow-shouldered bat	Sturnira ludovici	
2217	Large-toothed shrew	Sorex macrodon	
2218	Lander's horseshoe bat	Rhinolophus landeri	
2219	Lesser tube-nosed fruit bat	Paranyctimene raptor	
2220	Long-nosed dasyure	Murexia naso	
2221	Dark sheath-tailed bat	Mosia nigrescens	
2222	Andersen's flying fox	Pteropus intermedius	
2223	Sulawesi tiny shrew	Crocidura levicula	
2224	Swift fruit bat	Thoopterus nigrescens	
2225	Lesser naked-backed fruit bat	Dobsonia minor	
2226	Black-winged little yellow bat	Rhogeessa tumida	
2227	Valais shrew	Sorex antinorii	
2228	Pearson's long-clawed shrew	Solisorex pearsoni	
2229	Arizona shrew	Sorex arizonae	
2230	Brown tent-making bat	Uroderma magnirostrum	
2231	Isalo serotine	Neoromicia malagasyensis	
2232	Chinese pygmy dormouse	Typhlomys cinereus	
2233	Bornean water shrew	Chimarrogale phaeura	
2234	Lesser tube-nosed bat	Nyctimene minutus	
2235	Turbo shrew	Crocidura turba	
2236	Gallagher's free-tailed bat	Chaerephon gallagheri	
2237	Honduran small-eared shrew	Cryptotis hondurensis	
2238	Vampyriscus nymphaea	Vampyriscus nymphaea	
2239	Cantor's roundleaf bat	Hipposideros galeritus	
2240	Brown flower bat	Erophylla bombifrons	
2241	Chinese shrew	Sorex sinalis	
2242	Guahiba gracile opossum	Cryptonanus guahybae	
2243	Mountain tube-nosed fruit bat	Nyctimene certans	
2244	Voracious shrew	Crocidura vorax	
2245	Small Asian sheath-tailed bat	Emballonura alecto	
2246	Goliath shrew	Crocidura goliath	
2247	Island mouse	Nesomys rufus	
2248	Bornean pygmy shrew	Suncus hosei	
2249	Cozumel harvest mouse	Reithrodontomys spectabilis	
2250	Short-palated fruit bat	Casinycteris argynnis	
2251	Buettikofer's shrew	Crocidura buettikoferi	
2252	Striped hairy-nosed bat	Mimon crenulatum	
2253	Chestnut sac-winged bat	Cormura brevirostris	
2254	Theobald's tomb bat	Taphozous theobaldi	
2255	Eumops ferox	Eumops ferox	
2256	Round-eared tube-nosed fruit bat	Nyctimene cyclotis	
2257	Heather shrew	Crocidura erica	
2258	King horseshoe bat	Rhinolophus rex	
2259	Merida small-eared shrew	Cryptotis meridensis	
2260	Dent's shrew	Crocidura denti	
2261	Western sucker-footed bat	Myzopoda schliemanni	
2262	MacConnell's bat	Mesophylla macconnelli	
2263	Bidentate yellow-eared bat	Vampyriscus bidens	
2264	Keast's tube-nosed fruit bat	Nyctimene keasti	
2265	Lesser large-headed shrew	Paracrocidura schoutedeni	
2266	Greater Mindanao shrew	Crocidura grandis	
2267	Rio Purus titi	Cheracebus purinus	
2268	Hairy big-eyed bat	Chiroderma villosum	
2269	Kobayashi's bat	Eptesicus koyabashii	
2270	Geelvink Bay flying fox	Pteropus pohlei	
2271	Broad-eared bat	Nyctinomops laticaudatus	
2272	Kinabalu shrew	Crocidura baluensis	
2273	Hatt's vesper rat	Otonyctomys hatti	
2274	Cozumelan golden bat	Mimon cozumelae	
2275	White-lined broad-nosed bat	Platyrrhinus lineatus	
2276	Colombian bonneted bat	Eumops trumbulli	
2277	Pearson's horseshoe bat	Rhinolophus pearsonii	
2278	Peruvian small-eared shrew	Cryptotis peruviensis	
2279	Manavi long-fingered bat	Miniopterus manavi	
2280	Rhinolophus hilli	Rhinolophus hilli	
2281	Cape hairy bat	Myotis tricolor	
2282	Adam's horseshoe bat	Rhinolophus adami	
2283	Ansell's epauletted fruit bat	Epomophorus anselli	
2284	Ultimate shrew	Crocidura ultima'	
2285	Least dwarf shrew	Suncus infinitesimus	
2286	Small mouse-tailed bat	Rhinopoma muscatellum	
2287	Thomas's sac-winged bat	Balantiopteryx io	
2288	Least horseshoe bat	Rhinolophus pusillus	
2289	Hairy-legged myotis	Myotis keaysi	
2290	Blackish small-eared shrew	Cryptotis nigrescens	
2291	Greater Congo shrew	Congosorex polli	
2292	Lesser gray-brown musk shrew	Crocidura silacea	
2293	Anderson's shrew	Suncus stoliczkanus	
2294	Lasiurus atratus	Lasiurus atratus	
2295	Savanna swamp shrew	Crocidura longipes	
2296	Andersen's fruit-eating bat	Dermanura anderseni	
2297	Hilgendorf's tube-nosed bat	Murina hilgendorfi	
2298	Buchara shrew	Sorex buchariensis	
2299	Recife broad-nosed bat	Platyrrhinus recifinus	
2300	Greenhall's dog-faced bat	Cynomops greenhalli	
2301	David's myotis	Myotis davidii	
2302	Flamarion's tuco-tuco	Ctenomys flamarioni	
2303	Foa's red colobus	Piliocolobus foai	
2304	Bartels's rat	Sundamys maxi	
2305	Sulawesi naked-backed fruit bat	Dobsonia exoleta	
2306	Delany's mouse	Delanymys brooksi	
2307	Eisentraut's mouse shrew	Myosorex eisentrauti	
2308	Great stripe-faced bat	Vampyrodes caraccioli	
2310	Malayan pygmy shrew	Suncus malayanus	
2311	Darién small-eared shrew	Cryptotis merus	
2312	Felten's myotis	Myotis punicus	
2313	Tilda's yellow-shouldered bat	Sturnira tildae	
2314	Dusky pipistrelle	Pipistrellus hesperidus	
2315	White-bellied big-eared bat	Micronycteris minuta	
2316	Pale gray shrew	Crocidura pergrisea	
2317	Fraser's musk shrew	Crocidura poensis	
2318	Unduavi gracile opossum	Cryptonanus unduaviensis	
2319	Underwood's bonneted bat	Eumops underwoodi	
2320	Day's shrew	Suncus dayi	
2321	Somali dwarf shrew	Crocidura nana	
2322	Bates's shrew	Crocidura batesi	
2323	Himalayan shrew	Soriculus nigrescens	
2324	Thick-tailed shrew	Crocidura brunnea	
2325	Palawan shrew	Crocidura palawanensis	
2326	Caucasian pygmy shrew	Sorex volnuchini	
2327	Chestnut short-tailed bat	Carollia castanea	
2328	Lesser Angolan epauletted fruit bat	Epomophorus grandis	
2329	Slender yellow bat	Rhogeessa gracilis	
2330	Maclaud's horseshoe bat	Rhinolophus maclaudi	
2331	Savanna path shrew	Crocidura viaria	
2332	Hypsugo anthonyi	Hypsugo anthonyi	
2333	Spiny long-footed rat	Tarsomys echinatus	
2334	Tibetan shrew	Sorex thibetanus	
2335	New Mexico shrew	Sorex neomexicanus	
2336	Long-footed shrew	Crocidura crenata	
2337	Johnston's forest shrew	Sylvisorex johnstoni	
2338	Kamchatka shrew	Sorex camtschatica	
2339	Montane white-toothed shrew	Crocidura montis	
2340	Thomas's shaggy bat	Centronycteris centralis	
2341	Elongated shrew	Crocidura elongata	
2342	Sumatran giant shrew	Crocidura lepidura	
2343	Enders's small-eared shrew	Cryptotis endersi	
2344	Indochinese short-tailed shrew	Blarinella griselda	
2345	Little big-eared bat	Micronycteris megalotis	
2346	Bokermann's nectar bat	Lonchophylla bokermanni	
2347	San Cristobal shrew	Sorex stizodon	
2348	Percival's trident bat	Cloeotis percivali	
2349	Tropical small-eared shrew	Cryptotis tropicalis	
2350	Taita shrew	Suncus aequatorius	
2351	Asiatic short-tailed shrew	Blarinella quadraticauda	
2352	Panamanian spiny pocket mouse	Heteromys adspersus	
2353	Slender shrew	Sorex gracillimus	
2354	Mindanao hairy-tailed rat	Batomys salomonseni	
2355	Kashmir pygmy shrew	Sorex planiceps	
2356	Clara's echymipera	Echymipera clara	
2357	Allen's yellow bat	Rhogeessa alleni	
2358	Short-eared bat	Cyttarops alecto	
2359	D'Anchieta's fruit bat	Plerotes anchietae	
2360	Lesser dwarf shrew	Suncus varilla	
2361	Myotis fimbriatus	Myotis fimbriatus	
2362	Stripe-headed round-eared bat	Tonatia saurophila	
2363	Eastern Cordillera small-footed shrew	Cryptotis brachyonyx	
2364	Babault's mouse shrew	Myosorex babaulti	
2365	Long-tailed mountain shrew	Episoriculus macrurus	
2366	Iranian shrew	Crocidura susiana	
2367	Talamancan small-eared shrew	Cryptotis gracilis	
2368	Tiny yellow bat	Rhogeessa minutilla	
2369	Cinderella shrew	Crocidura cinderella	
2370	Lesser woolly horseshoe bat	Rhinolophus beddomei	
2371	Lesser long-tongued bat	Choeroniscus minor	
2372	Akodon azarae	Akodon azarae	
2373	Rumpi mouse shrew	Myosorex rumpii	
2374	Flores shrew	Suncus mertensi	
2375	Anchieta's pipistrelle	Pipistrellus anchietae	
2376	Grandidier's tufted-tailed rat	Eliurus grandidieri	
2377	Greater round-eared bat	Tonatia bidens	
2378	Collared pipistrelle	Arielulus aureocollaris	
2379	Croslet horseshoe bat	Rhinolophus coelophyllus	
2380	Giant roundleaf bat	Macronycteris gigas	
2381	Van Sung's shrew	Chodsigoa caovansunga	
2382	Big crested mastiff bat	Promops centralis	
2383	Kongana shrew	Sylvisorex konganensis	
2384	Acuminate horseshoe bat	Rhinolophus acuminatus	
2385	Colombian small-eared shrew	Cryptotis colombiana	
2386	Greater large-headed shrew	Paracrocidura maxima	
2387	Long-footed rat	Tarsomys apoensis	
2388	Greater forest shrew	Sylvisorex ollula	
2389	Central American least shrew	Cryptotis orophila	
2390	Brown fruit-eating bat	Artibeus concolor	
2391	Davies's big-eared bat	Glyphonycteris daviesi	
2392	Volcano shrew	Sylvisorex vulcanorum	
2393	Ruwenzori shrew	Ruwenzorisorex suncoides	
2394	Long-tailed brown-toothed shrew	Episoriculus leucops	
2395	Mindoro shrew	Crocidura mindorus	
2396	Sody's tree rat	Kadarsanomys sodyi	
2397	Big Mexican small-eared shrew	Cryptotis magna	
2398	Hairy little fruit bat	Rhinophylla alethina	
2399	Philippine forest horseshoe bat	Rhinolophus inops	
2400	Big-eared brown bat	Histiotus macrotus	
2401	Hairy big-eared bat	Micronycteris hirsuta	
2402	Javanese shrew	Crocidura maxi	
2403	Chilean myotis	Myotis chiloensis	
2404	Mexican shrew	Megasorex gigas	
2405	Fox's shrew	Crocidura foxi	
2406	Euryoryzomys nitidus	Euryoryzomys nitidus	
2407	Miller's long-tongued bat	Glossophaga longirostris	
2408	Lesser forest shrew	Sylvisorex oriundus	
2409	Goodwin's broad-clawed shrew	Cryptotis goodwini	
2410	Mount Kenya mole shrew	Surdisorex polulus	
2411	Long-tailed musk shrew	Crocidura dolichura	
2412	Cameroonian forest shrew	Sylvisorex camerunensis	
2413	Husson's yellow bat	Rhogeessa hussoni	
2414	Salenski's shrew	Chodsigoa salenskii	
2415	Striped leaf-nosed bat	Macronycteris vittatus	
2416	African dusky shrew	Crocidura caliginea	
2417	Silver fruit-eating bat	Dermanura glauca	
2418	Dwarf bonneted bat	Eumops bonariensis	
2419	Thomas's yellow bat	Rhogeessa io	
2420	Gracile naked-tailed shrew	Crocidura maurisca	
2421	Black-footed shrew	Crocidura nigripes	
2422	Lesser Ryukyu shrew	Crocidura watasei	
2423	Radde's shrew	Sorex raddei	
2424	Thailand roundleaf bat	Hipposideros halophyllus	
2425	Lamotte's shrew	Crocidura lamottei	
2426	Small-footed shrew	Crocidura parvipes	
2427	Beccari's shrew	Crocidura beccarii	
2428	Timorese horseshoe bat	Rhinolophus montanus	
2429	Bornean shrew	Crocidura foetida	
2430	Bushveld horseshoe bat	Rhinolophus simulator	
2431	Crosse's shrew	Crocidura crossei	
2432	Equatorial dog-faced bat	Cabreramops aequatorianus	
2433	Euryoryzomys lamia	Euryoryzomys lamia	
2434	Welwitsch's bat	Myotis welwitschii	
2435	Caucasian shrew	Sorex satunini	
2436	Lesser sheath-tailed bat	Emballonura monticola	
2437	Paratriaenops pauliani	Paratriaenops pauliani	
2438	Moonshine shrew	Crocidura luna	
2439	Roosevelt's shrew	Crocidura roosevelti	
2440	Tsingy tufted-tailed rat	Eliurus antsingy	
2441	Orizaba long-tailed shrew	Sorex orizabae	
2442	Grant's forest shrew	Sylvisorex granti	
2443	Kahuzi swamp shrew	Myosorex jejei	
2444	Nolthenius's long-tailed climbing mouse	Vandeleuria nolthenii	
2445	Pratt's roundleaf bat	Hipposideros pratti	
2446	Dent's horseshoe bat	Rhinolophus denti	
2447	West African pygmy shrew	Crocidura obscurior	
2448	Guatemalan myotis	Myotis cobanensis	
2449	Saussure's shrew	Sorex saussurei	
2450	Oku mouse shrew	Myosorex okuensis	
2451	Yankari shrew	Crocidura yankariensis	
2452	Necklace pipistrelle	Arielulus torquatus	
2453	Oriental shrew	Crocidura orientalis	
2454	Olympic shrew	Sorex rohweri	
2455	Burmese short-tailed shrew	Blarinella wardi	
2456	Bonda mastiff bat	Molossus currentium	
2457	Burmese whiskered bat	Myotis montivagus	
2458	Nimba shrew	Crocidura nimbae	
2459	Papillose woolly bat	Kerivoula papillosa	
2460	Salvin's big-eyed bat	Chiroderma salvini	
2461	Bioko forest shrew	Sylvisorex isabellae	
2462	Tropical big-eared brown bat	Histiotus velatus	
2463	Dormouse tufted-tailed rat	Eliurus myoxinus	
2464	Scotophilus tandrefana	Scotophilus tandrefana	
2465	Large-eared gray shrew	Notiosorex evotis	
2466	Whitehead's woolly bat	Kerivoula whiteheadi	
2467	Chestnut-bellied shrew	Sorex ventralis	
2468	Gervais's fruit-eating bat	Dermanura cinerea	
2469	Greenwood's shrew	Crocidura greenwoodi	
2470	Taiwanese brown-toothed shrew	Episoriculus fumidus	
2471	Miniopterus mahafaliensis	Miniopterus mahafaliensis	
2472	Salokko rat	Taeromys arcuatus	
2473	Tondano rat	Taeromys taerae	
2474	Yucatan small-eared shrew	Cryptotis mayensis	
2475	Aratathomas's yellow-shouldered bat	Sturnira aratathomasi	
2476	Paramushir shrew	Sorex leucogaster	
2477	LaVal's disk-winged bat	Thyroptera lavali	
2478	Loring's rat	Thallomys loringi	
2479	Swinny's horseshoe bat	Rhinolophus swinnyi	
2480	Brazilian funnel-eared bat	Natalus macrourus	
2481	Canut's horseshoe bat	Rhinolophus canuti	
2482	Hairy fruit-eating bat	Artibeus hirsutus	
2483	Kivu shrew	Crocidura kivuana	
2484	Gansu shrew	Sorex cansulus	
2485	Moon forest shrew	Sylvisorex lunaris	
2486	Rain forest shrew	Sylvisorex pluvialis	
2487	Zaphir's shrew	Crocidura zaphiri	
2488	Elgon shrew	Crocidura elgonius	
2489	Grauer's large-headed shrew	Paracrocidura graueri	
2490	Zarudny's rock shrew	Crocidura zarudnyi	
2491	Lesser striped shrew	Sorex bedfordiae	
2492	Verapaz shrew	Sorex veraepacis	
2493	Celebes rat	Taeromys celebensis	
2494	Grasse's shrew	Crocidura grassei	
2495	Eastern voalavo	Voalavo antsahabensis	
2496	Smoky white-toothed shrew	Crocidura fumosa	
2497	Dark-footed mouse shrew	Myosorex cafer	
2498	Lesser naked bat	Cheiromeles parvidens	
2499	Manenguba shrew	Crocidura manengubae	
2500	Tricolored big-eared bat	Glyphonycteris sylvestris	
2501	Short-headed broad-nosed bat	Platyrrhinus brachycephalus	
2502	Atacama myotis	Myotis atacamensis	
2503	Hildebrandt's horseshoe bat	Rhinolophus hildebrandtii	
2504	Akodon caenosus	Akodon caenosus	
2505	Blackish white-toothed shrew	Crocidura nigricans	
2506	Cameroonian shrew	Crocidura picea	
2507	Bottego's shrew	Crocidura bottegi	
2508	Carriker's round-eared bat	Lophostoma carrikeri	
2509	Heller's broad-nosed bat	Platyrrhinus helleri	
2510	Kemp's thicket rat	Thamnomys kempi	
2511	Tanzanian shrew	Crocidura tansaniana	
2512	Aellen's roundleaf bat	Hipposideros marisae	
2513	Arabian pipistrelle	Hypsugo arabicus	
2514	Fernandez's sword-nosed bat	Lonchorhina fernandezi	
2515	Little yellow bat	Rhogeessa parvula	
2516	Niceforo's big-eared bat	Trinycteris nicefori	
2517	Platyrrhinus ismaeli	Platyrrhinus ismaeli	
2518	Ridley's leaf-nosed bat	Hipposideros ridleyi	
2519	Hutan shrew	Crocidura hutanis	
2520	Southern dog-faced bat	Cynomops planirostris	
2522	Geata mouse shrew	Myosorex geata	
2523	Bourret's horseshoe bat	Rhinolophus paradoxolophus	
2524	Brock's yellow-eared bat	Vampyriscus brocki	
2525	Mount Cameroon forest shrew	Sylvisorex morio	
2526	Central Mexican broad-clawed shrew	Cryptotis alticola	
2527	Congo white-toothed shrew	Crocidura congobelgica	
2528	Lesser rock shrew	Crocidura serezkyensis	
2529	Small rufous horseshoe bat	Rhinolophus subrufus	
2530	Big-eared pipistrelle	Hypsugo macrotis	
2531	Guinean horseshoe bat	Rhinolophus guineensis	
2532	Butiaba naked-tailed shrew	Crocidura littoralis	
2533	Harrison's large-eared giant mastiff bat	Otomops harrisoni	
2534	Melck's house bat	Neoromicia melckorum	
2535	Desert musk shrew	Crocidura smithii	
2536	Steadfast tube-nosed fruit bat	Paranyctimene tenax	
2537	Fischer's little fruit bat	Rhinophylla fischerae	
2538	Flat-skulled shrew	Sorex roboratus	
2539	Goldman's broad-clawed shrew	Cryptotis goldmani	
2540	Madagascar free-tailed bat	Otomops madagascariensis	
2541	Tanala tufted-tailed rat	Eliurus tanala	
2542	Remy's pygmy shrew	Suncus remyi	
2543	Pel's pouched bat	Saccolaimus peli	
2544	Surat serotine	Eptesicus dimissus	
2545	Ipanema bat	Pygoderma bilabiatum	
2546	Least yellow bat	Rhogeessa mira	
2547	Kozlov's shrew	Sorex kozlovi	
2548	Stoliczka's trident bat	Aselliscus stoliczkanus	
2549	Montane mouse shrew	Myosorex blarina	
2550	Flat-headed myotis	Myotis planiceps	
2551	Horsfield's bat	Myotis horsfieldii	
2552	Howell's forest shrew	Sylvisorex howelli	
2553	Kilimanjaro mouse shrew	Myosorex zinki	
2554	Thin mouse shrew	Myosorex tenuis	
2555	Kivu long-haired shrew	Crocidura lanosa	
2556	Tarella shrew	Crocidura tarella	
2557	Shark Bay Mouse	Pseudomys fieldi	2 yrs
2558	Coppery pipistrelle	Arielulus cuprosus	
2559	Elegant myotis	Myotis elegans	
2560	Greater stripe-backed shrew	Sorex cylindricauda	
2561	Rufous dog-faced bat	Molossops neglectus	
2562	Malayan tailless leaf-nosed bat	Coelops robinsoni	
2563	Antioquian sac-winged bat	Saccopteryx antioquensis	
2564	Pallid large-footed myotis	Myotis macrotarsus	
2565	Gregarious short-tailed rat	Brachyuromys ramirohitra	
2566	Chestnut long-tongued bat	Lionycteris spurrelli	
2567	Pygmy brown-toothed shrew	Chodsigoa parva	
2568	Medellín small-eared shrew	Cryptotis medellinia	
2569	Hamilton's tomb bat	Taphozous hamiltoni	
2570	Aztec mastiff bat	Molossus aztecus	
2571	Genoways's yellow bat	Rhogeessa genowaysi	
2572	Godman's long-tailed bat	Choeroniscus godmani	
2573	Mono's short-tailed bat	Carollia monohernandezi	
2574	Marinkelle's sword-nosed bat	Lonchorhina marinkellei	
2575	Paratriaenops furculus	Paratriaenops furculus	
2576	Strange big-eared brown bat	Histiotus alienus	
2577	Gray spiny mouse	Acomys cineraceus	
2578	Halcyon horseshoe bat	Rhinolophus alcyone	
2579	Thomas's nectar bat	Lonchophylla thomasi	
2580	Melissa's yellow-eared bat	Vampyressa melissa	
2581	Social pipistrelle	Arielulus societatis	
2582	Fischer's shrew	Crocidura fischeri	
2583	Altiplano chinchilla mouse	Chinchillula sahamae	
2584	Lesser Congo shrew	Congosorex verheyeni	
2585	Makwassie musk shrew	Crocidura maquassiensis	
2586	Peninsular shrew	Crocidura negligens	
2587	Sowell's short-tailed bat	Carollia sowelli	
2588	Sinaloan mastiff bat	Molossus sinaloae	
2589	Villa's gray shrew	Notiosorex villa	
2590	White-winged dog-like bat	Peropteryx leucoptera	
2591	Gray short-tailed bat	Carollia subrufa	
2592	Ugandan lowland shrew	Crocidura selina	
2593	Southern big-eared brown bat	Histiotus magellanicus	
2594	Cynomops milleri	Cynomops milleri	
2595	Incan little mastiff bat	Mormopterus phrudus	
2596	Nyiro shrew	Crocidura macowi	
2597	Sumatran long-tailed shrew	Crocidura paradoxura	
2598	Upemba shrew	Crocidura zimmeri	
2599	Cadorna's pipistrelle	Hypsugo cadornae	
2600	Telford's shrew	Crocidura telfordi	
2601	West African long-tailed shrew	Crocidura muricauda	
2602	Flat-headed shrew	Crocidura planiceps	
2603	Hairy yellow-shouldered bat	Sturnira erythromos	
2604	Scaly-footed small-eared shrew	Cryptotis squamipes	
2605	Small-eared rat	Taeromys microbullatus	
2606	Robust yellow bat	Scotophilus robustus	
2607	Wandering small-eared shrew	Cryptotis montivaga	
2608	Beccari's sheath-tailed bat	Emballonura beccarii	
2609	Arabian trident bat	Asellia arabica	
2610	Ega long-tongued bat	Scleronycteris ega	
2611	Far Eastern myotis	Myotis bombinus	
2612	Merriam's small-eared shrew	Cryptotis merriami	
2613	Szechwan myotis	Myotis altarium	
2614	Sulawesi montane rat	Taeromys hamatus	
2615	Latona's shrew	Crocidura latona	
2616	Miniopterus brachytragos	Miniopterus brachytragos	
2617	Kalinowski's mastiff bat	Mormopterus kalinowskii	
2618	Riparian myotis	Myotis riparius	
2619	Niobe's shrew	Crocidura niobe	
2620	Doucet's musk shrew	Crocidura douceti	
2621	Gnome fruit-eating bat	Dermanura gnoma	
2622	Orinoco sword-nosed bat	Lonchorhina orinocensis	
2623	Darling's horseshoe bat	Rhinolophus darlingi	
2624	Manu short-tailed bat	Carollia manu	
2625	Mato Grosso dog-faced bat	Neoplatymops mattogrossensis	
2626	Humboldt big-eared brown bat	Histiotus humboldti	
2627	Western nectar bat	Lonchophylla hesperia	
2628	Northern broad-nosed bat	Scotorepens sanborni	
2629	Khajuria's leaf-nosed bat	Hipposideros durgadasi	
2630	Gervais's funnel-eared bat	Nyctiellus lepidus	
2631	Thomas's big-eared brown bat	Histiotus laephotis	
2632	Greater broad-nosed bat	Platyrrhinus vittatus	
2633	Temminck's trident bat	Aselliscus tricuspidatus	
2634	Fringed fruit-eating bat	Artibeus fimbriatus	
2635	Ecuadorian small-eared shrew	Cryptotis equatoris	
2636	Highlands punaré	Thrichomys inermis	
2637	Savanna dwarf shrew	Crocidura nanilla	
2638	Greater sheath-tailed bat	Emballonura furax	
2639	Jackson's shrew	Crocidura jacksoni	
2640	Hill's shrew	Crocidura hilliana	
2641	Katinka's shrew	Crocidura katinka	
2642	Spurred roundleaf bat	Hipposideros calcaratus	
2643	Kashmir white-toothed shrew	Crocidura pullata	
2644	Gaskell's false serotine	Hesperoptenus gaskelli	
2645	Lowe's shrew	Chodsigoa parca	
2646	Dobson's horseshoe bat	Rhinolophus yunanensis	
2647	Rhinolophus sedulus	Rhinolophus sedulus	
2648	Tamá small-eared shrew	Cryptotis tamensis	
2649	Lamulate shrew	Chodsigoa lamula	
2650	Portenko's shrew	Sorex portenkoi	
2651	Webb's tufted-tailed rat	Eliurus webbi	
2652	Fraternal fruit-eating bat	Artibeus fraterculus	
2653	Mexican long-tailed shrew	Sorex oreopolus	
2654	Yellow-faced horseshoe bat	Rhinolophus virgo	
2655	Usambara shrew	Crocidura usambarae	
2656	Soricomys kalinga	Soricomys kalinga	
2657	Neoromicia robertsi	Neoromicia robertsi	
2658	Malayan horseshoe bat	Rhinolophus malayanus	
2659	Ozimops planiceps	Ozimops planiceps	
2660	Schwartz's myotis	Myotis martiniquensis	
2661	Peters's disk-winged bat	Thyroptera discifera	
2662	Veracruz shrew	Sorex veraecrucis	
2663	Philippine forest roundleaf bat	Hipposideros obscurus	
2664	Smith's shrew	Chodsigoa smithii	
2665	Sulawesi horseshoe bat	Rhinolophus celebensis	
2666	Woosnam's broad-headed mouse	Zelotomys woosnami	
2667	Eastern long-fingered bat	Myotis macrodactylus	
2668	Flute-nosed bat	Murina florium	
2669	Frosted sac-winged bat	Saccopteryx canescens	
2670	MacArthur's shrew	Crocidura macarthuri	
2671	Malagasy serotine	Neoromicia matroka	
2672	Northern little yellow-eared bat	Vampyressa thyone	
2673	Titania's woolly bat	Kerivoula titania	
2674	Large rufous horseshoe bat	Rhinolophus rufus	
2675	Raffray's sheath-tailed bat	Emballonura raffrayana	
2676	Sahelian tiny shrew	Crocidura pasha	
2677	Bokhara horseshoe bat	Rhinolophus bocharicus	
2678	Andrew Rebori's house bat	Scotophilus andrewreborii	
2679	Gray long-tongued bat	Glossophaga leachii	
2680	Guianan spear-nosed bat	Phyllostomus latifolius	
2681	Paraguayan punaré	Thrichomys pachyurus	
2682	Bala tube-nosed bat	Murina balaensis	
2683	Benito roundleaf bat	Hipposideros beatus	
2684	Sulawesi forest rat	Taeromys punicans	
2685	Velvety myotis	Myotis simus	
2686	Handley's nectar bat	Lonchophylla handleyi	
2687	Malayan roundleaf bat	Hipposideros nequam	
2688	Schmidts's big-eared bat	Micronycteris schmidtorum	
2689	Tien Shan shrew	Sorex asper	
2690	Southern myotis	Myotis aelleni	
2691	Major's tufted-tailed rat	Eliurus majori	
2692	Ejeta's house bat	Scotophilus ejetai	
2693	Chiriquinan serotine	Eptesicus chiriquinus	
2694	Little big-eyed bat	Chiroderma trinitatum	
2695	White-tipped tufted-tailed rat	Eliurus penicillatus	
2696	Lesser Taiwanese shrew	Chodsigoa sodalis	
2697	Betsileo short-tailed rat	Brachyuromys betsileoensis	
2698	Little Nepalese horseshoe bat	Rhinolophus subbadius	
2699	Saline red bat	Lasiurus salinae	
2700	Sulawesi free-tailed bat	Mops sarasinorum	
2701	Peters's sheath-tailed bat	Paremballonura atrata	
2702	Thomas's horseshoe bat	Rhinolophus thomasi	
2703	Chinese highland shrew	Sorex excelsus	
2704	Creagh's horseshoe bat	Rhinolophus creaghi	
2705	Sclater's mouse shrew	Myosorex sclateri	
2706	Thai horseshoe bat	Rhinolophus siamensis	
2707	Long-toothed pipistrelle	Hypsugo dolichodon	
2708	Red-brown pipistrelle	Hypsugo kitcheneri	
2709	Brosset's big-eared bat	Micronycteris brosseti	
2710	Greater long-tailed bat	Choeroniscus periosus	
2711	Peters's wrinkle-lipped bat	Mormopterus jugularis	
2712	Zacatecas shrew	Sorex emarginatus	
2713	Thalia's shrew	Crocidura thalia	
2714	Polia's shrew	Crocidura polia	
2715	Schaller's mouse shrew	Myosorex schalleri	
2716	Brown mastiff bat	Promops nasutus	
2717	De Vivo's disk-winged bat	Thyroptera devivoi	
2718	Jouvenet's shrew	Crocidura jouvenetae	
2719	Hispaniolan greater funnel-eared bat	Natalus major	
2720	Shortridge's rat	Thallomys shortridgei	
2721	Curacao myotis	Myotis nesopolus	
2722	Broad-eared horseshoe bat	Rhinolophus euryotis	
2723	Maggie Taylor's roundleaf bat	Hipposideros maggietaylorae	
2724	Dominican myotis	Myotis dominicensis	
2725	Marovaza house bat	Scotophilus marovaza	
2726	Ludia's shrew	Crocidura ludia	
2727	Mérida brocket	Mazama bricenii	
2728	Daniel's tufted-tailed rat	Eliurus danieli	
2729	Neriad horseshoe bat	Rhinolophus nereis	
2730	Tate's shrew rat	Tateomys rhinogradoides	
2731	Choco broad-nosed bat	Platyrrhinus chocoensis	
2732	Kei myotis	Myotis stalkeri	
2733	Annamit myotis	Myotis annamiticus	
2734	Eumops nanus	Eumops nanus	
2735	Seri's sheath-tailed bat	Emballonura serii	
2736	Behn's bat	Glyphonycteris behnii	
2737	Patagonian bonneted bat	Eumops patagonicus	
2738	Myotis flavus	Myotis flavus	
2739	Crested roundleaf bat	Hipposideros inexpectatus	
2740	Davis's round-eared bat	Lophostoma evotis	
2741	Dark-nosed small-footed myotis	Myotis melanorhinus	
2742	Orbiculus leaf-nosed bat	Hipposideros orbiculus	
2743	Handley's tailless bat	Anoura cultrata	
2744	Maendeleo horseshoe bat	Rhinolophus maendeleo	
2745	Lesser brown horseshoe bat	Rhinolophus stheno	
2746	Timor roundleaf bat	Hipposideros crumeniferus	
2747	Buffy broad-nosed bat	Platyrrhinus infuscus	
2748	Northern sword-nosed bat	Lonchorhina inusitata	
2749	Pitman's shrew	Crocidura pitmani	
2750	Insular horseshoe bat	Rhinolophus keyensis	
2751	Big-eared roundleaf bat	Hipposideros macrobullatus	
2752	Danfoss's mouse lemur	Microcebus danfossi	
2753	Jones's roundleaf bat	Hipposideros jonesi	
2754	Louis's yellow-shouldered bat	Sturnira luisi	
2755	Osgood's horseshoe bat	Rhinolophus osgoodi	
2756	Dayak roundleaf bat	Hipposideros dyacorum	
2757	Eloquent horseshoe bat	Rhinolophus eloquens	
2758	Borneo roundleaf bat	Hipposideros doriae	
2759	Red myotis	Myotis ruber	
2760	Drylands vesper mouse	Calomys musculinus	
2761	Johnstone's mastiff bat	Otomops johnstonei	
2762	Nepal myotis	Myotis nipalensis	
2763	Sumba roundleaf bat	Hipposideros sumbae	
2764	Chaerephon jobimena	Chaerephon jobimena	
2765	Menchu's little yellow bat	Rhogeessa menchuae	
2766	Shamel's horseshoe bat	Rhinolophus shameli	
2767	Mistratoan yellow-shouldered bat	Sturnira mistratensis	
2768	Peale's free-tailed bat	Nyctinomops aurispinosus	
2769	Yellowish myotis	Myotis levis	
2770	Simon's spiny rat	Proechimys simonsi	
2771	Bogotá yellow-shouldered bat	Sturnira bogotensis	
2772	Cadena's tailless bat	Anoura cadenai	
2773	Maduran leaf-nosed bat	Hipposideros madurae	
2774	Talamancan yellow-shouldered bat	Sturnira mordax	
2775	Groove-toothed bat	Phoniscus atrox	
2776	Sakeji horseshoe bat	Rhinolophus sakejiensis	
2777	Burma pipistrelle	Hypsugo lophurus	
2778	Convex horseshoe bat	Rhinolophus convexus	
2779	D'Orbigny's tuco-tuco	Ctenomys dorbignyi	
2780	Hairy-tailed antsangy	Brachytarsomys villosa	
2781	Trinidad spiny rat	Proechimys trinitatis	
2782	Big bonneted bat	Eumops dabbenei	
2783	New Guinea waterside rat	Parahydromys asper	
2784	Ellerman's tufted-tailed rat	Eliurus ellermani	
2785	Ziama horseshoe bat	Rhinolophus ziama	
2786	Findley's myotis	Myotis findleyi	
2787	Greater yellow-shouldered bat	Sturnira magna	
2788	Lesser tufted-tailed rat	Eliurus minor	
2789	Indonesian tomb bat	Taphozous achates	
2790	Long-tailed shrew rat	Tateomys macrocercus	
2791	Northern Sulawesi echiothrix	Echiothrix leucura	
2792	Phou Khao Khouay leaf-nosed bat	Hipposideros khaokhouayensis	
2793	Lesser yellow-shouldered bat	Sturnira nana	
2794	Marshall's horseshoe bat	Rhinolophus marshalli	
2795	Short-tailed roundleaf bat	Hipposideros curtus	
2796	Kachin woolly bat	Kerivoula kachinensis	
2797	Shadowy broad-nosed bat	Platyrrhinus umbratus	
2798	Vieira's long-tongued bat	Xeronycteris vieirai	
2799	Cinnamon myotis	Myotis fortidens	
2800	Madura horseshoe bat	Rhinolophus madurensis	
2801	New Guinea long-eared bat	Nyctophilus microtis	
2802	Philippine pygmy roundleaf bat	Hipposideros pygmaeus	
2803	Schultz's round-eared bat	Lophostoma schulzi	
2804	Charming thicket rat	Thamnomys venustus	
2805	Sooty roundleaf bat	Hipposideros fuliginosus	
2806	Ernst Mayr's water rat	Leptomys ernstmayri	
2807	Bidentate yellow-shouldered bat	Sturnira bidens	
2808	Formosan woolly horseshoe bat	Rhinolophus formosae	
2809	Ridley's bat	Myotis ridleyi	
2810	Eger's long-fingered bat	Miniopterus egeri	
2811	Thomas's small-eared shrew	Cryptotis thomasi	
2812	Akodon affinis	Akodon affinis	
2813	Large Mindanao roundleaf bat	Hipposideros coronatus	
2814	Peleng leaf-nosed bat	Hipposideros pelingensis	
2815	Central Sulawesi echiothrix	Echiothrix centrosa	
2816	Joffre's pipistrelle	Hypsugo joffrei	
2817	Short-headed roundleaf bat	Hipposideros breviceps	
2818	Large Asian roundleaf bat	Hipposideros lekaguli	
2819	Sorensen's leaf-nosed bat	Hipposideros sorenseni	
2820	Vordermann's pipistrelle	Hypsugo vordermanni	
2821	Cox's roundleaf bat	Hipposideros coxi	
2822	Biak roundleaf bat	Hipposideros papua	
2823	Peterson's long-fingered bat	Miniopterus petersoni	
2824	Western sheath-tailed bat	Paremballonura tiavato	
2825	Bickham's little yellow bat	Rhogeessa bickhami	
2826	Matapalo broad-nosed bat	Platyrrhinus matapalensis	
2827	Ethiopian large-eared roundleaf bat	Hipposideros megalotis	
2828	Anjouan myotis	Myotis anjouanensis	
2829	Dryadonycteris capixaba	Dryadonycteris capixaba	
2830	Miller's mastiff bat	Molossus pretiosus	
2831	Coiban mastiff bat	Molossus coibensis	
2832	Forest horseshoe bat	Rhinolophus silvestris	
2833	Gilded tube-nosed bat	Murina rozendaali	
2834	Grand roundleaf bat	Hipposideros grandis	
2835	Malagasy mouse-eared bat	Myotis goudoti	
2836	Oecomys concolor	Oecomys concolor	
2837	Ruwenzori horseshoe bat	Rhinolophus ruwenzorii	
2838	Broad-toothed tailless bat	Anoura latidens	
2839	Luis Manuel's tailless bat	Anoura luismanueli	
2840	Sanborn's bonneted bat	Eumops hansae	
2841	Montane myotis	Myotis oxyotus	
2842	Malagasy white-bellied free-tailed bat	Mops leucostigma	
2843	Western long-tongued bat	Glossophaga morenoi	
2844	Peters's trumpet-eared bat	Phoniscus jagorii	
2845	Peters's tube-nosed bat	Harpiola grisea	
2846	Fly River roundleaf bat	Hipposideros muscinus	
2847	Mitred horseshoe bat	Rhinolophus mitratus	
2848	Peninsular horseshoe bat	Rhinolophus robinsoni	
2849	Sturnira koopmanhilli	Sturnira koopmanhilli	
2850	Glen's long-fingered bat	Miniopterus gleni	
2851	Sanborn's big-eared bat	Micronycteris sanborni	
2852	Western round-eared bat	Lophostoma occidentalis	
2853	Eligmodontia typus	Eligmodontia typus	
2854	Greater roundleaf bat	Hipposideros camerunensis	
2855	Northern water rat	Paraleptomys rufilatus	
2856	Peninsular myotis	Myotis peninsularis	
2857	Short-haired water rat	Paraleptomys wilhelmina	
2858	Grandidier's trident bat	Paratriaenops auritus	
2859	Major's long-fingered bat	Miniopterus majori	
2860	Shortridge's horseshoe bat	Rhinolophus shortridgei	
2861	Shield-faced roundleaf bat	Hipposideros lylei	
2862	Malagasy slit-faced bat	Nycteris madagascariensis	
2863	Napo spiny rat	Proechimys quadruplicatus	
2864	Akodon sylvanus	Akodon sylvanus	
2865	Guianan bonneted bat	Eumops maurus	
2866	Roberto's spiny rat	Proechimys roberti	
2867	Wollaston's roundleaf bat	Hipposideros wollastoni	
2868	Carmen Mountain shrew	Sorex milleri	
2869	Telefomin roundleaf bat	Hipposideros corynophyllus	
2870	Maluku myotis	Myotis moluccarum	
2871	Steere's spiny rat	Proechimys steerei	
2872	Philippine long-fingered bat	Miniopterus paululus	
2873	Platyrrhinus albericoi	Platyrrhinus albericoi	
2874	Thomas's broad-nosed bat	Platyrrhinus dorsalis	
2875	Campo-Ma'an fruit bat	Casinycteris campomaanensis	
2876	Thick-thumbed myotis	Myotis rosseti	
2877	Yates's big-eared bat	Micronycteris yatesi	
2878	Griffith's long-fingered bat	Miniopterus griffithsi	
2879	Elias's Atlantic spiny rat	Trinomys eliasi	
2880	Soriano's yellow-shouldered bat	Sturnira sorianoi	
2881	Bronze tube-nosed bat	Murina aenea	
2882	Yonenaga's Atlantic spiny rat	Trinomys yonenagae	
2883	Herman's myotis	Myotis hermani	
2884	Notiosorex cockrumi	Notiosorex cockrumi	
2885	Tschudi's yellow-shouldered bat	Sturnira oporaphilum	
2886	Gomantong myotis	Myotis gomantongensis	
2887	Soft-spined Atlantic spiny rat	Trinomys dimidiatus	
2888	Trujillo	Scotophilus trujilloi	
2889	Miniopterus sororculus	Miniopterus sororculus	
2890	Brown-bellied broad-nosed bat	Platyrrhinus fusciventris	
2891	Kalko's round-eared bat	Lophostoma kalkoae	
2892	Boeadi's roundleaf bat	Hipposideros boeadii	
2893	Hairy Atlantic spiny rat	Trinomys setosus	
2894	Chinese water myotis	Myotis laniger	
2895	Myotis izecksohni	Myotis izecksohni	
2896	Peracchi's nectar bat	Lonchophylla peracchii	
2897	Sucre spiny rat	Proechimys urichi	
2898	Eumops delticus	Eumops delticus	
2899	Moojen's Atlantic spiny rat	Trinomys moojeni	
2900	White-spined Atlantic spiny rat	Trinomys albispinus	
2901	Mamore arboreal rice rat	Oecomys mamorae	
2902	Spiked Atlantic spiny rat	Trinomys paratus	
2903	Caparaó grass mouse	Akodon mystax	
2904	Harrison's tube-nosed bat	Murina harrisoni	
2905	Hills' horseshoe bat	Rhinolophus hillorum	
2906	Gracile Atlantic spiny rat	Trinomys gratiosus	
2907	Dark-caped Atlantic spiny rat	Trinomys mirapitanga	
2908	Mouse-tailed Atlantic spiny rat	Trinomys myosuros	
2909	Black Mamba	Dendroaspis polylepis	11 yrs
2910	King Cobra	Ophiophagus hannah	20 yrs
2911	Water Moccasin	Agkistrodon piscivorus	24 yrs
2912	Common Snapping Turtle	Chelydra serpentina	30-40 yrs
2913	Copperhead	Agkistrodon contortrix	15-29 yrs
2914	American Alligator	Alligator mississippiensis	35-80 yrs
2915	Leatherback sea turtle	Dermochelys coriacea	
2916	Mugger	Crocodylus palustris	20-40 yrs
2917	American Crocodile	Crocodylus acutus	50-70 yrs
2918	Nile Crocodile	Crocodylus niloticus	50-80 yrs
2919	Corn Snake	Pantherophis guttatus	6-23 yrs
2920	Common European Adder	Vipera berus	10-15 yrs
2921	Gila Monster	Heloderma suspectum	20-30 yrs
2922	Timber Rattlesnake	Crotalus horridus	30-37 yrs
2923	Burmese Python	Python bivittatus	20-25 yrs
2924	Common garter snake	Thamnophis sirtalis	
2925	Painted Turtle	Chrysemys picta	20-30 yrs
2926	Milk Snake	Lampropeltis triangulum	12-21 yrs
2927	Common House Gecko	Hemidactylus frenatus	5 yrs
2928	Ring-Necked Snake	Diadophis punctatus	6-20 yrs
2929	Green Sea Turtle	Chelonia mydas	90 yrs
2930	Loggerhead sea turtle	Caretta caretta	
2931	Slowworm	Anguis fragilis	30-54 yrs
2932	Eastern Brown Snake	Pseudonaja textilis	15 yrs
2933	Western Rat Snake	Pantherophis obsoletus	10-15 yrs
2934	American Five-Lined Skink	Plestiodon fasciatus	6 yrs
2935	Plains Garter Snake	Thamnophis radix	8.5 yrs
2936	American Anole	Anolis carolinensis	2-8 yrs
2937	California Kingsnake	Lampropeltis californiae	30-40 yrs
2938	Western Diamondback Rattlesnake	Crotalus atrox	15-20 yrs
2939	Eastern Diamondback Rattlesnake	Crotalus adamanteus	15-20 yrs
2940	Hawksbill Sea Turtle	Eretmochelys imbricata	30-50 yrs
2941	Tiger Snake	Notechis scutatus	10-15 yrs
2942	Eastern Hognose Snake	Heterodon platirhinos	12 yrs
2943	Eastern Indigo Snake	Drymarchon couperi	17-25 yrs
2944	Chinese Alligator	Alligator sinensis	50-70 yrs
2945	Eastern Racer	Coluber constrictor	10 yrs
2946	Argentine Black and White Tegu	Salvator merianae	15-20 yrs
2947	Bengal Monitor	Varanus bengalensis	22 yrs
2948	Diamondback Terrapin	Malaclemys terrapin	25 yrs
2949	Brown Snake	Storeria dekayi	7 yrs
2950	Gharial	Gavialis gangeticus	29 yrs
2951	Banded Krait	Bungarus fasciatus	
2952	Brown Anole	Anolis sagrei	5-8 yrs
2953	Marine Iguana	Amblyrhynchus cristatus	30 yrs
2954	Smooth Green Snake	Opheodrys vernalis	6 yrs
2955	Mediterranean House Gecko	Hemidactylus turcicus	8 yrs
2956	Egyptian Cobra	Naja haje	20 yrs
2957	Long-Nosed Whip Snake	Ahaetulla nasuta	
2958	Rubber Boa	Charina bottae	7.5-30 yrs
2959	Gopher Snake	Pituophis catenifer	12-33 yrs
2960	Sidewinder	Crotalus cerastes	5-20 yrs
2961	Common Death Adder	Acanthophis antarcticus	9 yrs
2962	Thorny Devil	Moloch horridus	15-20 yrs
2963	Mojave Rattlesnake	Crotalus scutulatus	12.5 yrs
2964	Western Fence Lizard	Sceloporus occidentalis	5-7 yrs
2965	Herman's Tortoise	Testudo hermanni	30-75 yrs
2966	Ribbon Snake	Thamnophis saurita	10-11 yrs
2967	Nose-Horned Viper	Vipera ammodytes	22 yrs
2968	Brown Tree Snake	Boiga irregularis	10-15 yrs
2969	Mulga Snake	Pseudechis australis	25 yrs
2970	Freshwater Crocodile	Crocodylus johnsoni	50 yrs
2971	Indian Star Tortoise	Geochelone elegans	25-80 yrs
2972	Eastern Kingsnake	Lampropeltis getula	25 yrs
2973	Prairie Rattlesnake	Crotalus viridis	16-24 yrs
2974	Cuvier's Dwarf Caiman	Paleosuchus palpebrosus	20-60 yrs
2975	Texas Horned Lizard	Phrynosoma cornutum	7 yrs
2976	Coachwhip	Masticophis flagellum	13-20 yrs
2977	Pygmy Rattlesnake	Sistrurus miliarius	16 yrs
2978	Orinoco Crocodile	Crocodylus intermedius	60-80 yrs
2979	Carpet Python	Morelia spilota	20 yrs
2980	Black-Tailed Rattlesnake	Crotalus molossus	15-20 yrs
2981	Perentie	Varanus giganteus	15-20 yrs
2982	Diamondback Water Snake	Nerodia rhombifer	10 yrs
2983	Yellow-Bellied Sea Snake	Hydrophis platurus	2 yrs
2984	Green Tree Python	Morelia viridis	12-20 yrs
2985	Kemp's ridley sea turtle	Lepidochelys kempii	
2986	Rinkhals	Hemachatus haemachatus	20-25 yrs
2987	Scarlet Kingsnake	Lampropeltis elapsoides	22 yrs
2988	Many-Banded Krait	Bungarus multicinctus	9-13 yrs
2989	Western Hognose Snake	Heterodon nasicus	9-20 yrs
2990	Veiled Chameleon	Chamaeleo calyptratus	5-8 yrs
2991	New Mexico Whiptail	Aspidoscelis neomexicanus	3 yrs
2992	Chinese Water Dragon	Physignathus cocincinus	10-15 yrs
2993	Wood Turtle	Glyptemys insculpta	40-58 yrs
2994	Mamushi	Gloydius blomhoffii	14 yrs
2995	Blanding's Turtle	Emydoidea blandingii	70-80 yrs
2996	Yellow-Lipped Sea Krait	Laticauda colubrina	
2997	Plain-Bellied Water Snake	Nerodia erythrogaster	8-15 yrs
2998	Eastern Fence Lizard	Sceloporus undulatus	4-5 yrs
2999	Jackson's Chameleon	Trioceros jacksonii	10 yrs
3000	Pine Snake	Pituophis melanoleucus	5-10 yrs
3001	Asp Viper	Vipera aspis	15-20 yrs
3002	Eastern Coral Snake	Micrurus fulvius	7 yrs
3003	Spectacled Caiman	Caiman crocodilus	20-40 yrs
3004	Southern Alligator Lizard	Elgaria multicarinata	10-15 yrs
3005	Common Basilisk	Basiliscus basiliscus	2-7 yrs
3006	Western Rattlesnake	Crotalus oreganus	15-20 yrs
3007	Spiny Softshell Turtle	Apalone spinifera	50 yrs
3008	Panther Chameleon	Furcifer pardalis	1-5 yrs
3009	Philippine Crocodile	Crocodylus mindorensis	70-80 yrs
3010	Monocled Cobra	Naja kaouthia	13-20 yrs
3011	Siamese Crocodile	Crocodylus siamensis	25-35 days
3012	Rough Green Snake	Opheodrys aestivus	5-8 yrs
3013	Mexican Beaded Lizard	Heloderma horridum	22 yrs
3014	Amethystine Python	Simalia amethistina	20 yrs
3015	Rosy Boa	Charina trivirgata	18-22 yrs
3016	Texas Spiny Lizard	Sceloporus olivaceus	7 yrs
3017	Gold Dust Day Gecko	Phelsuma laticauda	10 yrs
3018	Western Skink	Plestiodon skiltonianus	10 yrs
3019	Stejneger's Pit Viper	Trimeresurus stejnegeri	
3020	Philippine Cobra	Naja philippinensis	20 yrs
3021	Mud Snake	Farancia abacura	19 yrs
3022	Sheltopusik	Pseudopus apodus	50 yrs
3023	Green Vine Snake	Oxybelis fulgidus	9-15 yrs
3024	Queen Snake	Regina septemvittata	19 yrs
3025	Prairie Kingsnake	Lampropeltis calligaster	15-23 yrs
3026	Eyelash Viper	Bothriechis schlegelii	10-20 yrs
3027	Brown Water Snake	Nerodia taxispilota	6 yrs
3028	Pond Slider	Trachemys scripta	20-50 yrs
3029	Pig-Nosed Turtle	Carettochelys insculpta	25-30 yrs
3030	Banded Water Snake	Nerodia fasciata	7-8 yrs
3031	Speckled Kingsnake	Lampropeltis holbrooki	20 yrs
3032	Lace Monitor	Varanus varius	20 yrs
3033	Arabian Sand Boa	Eryx jayakari	20-30 yrs
3034	Northern Boa	Boa imperator	20-40 yrs
3035	Western Green Mamba	Dendroaspis viridis	18 yrs
3036	Common Collared Lizard	Crotaphytus collaris	5-8 yrs
3037	Morelet's Crocodile	Crocodylus moreletii	50-80 yrs
3038	Radiated Tortoise	Astrochelys radiata	40-100 yrs
3039	Common Musk Turtle	Sternotherus odoratus	50 yrs
3040	Desert Horned Lizard	Phrynosoma platyrhinos	5-8 yrs
3041	Sand Lizard	Lacerta agilis	5-8 yrs
3042	Black Spiny-Tailed Iguana	Ctenosaura similis	4.8 yrs
3043	Broad-Headed Skink	Plestiodon laticeps	4-8 yrs
3044	Australian Water Dragon	Intellagama lesueurii	20 yrs
3045	Common Box Turtle	Terrapene carolina	138 yrs
3046	Northern Alligator Lizard	Elgaria coerulea	5-8 yrs
3047	Spotted Turtle	Clemmys guttata	26-50 yrs
3048	White-Lipped Pit Viper	Trimeresurus albolabris	9-11 yrs
3049	Common Wall Lizard	Podarcis muralis	7-10 yrs
3050	Northern Map Turtle	Graptemys geographica	15-20 yrs
3051	California Mountain Kingsnake	Lampropeltis zonata	10-20 yrs
3052	Italian Wall Lizard	Podarcis siculus	
3053	Smooth Snake	Coronella austriaca	30 yrs
3054	Western Terrestrial Garter Snake	Thamnophis elegans	2-12 yrs
3055	Shingleback Lizard	Tiliqua rugosa	15-20 yrs
3056	Habu	Protobothrops flavoviridis	
3057	Rainbow Snake	Farancia erytrogramma	19 yrs
3058	Texas Coral Snake	Micrurus tener	
3059	Desert Cobra	Walterinnesia aegyptia	6.7 yrs
3060	Yacare Caiman	Caiman yacare	50 yrs
3061	Satanic Leaf-Tailed Gecko	Uroplatus phantasticus	3-10 yrs
3062	Common Wall Gecko	Tarentola mauritanica	7-10 yrs
3063	Glossy Snake	Arizona elegans	10-20 yrs
3064	Oriental Wolf Snake	Lycodon capucinus	
3065	Rhinoceros Iguana	Cyclura cornuta	20 yrs
3066	Chicken Snake	Spilotes pullatus	13-17 yrs
3067	Chinese Cobra	Naja atra	12 yrs
3068	European Green Lizard	Lacerta viridis	5-16 yrs
3069	Blunt-Nosed Viper	Macrovipera lebetinus	13 yrs
3070	Dugite	Pseudonaja affinis	
3071	Golden Tree Snake	Chrysopelea ornata	4-12 yrs
3072	Green Whip Snake	Hierophis viridiflavus	20 yrs
3073	Eastern Foxsnake	Pantherophis gloydi	20 yrs
3074	Northern River Terrapin	Batagur baska	25 yrs
3075	Common Chameleon	Chamaeleo chamaeleon	2-3 yrs
3076	Night Snake	Hypsiglena torquata	over 12 yrs
3077	Dice Snake	Natrix tessellata	
3078	Green Bush Viper	Atheris squamigera	12-20 yrs
3079	Meadow Viper	Vipera ursinii	
3080	Storeria occipitomaculata	Storeria occipitomaculata	
3081	Lataste's Viper	Vipera latastei	9.7
3082	Northern Curly-Tailed Lizard	Leiocephalus carinatus	10.8
3083	Chinese Pond Turtle	Mauremys reevesii	10-24 yrs
3084	Wagler's Pit Viper	Tropidolaemus wagleri	14 yrs
3085	Desert Spiny Lizard	Sceloporus magister	5-6 yrs
3086	Long-Nosed Snake	Rhinocheilus lecontei	12-20 yrs
3087	Japanese Rat Snake	Elaphe climacophora	13 yrs
3088	Emerald Tree Monitor	Varanus prasinus	10-15 yrs
3089	Galápagos Racer	Pseudalsophis biserialis	
3090	California Whipsnake	Masticophis lateralis	
3091	Sunbeam Snake	Xenopeltis unicolor	9-12 yrs
3092	Broad-snouted caiman	Caiman latirostris	
3093	Bamboo Pit Viper	Trimeresurus gramineus	
3094	Eunectes deschauenseei	Eunectes deschauenseei	
3095	Viperine Water Snake	Natrix maura	
3096	Lesser Antillean iguana	Iguana delicatissima	
3097	Pancake Tortoise	Malacochersus tornieri	25-35 yrs
3098	Cerastes vipera	Cerastes vipera	
3099	Abronia graminea	Abronia graminea	
3100	Sharp-tailed snake	Contia tenuis	
3101	Common side-blotched lizard	Uta stansburiana	
3102	Banded kukri snake	Oligodon arnensis	
3103	Slender glass lizard	Ophisaurus attenuatus	
3104	Crotalus ruber	Crotalus ruber	
3105	Ocellated lizard	Timon lepidus	
3106	Samar cobra	Naja samarensis	
3107	Parson's chameleon	Calumma parsonii	
3108	Horseshoe whip snake	Hemorrhois hippocrepis	
3109	Ctenosaura pectinata	Ctenosaura pectinata	
3110	Philippine sailfin lizard	Hydrosaurus pustulatus	
3111	Western green lizard	Lacerta bilineata	
3112	Indochinese spitting cobra	Naja siamensis	
3113	Sphaerodactylus ariasae	Sphaerodactylus ariasae	
3114	Amazon Tree Boa	Corallus hortulanus	15-20 yrs
3115	Crotalus lepidus	Crotalus lepidus	
3116	Trimeresurus flavomaculatus	Trimeresurus flavomaculatus	
3117	Cantor's Giant Softshell Turtle	Pelochelys cantorii	
3118	Ladder Snake	Zamenis scalaris	
3119	Indian Roofed Turtle	Pangshura tecta	12-15 yrs
3120	Western Ground Snake	Sonora semiannulata	
3121	Children's Python	Antaresia childreni	15-30 yrs
3122	Tropical House Gecko	Hemidactylus mabouia	3-5 yrs
3123	Brown Basilisk	Basiliscus vittatus	7-8 yrs
3124	Desert Grassland Whiptail Lizard	Aspidoscelis uniparens	
3125	Marginated Tortoise	Testudo marginata	100-140 yrs
3126	Great Plains Rat Snake	Pantherophis emoryi	21 yrs
3127	Red-Tailed Green Ratsnake	Gonyosoma oxycephalum	15-20 yrs
3128	Galápagos Land Iguana	Conolophus subcristatus	50-69 yrs
3129	Rough Earth Snake	Haldea striatula	7 yrs
3130	Southern Hognose Snake	Heterodon simus	
3131	Golden Lancehead	Bothrops insularis	
3132	Asian Vine Snake	Ahaetulla prasina	12 yrs
3133	Desert Kingsnake	Lampropeltis splendida	12-20 yrs
3134	Beaked Sea Snake	Enhydrina schistosa	
3135	Butler's Garter Snake	Thamnophis butleri	6-14 yrs
3136	Speckled Tortoise	Chersobius signatus	
3137	Giant Girdled Lizard	Smaug giganteus	20 yrs
3138	Long-Nosed Leopard Lizard	Gambelia wislizenii	
3139	Tiger Rattlesnake	Crotalus tigris	15 yrs
3140	New Guinea Crocodile	Crocodylus novaeguineae	24-60 yrs
3141	Plumed Basilisk	Basiliscus plumifrons	8-12 yrs
3142	Smooth-Fronted Caiman	Paleosuchus trigonatus	16-25 yrs
3143	Asian Forest Tortoise	Manouria emys	150 yrs
3144	Kirtland's snake	Clonophis kirtlandii	
3145	Crotalus willardi	Crotalus willardi	
3146	Vipera seoanei	Vipera seoanei	
3147	Montivipera xanthina	Montivipera xanthina	
3148	Phelsuma grandis	Phelsuma grandis	
3149	Scincella lateralis	Scincella lateralis	
3150	Burton's legless lizard	Lialis burtonis	
3151	Lygodactylus williamsi	Lygodactylus williamsi	
3152	Coronella girondica	Coronella girondica	
3153	Macrovipera schweizeri	Macrovipera schweizeri	
3154	Great Plains skink	Plestiodon obsoletus	
3155	Crotalus mitchellii	Crotalus mitchellii	
3156	Sauromalus ater	Sauromalus ater	
3157	False map turtle	Graptemys pseudogeographica	
3158	Razor-backed musk turtle	Sternotherus carinatus	
3159	Plestiodon inexpectatus	Plestiodon inexpectatus	
3160	Crotalus catalinensis	Crotalus catalinensis	
3161	Florida sand skink	Plestiodon reynoldsi	
3162	Northern Water Snake	Nerodia sipedon	9-10 yrs
3163	Bitis peringueyi	Bitis peringueyi	
3164	Gray's monitor	Varanus olivaceus	
3165	Crotalus basiliscus	Crotalus basiliscus	
3166	Noronha skink	Trachylepis atlantica	
3167	Black-knobbed map turtle	Graptemys nigrinoda	
3168	Antiguan racer	Alsophis antiguae	
3169	Boiga trigonata	Boiga trigonata	
3170	Gyalopion canum	Gyalopion canum	
3171	Draco dussumieri	Draco dussumieri	
3172	Malagasy giant chameleon	Furcifer oustaleti	
3173	Sitana ponticeriana	Sitana ponticeriana	
3174	Jamaican iguana	Cyclura collei	
3175	Ouachita map turtle	Graptemys ouachitensis	
3176	Cerastes gasperettii	Cerastes gasperettii	
3177	Protobothrops mucrosquamatus	Protobothrops mucrosquamatus	
3178	Texas alligator lizard	Gerrhonotus infernalis	
3179	Uroplatus sikorae	Uroplatus sikorae	
3180	Golden gecko	Gekko badenii	
3181	Angulate tortoise	Chersina angulata	
3182	Sphenomorphus dussumieri	Sphenomorphus dussumieri	
3183	Bothrops jararacussu	Bothrops jararacussu	
3184	Spanish pond turtle	Mauremys leprosa	
3185	Ovophis monticola	Ovophis monticola	
3186	Gran Canaria giant lizard	Gallotia stehlini	
3187	Carphophis vermis	Carphophis vermis	
3188	Lilford's wall lizard	Podarcis lilfordi	
3189	Plestiodon egregius	Plestiodon egregius	
3190	Anniella pulchra	Anniella pulchra	
3191	Plestiodon anthracinus	Plestiodon anthracinus	
3192	Python anchietae	Python anchietae	
3193	Mandarin rat snake	Euprepiophis mandarinus	
3194	Peloponnese slowworm	Anguis cephalonnica	
3195	Crotalus enyo	Crotalus enyo	
3196	Psammodromus algirus	Psammodromus algirus	
3197	Podarcis hispanicus	Podarcis hispanicus	
3198	Gekko smithii	Gekko smithii	
3199	Microlophus albemarlensis	Microlophus albemarlensis	
3200	Atheris ceratophora	Atheris ceratophora	
3201	Indian egg-eating snake	Elachistodon westermanni	
3202	Amphisbaena alba	Amphisbaena alba	
3203	Cyrtopodion scabrum	Cyrtopodion scabrum	
3204	Atheris chlorechis	Atheris chlorechis	
3205	Crotalus aquilus	Crotalus aquilus	
3206	Blue-tailed day gecko	Phelsuma cepediana	
3207	Montivipera raddei	Montivipera raddei	
3208	Porthidium nasutum	Porthidium nasutum	
3209	Great Basin collared lizard	Crotaphytus bicinctores	
3210	Boiga cynodon	Boiga cynodon	
3211	Amphisbaena ridleyi	Amphisbaena ridleyi	
3212	Agkistrodon taylori	Agkistrodon taylori	
3213	Labord's chameleon	Furcifer labordi	
3214	Filfola lizard	Podarcis filfolensis	
3215	Protobothrops jerdonii	Protobothrops jerdonii	
3216	Brookesia minima	Brookesia minima	
3217	Eutropis carinata	Eutropis carinata	
3218	Trans-Pecos rat snake	Bogertophis subocularis	
3219	Plestiodon gilberti	Plestiodon gilberti	
3220	Boiga forsteni	Boiga forsteni	
3221	Bronchocela jubata	Bronchocela jubata	
3222	Texas map turtle	Graptemys versa	
3223	Peters's banded skink	Scincopus fasciatus	
3224	Achalinus formosanus	Achalinus formosanus	
3225	Yellow-blotched map turtle	Graptemys flavimaculata	
3226	Crotalus pricei	Crotalus pricei	
3227	Chalcides chalcides	Chalcides chalcides	
3228	Acanthodactylus erythrurus	Acanthodactylus erythrurus	
3229	Ablepharus kitaibelii	Ablepharus kitaibelii	
3230	Madrean alligator lizard	Elgaria kingii	
3231	Lebanon viper	Montivipera bornmuelleri	
3232	Iberian worm lizard	Blanus cinereus	
3233	Senegal chameleon	Chamaeleo senegalensis	
3234	Phelsuma madagascariensis	Phelsuma madagascariensis	
3235	Ctenosaura bakeri	Ctenosaura bakeri	
3236	Vietnamese pond turtle	Mauremys annamensis	
3237	Crotalus triseriatus	Crotalus triseriatus	
3238	Chelonoidis donfaustoi	Chelonoidis donfaustoi	
3239	Western false smooth snake	Macroprotodon brevis	
3240	Crotalus ravus	Crotalus ravus	
3241	Berg adder	Bitis atropos	
3242	Angel Island chuckwalla	Sauromalus hispidus	
3243	Atropoides nummifer	Metlapilcoatlus nummifer	
3244	Crotalus polystictus	Crotalus polystictus	
3245	Plestiodon multivirgatus	Plestiodon multivirgatus	
3246	Ocelot gecko	Paroedura picta	
3247	Barkudia insularis	Barkudia insularis	
3248	Bothriechis aurifer	Bothriechis aurifer	
3249	Common flat-tail gecko	Uroplatus fimbriatus	
3250	Field's horned viper	Pseudocerastes fieldi	
3251	Melanophidium bilineatum	Melanophidium bilineatum	
3252	Calamaria schlegeli	Calamaria schlegeli	
3253	Boiga nigriceps	Boiga nigriceps	
3254	Ringed map turtle	Graptemys oculifera	
3255	Xenosaurus grandis	Xenosaurus grandis	
3256	Standing's day gecko	Phelsuma standingi	
3257	Barbour's map turtle	Graptemys barbouri	
3258	Alabama map turtle	Graptemys pulchra	
3259	Cagle's map turtle	Graptemys caglei	
3260	Trimeresurus mcgregori	Trimeresurus mcgregori	
3261	Iberian emerald lizard	Lacerta schreiberi	
3262	Yellow-headed day gecko	Phelsuma klemmeri	
3263	Ablepharus budaki	Ablepharus budaki	
3264	Crotalus intermedius	Crotalus intermedius	
3265	Hypsiglena jani	Hypsiglena jani	
3266	Savigny's agama	Trapelus savignii	
3267	Dominican ground lizard	Pholidoscelis fuscatus	
3268	Podarcis carbonelli	Podarcis carbonelli	
3269	Tropidophorus grayi	Tropidophorus grayi	
3270	Ctenosaura palearis	Ctenosaura palearis	
3271	Oligodon taeniolatus	Oligodon taeniolatus	
3272	Vipera darevskii	Vipera darevskii	
3273	Sonora palarostris	Sonora palarostris	
3274	Moorish viper	Daboia mauritanica	
3275	Brown leaf chameleon	Brookesia superciliaris	
3276	Elaphe bimaculata	Elaphe bimaculata	
3277	Protobothrops sieversorum	Protobothrops sieversorum	
3278	Atheris barbouri	Atheris barbouri	
3279	Vipera dinniki	Vipera dinniki	
3280	Ctenosaura melanosterna	Ctenosaura melanosterna	
3281	Draco maculatus	Draco maculatus	
3282	Iberian rock lizard	Iberolacerta monticola	
3283	Henkel's leaf-tailed gecko	Uroplatus henkeli	
3284	Florida crowned snake	Tantilla relicta	
3285	Trimeresurus schultzei	Trimeresurus schultzei	
3286	Anolis oculatus	Anolis oculatus	
3287	Eastern glass lizard	Ophisaurus ventralis	
3288	Crotalus stejnegeri	Crotalus stejnegeri	
3289	Abronia lythrochila	Abronia lythrochila	
3290	Montivipera albizona	Montivipera albizona	
3291	Panamint alligator lizard	Elgaria panamintina	
3292	Smith's dwarf chameleon	Bradypodion taeniabronchum	
3293	Spectral pygmy chameleon	Rhampholeon spectrum	
3294	Ctenosaura acanthura	Ctenosaura acanthura	
3295	Latifi's viper	Montivipera latifii	
3296	Psammodromus hispanicus	Psammodromus hispanicus	
3297	Escambia map turtle	Graptemys ernsti	
3298	Dasia olivacea	Dasia olivacea	
3299	Carrot-tail viper gecko	Hemidactylus imbricatus	
3300	Vipera monticola	Vipera monticola	
3301	Bedriaga's rock lizard	Archaeolacerta bedriagae	
3302	Eirenis levantinus	Eirenis levantinus	
3303	Crotalus lannomi	Crotalus lannomi	
3304	Brookesia decaryi	Brookesia decaryi	
3305	Uroplatus ebenaui	Uroplatus ebenaui	
3306	Eirenis decemlineatus	Eirenis decemlineatus	
3307	Bothriechis bicolor	Bothriechis bicolor	
3308	Crotalus angelensis	Crotalus angelensis	
3309	Boiga drapiezii	Boiga drapiezii	
3310	Vipera orlovi	Vipera orlovi	
3311	Baja California rat snake	Bogertophis rosaliae	
3312	Magdalena River turtle	Podocnemis lewyana	
3313	Sceloporus jarrovii	Sceloporus jarrovii	
3314	Crotalus pusillus	Crotalus pusillus	
3315	Pascagoula map turtle	Graptemys gibbonsi	
3316	Boiga beddomei	Boiga beddomei	
3317	Crotalus transversus	Crotalus transversus	
3318	Trachylepis margaritifera	Trachylepis margaritifera	
3319	Mimic glass lizard	Ophisaurus mimicus	
3320	Wagner's viper	Montivipera wagneri	
3321	Liophidium pattoni	Liophidium pattoni	
3322	Collared reed snake	Calamaria pavimentata	
3323	Island glass lizard	Ophisaurus compressus	
3324	Gran Canaria skink	Chalcides sexlineatus	
3325	Abronia bogerti	Abronia bogerti	
3326	Jewelled chameleon	Furcifer campani	
3327	Abronia deppii	Abronia deppii	
3328	Uromastyx alfredschmidti	Uromastyx alfredschmidti	
3329	Antsingy leaf chameleon	Brookesia perarmata	
3330	Dryophiops philippina	Dryophiops philippina	
3331	Brazilian galliwasp	Diploglossus lessonae	
3332	Limbless skink	Ophiomorus punctatissimus	
3333	Bothriechis rowleyi	Bothriechis rowleyi	
3334	Eirenis lineomaculatus	Eirenis lineomaculatus	
3335	Boiga jaspidea	Boiga jaspidea	
3336	Plestiodon tetragrammus	Plestiodon tetragrammus	
3337	Crotalus estebanensis	Crotalus estebanensis	
3338	Hypnale nepa	Hypnale nepa	
3339	Coluber bholanathi	Coluber bholanathi	
3340	Bocage's wall lizard	Podarcis bocagei	
3341	Liolaemus tenuis	Liolaemus tenuis	
3342	Phelsuma astriata	Phelsuma astriata	
3343	Vipera lotievi	Vipera lotievi	
3344	Eumeces algeriensis	Eumeces algeriensis	
3345	Uroplatus sameiti	Uroplatus sameiti	
3346	Andaman Islands day gecko	Phelsuma andamanensis	
3347	Lesser chameleon	Furcifer minor	
3348	Moroccan rock lizard	Scelarcis perspicillata	
3349	Draco cornutus	Draco cornutus	
3350	Plestiodon callicephalus	Plestiodon callicephalus	
3351	Yellow-throated day gecko	Phelsuma flavigularis	
3352	Phelsuma abbotti	Phelsuma abbotti	
3353	Echis megalocephalus	Echis megalocephalus	
3354	Chalcides simonyi	Chalcides simonyi	
3355	Abronia chiszari	Abronia chiszari	
3356	Protobothrops xiangchengensis	Protobothrops xiangchengensis	
3357	Boiga angulata	Boiga angulata	
3358	Golden-spotted tree monitor	Varanus boehmei	
3359	Echis hughesi	Echis hughesi	
3360	Varzea bistriata	Varzea bistriata	
3361	Bojer's skink	Gongylomorphus bojerii	
3362	Trachylepis punctatissima	Trachylepis punctatissima	
3363	Bothrops oligolepis	Bothrops oligolepis	
3364	Ctenosaura oedirhina	Ctenosaura oedirhina	
3365	Rim rock crown snake	Tantilla oolitica	
3366	Mount Bulgar viper	Montivipera bulgardaghica	
3367	Gekko gigante	Gekko gigante	
3368	Seychelles skink	Trachylepis seychellensis	
3369	Trimeresurus brongersmai	Trimeresurus brongersmai	
3370	Abronia leurolepis	Abronia leurolepis	
3371	Variegated mountain lizard	Japalura variegata	
3372	Giant bronze gecko	Ailuronyx trachygaster	
3373	Abronia taeniata	Abronia taeniata	
3374	Adelophis copei	Adelophis copei	
3375	Eirenis coronelloides	Eirenis coronelloides	
3376	Abronia smithi	Abronia smithi	
3377	Brookesia peyrierasi	Brookesia peyrierasi	
3378	Uracentron flaviceps	Uracentron flaviceps	
3379	Checkerboard worm lizard	Trogonophis wiegmanni	
3380	Lebanese thin-toed gecko	Mediodactylus amictopholis	
3381	Ablepharus rueppellii	Ablepharus rueppellii	
3382	Ophryacus undulatus	Ophryacus undulatus	
3383	Paroedura masobe	Paroedura masobe	
3384	Porthidium dunni	Porthidium dunni	
3385	Atropoides olmec	Metlapilcoatlus olmec	
3386	Porthidium yucatanicum	Porthidium yucatanicum	
3387	Bridled mabuya	Heremites vittatus	
3388	Iberolacerta cyreni	Iberolacerta cyreni	
3389	Ophiomorus latastii	Ophiomorus latastii	
3390	Achalinus niger	Achalinus niger	
3391	Acontias percivali	Acontias percivali	
3392	Scincella vandenburghi	Scincella vandenburghi	
3393	Ptychozoon lionotum	Gekko lionotum	
3394	Monilesaurus ellioti	Monilesaurus ellioti	
3395	Platyceps gracilis	Platyceps gracilis	
3396	Pseudogekko smaragdinus	Pseudogekko smaragdinus	
3397	Coniophanes piceivittis	Coniophanes piceivittis	
3398	Seychelles bronze gecko	Ailuronyx seychellensis	
3399	Persian spider gecko	Agamura persica	
3400	Bothrops itapetiningae	Bothrops itapetiningae	
3401	Kenya horned viper	Bitis worthingtoni	
3402	Transvaal dwarf chameleon	Bradypodion transvaalense	
3403	Abronia martindelcampoi	Abronia martindelcampoi	
3404	Abronia matudai	Abronia matudai	
3405	Microlophus habelii	Microlophus habelii	
3406	Phelsuma pronki	Phelsuma pronki	
3407	Calumma andringitraense	Calumma andringitraense	
3408	Eirenis barani	Eirenis barani	
3409	Gekko athymus	Gekko athymus	
3410	Ficimia streckeri	Ficimia streckeri	
3411	Uroplatus pietschmanni	Uroplatus pietschmanni	
3412	Abronia fuscolabialis	Abronia fuscolabialis	
3413	Mesaspis moreletii	Abronia moreletii	
3414	Phrynocephalus theobaldi	Phrynocephalus theobaldi	
3415	Cerrophidion tzotzilorum	Cerrophidion tzotzilorum	
3416	Uroplatus alluaudi	Uroplatus alluaudi	
3417	Abronia ochoterenai	Abronia ochoterenai	
3418	Etheridgeum	Etheridgeum pulchrum	
3419	Pachydactylus labialis	Pachydactylus labialis	
3420	Brachymeles bicolor	Brachymeles bicolor	
3421	Bronchocela marmorata	Bronchocela marmorata	
3422	Spanish algyroides	Algyroides marchi	
3423	Abronia reidi	Abronia reidi	
3424	Ebenavia maintimainty	Ebenavia maintimainty	
3425	Rough-nosed horned lizard	Ceratophora aspera	
3426	Holbrookia propinqua	Holbrookia propinqua	
3427	Salea horsfieldii	Salea horsfieldii	
3428	Brookesia ebenaui	Brookesia ebenaui	
3429	Giant leaf-tail gecko	Uroplatus giganteus	
3430	Koelliker's glass lizard	Hyalosaurus koellikeri	
3431	Porthidium hespere	Porthidium hespere	
3432	Abronia mitchelli	Abronia mitchelli	
3433	Cyrtodactylus philippinicus	Cyrtodactylus philippinicus	
3434	Iberolacerta martinezricai	Iberolacerta martinezricai	
3435	Abronia ramirezi	Abronia ramirezi	
3436	Setaro's dwarf chameleon	Bradypodion setaroi	
3437	Japalura tricarinata	Japalura tricarinata	
3438	Drakensberg dwarf chameleon	Bradypodion dracomontanum	
3439	Montagne d'Ambre leaf chameleon	Brookesia tuberculata	
3440	Rhoptropella	Rhoptropella ocellata	
3441	Ristella rurkii	Ristella rurkii	
3442	Antilles leaf-toed gecko	Hemidactylus palaichthus	
3443	Transkei dwarf chameleon	Bradypodion caffer	
3444	Oligodon booliati	Oligodon booliati	
3445	Bothrops lutzi	Bothrops lutzi	
3446	Xenosaurus rectocollaris	Xenosaurus rectocollaris	
3447	Pyrenean rock lizard	Iberolacerta bonnali	
3448	Brookesia bekolosy	Brookesia bekolosy	
3449	Globe-horned chameleon	Calumma globifer	
3450	Lankascincus munindradasai	Lankascincus taprobanensis	
3451	Amphisbaena absaberi	Amphisbaena absaberi	
3452	Phelsuma sundbergi	Phelsuma sundbergi	
3453	Geckolepis maculata	Geckolepis maculata	
3454	Otosaurus cumingi	Otosaurus cumingi	
3455	Many-banded tree snake	Boiga multifasciata	
3456	Abronia ornelasi	Abronia ornelasi	
3457	Altiphylax stoliczkai	Altiphylax stoliczkai	
3458	Chalcides colosii	Chalcides colosii	
3459	Chernov's skink	Ablepharus chernovi	
3460	Lined flat-tail gecko	Uroplatus lineatus	
3461	Chalcides guentheri	Chalcides guentheri	
3462	Speckled day gecko	Phelsuma guttata	
3463	Phrynocephalus luteoguttatus	Phrynocephalus luteoguttatus	
3464	West Canary skink	Chalcides viridanus	
3465	Marshall's pygmy chameleon	Rhampholeon marshalli	
3466	Tropiocolotes tripolitanus	Tropiocolotes tripolitanus	
3467	Sphaerodactylus callocricus	Sphaerodactylus callocricus	
3468	Acontias breviceps	Acontias breviceps	
3469	Desert lidless skink	Ablepharus deserti	
3470	Lipinia pulchella	Lipinia pulchella	
3471	Dasia griffini	Dasia griffini	
3472	Brachymeles elerae	Brachymeles elerae	
3473	Chalcides ebneri	Chalcides ebneri	
3474	Phelsuma breviceps	Phelsuma breviceps	
3475	Barkudia melanosticta	Barkudia melanosticta	
3476	Flat-tailed day gecko	Phelsuma serraticauda	
3477	Bezy's night lizard	Xantusia bezyi	
3478	Uroplatus finiavana	Uroplatus finiavana	
3479	Calamaria griswoldi	Calamaria griswoldi	
3480	Calamaria yunnanensis	Calamaria yunnanensis	
3481	Darlington's least gecko	Sphaerodactylus darlingtoni	
3482	Eutropis bibronii	Eutropis bibronii	
3483	Calamaria bicolor	Calamaria bicolor	
3484	Acontias gracilicauda	Acontias gracilicauda	
3485	Bradypodion ventrale	Bradypodion ventrale	
3486	Calamaria septentrionalis	Calamaria septentrionalis	
3487	Chalcides montanus	Chalcides montanus	
3488	Fox's mountain meadow snake	Adelophis foxi	
3489	Hardwicke's bloodsucker	Calotes minor	
3490	Barahona big-scaled sphaero	Sphaerodactylus plummeri	
3491	Wright's skink	Trachylepis wrightii	
3492	Paracontias minimus	Paracontias minimus	
3493	Chitral gecko	Mediodactylus walli	
3494	Cyrtodactylus adleri	Cyrtodactylus adleri	
3495	Madagascar clawless gecko	Ebenavia inunguis	
3496	Moroccan worm lizard	Blanus mettetali	
3497	Scincella gemmingeri	Scincella gemmingeri	
3498	Twin-striped skink	Ablepharus bivittatus	
3499	Adelphicos latifasciatum	Adelphicos latifasciatum	
3500	Barbour's day gecko	Phelsuma barbouri	
3501	Pedernales least gecko	Sphaerodactylus randi	
3502	Okavango dwarf gecko	Lygodactylus chobiensis	
3503	Tropidophorus misaminius	Tropidophorus misaminius	
3504	Phelsuma comorensis	Phelsuma comorensis	
3505	Banded supple skink	Lygosoma haroldyoungi	
3506	Chalcides mionecton	Chalcides mionecton	
3507	Calamaria alidae	Calamaria alidae	
3508	Aspidoscelis costatus	Aspidoscelis costatus	
3509	Algerian three-toed skink	Chalcides mertensi	
3510	Dominican least gecko	Sphaerodactylus perissodactylius	
3511	Aurelio's rock lizard	Iberolacerta aurelioi	
3512	Iaraka River leaf chameleon	Brookesia vadoni	
3513	Mount Sinai gecko	Hemidactylus mindiae	
3514	Psammodromus blanci	Psammodromus blanci	
3515	Pseudogekko brevipes	Pseudogekko brevipes	
3516	Zygaspis nigra	Zygaspis nigra	
3517	Aurivela longicauda	Aurivela longicauda	
3518	Dwarf bronze gecko	Ailuronyx tachyscopaeus	
3519	Fantastic least gecko	Sphaerodactylus fantasticus	
3520	Lygosoma singha	Lygosoma singha	
3521	Scincella silvicola	Scincella silvicola	
3522	Liolaemus pictus	Liolaemus pictus	
3523	Amphisbaena lumbricalis	Amphisbaena lumbricalis	
3524	Calamaria ulmeri	Calamaria ulmeri	
3525	Liolaemus lemniscatus	Liolaemus lemniscatus	
3526	Chalcides lanzai	Chalcides lanzai	
3527	Trachylepis boettgeri	Trachylepis boettgeri	
3528	Cyrtodactylus agusanensis	Cyrtodactylus agusanensis	
3529	Cyrtodactylus brevidactylus	Cyrtodactylus brevidactylus	
3530	Ophiomorus raithmai	Ophiomorus raithmai	
3531	Chalcides manueli	Chalcides manueli	
3532	Lipinia vulcania	Lipinia vulcania	
3533	Neiba Agave sphaero	Sphaerodactylus schuberti	
3534	Korat supple skink	Lygosoma koratense	
3535	Southern Ghats slender gecko	Hemiphyllodactylus aurantiacus	
3536	Cnemaspis podihuna	Cnemaspis podihuna	
3537	Seipp's day gecko	Phelsuma seippi	
3538	Isopachys anguinoides	Isopachys anguinoides	
3539	Gardiner's burrowing skink	Pamelaescincus gardineri	
3540	Kandyan day gecko	Cnemaspis kandiana	
3541	Rosette-nosed chameleon	Rhampholeon spinosus	
3542	Trachydactylus spatalurus	Trachydactylus spatalurus	
3543	Monopeltis anchietae	Monopeltis anchietae	
3544	Scaly gecko	Hemidactylus scabriceps	
3545	Brauer's burrowing skink	Janetaescincus braueri	
3546	Lygodactylus blancae	Lygodactylus blancae	
3547	Vences' chameleon	Calumma vencesi	
3548	Blanc's dwarf gecko	Lygodactylus blanci	
3549	Tiny scaled gecko	Lygodactylus bivittis	
3550	Ugly worm lizard	Cynisca feae	
3551	Antakarana leaf chameleon	Brookesia antakarana	
3552	Sphaerodactylus rhabdotus	Sphaerodactylus rhabdotus	
3553	Amphisbaena tragorrhectes	Amphisbaena tragorrhectes	
3554	Toenayar novemcarinata	Toenayar novemcarinata	
3555	Zygaspis kafuensis	Zygaspis kafuensis	
3556	Coastal day gecko	Cnemaspis littoralis	
3557	Gaboon worm lizard	Monopeltis jugularis	
3558	Hispaniolan tailspot sphaero	Sphaerodactylus epiurus	
3559	Pygomeles trivittatus	Pygomeles trivittatus	
3560	Smith's bent-toed gecko	Hemidactylus malcolmsmithi	
3561	Western dwarf gecko	Lygodactylus guibei	
3562	Vesey-Fitzgerald's burrowing skink	Janetaescincus veseyfitzgeraldi	
3563	French Congo worm lizard	Cynisca bifrontalis	
3564	Many-scaled cylindrical skink	Chalcides polylepis	
3565	Rio Grande worm lizard	Amphisbaena pretrei	
3566	Erg agama	Trapelus tournevillei	
3567	Barahona amphisbaena	Amphisbaena hyporissor	
3568	Rough-bellied day gecko	Cnemaspis tropidogaster	
3569	Cameroon worm lizard	Cynisca schaeferi	
3570	Cynisca senegalensis	Cynisca senegalensis	
3571	Pasteur's dwarf gecko	Lygodactylus arnoulti	
3572	Slevin's worm lizard	Amphisbaena slevini	
3573	Slender worm lizard	Amphisbaena gracilis	
3574	Liwale round-snouted worm lizard	Loveridgea ionidesii	
3575	Western Congo worm lizard	Monopeltis guentheri	
3576	Seychelles sucker-tailed gecko	Urocotyledon inexpectata	
3577	Werner's worm lizard	Amphisbaena polygrammica	
3578	Banda Island dtella	Gehyra barea	
3579	Axolotl	Ambystoma mexicanum	
3580	Olm	Proteus anguinus	
3581	Cane toad	Rhinella marina	
3582	American bullfrog	Lithobates catesbeianus	
3583	Colorado River toad	Incilius alvarius	
3584	American green tree frog	Dryophytes cinereus	
3585	Common toad	Bufo bufo	
3586	Fire salamander	Salamandra salamandra	
3587	Chinese giant salamander	Andrias davidianus	
3588	Gray treefrog	Dryophytes versicolor	
3589	Common frog	Rana temporaria	
3590	Spring peeper	Pseudacris crucifer	
3591	Goliath frog	Conraua goliath	
3592	Australian green tree frog	Ranoidea caerulea	
3593	Spotted salamander	Ambystoma maculatum	
3594	Eastern newt	Notophthalmus viridescens	
3595	Agalychnis callidryas	Agalychnis callidryas	
3596	Wood frog	Lithobates sylvaticus	
3597	Common mudpuppy	Necturus maculosus	
3598	Purple frog	Nasikabatrachus sahyadrensis	
3599	Northern leopard frog	Lithobates pipiens	
3600	Desert rain frog	Breviceps macrops	
3601	Phyllomedusa bicolor	Phyllomedusa bicolor	
3602	Smooth newt	Lissotriton vulgaris	
3603	Blue-spotted salamander	Ambystoma laterale	
3604	Northern crested newt	Triturus cristatus	
3605	Western toad	Anaxyrus boreas	
3606	Yellow-banded poison dart frog	Dendrobates leucomelas	
3607	European tree frog	Hyla arborea	
3608	Woodhouse's toad	Anaxyrus woodhousii	
3609	Red-backed salamander	Plethodon cinereus	
3610	Natterjack toad	Epidalea calamita	
3611	Green and black poison dart frog	Dendrobates auratus	
3612	Banded bullfrog	Kaloula pulchra	
3613	Anaxyrus fowleri	Anaxyrus fowleri	
3614	Western chorus frog	Pseudacris triseriata	
3615	Darwin's frog	Rhinoderma darwinii	
3616	Iberian ribbed newt	Pleurodeles waltl	
3617	Long-toed salamander	Ambystoma macrodactylum	
3618	European green toad	Bufotes viridis	
3619	Marsh frog	Pelophylax ridibundus	
3620	California tiger salamander	Ambystoma californiense	
3621	Northern cricket frog	Acris crepitans	
3622	European fire-bellied toad	Bombina bombina	
3623	Gulf Coast toad	Incilius valliceps	
3624	Palmate newt	Lissotriton helveticus	
3625	Moor frog	Rana arvalis	
3626	Alpine salamander	Salamandra atra	
3627	Jefferson salamander	Ambystoma jeffersonianum	
3628	Malabar gliding frog	Rhacophorus malabaricus	
3629	Canadian toad	Anaxyrus hemiophrys	
3630	Hula painted frog	Latonia nigriventer	
3631	Boreal chorus frog	Pseudacris maculata	
3632	Ichthyophis glutinosus	Ichthyophis glutinosus	
3633	Agile frog	Rana dalmatina	
3634	Red-bellied newt	Taricha rivularis	
3635	Oak toad	Anaxyrus quercicus	
3636	Golden mantella	Mantella aurantiaca	
3637	Marbled newt	Triturus marmoratus	
3638	Mexican burrowing toad	Rhinophrynus dorsalis	
3639	Oregon spotted frog	Rana pretiosa	
3640	Calyptocephalella	Calyptocephalella gayi	
3641	Neurergus kaiseri	Neurergus kaiseri	
3642	Common midwife toad	Alytes obstetricans	
3643	Arroyo toad	Anaxyrus californicus	
3644	Four-toed salamander	Hemidactylium scutatum	
3645	Majorcan midwife toad	Alytes muletensis	
3646	Black toad	Anaxyrus exsul	
3647	Mink frog	Lithobates septentrionalis	
3648	Danube crested newt	Triturus dobrogicus	
3649	Polka-dot tree frog	Boana punctata	
3650	Marbled reed frog	Hyperolius marmoratus	
3651	Boophis fayi	Boophis fayi	
3652	Incilius nebulifer	Incilius nebulifer	
3653	Italian crested newt	Triturus carnifex	
3654	Gliding tree frog	Agalychnis spurrelli	
3655	Anaxyrus debilis	Anaxyrus debilis	
3656	Boulengerula taitana	Boulengerula taitana	
3657	Monte Iberia eleuth	Eleutherodactylus iberia	
3658	Desert tree frog	Litoria rubella	
3659	Physalaemus nattereri	Physalaemus nattereri	
3660	African red toad	Schismaderma carens	
3661	Mediterranean tree frog	Hyla meridionalis	
3662	Yosemite toad	Anaxyrus canorus	
3663	Bornean flat-headed frog	Barbourula kalimantanensis	
3664	Morelet's tree frog	Agalychnis moreletii	
3665	Adelphobates galactonotus	Adelphobates galactonotus	
3666	Apennine yellow-bellied toad	Bombina pachypus	
3667	Spectacled salamander	Salamandrina terdigitata	
3668	Barbourula busuangensis	Barbourula busuangensis	
3669	Gold-striped salamander	Chioglossa lusitanica	
3670	Carpathian newt	Lissotriton montandoni	
3671	Ringed salamander	Ambystoma annulatum	
3672	Rhinella diptycha	Rhinella diptycha	
3673	Pyrenean brook salamander	Calotriton asper	
3674	North African fire salamander	Salamandra algira	
3675	Atelopus balios	Atelopus balios	
3676	Rose's ghost frog	Heleophryne rosei	
3677	Iberian midwife toad	Alytes cisternasii	
3678	Berber toad	Sclerophrys mauritanica	
3679	Pelobates cultripes	Pelobates cultripes	
3680	Brazil-nut poison frog	Adelphobates castaneoticus	
3681	Rhinella icterica	Rhinella icterica	
3682	Ichthyophis beddomei	Ichthyophis beddomei	
3683	Spanish painted frog	Discoglossus jeanneae	
3684	Common parsley frog	Pelodytes punctatus	
3685	Southern crested newt	Triturus karelinii	
3686	Stefania riae	Stefania riae	
3687	Northern dwarf tree frog	Litoria bicolor	
3688	Marañón poison frog	Excidobates mysteriosus	
3689	Seoul frog	Pelophylax chosenicus	
3690	Incilius coniferus	Incilius coniferus	
3691	Southern marbled newt	Triturus pygmaeus	
3692	Bosca's newt	Lissotriton boscai	
3693	Adelphobates quinquevittatus	Adelphobates quinquevittatus	
3694	African foam-nest tree frog	Chiromantis rufescens	
3695	Iberian painted frog	Discoglossus galganoi	
3696	Telmatobufo bullocki	Telmatobufo bullocki	
3697	Discoglossus scovazzi	Discoglossus scovazzi	
3698	Alytes maurus	Alytes maurus	
3699	Raorchestes shillongensis	Raorchestes shillongensis	
3700	Eastern golden frog	Pelophylax plancyi	
3701	Glyphoglossus guttulatus	Glyphoglossus guttulatus	
3702	Agalychnis saltator	Agalychnis saltator	
3703	Adenomus kelaartii	Adenomus kelaartii	
3704	Ichthyophis hypocyaneus	Ichthyophis hypocyaneus	
3705	Lovely poison frog	Phyllobates lugubris	
3706	Rhinella spinulosa	Rhinella spinulosa	
3707	Churamiti	Churamiti maridadi	
3708	Betic midwife toad	Alytes dickhilleni	
3709	Incilius luetkenii	Incilius luetkenii	
3710	Indirana leithii	Indirana leithii	
3711	Acanthixalus spinosus	Acanthixalus spinosus	
3712	Duttaphrynus parietalis	Duttaphrynus parietalis	
3713	Papurana daemeli	Papurana daemeli	
3714	Ichthyophis paucisulcus	Ichthyophis paucisulcus	
3715	Large-crested toad	Incilius cristatus	
3716	Map tree frog	Boana geographica	
3717	Taruga eques	Taruga eques	
3718	Ichthyophis sikkimensis	Ichthyophis sikkimensis	
3719	Koh Tao Island caecilian	Ichthyophis kohtaoensis	
3720	Incilius coccifer	Incilius coccifer	
3721	Acanthixalus sonjae	Acanthixalus sonjae	
3722	Duttaphrynus hololius	Duttaphrynus hololius	
3723	Kaloula assamensis	Kaloula assamensis	
3724	Carchi Andes toad	Rhaebo colomai	
3725	Incilius campbelli	Incilius campbelli	
3726	Zakerana keralensis	Zakerana keralensis	
3727	Ichthyophis garoensis	Ichthyophis garoensis	
3728	Incilius aucoinae	Incilius aucoinae	
3729	Fejervarya orissaensis	Fejervarya orissaensis	
3730	Amolops gerbillus	Amolops gerbillus	
3731	Rhinella acrolopha	Rhinella acrolopha	
3732	Pseudophilautus stellatus	Pseudophilautus stellatus	
3733	Incilius ibarrai	Incilius ibarrai	
3734	Zakerana greenii	Zakerana greenii	
3735	Incilius mazatlanensis	Incilius mazatlanensis	
3736	Ichthyophis sumatranus	Ichthyophis sumatranus	
3737	Ichthyophis tricolor	Ichthyophis tricolor	
3738	Incilius canaliferus	Incilius canaliferus	
3739	Ichthyophis elongatus	Ichthyophis elongatus	
3740	Ichthyophis pseudangularis	Ichthyophis pseudangularis	
3741	Zakerana brevipalmata	Zakerana brevipalmata	
3742	Incilius bocourti	Incilius bocourti	
3743	Nectophrynoides poyntoni	Nectophrynoides poyntoni	
3744	Ichthyophis orthoplicatus	Ichthyophis orthoplicatus	
3745	Allobates conspicuus	Allobates conspicuus	
3746	Duttaphrynus atukoralei	Duttaphrynus atukoralei	
3747	Incilius marmoreus	Incilius marmoreus	
3748	Incilius pisinnus	Incilius pisinnus	
3749	Incilius porteri	Incilius porteri	
3750	Ichthyophis billitonensis	Ichthyophis billitonensis	
3751	Polypedates ranwellai	Polypedates ranwellai	
3752	Ichthyophis monochrous	Ichthyophis monochrous	
3753	Duttaphrynus noellerti	Duttaphrynus noellerti	
3754	Atopophrynus	Atopophrynus syntomopus	
3755	Oreophrynella macconnelli	Oreophrynella macconnelli	
3756	Amolops chakrataensis	Amolops chakrataensis	
3757	Atelopus exiguus	Atelopus exiguus	
3758	Craugastor taurus	Craugastor taurus	
3759	Hildebrandtia macrotympanum	Hildebrandtia macrotympanum	
3760	Raorchestes bobingeri	Raorchestes bobingeri	
3761	Incilius leucomyos	Incilius leucomyos	
3762	Pine toad	Incilius occidentalis	
3763	Incilius spiculatus	Incilius spiculatus	
3764	Alexteroon jynx	Alexteroon jynx	
3765	Mountain toad	Incilius cavifrons	
3766	Adelophryne maranguapensis	Adelophryne maranguapensis	
3767	Ichthyophis dulitensis	Ichthyophis dulitensis	
3768	Adelophryne pachydactyla	Adelophryne pachydactyla	
3769	Ecnomiohyla thysanota	Ecnomiohyla thysanota	
3770	Incilius tacanensis	Incilius tacanensis	
3771	Leptopelis crystallinoron	Leptopelis crystallinoron	
3772	Allobates marchesianus	Allobates marchesianus	
3773	Amolops jaunsari	Amolops jaunsari	
3774	Feihyla inexpectata	Feihyla inexpectata	
3775	Dischidodactylus duidensis	Dischidodactylus duidensis	
3776	Anomaloglossus rufulus	Anomaloglossus rufulus	
3777	Incilius macrocristatus	Incilius macrocristatus	
3778	Nothophryne unilurio	Nothophryne unilurio	
3779	Ansonia vidua	Ansonia vidua	
3780	Guibemantis punctatus	Guibemantis punctatus	
3781	Incilius signifer	Incilius signifer	
3782	Ectopoglossus lacrimosus	Ectopoglossus lacrimosus	
3783	Anomaloglossus triunfo	Anomaloglossus triunfo	
3784	Hyloscirtus tapichalaca	Hyloscirtus tapichalaca	
3785	Aplastodiscus perviridis	Aplastodiscus perviridis	
3786	Anomaloglossus breweri	Anomaloglossus breweri	
3787	Pseudoeurycea mystax	Pseudoeurycea mystax	
3788	Oscaecilia hypereumeces	Oscaecilia hypereumeces	
3789	Ansonia guibei	Ansonia guibei	
3790	Anomaloglossus parkerae	Anomaloglossus parkerae	
3791	Allobates brunneus	Allobates brunneus	
3792	Zakerana nilagirica	Zakerana nilagirica	
3793	Alsodes valdiviensis	Alsodes valdiviensis	
3794	Afrixalus upembae	Afrixalus upembae	
3795	Incilius tutelarius	Incilius tutelarius	
3796	Austrochaperina kosarek	Austrochaperina kosarek	
3797	Incilius perplexus	Incilius perplexus	
3798	Gephyromantis boulengeri	Gephyromantis boulengeri	
3799	Guibemantis liber	Guibemantis liber	
3800	Leptopelis parvus	Leptopelis parvus	
3801	Pseudophilautus microtympanum	Pseudophilautus microtympanum	
3802	Dendrotriton megarhinus	Dendrotriton megarhinus	
3803	Batrachyla fitzroya	Batrachyla fitzroya	
3804	Monte Duida tree frog	Tepuihyla aecii	
3805	Alsodes igneus	Alsodes igneus	
3806	Aplastodiscus cochranae	Aplastodiscus cochranae	
3807	Cardioglossa trifasciata	Cardioglossa trifasciata	
3808	Callimedusa baltea	Callimedusa baltea	
3809	Dischidodactylus colonnelloi	Dischidodactylus colonnelloi	
3810	Allobates trilineatus	Allobates trilineatus	
3811	Ansonia tiomanica	Ansonia tiomanica	
3812	Zhangixalus suffry	Zhangixalus suffry	
3813	Rhinella arborescandens	Rhinella arborescandens	
3814	Anomaloglossus wothuja	Anomaloglossus wothuja	
3815	Leptobrachium xanthospilum	Leptobrachium xanthospilum	
3816	Allobates fuscellus	Allobates fuscellus	
3817	Leptopelis marginatus	Leptopelis marginatus	
3818	Scutiger wuguanfui	Scutiger wuguanfui	
3819	Mantidactylus ulcerosus	Mantidactylus ulcerosus	
3820	Hyperolius kihangensis	Hyperolius kihangensis	
3821	Cophixalus cheesmanae	Cophixalus cheesmanae	
3822	Phrynobatrachus elberti	Phrynobatrachus elberti	
3823	Pseudophilautus abundus	Pseudophilautus abundus	
3824	Cophixalus tetzlaffi	Cophixalus tetzlaffi	
3825	Physalaemus spiniger	Physalaemus spiniger	
3826	Guibemantis albolineatus	Guibemantis albolineatus	
3827	Anomaloglossus tamacuarensis	Anomaloglossus tamacuarensis	
3828	Isthmohyla xanthosticta	Isthmohyla xanthosticta	
3829	Oreophryne kapisa	Oreophryne kapisa	
3830	Physalaemus fernandezae	Physalaemus fernandezae	
3831	Gephyromantis asper	Gephyromantis asper	
3832	Ctenophryne minor	Ctenophryne minor	
3833	Pristimantis avius	Pristimantis avius	
3834	Phrynobatrachus nanus	Phrynobatrachus nanus	
3835	Callimedusa duellmani	Callimedusa duellmani	
3836	Pseudophilautus silvaticus	Pseudophilautus silvaticus	
3837	Choerophryne nigrescens	Choerophryne nigrescens	
3838	Pristimantis tribulosus	Pristimantis tribulosus	
3839	Gephyromantis redimitus	Gephyromantis redimitus	
3840	Mantidactylus curtus	Mantidactylus curtus	
3841	Mantidactylus zipperi	Mantidactylus zipperi	
3842	Rhombophryne laevipes	Rhombophryne laevipes	
3843	Cycloramphus cedrensis	Cycloramphus cedrensis	
3844	Bolitoglossa psephena	Bolitoglossa psephena	
3845	Gephyromantis decaryi	Gephyromantis decaryi	
3846	Narrow-lined tree frog	Isthmohyla angustilineata	
3847	Giant squid	Architeuthis dux	
3848	Colossal squid	Mesonychoteuthis hamiltoni	
3849	Giant Pacific octopus	Enteroctopus dofleini	
3850	Freshwater pearl mussel	Margaritifera margaritifera	
3851	Scaly-foot snail	Chrysomallon squamiferum	
3852	Quagga mussel	Dreissena bugensis	
3853	Bigfin reef squid	Sepioteuthis lessoniana	
3854	New Zealand mud snail	Potamopyrgus antipodarum	
3855	Kerry slug	Geomalacus maculosus	
3856	Common blanket octopus	Tremoctopus violaceus	
3857	Pharaoh cuttlefish	Sepia pharaonis	
3858	Swan mussel	Anodonta cygnea	
3859	Duck mussel	Anodonta anatina	
3860	Unio pictorum	Unio pictorum	
3861	Enteroctopus megalocyathus	Enteroctopus megalocyathus	
3862	Unio tumidus	Unio tumidus	
3863	Enteroctopus magnificus	Enteroctopus magnificus	
3864	Discus macclintocki	Discus macclintocki	
3865	Depressed river mussel	Pseudanodonta complanata	
3866	Caucasotachea vindobonensis	Caucasotachea vindobonensis	
3867	Conus abbas	Conus abbas	
3868	Socorro springsnail	Pyrgulopsis neomexicana	
3869	Conus mappa	Conus mappa	
3870	Bald Eagle	Haliaeetus leucocephalus	28-36 yrs
3871	Peregrine Falcon	Falco peregrinus	19-25 yrs
3872	Harpy Eagle	Harpia harpyja	25-35 yrs
3873	Shoebill	Balaeniceps rex	35-36 yrs
3874	Golden Eagle	Aquila chrysaetos	32-46 yrs
3875	House Sparrow	Passer domesticus	2-23 yrs
3876	Common Raven	Corvus corax	13-44 yrs
3877	Osprey	Pandion haliaetus	7-25 yrs
3878	Blue Jay	Cyanocitta cristata	7-26 yrs
3879	Mallard	Anas platyrhynchos	3-20 yrs
3880	American Robin	Turdus migratorius	2-14 yrs
3881	Budgerigar	Melopsittacus undulatus	5-20 yrs
3882	Emu	Dromaius novaehollandiae	5-20 yrs
3883	Common Blackbird	Turdus merula	2.4-21 yrs
3884	Canada Goose	Branta canadensis	12-26 yrs
3885	Ostrich	Struthio camelus	40-50 yrs
3886	Red-Tailed Hawk	Buteo jamaicensis	12-28 yrs
3887	Great Horned Owl	Bubo virginianus	13-35 yrs
3888	Northern Cardinal	Cardinalis cardinalis	15 yrs
3889	Pileated Woodpecker	Dryocopus pileatus	9-13 yrs
3890	Great Tit	Parus major	3 yrs
3891	Mourning Dove	Zenaida macroura	1.5-19 yrs
3892	European Robin	Erithacus rubecula	1-19 yrs
3893	Cockatiel	Nymphicus hollandicus	10-36 yrs
3894	Common Starling	Sturnus vulgaris	2-23 yrs
3895	Turkey Vulture	Cathartes aura	16 yrs
3896	Barn Owl	Tyto alba	4-34 yrs
3897	Northern Flicker	Colaptes auratus	9 yrs
3898	Ortolan Bunting	Emberiza hortulana	2-5.8 yrs
3899	Indian Peafowl	Pavo cristatus	15-23 yrs
3900	Sandhill Crane	Grus canadensis	21 yrs
3901	Nightingale	Luscinia megarhynchos	1-8 yrs
3902	Wild Turkey	Meleagris gallopavo	1-13 yrs
3903	Red-Winged Blackbird	Agelaius phoeniceus	2-16 yrs
3904	Great Blue Heron	Ardea herodias	15-23 yrs
3905	California Condor	Gymnogyps californianus	40-60 yrs
3906	Andean Condor	Vultur gryphus	50 yrs
3907	European Goldfinch	Carduelis carduelis	10 yrs
3908	Rainbow Lorikeet	Trichoglossus moluccanus	7-30 yrs
3909	Snowy Owl	Bubo scandiacus	10-28 yrs
3910	Northern Mockingbird	Mimus polyglottos	8-20 yrs
3911	Barred Owl	Strix varia	10-23 yrs
3912	Philippine Eagle	Pithecophaga jefferyi	30-60 yrs
3913	Common Buzzard	Buteo buteo	25 yrs
3914	Common Cuckoo	Cuculus canorus	4-10 yrs
3915	Bearded Vulture	Gypaetus barbatus	21-45 yrs
3916	Red Junglefowl	Gallus gallus	10-30 yrs
3917	Carolina Wren	Thryothorus ludovicianus	6-10 yrs
3918	Barn Swallow	Hirundo rustica	3-8 yrs
3919	Eurasian Magpie	Pica pica	3-21.8 yrs
3920	American Goldfinch	Spinus tristis	3-11 yrs
3921	Eurasian Eagle-Owl	Bubo bubo	20-60 yrs
3922	Blue-Footed Booby	Sula nebouxii	17-18 yrs
3923	Rock Dove	Columba livia	6-35 yrs
3924	Rose-Ringed Parakeet	Psittacula krameri	30-34 yrs
3925	Tufted Titmouse	Baeolophus bicolor	2-13 yrs
3926	Baltimore Oriole	Icterus galbula	12-14 yrs
3927	Australian Magpie	Gymnorhina tibicen	25-30 yrs
3928	Cooper's Hawk	Accipiter cooperii	12 yrs
3929	Common Chaffinch	Fringilla coelebs	3-15 yrs
3930	House Finch	Haemorhous mexicanus	8-11 yrs
3931	Killdeer	Charadrius vociferus	10-11 yrs
3932	Common Grackle	Quiscalus quiscula	22 yrs
3933	Common Pheasant	Phasianus colchicus	3-18 yrs
3934	Hyacinth Macaw	Anodorhynchus hyacinthinus	50 yrs
3935	Wandering Albatross	Diomedea exulans	over 50 yrs
3936	Common Myna	Acridotheres tristis	4-12 yrs
3937	Mute Swan	Cygnus olor	19-40 yrs
3938	White-Tailed Eagle	Haliaeetus albicilla	27-42 yrs
3939	American Crow	Corvus brachyrhynchos	7-8 yrs
3940	Black-Capped Chickadee	Poecile atricapillus	2-12.5 yrs
3941	Asian Koel	Eudynamys scolopaceus	12-15 yrs
3942	Great Spotted Woodpecker	Dendrocopos major	5-11 yrs
3943	Red Kite	Milvus milvus	24-26 yrs
3944	Rose-Breasted Grosbeak	Pheucticus ludovicianus	7-24 yrs
3945	Muscovy Duck	Cairina moschata	8-20 yrs
3946	Mandarin Duck	Aix galericulata	3-12 yrs
3947	Black Swan	Cygnus atratus	40 yrs
3948	Eurasian Blue Tit	Cyanistes caeruleus	3-11 yrs
3949	Ivory-Billed Woodpecker	Campephilus principalis	30 yrs
3950	Steller's Sea Eagle	Haliaeetus pelagicus	20-25 yrs
3951	Secretarybird	Sagittarius serpentarius	10-19 yrs
3952	Song Thrush	Turdus philomelos	3-10 yrs
3953	Western Jackdaw	Coloeus monedula	5-20 yrs
3954	Cedar Waxwing	Bombycilla cedrorum	7-8 yrs
3955	Common Quail	Coturnix coturnix	2-5 yrs
3956	Eastern Whip-Poor-Will	Antrostomus vociferus	4-15 yrs
3957	Common Wood Pigeon	Columba palumbus	3-17 yrs
3958	Bee Hummingbird	Mellisuga helenae	7-10 yrs
3959	Eurasian Blackcap	Sylvia atricapilla	2-13 yrs
3960	Red-Bellied Woodpecker	Melanerpes carolinus	12 yrs
3961	Eurasian Sparrowhawk	Accipiter nisus	4-20 yrs
3962	White Stork	Ciconia ciconia	20-35 yrs
3963	Atlantic Puffin	Fratercula arctica	20-30 yrs
3964	Little Blue Penguin	Eudyptula minor	10-20 yrs
3965	Scarlet macaw	Ara macao	40-50 yrs
3966	Wood Duck	Aix sponsa	3-15 yrs
3967	Gyrfalcon	Falco rusticolus	20 yrs
3968	Wedge-Tailed Eagle	Aquila audax	20-40 yrs
3969	Eastern Bluebird	Sialia sialis	6-10.6 yrs
3970	Eurasian Collared Dove	Streptopelia decaocto	15-17 yrs
3971	Common Kestrel	Falco tinnunculus	15-18 yrs
3972	Steller's Jay	Cyanocitta stelleri	16 yrs
3973	Gray Catbird	Dumetella carolinensis	10 yrs
3974	Downy Woodpecker	Dryobates pubescens	11 yrs
3975	Brown Thrasher	Toxostoma rufum	12-14 yrs
3976	Black Vulture	Coragyps atratus	10-25.6 yrs
3977	Great Indian Bustard	Ardeotis nigriceps	12-15 yrs
3978	American Kestrel	Falco sparverius	11-17 yrs
3979	Red-Shouldered Hawk	Buteo lineatus	20-25 yrs
3980	Burrowing Owl	Athene cunicularia	9-10 yrs
3981	Purple Martin	Progne subis	13 yrs
3982	Merlin	Falco columbarius	7-10 yrs
3983	African Penguin	Spheniscus demersus	10-15 yrs
3984	Common Swift	Apus apus	21 yrs
3985	Red-Headed Woodpecker	Melanerpes erythrocephalus	9-12 yrs
3986	Carrion Crow	Corvus corone	1-29 yrs
3987	Eurasian Wren	Troglodytes troglodytes	2-6 yrs
3988	House Wren	Troglodytes aedon	7 yrs
3989	Brown-Headed Cowbird	Molothrus ater	16 yrs
3990	Chukar Patridge	Alectoris chukar	3-10 yrs
3991	Scarlet Tanager	Piranga olivacea	10 yrs
3992	Whooping Crane	Grus americana	22-40 yrs
3993	Common Chiffchaff	Phylloscopus collybita	2-8 yrs
3994	Dunnock	Prunella modularis	2 yrs
3995	Laughing Kookaburra	Dacelo novaeguineae	11-20 yrs
3996	Monk Parakeet	Myiopsitta monachus	20-30 yrs
3997	King Penguin	Aptenodytes patagonicus	15-20 yrs
3998	Anna's Hummingbird	Calypte anna	8.5 yrs
3999	Black Kite	Milvus migrans	24-28 yrs
4000	Tawny Owl	Strix aluco	4-27 yrs
4001	Greater Flamingo	Phoenicopterus roseus	40-60yrs
4002	Blue-and-Gold Macaw	Ara ararauna	50-60 yrs
4003	Tawny Frogmouth	Podargus strigoides	10-14 yrs
4004	Trumpeter Swan	Cygnus buccinator	24-33 yrs
4005	Arctic Tern	Sterna paradisaea	30 yrs
4006	Dark-Eyed Junco	Junco hyemalis	3-11 yrs
4007	Galah	Eolophus roseicapilla	40 yrs
4008	Great Hornbill	Buceros bicornis	30-50 yrs
4009	Gouldian Finch	Erythrura gouldiae	5-9 yrs
4010	Southern Cassowary	Casuarius casuarius	12-40 yrs
4011	Common Loon	Gavia immer	30 yrs
4012	Ruby-Throated Hummingbird	Archilochus colubris	5-9 yrs
4013	Anhinga	Anhinga anhinga	12 yrs
4014	Cattle Egret	Bubulcus ibis	23 yrs
4015	Goldcrest	Regulus regulus	8 mos-2 yrs
4016	Sharp-Shinned Hawk	Accipiter striatus	3-13 yrs
4017	Song Sparrow	Melospiza melodia	11 yrs
4018	Snow goose	Chen caerulescens	20 yrs
4019	Painted Bunting	Passerina ciris	12 yrs
4020	Egyptian Goose	Alopochen aegyptiacus	15-25 yrs
4021	Nicobar Pigeon	Caloenas nicobarica	8-15 yrs
4022	Gentoo Penguin	Pygoscelis papua	15-20 yrs
4023	Marabou Stork	Leptoptilos crumenifer	25-41 yrs
4024	Sulphur-Crested Cockatoo	Cacatua galerita	40-100 yrs
4025	Greylag Goose	Anser anser	20-30 yrs
4026	Red-Crowned Crane	Grus japonensis	30-70 yrs
4027	Ruffed Grouse	Bonasa umbellus	1-7 yrs
4028	Belted Kingfisher	Megaceryle alcyon	6-14 yrs
4029	Harris's Hawk	Parabuteo unicinctus	14-25 yrs
4030	Griffon Vulture	Gyps fulvus	41.4 yrs
4031	Green-Cheeked Parakeet	Pyrrhura molinae	10-30 yrs
4032	Hoatzin	Opisthocomus hoazin	15-30 yrs
4033	Golden Pheasant	Chrysolophus pictus	5-20 yrs
4034	Sarus Crane	Grus antigone	30-40 yrs
4035	American Coot	Fulica americana	9-22 yrs
4036	Wood Stork	Mycteria americana	11-18 yrs
4037	Macaroni Penguin	Eudyptes chrysolophus	15-20 yrs
4038	Gray Jay	Perisoreus canadensis	19 yrs
4039	Little Owl	Athene noctua	3-15 yrs
4040	Resplendent Quetzal	Pharomachrus mocinno	3-10 yrs
4041	American Flamingo	Phoenicopterus ruber	40-50 yrs
4042	Northern Bobwhite	Colinus virginianus	1-6 yrs
4043	Brown Pelican	Pelecanus occidentalis	15-43 yrs
4044	Australian Raven	Corvus coronoides	21 yrs
4045	Zebra Finch	Taeniopygia guttata	5-12 yrs
4046	Chimney Swift	Chaetura pelagica	4.6 yrs
4047	California Quail	Callipepla californica	1-4 yrs
4048	Northern Saw-Whet Owl	Aegolius acadicus	7-16 yrs
4049	Eastern Screech Owl	Megascops asio	14-20 yrs
4050	Helmeted Guineafowl	Numida meleagris	12-15 yrs
4051	Mountain Bluebird	Sialia currucoides	6-9 yrs
4052	Yellow-Bellied Sapsucker	Sphyrapicus varius	6-8 yrs
4053	Hawaiian Goose	Branta sandvicensis	20-24 yrs
4054	Black-Crowned Night Heron	Nycticorax nycticorax	20-30 yrs
4055	Great Cormorant	Phalacrocorax carbo	23 yrs
4056	Roseate Spoonbill	Platalea ajaja	10-5 yrs
4057	American White Pelican	Pelecanus erythrorhynchos	26 yrs
4058	Australian White Ibis	Threskiornis molucca	28 yrs
4059	House Crow	Corvus splendens	6 yrs
4060	Rufous Hummingbird	Selasphorus rufus	4-8 yrs
4061	Swallow-Tailed Kite	Elanoides forficatus	6 yrs
4062	Long-Eared Owl	Asio otus	25-30 yrs
4063	White Cockatoo	Cacatua alba	30-40 yrs
4064	Eastern Phoebe	Sayornis phoebe	10 yrs
4065	Red-Vented Bulbul	Pycnonotus cafer	11 yrs
4066	Northern Harrier	Circus hudsonius	8-16 yrs
4067	Double-Crested Cormorant	Phalacrocorax auritus	6-22.6 yrs
4068	Green Peafowl	Pavo muticus	20 yrs
4069	Green Heron	Butorides virescens	8 yrs
4070	Carolina Chickadee	Poecile carolinensis	11 yrs
4071	Toco Toucan	Ramphastos toco	18-26 yrs
4072	Alpine Chough	Pyrrhocorax graculus	up to 23 yrs
4073	Willow Warbler	Phylloscopus trochilus	2-5 yrs
4074	Barnacle Goose	Branta leucopsis	24 yrs
4075	Broad-Winged Hawk	Buteo platypterus	12-18 yrs
4076	Chipping Sparrow	Spizella passerina	9 yrs
4077	Pine Siskin	Spinus pinus	3 yrs
4078	Common Nighthawk	Chordeiles minor	4-5 yrs
4079	White Wagtail	Motacilla alba	12 yrs
4080	Siberian Crane	Leucogeranus leucogeranus	15-30 yrs
4081	Lake Duck	Oxyura vittata	
4082	Great Bustard	Otis tarda	28 yrs
4083	Ocellated Turkey	Meleagris ocellata	4.5-5 yrs
4084	Little Egret	Egretta garzetta	up to 22 yrs
4085	Galápagos Penguin	Spheniscus mendiculus	15-20 yrs
4086	Great-Tailed Grackle	Quiscalus mexicanus	12 yrs
4087	Red-Whiskered Bulbul	Pycnonotus jocosus	11 yrs
4088	Hairy Woodpecker	Leuconotopicus villosus	15 yrs
4089	Tree Swallow	Tachycineta bicolor	11-12 yrs
4090	European Green Woodpecker	Picus viridis	up to 15 yrs
4091	Purple Finch	Haemorhous purpureus	up to 14 yrs
4092	Hooded Merganser	Lophodytes cucullatus	11-13 yrs
4093	European Honey Buzzard	Pernis apivorus	25 yrs
4094	Egyptian Vulture	Neophron percnopterus	30-37 yrs
4095	White-Bellied Sea Eagle	Haliaeetus leucogaster	30 yrs
4096	Red-eyed vireo	Vireo olivaceus	
4097	Indian Roller	Coracias benghalensis	17 yrs
4098	Grey Crowned Crane	Balearica regulorum	22-25 yrs
4099	Himalayan Monal	Lophophorus impejanus	10-12 yrs
4100	Scarlet Ibis	Eudocimus ruber	16-20 yrs
4101	Martial Eagle	Polemaetus bellicosus	14-25 yrs
4102	African Fish Eagle	Haliaeetus vocifer	12-40 yrs
4103	Pied Crow	Corvus albus	6-20 yrs
4104	Cinereous vulture	Aegypius monachus	
4105	American Woodcock	Scolopax minor	8 yrs
4106	Eurasian Hoopoe	Upupa epops	10 yrs
4107	Western tanager	Piranga ludoviciana	
4108	White-throated sparrow	Zonotrichia albicollis	9.5 years
4109	Red-Tailed Black Cockatoo	Calyptorhynchus banksii	25-50 yrs
4110	Bar-Headed Goose	Anser indicus	20 yrs
4111	Eurasian coot	Fulica atra	
4112	Rüppell's Vulture	Gyps rueppelli	40-50 yrs
4113	Red-breasted nuthatch	Sitta canadensis	7.5 years
4114	Little auk	Alle alle	
4115	Brahminy Kite	Haliastur indus	30 yrs
4116	Western Scrub-Jay	Aphelocoma californica	9-19 yrs
4117	Crested Caracara	Caracara cheriway	18-30 yrs
4118	King Vulture	Sarcoramphus papa	25-40 yrs
4119	Western meadowlark	Sturnella neglecta	
4120	Northern Gannet	Morus bassanus	17-37 yrs
4121	Eastern imperial eagle	Aquila heliaca	
4122	Great black-backed gull	Larus marinus	
4123	Eurasian nuthatch	Sitta europaea	
4124	Vermilion Flycatcher	Pyrocephalus obscurus	5 yrs
4125	Fieldfare	Turdus pilaris	
4126	Ferruginous Hawk	Buteo regalis	20 yrs
4127	Grey Partridge	Perdix perdix	3-5 yrs
4128	Loggerhead Shrike	Lanius ludovicianus	12 yrs
4129	Yellow-Billed Cuckoo	Coccyzus americanus	5 yrs
4130	Palm Cockatoo	Probosciger aterrimus	40-60 yrs
4131	Dalmatian Pelican	Pelecanus crispus	35-54 yrs
4132	Snowy Egret	Egretta thula	22 yrs
4133	Scissor-Tailed Flycatcher	Tyrannus forficatus	10-15 yrs
4134	Japanese Quail	Coturnix japonica	2-6 yrs
4135	Short-Eared Owl	Asio flammeus	4-15 yrs
4136	Summer tanager	Piranga rubra	8 years
4137	Greater Prairie Chicken	Tympanuchus cupido	2-3 yrs
4138	African sacred ibis	Threskiornis aethiopicus	
4139	Magellanic Penguin	Spheniscus magellanicus	25 yrs
4140	Spotted Dove	Spilopelia chinensis	8 yrs
4141	Water pipit	Anthus spinoletta	
4142	American Black Duck	Anas rubripes	26 yrs
4143	Mistle Thrush	Turdus viscivorus	3-21 yrs
4144	Common hill myna	Gracula religiosa	
4145	Common linnet	Linaria cannabina	
4146	Golden Oriole	Oriolus oriolus	10 yrs
4147	Northern Pintail	Anas acuta	22 yrs
4148	Spotted Owl	Strix occidentalis	16-21 yrs
4149	Piping Plover	Charadrius melodus	up to 5 yrs
4150	White-Crowned Sparrow	Zonotrichia leucophrys	13 yrs
4151	Northern lapwing	Vanellus vanellus	
4152	Common Moorhen	Gallinula chloropus	3 yrs
4153	Mississippi kite	Ictinia mississippiensis	11 years
4154	Spotted Towhee	Pipilo maculatus	11 yrs
4155	Humboldt Penguin	Spheniscus humboldti	15-30 yrs
4156	Bewick's wren	Thryomanes bewickii	
4157	Major Mitchell's Cockatoo	Lophochroa leadbeateri	60-83 yrs
4158	Willow Ptarmigan	Lagopus lagopus	9 yrs
4159	Brown booby	Sula leucogaster	
4160	Northern Hawk-Owl	Surnia ulula	10 yrs
4161	Baya weaver	Ploceus philippinus	
4162	Houbara bustard	Chlamydotis undulata	
4163	Chinstrap Penguin	Pygoscelis antarcticus	15-20 yrs
4164	Great crested flycatcher	Myiarchus crinitus	
4165	Veery	Catharus fuscescens	
4166	Acorn Woodpecker	Melanerpes formicivorus	16-17 yrs
4167	Bohemian Waxwing	Bombycilla garrulus	5-13 yrs
4168	Northern Shoveler	Spatula clypeata	2-20 yrs
4169	Black-bellied whistling duck	Dendrocygna autumnalis	
4170	Black-Chinned Hummingbird	Archilochus alexandri	10-11 yrs
4171	Western Bluebird	Sialia mexicana	4 yrs
4172	White-winged dove	Zenaida asiatica	22 years
4173	Hermit Thrush	Catharus guttatus	8-10 years
4174	Gadwall	Mareca strepera	
4175	Kori Bustard	Ardeotis kori	27 yrs
4176	Jacobin cuckoo	Clamator jacobinus	
4177	Black drongo	Dicrurus macrocercus	
4178	Grey junglefowl	Gallus sonneratii	
4179	Sri Lankan junglefowl	Gallus lafayettii	
4180	Lilac-Breasted Roller	Coracias caudatus	10 yrs
4181	Chuck-will's-widow	Antrostomus carolinensis	
4182	Grey francolin	Francolinus pondicerianus	
4183	Glossy Ibis	Plegadis falcinellus	26 yrs
4184	Yellow-Breasted Chat	Icteria virens	8.9 yrs
4185	Somali ostrich	Struthio molybdophanes	
4186	Saker Falcon	Falco cherrug	10-25 yrs
4187	Superb Fairywren	Malurus cyaneus	5-6 yrs
4188	Eastern Kingbird	Tyrannus tyrannus	10 yrs
4189	Eurasian hobby	Falco subbuteo	
4190	Black phoebe	Sayornis nigricans	
4191	Himalayan Vulture	Gyps himalayensis	20-35 yrs
4192	Powerful Owl	Ninox strenua	10-20 yrs
4193	Black grouse	Lyrurus tetrix	
4194	Red-footed booby	Sula sula	23 years
4195	European storm petrel	Hydrobates pelagicus	
4196	Swainson's Hawk	Buteo swainsoni	16-19 yrs
4197	Red-wattled lapwing	Vanellus indicus	
4198	Magnificent Frigatebird	Fregata magnificens	15-25 yrs
4199	Hen Harrier	Circus cyaneus	8-16 yrs
4200	Greater Sage Grouse	Centrocercus urophasianus	10 yrs
4201	Willie Wagtail	Rhipidura leucophrys	15 yrs
4202	Ruddy Duck	Oxyura jamaicensis	2-13 yrs
4203	Little Blue Heron	Egretta caerulea	14 yrs
4204	Scaly-breasted munia	Lonchura punctulata	
4205	White-Tailed Kite	Elanus leucurus	6 yrs
4206	Black-headed grosbeak	Pheucticus melanocephalus	12 years
4207	Magpie-lark	Grallina cyanoleuca	10 yrs
4208	White-headed vulture	Trigonoceps occipitalis	
4209	Long-wattled umbrellabird	Cephalopterus penduliger	
4210	Common goldeneye	Bucephala clangula	
4211	American Bittern	Botaurus lentiginosus	8.3 yrs
4212	Keel-Billed Toucan	Ramphastos sulfuratus	15-20 yrs
4213	Elf Owl	Micrathene whitneyi	3-10 yrs
4214	Ruby-crowned kinglet	Regulus calendula	
4215	Yellow warbler	Setophaga petechia	10 yrs
4216	White-throated kingfisher	Halcyon smyrnensis	
4217	Yellow-Crowned Night Heron	Nyctanassa violacea	6 yrs
4218	Amur falcon	Falco amurensis	
4219	Common murre	Uria aalge	26.5 years
4220	Goliath heron	Ardea goliath	
4221	Razorbill	Alca torda	7.5 years
4222	White-browed tit-warbler	Leptopoecile sophiae	
4223	Demoiselle Crane	Grus virgo	25-65 yrs
4224	Canvasback	Aythya valisineria	
4225	Evening grosbeak	Hesperiphona vespertina	
4226	Bar-Tailed Godwit	Limosa lapponica	30 yrs
4227	Pine grosbeak	Pinicola enucleator	
4228	Siberian jay	Perisoreus infaustus	
4229	Gambel's Quail	Callipepla gambelii	1.5-2 yrs
4230	Bobolink	Dolichonyx oryzivorus	4-9 yrs
4231	Eurasian siskin	Spinus spinus	
4232	European bee-eater	Merops apiaster	
4233	Ovenbird	Seiurus aurocapilla	11 years
4234	Great skua	Stercorarius skua	
4235	Brown Creeper	Certhia americana	4 yrs
4236	Greater white-fronted goose	Anser albifrons	
4237	Rhinoceros Hornbill	Buceros rhinoceros	35 yrs
4238	White-throated needletail	Hirundapus caudacutus	
4239	Eurasian treecreeper	Certhia familiaris	
4240	Bearded reedling	Panurus biarmicus	
4241	Tufted Puffin	Fratercula cirrhata	20 yrs
4242	Corn crake	Crex crex	
4243	Swan Goose	Anser cygnoides	10 yrs
4244	Common whitethroat	Curruca communis	
4245	Jungle babbler	Argya striata	
4246	Brant	Branta bernicla	
4247	Yellow-Crested Cockatoo	Cacatua sulphurea	60 yrs
4248	Tufted Duck	Aythya fuligula	4 yrs
4249	Hamerkop	Scopus umbretta	
4250	Australian Pelican	Pelecanus conspicillatus	15-25 yrs
4251	American Redstart	Setophaga ruticilla	10 yrs
4252	Lesser goldfinch	Spinus psaltria	
4253	Blue-winged teal	Spatula discors	
4254	Eurasian wigeon	Mareca penelope	
4255	Fish crow	Corvus ossifragus	
4256	Harlequin Duck	Histrionicus histrionicus	12-14 yrs
4257	Redwing	Turdus iliacus	
4258	Southern royal albatross	Diomedea epomophora	
4259	Bullock's oriole	Icterus bullockii	
4260	Band-tailed pigeon	Patagioenas fasciata	
4261	Horned Lark	Eremophila alpestris	5-8 yrs
4262	Ruddy shelduck	Tadorna ferruginea	
4263	Gang-Gang Cockatoo	Callocephalon fimbriatum	50 yrs
4264	Prairie Falcon	Falco mexicanus	3-25 yrs
4265	Plum-headed parakeet	Psittacula cyanocephala	
4266	White-Backed Vulture	Gyps africanus	19 yrs
4267	Greater scaup	Aythya marila	
4268	Cackling goose	Branta hutchinsii	
4269	Common Snipe	Gallinago gallinago	4-16 yrs
4270	Bateleur	Terathopius ecaudatus	27 yrs
4271	Common Yellowthroat	Geothlypis trichas	10-11 yrs
4272	Yellow-rumped warbler	Setophaga coronata	
4273	Black stork	Ciconia nigra	
4274	Thick-billed raven	Corvus crassirostris	
4275	Spruce grouse	Falcipennis canadensis	5.5 years
4276	Pied-Billed Grebe	Podilymbus podiceps	10-12 yrs
4277	Red-Crested Cardinal	Paroaria coronata	15 yrs
4278	Jabiru	Jabiru mycteria	
4279	Eastern wood pewee	Contopus virens	
4280	Common ground dove	Columbina passerina	
4281	Grey Wagtail	Motacilla cinerea	8 yrs
4282	Brambling	Fringilla montifringilla	
4283	African jacana	Actophilornis africanus	
4284	Red-breasted merganser	Mergus serrator	
4285	Cliff flycatcher	Hirundinea ferruginea	
4286	Common redpoll	Acanthis flammea	
4287	Green Bee-Eater	Merops orientalis	12-18 yrs
4288	Lesser Flamingo	Phoeniconaias minor	50 yrs
4289	King eider	Somateria spectabilis	
4290	Black-winged stilt	Himantopus himantopus	
4291	Redhead	Aythya americana	22.5 years
4292	Yellow-Headed Blackbird	Xanthocephalus xanthocephalus	10-11.8 yrs
4293	Green-Winged Macaw	Ara chloropterus	30-60 yrs
4294	Boreal Owl	Aegolius funereus	7-8 yrs
4295	Booted eagle	Hieraaetus pennatus	
4296	Red Crossbill	Loxia curvirostra	8 yrs
4297	Brogla	Grus rubicunda	33 yrs
4298	Red Knot	Calidris canutus	13-16 yrs
4299	Stock dove	Columba oenas	
4300	Little Grebe	Tachybaptus ruficollis	10-15 yrs
4301	Lappet-Faced Vulture	Torgos tracheliotos	30-50 yrs
4302	Golden-crowned kinglet	Regulus satrapa	
4303	White-tailed tropicbird	Phaethon lepturus	
4304	Snow Bunting	Plectrophenax nivalis	8.9 yrs
4305	Dickcissel	Spiza americana	
4306	Blue-Throated Macaw	Ara glaucogularis	50-80 yrs
4307	Laysan Albatross	Phoebastria immutabilis	12-51 yrs
4308	Blue Grosbeak	Passerina caerulea	6 yrs
4309	Edible-nest swiftlet	Aerodramus fuciphagus	
4310	Spotted flycatcher	Muscicapa striata	
4311	Great kiskadee	Pitangus sulphuratus	7 years
4312	American bushtit	Psaltriparus minimus	8.5 years
4313	Military Macaw	Ara militaris	50-60 yrs
4314	Long-Tailed Duck	Clangula hyemalis	15 yrs
4315	Garganey	Spatula querquedula	
4316	Mountain chickadee	Poecile gambeli	
4317	Common gallinule	Gallinula galeata	
4318	Southern Ground Hornbil	Bucorvus leadbeateri	50-70 yrs
4319	Sanderling	Calidris alba	
4320	Swainson's thrush	Catharus ustulatus	
4321	Northern cassowary	Casuarius unappendiculatus	
4322	Orchard oriole	Icterus spurius	11 years
4323	Clark's nutcracker	Nucifraga columbiana	17.5 years
4324	White-rumped vulture	Gyps bengalensis	
4325	Yellow-Eyed Penguin	Megadyptes antipodes	22 yrs
4326	American Wigeon	Mareca americana	1.7-21 yrs
4327	Bluethroat	Luscinia svecica	
4328	Lear's Macaw	Anodorhynchus leari	30-60 yrs
4329	Painted Stork	Mycteria leucocephala	28 yrs
4330	European nightjar	Caprimulgus europaeus	
4331	Lanner Falcon	Falco biarmicus	15-17 yrs
4332	White-breasted waterhen	Amaurornis phoenicurus	
4333	Green junglefowl	Gallus varius	
4334	Blue Crane	Grus paradisea	20-30 yrs
4335	Eurasian bittern	Botaurus stellaris	
4336	Boreal chickadee	Poecile hudsonicus	
4337	Hooded oriole	Icterus cucullatus	6 years
4338	Red-Cockaded Woodpecker	Dryobates borealis	12-16 yrs
4339	Large-billed crow	Corvus macrorhynchos	
4340	Pyrrhuloxia	Cardinalis sinuatus	8 years
4341	Blue-gray gnatcatcher	Polioptila caerulea	4 years
4342	Warbling vireo	Vireo gilvus	
4343	Victoria Crowned Pigeon	Goura victoria	20-25 yrs
4344	Lesser scaup	Aythya affinis	
4345	Sharp-tailed grouse	Tympanuchus phasianellus	
4346	Andean cock-of-the-rock	Rupicola peruvianus	
4347	Senegal Parrot	Poicephalus senegalus	25-50 yrs
4348	Crested Ibis	Nipponia nippon	26 yrs
4349	European serin	Serinus serinus	
4350	South Polar Skua	Stercorarius maccormicki	10 yrs
4351	Black-and-White Warbler	Mniotilta varia	11 yrs
4352	Black woodpecker	Dryocopus martius	
4353	Limpkin	Aramus guarauna	
4354	Magpie goose	Anseranas semipalmata	
4355	Eurasian oystercatcher	Haematopus ostralegus	
4356	Red-billed chough	Pyrrhocorax pyrrhocorax	
4357	Red-throated loon	Gavia stellata	
4358	Greater adjutant	Leptoptilos dubius	
4359	Verreaux's eagle	Aquila verreauxii	
4360	Satin Bowerbird	Ptilonorhynchus violaceus	20-30 yrs
4361	Chilean Flamingo	Phoenicopterus chilensis	40-50 yrs
4362	Black-tailed godwit	Limosa limosa	
4363	Bush Stone-Curlew	Burhinus grallarius	20-30 yrs
4364	Marsh Wren	Cistothorus palustris	9 yrs
4365	Hawfinch	Coccothraustes coccothraustes	
4366	Indian robin	Copsychus fulicatus	
4367	Boat-tailed grackle	Quiscalus major	
4368	Yellow-Headed Amazon	Amazona oratrix	80 yrs
4369	Common potoo	Nyctibius griseus	
4370	Red-billed quelea	Quelea quelea	
4371	Lazuli bunting	Passerina amoena	
4372	Winter wren	Troglodytes hiemalis	
4373	Thrush nightingale	Luscinia luscinia	
4374	American Avocet	Recurvirostra americana	9-15 yrs
4375	Rosy starling	Pastor roseus	
4376	Ring-billed gull	Larus delawarensis	
4377	Green-Winged Teal	Anas carolinensis	20 yrs
4378	Brewer's blackbird	Euphagus cyanocephalus	
4379	European pied flycatcher	Ficedula hypoleuca	11 years
4380	Calliope Hummingbird	Selasphorus calliope	8 yrs
4381	Lady Amherst's pheasant	Chrysolophus amherstiae	
4382	Lesser spotted woodpecker	Dryobates minor	
4383	White bellbird	Procnias albus	
4384	Giant hummingbird	Patagona gigas	
4385	Rough-legged buzzard	Buteo lagopus	
4386	Masked booby	Sula dactylatra	25.5 years
4387	Splendid Fairywren	Malurus splendens	5-6 yrs
4388	Varied thrush	Ixoreus naevius	5.5 years
4389	Purple heron	Ardea purpurea	
4390	Eastern Meadowlark	Sturnella magna	3-9 yrs
4391	Indian golden oriole	Oriolus kundoo	
4392	Meadow pipit	Anthus pratensis	
4393	Bali Myna	Leucopsar rothschildi	5-15 yrs
4394	Greater spotted eagle	Clanga clanga	
4395	Thick-Billed Parrot	Rhynchopsitta pachyrhyncha	40 yrs
4396	Oilbird	Steatornis caripensis	
4397	Northern wheatear	Oenanthe oenanthe	
4398	European Roller	Coracias garrulus	9-10 yrs
4399	Dunlin	Calidris alpina	
4400	Pygmy falcon	Polihierax semitorquatus	
4401	Pink-necked green pigeon	Treron vernans	
4402	Common pochard	Aythya ferina	
4403	Ring-Necked Duck	Aythya collaris	5-20 yrs
4404	Great Green Macaw	Ara ambiguus	60-70 yrs
4405	James's Flamingo	Phoenicoparrus jamesi	20-30 yrs
4406	Tricolored Heron	Egretta tricolor	17 yrs
4407	Red-headed vulture	Sarcogyps calvus	
4408	Lark Bunting	Calamospiza melanocorys	4 yrs
4409	Ural Owl	Strix uralensis	24 yrs
4410	Eurasian woodcock	Scolopax rusticola	
4411	American herring gull	Larus smithsonianus	
4412	Wilson's phalarope	Phalaropus tricolor	
4413	Horned Puffin	Fratercula corniculata	over 20 yrs
4414	Bananaquit	Coereba flaveola	7 years
4415	Northern bald ibis	Geronticus eremita	
4416	Royal Penguin	Eudyptes schlegeli	15-20 yrs
4417	Black-legged kittiwake	Rissa tridactyla	25.5 years
4418	Chestnut-backed chickadee	Poecile rufescens	
4419	Northern Fulmar	Fulmarus glacialis	34-50 yrs
4420	Sand Martin	Riparia riparia	9 yrs
4421	Florida Scrub-Jay	Aphelocoma coerulescens	4-15 yrs
4422	Common firecrest	Regulus ignicapilla	
4423	Rock wren	Salpinctes obsoletus	
4424	Dwarf cassowary	Casuarius bennetti	
4425	White-necked raven	Corvus albicollis	
4426	Wood warbler	Phylloscopus sibilatrix	
4427	Ross's goose	Anser rossii	
4428	Western kingbird	Tyrannus verticalis	
4429	American Oystercatcher	Haematopus palliatus	10-17 yrs
4430	Alpine swift	Tachymarptis melba	
4431	Manx shearwater	Puffinus puffinus	
4432	Greater Bird-of-Paradise	Paradisaea apoda	5-30 yrs
4433	Indian eagle-owl	Bubo bengalensis	
4434	Eurasian curlew	Numenius arquata	
4435	Hooded Vulture	Necrosyrtes monachus	20-30 yrs
4436	Common reed bunting	Emberiza schoeniclus	
4437	Pine warbler	Setophaga pinus	
4438	Purple-rumped sunbird	Leptocoma zeylonica	
4439	Lesser black-backed gull	Larus fuscus	
4440	Black-necked crane	Grus nigricollis	
4441	Northern parula	Setophaga americana	
4442	Smew	Mergellus albellus	
4443	Red-backed shrike	Lanius collurio	
4444	Cinnamon Teal	Spatula cyanoptera	12 yrs
4445	Chihuahuan raven	Corvus cryptoleucus	
4446	Marsh tit	Poecile palustris	
4447	Forest owlet	Athene blewitti	
4448	Common sandpiper	Actitis hypoleucos	
4449	Black-Browed Albatross	Thalassarche melanophris	32.5-70 yrs
4450	Black Skimmer	Rynchops niger	20 yrs
4451	Lesser whitethroat	Curruca curruca	
4452	Spanish imperial eagle	Aquila adalberti	
4453	White-eyed vireo	Vireo griseus	
4454	Blue finch	Porphyrospiza caerulescens	
4455	Northern shrike	Lanius borealis	
4456	Black-throated magpie-jay	Calocitta colliei	
4457	Black-necked stork	Ephippiorhynchus asiaticus	
4458	Allen's hummingbird	Selasphorus sasin	4 years
4459	Eurasian scops owl	Otus scops	
4460	Lesser kestrel	Falco naumanni	
4461	Pacific koel	Eudynamys orientalis	
4462	Ruddy Turnstone	Arenaria interpres	9-19 yrs
4463	Red-necked grebe	Podiceps grisegena	
4464	Sedge warbler	Acrocephalus schoenobaenus	
4465	Red-crowned amazon	Amazona viridigenalis	
4466	Least Bittern	Ixobrychus exilis	10 yrs
4467	Parasitic jaeger	Stercorarius parasiticus	32 years
4468	Flightless Cormorant	Phalacrocorax harrisi	13 yrs
4469	Surf scoter	Melanitta perspicillata	
4470	Great frigatebird	Fregata minor	
4471	Laughing Gull	Leucophaeus atricilla	15-22 yrs
4472	Common poorwill	Phalaenoptilus nuttallii	
4473	Reddish egret	Egretta rufescens	
4474	Pink Pigeon	Nesoenas mayeri	10-18 yrs
4475	Pomarine jaeger	Stercorarius pomarinus	
4476	Western tragopan	Tragopan melanocephalus	
4477	Sora	Porzana carolina	
4478	European shag	Phalacrocorax aristotelis	
4479	Horned grebe	Podiceps auritus	5 years
4480	Common shelduck	Tadorna tadorna	
4481	White-throated dipper	Cinclus cinclus	
4482	Purple Gallinule	Porphyrio martinicus	22 yrs
4483	Yellow-billed magpie	Pica nutalli	
4484	Prothonotary warbler	Protonotaria citrea	8 years
4485	Luzon Bleeding-Heart	Gallicolumba luzonica	15-25 yrs
4486	Western Screech Owl	Megascops kennicottii	13 yrs
4487	Raggiana bird-of-paradise	Paradisaea raggiana	
4488	Torresian crow	Corvus orru	
4489	Cape Barren Goose	Cereopsis novaehollandiae	17 yrs
4490	Violet-green swallow	Tachycineta thalassina	
4491	Indian spotted eagle	Clanga hastata	
4492	California towhee	Melozone crissalis	
4493	Red-billed oxpecker	Buphagus erythrorhynchus	
4494	Swamp harrier	Circus approximans	
4495	Southern Giant Petrel	Macronectes giganteus	20-30 yrs
4496	California Gull	Larus californicus	4-24 yrs
4497	Say's phoebe	Sayornis saya	
4498	Snowy Plover	Charadrius nivosus	15 yrs
4499	Striated heron	Butorides striata	
4500	Fiordland Penguin	Eudyptes pachyrhynchus	15-20 yrs
4501	Pink-Footed Goose	Anser brachyrhynchus	20 yrs
4502	Northern rough-winged swallow	Stelgidopteryx serripennis	
4503	Caspian tern	Hydroprogne caspia	
4504	Gila Woodpecker	Melanerpes uropygialis	7-10 yrs
4505	Rufous-bellied thrush	Turdus rufiventris	
4506	Pacific parrotlet	Forpus coelestis	
4507	European golden plover	Pluvialis apricaria	
4508	Lewis's woodpecker	Melanerpes lewis	
4509	Western Grebe	Aechmophorus occidentalis	14 yrs
4510	Andean Flamingo	Phoenicoparrus andinus	50 yrs
4511	American tree sparrow	Spizelloides arborea	
4512	Montagu's Harrier	Circus pygargus	16 yrs
4513	Silver Pheasant	Lophura nycthemera	15-20 yrs
4514	Nanday Parakeet	Aratinga nenday	20 yrs
4515	Red-shouldered macaw	Diopsittaca nobilis	
4516	Malleefowl	Leipoa ocellata	25 yrs
4517	Asian openbill	Anastomus oscitans	
4518	Ornate hawk-eagle	Spizaetus ornatus	
4519	Lesser Roadrunner	Geococcyx velox	7-8 yrs
4520	Yello-Naped Amazon	Amazona auropalliata	20-80 yrs
4521	Snow Petrel	Pagodroma nivea	14-20 yrs
4522	Common redshank	Tringa totanus	
4523	White Tern	Gygis alba	16-18 yrs
4524	Thick-billed murre	Uria lomvia	
4525	Wilson's snipe	Gallinago delicata	
4526	Vampire ground finch	Geospiza septentrionalis	
4527	Coscoroba swan	Coscoroba coscoroba	
4528	Bermuda petrel	Pterodroma cahow	
4529	Savannah Sparrow	Passerculus sandwichensis	6 yrs
4530	Turquoise-fronted amazon	Amazona aestiva	
4531	Black-backed woodpecker	Picoides arcticus	
4532	Maleo	Macrocephalon maleo	
4533	Red-crested pochard	Netta rufina	
4534	Field sparrow	Spizella pusilla	
4535	Black-throated blue warbler	Setophaga caerulescens	
4536	Red-billed tropicbird	Phaethon aethereus	
4537	Fox sparrow	Passerella iliaca	10.5 years
4538	Jerdon's courser	Rhinoptilus bitorquatus	
4539	Darwin's rhea	Rhea pennata	
4540	Inca Dove	Columbina inca	2-7.9 yrs
4541	Broad-Tailed Hummingbird	Selasphorus platycercus	8-12 yrs
4542	Indian pond heron	Ardeola grayii	
4543	Spotted thick-knee	Burhinus capensis	
4544	Pacific Golden Plover	Pluvialis fulva	15 yrs
4545	Black-Necked Swan	Cygnus melancoryphus	20-30 yrs
4546	Black-Shouldered Kite	Elanus axillaris	6 yrs
4547	Yellow-throated vireo	Vireo flavifrons	
4548	Black-necked grebe	Podiceps nigricollis	
4549	Kirtland's warbler	Setophaga kirtlandii	9 years
4550	Southern crested caracara	Caracara plancus	
4551	Diamond Dove	Geopelia cuneata	10 yrs
4552	Green parakeet	Psittacara holochlorus	
4553	American dipper	Cinclus mexicanus	7 years
4554	Spoon-billed sandpiper	Calidris pygmaea	
4555	Sooty shearwater	Ardenna grisea	
4556	American black swift	Cypseloides niger	
4557	Hazel grouse	Tetrastes bonasia	
4558	Black scoter	Melanitta americana	
4559	Common rosefinch	Carpodacus erythrinus	
4560	Turquoise-Browed Motmot	Eumomota superciliosa	12-20 yrs
4561	Brown-headed nuthatch	Sitta pusilla	
4562	Lesser whistling duck	Dendrocygna javanica	
4563	Azure-winged magpie	Cyanopica cyanus	
4564	Crested eagle	Morphnus guianensis	
4565	Barrow's goldeneye	Bucephala islandica	
4566	Yellow-legged gull	Larus michahellis	
4567	Snail Kite	Rostrhamus sociabilis	14 yrs
4568	Intermediate egret	Ardea intermedia	
4569	Spotted owlet	Athene brama	
4570	Sociable weaver	Philetairus socius	
4571	Black Crowned Crane	Balearica pavonina	22-25 yrs
4572	Virginia Rail	Rallus limicola	
4573	Sword-billed hummingbird	Ensifera ensifera	
4574	Indian cuckoo	Cuculus micropterus	
4575	Blue Duck	Hymenolaimus malacorhynchos	8-10 yrs
4576	Chestnut-fronted macaw	Ara severus	
4577	Long-Billed Curlew	Numenius americanus	10 yrs
4578	Eleonora's falcon	Falco eleonorae	
4579	Lesser spotted eagle	Clanga pomarina	
4580	Little bittern	Ixobrychus minutus	
4581	Reeves's pheasant	Syrmaticus reevesii	
4582	Shiny cowbird	Molothrus bonariensis	
4583	Black guillemot	Cepphus grylle	13 years
4584	Sedge wren	Cistothorus stellaris	
4585	Fulvous whistling duck	Dendrocygna bicolor	
4586	Water rail	Rallus aquaticus	
4587	Southern lapwing	Vanellus chilensis	
4588	White-tailed ptarmigan	Lagopus leucura	
4589	Dusky grouse	Dendragapus obscurus	
4590	Groove-billed ani	Crotophaga sulcirostris	
4591	Pacific loon	Gavia pacifica	
4592	Blue-headed vireo	Vireo solitarius	
4593	Red-tailed tropicbird	Phaethon rubricauda	
4594	Golden parakeet	Guaruba guarouba	
4595	Goffin's Cockatoo	Cacatua goffiniana	35-40 yrs
4596	Orange-crowned warbler	Leiothlypis celata	
4597	Guianan cock-of-the-rock	Rupicola rupicola	
4598	Wilson's Bird-of-Paradise	Cicinnurus respublica	5-30 yrs
4599	Cuban trogon	Priotelus temnurus	
4600	European crested tit	Lophophanes cristatus	
4601	Pinyon jay	Gymnorhinus cyanocephalus	
4602	Great reed warbler	Acrocephalus arundinaceus	
4603	Short-tailed shearwater	Ardenna tenuirostris	
4604	Costa's hummingbird	Calypte costae	9 years
4605	Mountain Quail	Oreortyx pictus	1-4 yrs
4606	Upland sandpiper	Bartramia longicauda	
4607	Eurasian whimbrel	Numenius phaeopus	
4608	Common ringed plover	Charadrius hiaticula	
4609	Neotropic cormorant	Phalacrocorax brasilianus	12.5 years
4610	Marbled murrelet	Brachyramphus marmoratus	10 years
4611	Grey-headed albatross	Thalassarche chrysostoma	
4612	Augur buzzard	Buteo augur	
4613	Red-billed streamertail	Trochilus polytmus	
4614	Townsend's solitaire	Myadestes townsendi	
4615	Grasshopper Sparrow	Ammodramus savannarum	2.9-9 yrs
4616	Xeme	Xema sabini	18 yrs
4617	Least Tern	Sternula antillarum	15-20 yrs
4618	Short-Tailed Albatross	Phoebastria albatrus	20-45 yrs
4619	Himalayan quail	Ophrysia superciliosa	
4620	Cassin's finch	Haemorhous cassinii	
4621	White-faced ibis	Plegadis chihi	
4622	Jandaya parakeet	Aratinga jandaya	
4623	Imperial amazon	Amazona imperialis	
4624	Barred parakeet	Bolborhynchus lineola	
4625	Spotted Eagle-Owl	Bubo africanus	10-20 yrs
4626	Tree pipit	Anthus trivialis	
4627	Phainopepla	Phainopepla nitens	
4628	Hawaiian Duck	Anas wyvilliana	13-18 yrs
4629	Yellow-Crowned Amazon	Amazona ochrocephala	60-80 yrs
4630	Mottled duck	Anas fulvigula	5 years
4631	Willet	Tringa semipalmata	
4632	Golden-crowned sparrow	Zonotrichia atricapilla	
4633	Wilson's warbler	Cardellina pusilla	
4634	Corn bunting	Emberiza calandra	
4635	Brown shrike	Lanius cristatus	
4636	Oriental turtle dove	Streptopelia orientalis	
4637	Malabar grey hornbill	Ocyceros griseus	
4638	Hooded warbler	Setophaga citrina	8 years
4639	Kelp gull	Larus dominicanus	
4640	Oak titmouse	Baeolophus inornatus	
4641	Whinchat	Saxicola rubetra	
4642	Zone-tailed hawk	Buteo albonotatus	
4643	Western reef heron	Egretta gularis	
4644	Cerulean warbler	Setophaga cerulea	5 years
4645	Red-fan parrot	Deroptyus accipitrinus	
4646	Southern masked weaver	Ploceus velatus	
4647	Lesser florican	Sypheotides indicus	
4648	Red-footed falcon	Falco vespertinus	
4649	Black oystercatcher	Haematopus bachmani	
4650	Pygmy nuthatch	Sitta pygmaea	
4651	Slender-billed vulture	Gyps tenuirostris	
4652	Himalayan snowcock	Tetraogallus himalayensis	
4653	Aplomado Falcon	Falco femoralis	12 yrs
4654	Lark sparrow	Chondestes grammacus	8 years
4655	White-winged scoter	Melanitta deglandi	
4656	Flammulated Owl	Psiloscops flammeolus	7-8 yrs
4657	Scaled quail	Callipepla squamata	
4658	Red-breasted meadowlark	Leistes militaris	
4659	White-Necked Stork	Ciconia episcopus	20 yrs
4660	Cape robin-chat	Cossypha caffra	
4661	Ring ouzel	Turdus torquatus	
4662	Lapland longspur	Calcarius lapponicus	
4663	Willow flycatcher	Empidonax traillii	
4664	Sage thrasher	Oreoscoptes montanus	
4665	Worm-eating warbler	Helmitheros vermivorum	
4666	Little ringed plover	Charadrius dubius	
4667	Yellow-bellied flycatcher	Empidonax flaviventris	4 years
4668	Indian spot-billed duck	Anas poecilorhyncha	
4669	Black-chested buzzard-eagle	Geranoaetus melanoleucus	
4670	White-throated magpie-jay	Calocitta formosa	
4671	Ash-throated flycatcher	Myiarchus cinerascens	
4672	White Hawk	Leucopternis albicollis	20 yrs
4673	Green Jay	Cyanocorax luxuosus	10-11 yrs
4674	Inca Tern	Larosterna inca	14-20 yrs
4675	Red-breasted sapsucker	Sphyrapicus ruber	
4676	Spotted nutcracker	Nucifraga caryocatactes	
4677	Horned screamer	Anhima cornuta	
4678	Spotted Sandpiper	Actitis macularius	12 yrs
4679	Blue rock thrush	Monticola solitarius	
4680	Lesser yellow-headed vulture	Cathartes burrovianus	
4681	Red-breasted parakeet	Psittacula alexandri	
4682	Black-crested titmouse	Baeolophus atricristatus	
4683	Vaux's swift	Chaetura vauxi	5 years
4684	White-throated swift	Aeronautes saxatalis	
4685	Venezuelan troupial	Icterus icterus	
4686	Pallid harrier	Circus macrourus	
4687	Rusty blackbird	Euphagus carolinus	
4688	Ruff	Calidris pugnax	
4689	King rail	Rallus elegans	
4690	Saffron finch	Sicalis flaveola	
4691	Blackburnian Warbler	Setophaga fusca	8 yrs
4692	Great spotted cuckoo	Clamator glandarius	
4693	White-eared bulbul	Pycnonotus leucotis	
4694	Long-tailed jaeger	Stercorarius longicaudus	
4695	Glaucous gull	Larus hyperboreus	
4696	Red-breasted goose	Branta ruficollis	
4697	Red-naped sapsucker	Sphyrapicus nuchalis	
4698	Red-legged seriema	Cariama cristata	
4699	Waved Albatross	Phoebastria irrorata	40-45 yrs
4700	Blackpoll warbler	Setophaga striata	
4701	Semipalmated plover	Charadrius semipalmatus	
4702	Nazca booby	Sula granti	
4703	Cape sparrow	Passer melanurus	
4704	Oriental darter	Anhinga melanogaster	
4705	Sandwich tern	Thalasseus sandvicensis	
4706	Western Gull	Larus occidentalis	15-25 yrs
4707	Black-throated green warbler	Setophaga virens	6 years
4708	Black-footed albatross	Phoebastria nigripes	40.5 years
4709	Greater yellow-headed vulture	Cathartes melambrotus	
4710	White-bellied heron	Ardea insignis	
4711	Tropical mockingbird	Mimus gilvus	
4712	Giant Kingfisher	Megaceryle maxima	6-14 yrs
4713	Peruvian booby	Sula variegata	
4714	Burrowing parrot	Cyanoliseus patagonus	
4715	Kentucky warbler	Geothlypis formosa	
4716	Common greenshank	Tringa nebularia	
4717	Laysan duck	Anas laysanensis	12 years
4718	Snares Penguin	Eudyptes robustus	15-20 yrs
4719	Fork-tailed drongo	Dicrurus adsimilis	
4720	Red-naped ibis	Pseudibis papillosa	
4721	Lesser nighthawk	Chordeiles acutipennis	
4722	Baikal teal	Sibirionetta formosa	
4723	Northern Pygmy Owl	Glaucidium californicum	6-7 yrs
4724	Red-billed blue magpie	Urocissa erythroryncha	
5808	Somali pigeon	Columba oliviae	
4725	White-cheeked barbet	Psilopogon viridis	
4726	Rhinoceros auklet	Cerorhinca monocerata	
4727	Clapper Rail	Rallus crepitans	7.6 yrs
4728	Swamp sparrow	Melospiza georgiana	6 years
4729	Acadian Flycatcher	Empidonax virescens	10-11 yrs
4730	Clay-Colored Robin	Turdus grayi	9.6 yrs
4731	African hawk-eagle	Aquila spilogaster	
4732	Erect-Crested Penguin	Eudyptes sclateri	15-20 yrs
4733	ʻIʻiwi	Drepanis coccinea	
4734	Pheasant-tailed jacana	Hydrophasianus chirurgus	
4735	White-headed duck	Oxyura leucocephala	
4736	Black rail	Laterallus jamaicensis	
4737	Magnolia warbler	Setophaga magnolia	8 years
4738	Knob-billed duck	Sarkidiornis melanotos	
4739	Common waxbill	Estrilda astrild	
4740	Emperor Goose	Chen canagica	6-12 yrs
4741	Cetti's warbler	Cettia cetti	
4742	Long-tailed shrike	Lanius schach	
4743	White-Winged Duck	Asarcornis scutulata	10-15 yrs
4744	Ferruginous duck	Aythya nyroca	
4745	Ladder-backed woodpecker	Dryobates scalaris	4.5 years
4746	Red-Lored Amazon	Amazona autumnalis	75-80 yrs
4747	Curlew sandpiper	Calidris ferruginea	
4748	Royal Tern	Thalasseus maximus	17 yrs
4749	Red-masked parakeet	Psittacara erythrogenys	
4750	Black-and-white hawk-eagle	Spizaetus melanoleucus	
4751	Pacific wren	Troglodytes pacificus	
4752	Barking Owl	Ninox connivens	10-20 yrs
4753	Collared Kingfisher	Todiramphus chloris	11 yrs
4754	Red-bellied macaw	Orthopsittaca manilatus	
4755	Southern screamer	Chauna torquata	
4756	Franklin's gull	Leucophaeus pipixcan	
4757	Chestnut munia	Lonchura atricapilla	
4758	Gilded flicker	Colaptes chrysoides	
4759	Yellow-billed loon	Gavia adamsii	
4760	Tropical kingbird	Tyrannus melancholicus	
4761	Bonaparte's gull	Chroicocephalus philadelphia	
4762	Least flycatcher	Empidonax minimus	
4763	Icterine warbler	Hippolais icterina	
4764	Great curassow	Crax rubra	
4765	Crested goshawk	Accipiter trivirgatus	
4766	Red-necked phalarope	Phalaropus lobatus	5 years
4767	American Golden Plover	Pluvialis dominica	8-15 yrs
4768	Red-fronted macaw	Ara rubrogenys	
4769	Yellow-throated warbler	Setophaga dominica	
4770	Grey-headed chickadee	Poecile cinctus	
4771	White-Naped Crane	Antigone vipio	45 yrs
4772	Montezuma oropendola	Psarocolius montezuma	
4773	Lineated woodpecker	Dryocopus lineatus	
4774	Broad-billed hummingbird	Cynanthus latirostris	6 years
4775	Brown noddy	Anous stolidus	
4776	Smooth-billed ani	Crotophaga ani	
4777	Olive-sided flycatcher	Contopus cooperi	
4778	Wallcreeper	Tichodroma muraria	
4779	Orange-Winged Amazon	Amazona amazonica	60 yrs
4780	Cave swallow	Petrochelidon fulva	
4781	Yellow rail	Coturnicops noveboracensis	
4782	Grey plover	Pluvialis squatarola	
4783	Golden-winged warbler	Vermivora chrysoptera	
4784	Palm warbler	Setophaga palmarum	6.5 years
4785	Northern waterthrush	Parkesia noveboracensis	
4786	Meyer's parrot	Poicephalus meyeri	
4787	Vesper sparrow	Pooecetes gramineus	
4788	Short-toed treecreeper	Certhia brachydactyla	
4789	Blue-winged macaw	Primolius maracana	
4790	Lincoln's sparrow	Melospiza lincolnii	
4791	Little stint	Calidris minuta	
4792	Fork-tailed flycatcher	Tyrannus savana	
4793	Black Tern	Chlidonias niger	17 yrs
4794	Red-breasted flycatcher	Ficedula parva	
4795	Atlantic yellow-nosed albatross	Thalassarche chlororhynchos	
4796	Greater yellowlegs	Tringa melanoleuca	
4797	Little bustard	Tetrax tetrax	
4798	Village weaver	Ploceus cucullatus	
4799	Tennessee warbler	Leiothlypis peregrina	
4800	Purple sandpiper	Calidris maritima	
4801	Harris's sparrow	Zonotrichia querula	11.5 years
4802	Verdin	Auriparus flaviceps	5.5 years
4803	Crested lark	Galerida cristata	
4804	Juniper titmouse	Baeolophus ridgwayi	
4805	Cape crow	Corvus capensis	
4806	Vermilion cardinal	Cardinalis phoeniceus	
4807	Ashy prinia	Prinia socialis	
4808	Clay-colored sparrow	Spizella pallida	
4809	Steller's eider	Polysticta stelleri	
4810	Blue-Headed Parrot	Pionus menstruus	40 yrs
4811	Sooty grouse	Dendragapus fuliginosus	
4812	Northern jacana	Jacana spinosa	
4813	Buff-bellied pipit	Anthus rubescens	
4814	Indian cormorant	Phalacrocorax fuscicollis	
4815	Little gull	Hydrocoloeus minutus	
4816	Lesser white-fronted goose	Anser erythropus	
4817	Spectacled Owl	Pulsatrix perspicillata	25-35 yrs
4818	Nashville warbler	Leiothlypis ruficapilla	
4819	Blue-winged warbler	Vermivora cyanoptera	
4820	Lesser yellowlegs	Tringa flavipes	
4821	Pharaoh eagle-owl	Bubo ascalaphus	
4822	Little tern	Sternula albifrons	
4823	Striated caracara	Phalcoboenus australis	
4824	Zenaida dove	Zenaida aurita	
4825	Townsend's warbler	Setophaga townsendi	
4826	Marbled godwit	Limosa fedoa	
4827	Red-flanked bluetail	Tarsiger cyanurus	
4828	Sunbittern	Eurypyga helias	
4829	Cuban Amazon	Amazona leucocephala	50-60 yrs
4830	Ancient murrelet	Synthliboramphus antiquus	
4831	Blue bunting	Cyanocompsa parellina	
4832	Squacco heron	Ardeola ralloides	
4833	Bell's vireo	Vireo bellii	
4834	Middle spotted woodpecker	Dendrocoptes medius	
4835	Ivory Gull	Pagophila eburnea	10-20 yrs
4836	Eurasian pygmy owl	Glaucidium passerinum	
4837	Blue-crowned parakeet	Thectocercus acuticaudatus	
4838	Brown-eared bulbul	Hypsipetes amaurotis	
4839	Williamson's sapsucker	Sphyrapicus thyroideus	
4840	Red-rumped swallow	Cecropis daurica	
4841	Sri Lanka blue magpie	Urocissa ornata	
4842	Sociable lapwing	Vanellus gregarius	
4843	Emerald toucanet	Aulacorhynchus prasinus	
4844	Pigeon guillemot	Cepphus columba	
4845	Cirl bunting	Emberiza cirlus	
4846	Golden-collared macaw	Primolius auricollis	
4847	MacQueen's bustard	Chlamydotis macqueenii	
4848	Red-winged starling	Onychognathus morio	
4849	Great shearwater	Ardenna gravis	
4850	Blue-headed macaw	Primolius couloni	
4851	Oriental stork	Ciconia boyciana	
4852	Chestnut-sided warbler	Setophaga pensylvanica	7 years
4853	Montezuma quail	Cyrtonyx montezumae	
4854	Yellow-winged blackbird	Agelasticus thilius	
4855	Long-billed dowitcher	Limnodromus scolopaceus	
4856	Eurasian dotterel	Charadrius morinellus	
4857	Cory's shearwater	Calonectris borealis	
4858	Yellow oriole	Icterus nigrogularis	
4859	Spanish sparrow	Passer hispaniolensis	
4860	Brown-necked raven	Corvus ruficollis	
4861	Lesser Prairie Chicken	Tympanuchus pallidicinctus	1-5 yrs
4862	Nuttall's woodpecker	Dryobates nuttallii	
4863	Striped cuckoo	Tapera naevia	
4864	Caspian gull	Larus cachinnans	
4865	Pacific-slope flycatcher	Empidonax difficilis	
4866	Bat hawk	Macheiramphus alcinus	
4867	Yellow-headed caracara	Milvago chimachima	
4868	Green sandpiper	Tringa ochropus	
4869	Echo parakeet	Psittacula eques	
4870	Eastern Towhee	Pipilo erythrophthalmus	9-12 yrs
4871	Rock Ptarmigan	Lagopus muta	2-4 yrs
4872	European Greenfinch	Chloris chloris	2-13 yrs
4873	Cactus Wren	Campylorhynchus brunneicapillus	1-7 yrs
4874	American White Ibis	Eudocimus albus	16-20 yrs
4875	Wood Thrush	Hylocichla mustelina	9 yrs
4876	White-Breasted Nuthatch	Sitta carolinensis	2-12 yrs
4877	Eurasian Skylark	Alauda arvensis	4-10 yrs
4878	Yellowhammer	Emberiza citrinella	3-13 yrs
4879	Long-Tailed Widowbird	Euplectes progne	
4880	Sun Parakeet	Aratinga solstitialis	25-30 yrs
4881	Asian Golden Weaver	Ploceus hypoxanthus	11 yrs
4882	European Herring Gull	Larus argentatus	30-49 yrs
4883	African Grey Parrot	Psittacus erithacus	23-60 yrs
4884	Greater Roadrunner	Geococcyx californianus	7-8 yrs
4885	Blakiston's Fish Owl	Bubo blakistoni	20 yrs
4886	Carnaby's Black Cockatoo	Calyptorhynchus latirostris	40-50 yrs
4887	Crowned Eagle	Stephanoaetus coronatus	14 yrs
4888	Eurasian Crag Martin	Ptyonoprogne rupestris	
4889	Pesquet's Parrot	Psittrichas fulgidus	40 yrs
4890	Eurasian Jay	Garrulus glandarius	3-17 yrs
4891	Great Grey Owl	Strix nebulosa	12-40 yrs
4892	Black-Billed Magpie	Pica hudsonia	4-6 yrs
4893	Pacific Swift	Apus pacificus	
4894	Golden Swallow	Tachycineta euchrysea	
4895	Western Capercaillie	Tetrao urogallus	18 yrs
4896	Atlantic Canary	Serinus canaria	
4897	Eclectus Parrot	Eclectus roratus	30-40 yrs
4898	Greater Coucal	Centropus sinensis	
4899	Alexandrine Parakeet	Psittacula eupatria	25-30 yrs
4900	Common House Martin	Delichon urbicum	5-14 yrs
4901	Common Crane	Grus grus	30-40 yrs
4902	Long-Tailed Tit	Aegithalos caudatus	
4903	Eurasian Tree Sparrow	Passer montanus	3-13 yrs
4904	Eurasian Bullfinch	Pyrrhula pyrrhula	2-5 yrs
4905	Indian Vulture	Gyps indicus	
4906	European Turtle Dove	Streptopelia turtur	2-10 yrs
4907	Hawaiian Hawk	Buteo solitarius	17 yrs
4908	Semipalmated sandpiper	Calidris pusilla	
4909	White-rumped munia	Lonchura striata	
4910	Coal Tit	Periparus ater	2-4 yrs
4911	Brown skua	Stercorarius antarcticus	
4912	Canada warbler	Cardellina canadensis	
4913	Least sandpiper	Calidris minutilla	
4914	Jack snipe	Lymnocryptes minimus	
4915	Asian glossy starling	Aplonis panayensis	
4916	Bufflehead	Bucephala albeola	2.5-18 yrs
4917	Hepatic tanager	Piranga flava	
4918	Greater Racket-Tailed Drongo	Dicrurus paradiseus	
4919	Great Blue Turaco	Corythaeola cristata	30 yrs
4920	Black-throated sparrow	Amphispiza bilineata	6 years
4921	Black-throated bushtit	Aegithalos concinnus	
4922	Crimson-bellied parakeet	Pyrrhura perlata	
4923	Blyth's reed warbler	Acrocephalus dumetorum	
4924	Pink-backed pelican	Pelecanus rufescens	
4925	King Bird-of-Paradise	Cicinnurus regius	5-30 yrs
4926	Rufous-collared sparrow	Zonotrichia capensis	
4927	Marsh warbler	Acrocephalus palustris	
4928	Clark's grebe	Aechmophorus clarkii	
4929	Southern mealy amazon	Amazona farinosa	
4930	Slender-billed curlew	Numenius tenuirostris	
4931	Boat-billed heron	Cochlearius cochlearius	
4932	Black noddy	Anous minutus	
4933	Southern yellow-billed hornbill	Tockus leucomelas	
4934	Screaming piha	Lipaugus vociferans	
4935	Grey-headed woodpecker	Picus canus	
4936	Mexican jay	Aphelocoma wollweberi	
4937	Wattled Crane	Grus carunculata	20-30 yrs
4938	Hood mockingbird	Mimus macdonaldi	
4939	Eared dove	Zenaida auriculata	
4940	Gull-billed tern	Gelochelidon nilotica	
4941	Cape May warbler	Setophaga tigrina	
4942	White-crowned pigeon	Patagioenas leucocephala	
4943	Medium ground finch	Geospiza fortis	
4944	Green-thighed parrot	Pionites leucogaster	
4945	Alder flycatcher	Empidonax alnorum	
4946	White-throated toucan	Ramphastos tucanus	
4947	Stygian owl	Asio stygius	
4948	Tricolored blackbird	Agelaius tricolor	
4949	Namaqua dove	Oena capensis	
4950	Wilson's plover	Charadrius wilsonia	
4951	Yellow-billed oxpecker	Buphagus africanus	
4952	Eurasian stone-curlew	Burhinus oedicnemus	
4953	Eared quetzal	Euptilotis neoxenus	
4954	Peruvian pelican	Pelecanus thagus	
4955	Greater Antillean grackle	Quiscalus niger	
4956	Plain chachalaca	Ortalis vetula	
4957	Grenada dove	Leptotila wellsi	
4958	Green-tailed towhee	Pipilo chlorurus	
4959	White-browed wagtail	Motacilla maderaspatensis	
4960	African grey hornbill	Lophoceros nasutus	
4961	White-necked crow	Corvus leucognaphalus	
4962	Common green magpie	Cissa chinensis	
4963	Wilson's storm petrel	Oceanites oceanicus	
4964	Gray kingbird	Tyrannus dominicensis	
4965	Yellow-throated toucan	Ramphastos ambiguus	
4966	Golden-cheeked warbler	Setophaga chrysoparia	4 years
4967	Rufous-tailed scrub robin	Cercotrichas galactotes	
4968	Knysna Turaco	Tauraco corythaix	30 yrs
4969	LeConte's sparrow	Ammospiza leconteii	
4970	Azure Kingfisher	Ceyx azureus	6-14 yrs
4971	Chestnut-tailed starling	Sturnia malabarica	
4972	Northern potoo	Nyctibius jamaicensis	
4973	Roadside hawk	Rupornis magnirostris	
4974	Grey-cheeked thrush	Catharus minimus	7.5 years
4975	Canyon wren	Catherpes mexicanus	
4976	Fan-tailed raven	Corvus rhipidurus	
4977	Hudsonian godwit	Limosa haemastica	
4978	Southern double-collared sunbird	Cinnyris chalybeus	
4979	African darter	Anhinga rufa	
4980	Oriental dollarbird	Eurystomus orientalis	
4981	Louisiana waterthrush	Parkesia motacilla	
4982	Black catbird	Melanoptila glabrirostris	
4983	Ringed kingfisher	Megaceryle torquata	
4984	Prairie warbler	Setophaga discolor	
4985	Cape starling	Lamprotornis nitens	
4986	Ross's gull	Rhodostethia rosea	
4987	Solitary sandpiper	Tringa solitaria	
4988	Red-necked falcon	Falco chicquera	
4989	Malachite Kingfisher	Corythornis cristatus	7 yrs
4990	Black hawk-eagle	Spizaetus tyrannus	
4991	Lesser frigatebird	Fregata ariel	
4992	Greater crested tern	Thalasseus bergii	
4993	Abert's towhee	Melozone aberti	
4994	Hooded crane	Grus monacha	
4995	Besra	Accipiter virgatus	
4996	Himalayan bulbul	Pycnonotus leucogenys	
4997	Pectoral sandpiper	Calidris melanotos	
4998	Lawrence's goldfinch	Spinus lawrencei	
4999	Crested auklet	Aethia cristatella	
5000	Campo troupial	Icterus jamacaii	
5001	Baer's pochard	Aythya baeri	
5002	White-backed woodpecker	Dendrocopos leucotos	
5003	Cape gannet	Morus capensis	
5004	Galapagos Hawk	Buteo galapagoensis	24 yrs
5005	Mexican chickadee	Poecile sclateri	
5006	Little swift	Apus affinis	
5007	Wattled jacana	Jacana jacana	
5008	Somali crow	Corvus edithae	
5009	Wedge-tailed shearwater	Ardenna pacifica	
5010	Levant sparrowhawk	Accipiter brevipes	
5011	Cassin's sparrow	Peucaea cassinii	
5012	Chinese egret	Egretta eulophotes	
5013	White-cheeked starling	Spodiopsar cineraceus	
5014	Rufous-vented chachalaca	Ortalis ruficauda	
5015	Bachman's sparrow	Peucaea aestivalis	
5016	Leach's storm petrel	Oceanodroma leucorhoa	
5017	Philadelphia vireo	Vireo philadelphicus	
5018	Western sandpiper	Calidris mauri	
5019	Forster's tern	Sterna forsteri	16 years
5020	White-necked rockfowl	Picathartes gymnocephalus	
5021	Southern carmine bee-eater	Merops nubicoides	
5022	Cassin's kingbird	Tyrannus vociferans	
5023	White-breasted cormorant	Phalacrocorax lucidus	
5024	Red phalarope	Phalaropus fulicarius	
5025	Mountain Plover	Charadrius montanus	10 yrs
5026	Bronze-winged jacana	Metopidius indicus	
5027	Black baza	Aviceda leuphotes	
5028	Greater painted-snipe	Rostratula benghalensis	
5029	Common grasshopper warbler	Locustella naevia	
5030	Iceland gull	Larus glaucoides	
5031	Torrent duck	Merganetta armata	
5032	Citrine wagtail	Motacilla citreola	
5033	Screaming cowbird	Molothrus rufoaxillaris	
5034	Fairy Tern	Sternula nereis	17 yrs
5035	African Spoonbill	Platalea alba	15-30 yrs
5036	Glaucous-winged gull	Larus glaucescens	25 years
5037	Black-capped parakeet	Pyrrhura rupicola	
5038	White-spectacled bulbul	Pycnonotus xanthopygos	
5039	Large ground finch	Geospiza magnirostris	
5040	Asian fairy-bluebird	Irena puella	
5041	Collared pratincole	Glareola pratincola	
5042	Mexican whip-poor-will	Antrostomus arizonae	
5043	Collared aracari	Pteroglossus torquatus	
5044	Little pied cormorant	Microcarbo melanoleucos	
5045	Guanay cormorant	Leucocarbo bougainvilliorum	
5046	Yellow-browed warbler	Phylloscopus inornatus	
5047	California thrasher	Toxostoma redivivum	
5048	Ruddy ground dove	Columbina talpacoti	
5049	Australasian darter	Anhinga novaehollandiae	
5050	Snowy sheathbill	Chionis albus	
5051	Great Snipe	Gallinago media	
5052	Spotted redshank	Tringa erythropus	
5053	Abdim's stork	Ciconia abdimii	
5054	Three-wattled bellbird	Procnias tricarunculatus	
5055	Amazonian royal flycatcher	Onychorhynchus coronatus	
5056	Stilt sandpiper	Calidris himantopus	
5057	Eastern yellow wagtail	Motacilla tschutschensis	
5058	Collared flycatcher	Ficedula albicollis	
5059	Brewer's sparrow	Spizella breweri	
5060	Taiga bean goose	Anser fabalis	
5061	Red siskin	Spinus cucullatus	
5062	Cotton pygmy goose	Nettapus coromandelianus	
5063	Orange-footed scrubfowl	Megapodius reinwardt	
5064	Red-Browed Finch	Neochmia temporalis	6-7 yrs
5065	Narcondam hornbill	Rhyticeros narcondami	
5066	Western wood pewee	Contopus sordidulus	8 years
5067	White-cheeked pintail	Anas bahamensis	
5068	Black-banded owl	Strix huhula	
5069	Ferruginous Pygmy Owl	Glaucidium brasilianum	6-7 yrs
5070	Mediterranean gull	Ichthyaetus melanocephalus	
5071	Antarctic petrel	Thalassoica antarctica	
5072	Brandt's cormorant	Phalacrocorax penicillatus	
5073	Okinawa rail	Hypotaenidia okinawae	
5074	White-fronted amazon	Amazona albifrons	
5075	Barred eagle-owl	Bubo sumatranus	
5076	Short-billed dowitcher	Limnodromus griseus	
5077	Buff-breasted sandpiper	Calidris subruficollis	
5078	Crested kingfisher	Megaceryle lugubris	
5079	Milky Stork	Mycteria cinerea	12 yrs
5080	Black-throated gray warbler	Setophaga nigrescens	
5081	Grey crow	Corvus tristis	
5082	Red-winged parrot	Aprosmictus erythropterus	
5083	Mourning warbler	Geothlypis philadelphia	
5084	Green-rumped parrotlet	Forpus passerinus	
5085	Hammond's flycatcher	Empidonax hammondii	
5086	Malabar whistling thrush	Myophonus horsfieldii	
5087	Whiskered Screech Owl	Megascops trichopsis	13 yrs
5088	Black-cheeked lovebird	Agapornis nigrigenis	
5089	Pelagic Cormorant	Phalacrocorax pelagicus	18 yrs
5090	Socotra cormorant	Phalacrocorax nigrogularis	
5091	Chimango caracara	Milvago chimango	
5092	Bronze mannikin	Spermestes cucullata	
5093	Sooty albatross	Phoebetria fusca	
5094	Spotted crake	Porzana porzana	
5095	Indian blue robin	Larvivora brunnea	
5096	Russet sparrow	Passer cinnamomeus	
5097	Henslow's Sparrow	Centronyx henslowii	6.6 yrs
5098	Carib grackle	Quiscalus lugubris	
5099	Palmchat	Dulus dominicus	
5100	Club-winged manakin	Machaeropterus deliciosus	
5101	Madagascan pochard	Aythya innotata	
5102	Crested shelduck	Tadorna cristata	
5103	Blacksmith Lapwing	Vanellus armatus	10-20 yrs
5104	Swallow-tailed gull	Creagrus furcatus	
5105	Laughing falcon	Herpetotheres cachinnans	
5106	White-tipped dove	Leptotila verreauxi	
5107	African blue tit	Cyanistes teneriffae	
5108	Eurasian three-toed woodpecker	Picoides tridactylus	
5109	Sharp-tailed sandpiper	Calidris acuminata	
5110	Golden-headed quetzal	Pharomachrus auriceps	
5111	Cape parrot	Poicephalus robustus	
5112	Bumblebee hummingbird	Selasphorus heloisa	
5113	Daurian jackdaw	Coloeus dauuricus	
5114	Bat Falcon	Falco rufigularis	12-18 yrs
5115	Baillon's crake	Zapornia pusilla	
5116	Spectacled Eider	Somateria fischeri	8 yrs
5117	Guinea turaco	Tauraco persa	
5118	Bronzed cowbird	Molothrus aeneus	
5119	Markham's storm petrel	Oceanodroma markhami	
5120	Pauraque	Nyctidromus albicollis	
5121	Golden-fronted woodpecker	Melanerpes aurifrons	
5122	Velvet scoter	Melanitta fusca	
5123	White-winged tern	Chlidonias leucopterus	
5124	African crake	Crecopsis egregia	
5125	African openbill	Anastomus lamelligerus	
5126	Black-headed heron	Ardea melanocephala	
5127	Black-and-chestnut eagle	Spizaetus isidori	
5128	Masked shrike	Lanius nubicus	
5129	Bay-breasted warbler	Setophaga castanea	
5130	Red-legged honeycreeper	Cyanerpes cyaneus	
5131	Sprague's Pipit	Anthus spragueii	
5132	Baird's sandpiper	Calidris bairdii	
5133	White-rumped sandpiper	Calidris fuscicollis	
5134	Elegant trogon	Trogon elegans	
5135	Cape petrel	Daption capense	
5136	Woodpecker finch	Camarhynchus pallidus	
5137	Magellanic woodpecker	Campephilus magellanicus	
5138	Pale-billed flowerpecker	Dicaeum erythrorhynchos	
5139	Noisy friarbird	Philemon corniculatus	
5140	Crab-Plover	Dromas ardeola	9.6 yrs
5141	Least grebe	Tachybaptus dominicus	
5142	Ashy drongo	Dicrurus leucophaeus	
5143	Imperial shag	Leucocarbo atriceps	
5144	Sooty falcon	Falco concolor	
5145	Greater thornbird	Phacellodomus ruber	
5146	Bridled tern	Onychoprion anaethetus	
5147	Masked duck	Nomonyx dominicus	
5148	Black-headed bunting	Emberiza melanocephala	
5149	Eurasian penduline tit	Remiz pendulinus	
5150	Swainson's warbler	Limnothlypis swainsonii	
5151	Australian hobby	Falco longipennis	
5152	Black-cowled oriole	Icterus prosthemelas	
5153	Malabar trogon	Harpactes fasciatus	
5154	African olive pigeon	Columba arquatrix	
5155	Marsh sandpiper	Tringa stagnatilis	
5156	Pied oystercatcher	Haematopus longirostris	
5157	Great slaty woodpecker	Mulleripicus pulverulentus	
5158	Northern giant petrel	Macronectes halli	
5159	Orange-fronted parakeet	Eupsittula canicularis	
5160	Yellow-bellied siskin	Spinus xanthogastrus	
5161	Chaco eagle	Buteogallus coronatus	
5162	Violet sabrewing	Campylopterus hemileucurus	
5163	Mitred parakeet	Psittacara mitratus	
5164	Woodchat shrike	Lanius senator	
5165	Green kingfisher	Chloroceryle americana	
5166	Long-billed thrasher	Toxostoma longirostre	
5167	Eurasian rock pipit	Anthus petrosus	
5168	Red-and-black grosbeak	Periporphyrus erythromelas	
5169	White-bellied go-away-bird	Crinifer leucogaster	
5170	Smith's longspur	Calcarius pictus	
5171	California gnatcatcher	Polioptila californica	
5172	Ringed Teal	Callonetta leucophrys	10-15 yrs
5173	Green aracari	Pteroglossus viridis	
5174	Green-headed tanager	Tangara seledon	
5175	Two-barred crossbill	Loxia leucoptera	
5176	Maguari stork	Ciconia maguari	
5177	Eastern nicator	Nicator gularis	
5178	Connecticut warbler	Oporornis agilis	
5179	White-cheeked turaco	Menelikornis leucotis	
5180	Arctic warbler	Phylloscopus borealis	
5181	MacGillivray's warbler	Geothlypis tolmiei	7 years
5182	Bristle-thighed curlew	Numenius tahitiensis	
5183	Rufous potoo	Nyctibius bracteatus	
5184	Chestnut-collared longspur	Calcarius ornatus	
5185	Tufted coquette	Lophornis ornatus	
5186	Lilac-crowned amazon	Amazona finschi	
5187	Guira cuckoo	Guira guira	
5188	Syrian woodpecker	Dendrocopos syriacus	
5189	Greater blue-eared starling	Lamprotornis chalybaeus	
5190	Siberian rubythroat	Calliope calliope	
5191	Crested quetzal	Pharomachrus antisianus	
5192	White-necked jacobin	Florisuga mellivora	
5193	Red-necked stint	Calidris ruficollis	
5194	Okinawa woodpecker	Dendrocopos noguchii	
5195	Saint Vincent amazon	Amazona guildingii	
5196	Red-capped manakin	Ceratopipra mentalis	
5197	Choco toucan	Ramphastos brevis	
5198	Wrentit	Chamaea fasciata	
5199	Plain prinia	Prinia inornata	
5200	Agami heron	Agamia agami	
5201	White-collared swift	Streptoprocne zonaris	
5202	Jungle owlet	Glaucidium radiatum	
5203	Scarlet-headed blackbird	Amblyramphus holosericeus	
5204	Red-billed firefinch	Lagonosticta senegala	
5205	Amazon kingfisher	Chloroceryle amazona	
5206	Siberian accentor	Prunella montanella	
5207	Abbott's booby	Papasula abbotti	
5208	Green-breasted mango	Anthracothorax prevostii	
5209	Hispaniolan trogon	Priotelus roseigaster	
5210	Striped Owl	Asio clamator	10-20 yrs
5211	Seaside sparrow	Ammospiza maritima	
5212	Heermann's gull	Larus heermanni	
5213	Jungle bush quail	Perdicula asiatica	
5214	Black-capped vireo	Vireo atricapilla	
5215	Blue-bellied parrot	Triclaria malachitacea	
5216	Horned guan	Oreophasis derbianus	
5217	Blue mockingbird	Melanotis caerulescens	
5218	Malayan night heron	Gorsachius melanolophus	
5219	Blue-gray tanager	Thraupis episcopus	
5220	Cuban tody	Todus multicolor	
5221	Antarctic tern	Sterna vittata	
5222	Hispaniolan amazon	Amazona ventralis	
5223	Tiny hawk	Accipiter superciliosus	
5224	Cinnamon bittern	Ixobrychus cinnamomeus	
5225	Terek sandpiper	Xenus cinereus	
5226	Long-tailed paradise whydah	Vidua paradisaea	
5227	Green-billed toucan	Ramphastos dicolorus	
5228	Pacific baza	Aviceda subcristata	
5229	Cape wagtail	Motacilla capensis	
5230	Slaty-backed gull	Larus schistisagus	
5231	Red-throated pipit	Anthus cervinus	
5232	Jamaican crow	Corvus jamaicensis	
5233	Squirrel cuckoo	Piaya cayana	
5234	Comb duck	Sarkidiornis sylvicola	
5235	Cream-colored courser	Cursorius cursor	
5236	Chinese pond heron	Ardeola bacchus	
5237	Orinoco goose	Neochen jubata	
5238	Zigzag heron	Zebrilus undulatus	
5239	Bare-throated bellbird	Procnias nudicollis	
5240	Japanese cormorant	Phalacrocorax capillatus	
5241	Tamaulipas crow	Corvus imparatus	
5242	Buff-bellied hummingbird	Amazilia yucatanensis	
5243	Temminck's stint	Calidris temminckii	
5244	Mangrove cuckoo	Coccyzus minor	
5245	White-eyed river martin	Pseudochelidon sirintarae	
5246	Baird's sparrow	Centronyx bairdii	
5247	Tawny pipit	Anthus campestris	
5248	Buller's albatross	Thalassarche bulleri	
5249	Floreana mockingbird	Mimus trifasciatus	
5250	Green warbler-finch	Certhidea olivacea	
5251	Elegant quail	Callipepla douglasii	
5252	Pallas's sandgrouse	Syrrhaptes paradoxus	
5253	Cattle tyrant	Machetornis rixosa	
5254	Maghreb magpie	Pica mauritanica	
5255	Red-headed myzomela	Myzomela erythrocephala	
5256	Madagascan fish eagle	Haliaeetus vociferoides	
5257	Red-crowned woodpecker	Melanerpes rubricapillus	
5258	Sind sparrow	Passer pyrrhonotus	
5259	White-winged parakeet	Brotogeris versicolurus	
5260	Pearl kite	Gampsonyx swainsonii	
5261	Upland goose	Chloephaga picta	
5262	Grey gull	Leucophaeus modestus	
5263	Bronze-winged parrot	Pionus chalcopterus	
5264	Hooded grebe	Podiceps gallardoi	
5265	Orange-breasted falcon	Falco deiroleucus	
5266	Canyon towhee	Melozone fusca	
5267	Nicobar megapode	Megapodius nicobariensis	
5268	Mindoro bleeding-heart	Gallicolumba platenae	
5269	White-winged snowfinch	Montifringilla nivalis	
5270	Cocoi heron	Ardea cocoi	
5271	Crested duck	Lophonetta specularioides	
5272	Collared crow	Corvus torquatus	
5273	Dusky warbler	Phylloscopus fuscatus	
5274	Xantus's hummingbird	Basilinna xantusii	
5275	Altamira oriole	Icterus gularis	
5276	Curl-crested aracari	Pteroglossus beauharnaisii	
5277	Long-billed murrelet	Brachyramphus perdix	
5278	Yellow grosbeak	Pheucticus chrysopeplus	
5279	Black-headed duck	Heteronetta atricapilla	
5280	White-eyed buzzard	Butastur teesa	
5281	Oriole blackbird	Gymnomystax mexicanus	
5282	Austral parakeet	Enicognathus ferrugineus	
5283	Little crake	Zapornia parva	
5284	Brown-throated parakeet	Eupsittula pertinax	
5285	Water thick-knee	Burhinus vermiculatus	
5286	Great tinamou	Tinamus major	
5287	Painted francolin	Francolinus pictus	
5288	Crested oropendola	Psarocolius decumanus	
5289	Cassin's vireo	Vireo cassinii	
5290	Varied bunting	Passerina versicolor	
5291	Elegant tern	Thalasseus elegans	
5292	Tricoloured munia	Lonchura malacca	
5293	White-Headed Woodpecker	Leuconotopicus albolarvatus	3-10 yrs
5294	Dusky-headed parakeet	Aratinga weddellii	
5295	Von der Decken's hornbill	Tockus deckeni	
5296	Sparkling violetear	Colibri coruscans	
5297	Scopoli's shearwater	Calonectris diomedea	
5298	Red-legged kittiwake	Rissa brevirostris	
5299	Storm's stork	Ciconia stormi	
5300	Trocaz pigeon	Columba trocaz	
5301	Ibisbill	Ibidorhyncha struthersii	
5302	Blue-winged parrotlet	Forpus xanthopterygius	
5303	Long-whiskered owlet	Xenoglaux loweryi	
5304	Greater kestrel	Falco rupicoloides	
5305	Yellow-faced parrot	Alipiopsitta xanthops	
5306	Araripe manakin	Antilophia bokermanni	
5307	Rufous-crowned sparrow	Aimophila ruficeps	3 years
5308	Vervain hummingbird	Mellisuga minima	
5309	Andean goose	Neochen melanoptera	
5310	Nilgiri wood pigeon	Columba elphinstonii	
5311	Hutton's vireo	Vireo huttoni	
5312	Brown-crested flycatcher	Myiarchus tyrannulus	
5313	Elegant crested tinamou	Eudromia elegans	
5314	Amazonian umbrellabird	Cephalopterus ornatus	
5315	Pallas's leaf warbler	Phylloscopus proregulus	
5316	Cape bulbul	Pycnonotus capensis	
5317	Calandra lark	Melanocorypha calandra	
5318	Vulturine parrot	Pyrilia vulturina	
5319	Northern red-billed hornbill	Tockus erythrorhynchus	
5320	Chatham albatross	Thalassarche eremita	
5321	Black-thighed falconet	Microhierax fringillarius	
5322	Grassland yellow finch	Sicalis luteola	
5323	Pavonine quetzal	Pharomachrus pavoninus	
5324	Greater hoopoe-lark	Alaemon alaudipes	
5325	Yellow-throated bulbul	Pycnonotus xantholaemus	
5326	Purple-throated carib	Eulampis jugularis	
5327	Ashy-faced owl	Tyto glaucops	
5328	Island scrub jay	Aphelocoma insularis	
5329	Cuban crow	Corvus nasicus	
5330	Dusky-capped flycatcher	Myiarchus tuberculifer	
5331	White-faced storm petrel	Pelagodroma marina	
5332	Rock bunting	Emberiza cia	
5333	Maroon-bellied parakeet	Pyrrhura frontalis	
5334	Scaly-naped pigeon	Patagioenas squamosa	
5335	Antillean crested hummingbird	Orthorhyncus cristatus	
5336	Slaty egret	Egretta vinaceigula	
5337	Japanese grosbeak	Eophona personata	
5338	Crimson-backed sunbird	Leptocoma minima	
5339	Rustic bunting	Emberiza rustica	
5340	Gunnison Sage-Grouse	Centrocercus minimus	1-9 yrs
5341	Fuegian steamer duck	Tachyeres pteneres	
5342	Invisible rail	Habroptila wallacii	
5343	Little bunting	Emberiza pusilla	
5344	Lava gull	Leucophaeus fuliginosus	
5345	Arizona woodpecker	Leuconotopicus arizonae	
5346	Savi's warbler	Locustella luscinioides	
5347	Azure jay	Cyanocorax caeruleus	
5348	Green Broadbill	Calyptomena viridis	6-19 yrs
5349	Bare-throated tiger heron	Tigrisoma mexicanum	
5350	Fan-tailed cuckoo	Cacomantis flabelliformis	
5351	Palawan hornbill	Anthracoceros marchei	
5352	Sultan tit	Melanochlora sultanea	
5353	Rufous-tailed hummingbird	Amazilia tzacatl	
5354	Paradise tanager	Tangara chilensis	
5355	Audubon's oriole	Icterus graduacauda	
5356	Black-capped petrel	Pterodroma hasitata	
5357	Lesser grey shrike	Lanius minor	
5358	Crimson-collared grosbeak	Rhodothraupis celaeno	
5359	Common cactus finch	Geospiza scandens	
5360	Light-mantled albatross	Phoebetria palpebrata	
5361	Yellow-shouldered amazon	Amazona barbadensis	
5362	Metallic starling	Aplonis metallica	
5363	Blue-bellied roller	Coracias cyanogaster	
5364	Red-throated caracara	Ibycter americanus	
5365	Australasian grebe	Tachybaptus novaehollandiae	
5366	White-eyed parakeet	Psittacara leucophthalmus	
5367	Japanese night heron	Gorsachius goisagi	
5368	Yellow-eared parrot	Ognorhynchus icterotis	
5369	Bare-necked umbrellabird	Cephalopterus glabricollis	
5370	Brazilian merganser	Mergus octosetaceus	
5371	Black-and-white-casqued hornbill	Bycanistes subcylindricus	
5372	Pale-billed woodpecker	Campephilus guatemalensis	
5373	Least auklet	Aethia pusilla	
5374	Aquatic warbler	Acrocephalus paludicola	
5375	Parakeet auklet	Aethia psittacula	
5376	Plate-billed mountain toucan	Andigena laminirostris	
5377	Oriental skylark	Alauda gulgula	
5378	Saltmarsh sparrow	Ammospiza caudacuta	
5379	African silverbill	Euodice cantans	
5380	Galápagos mockingbird	Mimus parvulus	
5381	Bridled titmouse	Baeolophus wollweberi	
5382	Crested guan	Penelope purpurascens	
5383	Brown-backed mockingbird	Mimus dorsalis	
5384	African oystercatcher	Haematopus moquini	
5385	Black-and-white owl	Strix nigrolineata	
5386	Collared falconet	Microhierax caerulescens	
5387	Crowned hornbill	Lophoceros alboterminatus	
5388	Olive warbler	Peucedramus taeniatus	
5389	Blue-throated bee-eater	Merops viridis	
5390	Black-billed amazon	Amazona agilis	
5391	Yellow-billed amazon	Amazona collaria	
5392	Brown jay	Psilorhinus morio	
5393	Gould's petrel	Pterodroma leucoptera	
5394	Black-faced ibis	Theristicus melanopis	
5395	Booted warbler	Iduna caligata	
5396	Wandering tattler	Tringa incana	
5397	Yellow-billed cardinal	Paroaria capitata	
5398	Large grey babbler	Argya malcolmi	
5399	Cinereous mourner	Laniocera hypopyrra	
5400	Wrinkled hornbill	Rhabdotorrhinus corrugatus	
5401	Barred warbler	Curruca nisoria	
5402	Mountain caracara	Phalcoboenus megalopterus	
5403	Madeira firecrest	Regulus madeirensis	
5404	Ruddy quail-dove	Geotrygon montana	
5405	Lesser striped swallow	Cecropis abyssinica	
5406	Antillean nighthawk	Chordeiles gundlachii	
5407	Cassin's auklet	Ptychoramphus aleuticus	
5408	Brazilian teal	Amazonetta brasiliensis	
5409	Ruby-topaz hummingbird	Chrysolampis mosquitus	
5410	Inca jay	Cyanocorax yncas	11.5 years
5411	Common rock thrush	Monticola saxatilis	
5412	Green honeycreeper	Chlorophanes spiza	
5413	Surfbird	Calidris virgata	
5414	Western Bonelli's warbler	Phylloscopus bonelli	
5415	Tropical screech owl	Megascops choliba	
5416	Spectacled parrotlet	Forpus conspicillatus	
5417	Long-tailed mockingbird	Mimus longicaudatus	
5418	Jambu Fruit Dove	Ptilinopus jambu	4-12 yrs
5419	Mexican parrotlet	Forpus cyanopygius	
5420	White-tipped quetzal	Pharomachrus fulgidus	
5421	Crimson topaz	Topaza pella	
5422	Variable hawk	Geranoaetus polyosoma	
5423	Green avadavat	Amandava formosa	
5424	Straw-headed bulbul	Pycnonotus zeylanicus	
5425	Sharp-beaked ground finch	Geospiza difficilis	
5426	Southern fulmar	Fulmarus glacialoides	
5427	Ayres's hawk-eagle	Hieraaetus ayresii	
5428	White-chinned petrel	Procellaria aequinoctialis	
5429	Helmeted curassow	Pauxi pauxi	
5430	Hermit warbler	Setophaga occidentalis	
5431	Bahama mockingbird	Mimus gundlachii	
5432	Sagebrush sparrow	Artemisiospiza nevadensis	
5433	Couch's kingbird	Tyrannus couchii	
5434	White-bellied treepie	Dendrocitta leucogastra	
5435	Crane hawk	Geranospiza caerulescens	
5436	White-crowned parrot	Pionus senilis	
5437	Crested owl	Lophostrix cristata	
5438	Giant coot	Fulica gigantea	
5439	Blue-bearded bee-eater	Nyctyornis athertoni	
5440	Green-backed firecrown	Sephanoides sephaniodes	
5441	Juan Fernández firecrown	Sephanoides fernandensis	
5442	Buff-necked ibis	Theristicus caudatus	
5443	Cape cormorant	Phalacrocorax capensis	
5444	Rock martin	Ptyonoprogne fuligula	
5445	Red warbler	Cardellina rubra	
5446	Small tree finch	Camarhynchus parvulus	
5447	Piapiac	Ptilostomus afer	
5448	Mottled owl	Strix virgata	
5449	Stresemann's bristlefront	Merulaxis stresemanni	
5450	Giant cowbird	Molothrus oryzivorus	
5451	Salvin's albatross	Thalassarche salvini	
5452	Greater ani	Crotophaga major	
5453	Grey-winged trumpeter	Psophia crepitans	
5454	West Indian whistling duck	Dendrocygna arborea	
5455	Crested bobwhite	Colinus cristatus	
5456	Schalow's turaco	Tauraco schalowi	
5457	Short-tailed pygmy tyrant	Myiornis ecaudatus	
5458	Plush-crested jay	Cyanocorax chrysops	
5459	Spangled cotinga	Cotinga cayana	
5460	Savanna hawk	Buteogallus meridionalis	
5461	Armenian gull	Larus armenicus	
5462	Desert wheatear	Oenanthe deserti	
5463	Titicaca grebe	Rollandia microptera	
5464	Rufous fantail	Rhipidura rufifrons	
5465	Orange-fronted yellow finch	Sicalis columbiana	
5466	Melodious warbler	Hippolais polyglotta	
5467	Ridgway's hawk	Buteo ridgwayi	
5468	Corsican nuthatch	Sitta whiteheadi	
5469	Flame-colored tanager	Piranga bidentata	
5470	Palm crow	Corvus palmarum	
5471	Fiery-throated hummingbird	Panterpe insignis	
5472	Sinaloa crow	Corvus sinaloae	
5473	Negros fruit dove	Ptilinopus arcanus	
5474	Desert lark	Ammomanes deserti	
5475	Malabar barbet	Psilopogon malabaricus	
5476	Chalk-browed mockingbird	Mimus saturninus	
5477	Lucy's warbler	Leiothlypis luciae	6 years
5478	Yellow-chevroned parakeet	Brotogeris chiriri	
5479	Black jacobin	Florisuga fusca	
5480	Black turnstone	Arenaria melanocephala	
5481	Ashy woodswallow	Artamus fuscus	
5482	Thick-billed longspur	Rhynchophanes mccownii	
5483	Village indigobird	Vidua chalybeata	
5484	Brown Teal	Anas chlorotis	21 yrs
5485	Bald parrot	Pyrilia aurantiocephala	
5486	Yellow-browed bulbul	Acritillas indica	
5487	Plumbeous vireo	Vireo plumbeus	
5488	Black-legged seriema	Chunga burmeisteri	
5489	Northern screamer	Chauna chavaria	
5490	Vegetarian finch	Platyspiza crassirostris	
5491	Fiery-billed aracari	Pteroglossus frantzii	
5492	Virginia's warbler	Leiothlypis virginiae	
5493	Small ground finch	Geospiza fuliginosa	
5494	Cozumel thrasher	Toxostoma guttatum	
5495	Black-tailed gnatcatcher	Polioptila melanura	
5496	Double-striped thick-knee	Burhinus bistriatus	
5497	Bendire's thrasher	Toxostoma bendirei	
5498	Musician wren	Cyphorhinus arada	
5499	Scripps's murrelet	Synthliboramphus scrippsi	
5500	White-browed bulbul	Pycnonotus luteolus	
5501	Sungrebe	Heliornis fulica	
5502	Sulu bleeding-heart	Gallicolumba menagei	
5503	Brown dipper	Cinclus pallasii	
5504	Red-necked amazon	Amazona arausiaca	
5505	Asian barred owlet	Glaucidium cuculoides	
5506	Black-faced grosbeak	Caryothraustes poliogaster	
5507	Yellow-green grosbeak	Caryothraustes canadensis	
5508	Long-tailed sylph	Aglaiocercus kingii	
5509	Amazonian motmot	Momotus momota	
5510	Mountain pygmy owl	Glaucidium gnoma	
5511	Green-throated carib	Eulampis holosericeus	
5512	Saxaul sparrow	Passer ammodendri	
5513	Blue Swallow	Hirundo atrocaerulea	
5514	Narcissus flycatcher	Ficedula narcissina	
5515	Cliff swallow	Petrochelidon pyrrhonota	
5516	Black-whiskered vireo	Vireo altiloquus	
5517	Flesh-footed shearwater	Ardenna carneipes	
5518	Tamaulipas pygmy owl	Glaucidium sanchezi	
5519	Blue dacnis	Dacnis cayana	
5520	Antarctic prion	Pachyptila desolata	
5521	Pearly-eyed thrasher	Margarops fuscatus	
5522	Zapata rail	Cyanolimnas cerverai	
5523	Blue ground dove	Claravis pretiosa	
5524	Golden-tailed sapphire	Chrysuronia oenone	
5525	Temminck's lark	Eremophila bilopha	
5526	Golden-capped parakeet	Aratinga auricapillus	
5527	Cuban emerald	Riccordia ricordii	
5528	Blue-black grassquit	Volatinia jacarina	
5529	Blue-billed curassow	Crax alberti	
5530	Painted parakeet	Pyrrhura picta	
5531	Yellow-crowned woodpecker	Leiopicus mahrattensis	
5532	Red-tailed shrike	Lanius phoenicuroides	
5533	Grey tinamou	Tinamus tao	
5534	Black-throated mango	Anthracothorax nigricollis	
5535	Lucifer sheartail	Calothorax lucifer	4 years
5536	Yellow-eyed junco	Junco phaeonotus	
5537	Yellow-billed pintail	Anas georgica	
5538	Orange-chinned parakeet	Brotogeris jugularis	
5539	Flying steamer duck	Tachyeres patachonicus	
5540	Broad-billed roller	Eurystomus glaucurus	
5541	Sombre tit	Poecile lugubris	
5542	Ground tit	Pseudopodoces humilis	
5543	Fairy prion	Pachyptila turtur	
5544	Elegant tit	Pardaliparus elegans	
5545	Olive sparrow	Arremonops rufivirgatus	
5546	African firefinch	Lagonosticta rubricata	
5547	Zino's petrel	Pterodroma madeira	
5548	Plain pigeon	Patagioenas inornata	
5549	Rufescent tiger heron	Tigrisoma lineatum	
5550	Dusky crag martin	Ptyonoprogne concolor	
5551	Yellow-rumped cacique	Cacicus cela	
5552	Bare-shanked screech owl	Megascops clarkii	
5553	Spotted rail	Pardirallus maculatus	
5554	Swallow-tailed hummingbird	Eupetomena macroura	
5555	Long-tailed potoo	Nyctibius aethereus	
5556	Rosy-billed pochard	Netta peposaca	
5557	Black-collared hawk	Busarellus nigricollis	
5558	Painted whitestart	Myioborus pictus	
5559	Black harrier	Circus maurus	
5560	Iberian green woodpecker	Picus sharpei	
5561	Chiloé wigeon	Mareca sibilatrix	
5562	Common woodshrike	Tephrodornis pondicerianus	
5563	Black-and-orange flycatcher	Ficedula nigrorufa	
5564	Philippine falconet	Microhierax erythrogenys	
5565	Red-necked nightjar	Caprimulgus ruficollis	
5566	Orange-breasted bunting	Passerina leclancherii	
5567	Golden-plumed parakeet	Leptosittaca branickii	
5568	African marsh harrier	Circus ranivorus	
5569	Bulwer's petrel	Bulweria bulwerii	
5570	Red-billed pigeon	Patagioenas flavirostris	
5571	Ochre-marked parakeet	Pyrrhura cruentata	
5572	Yellow-faced parrotlet	Forpus xanthops	
5573	Rufous-tailed jacamar	Galbula ruficauda	
5574	Scaly-headed parrot	Pionus maximiliani	
5575	Crissal thrasher	Toxostoma crissale	
5576	Long-tailed meadowlark	Leistes loyca	
5577	Cape spurfowl	Pternistis capensis	
5578	Crimson-crested woodpecker	Campephilus melanoleucos	
5579	American pygmy kingfisher	Chloroceryle aenea	
5580	Slaty-breasted rail	Lewinia striata	
5581	Great Nicobar serpent eagle	Spilornis klossi	
5582	Pheasant cuckoo	Dromococcyx phasianellus	
5583	Bare-faced curassow	Crax fasciolata	
5584	Bar-shouldered dove	Geopelia humeralis	
5585	Plain parakeet	Brotogeris tirica	
5586	Black-faced grassquit	Melanospiza bicolor	
5587	Vinaceous-breasted amazon	Amazona vinacea	
5588	Red-faced malkoha	Phaenicophaeus pyrrhocephalus	
5589	Double-toothed kite	Harpagus bidentatus	
5590	Belcher's gull	Larus belcheri	
6022	Bar-tailed lark	Ammomanes cinctura	
5591	Long-billed hermit	Phaethornis longirostris	
5592	Saffron toucanet	Pteroglossus bailloni	
5593	Ashy-crowned sparrow-lark	Eremopterix griseus	
5594	Social flycatcher	Myiozetetes similis	
5595	Blue-and-white swallow	Notiochelidon cyanoleuca	
5596	Cuban black hawk	Buteogallus gundlachii	
5597	Gran Canaria blue chaffinch	Fringilla polatzeki	
5598	Brown violetear	Colibri delphinae	
5599	Pied wheatear	Oenanthe pleschanka	
5600	Mangrove swallow	Tachycineta albilinea	
5601	White-booted racket-tail	Ocreatus underwoodii	
5602	Yellow-green vireo	Vireo flavoviridis	
5603	Yellow-faced grassquit	Tiaris olivaceus	
5604	Red-crested korhaan	Lophotis ruficrista	
5605	Pied-winged swallow	Hirundo leucosoma	
5606	Purple honeycreeper	Cyanerpes caeruleus	
5607	Chestnut-bellied seed finch	Sporophila angolensis	
5608	Little tinamou	Crypturellus soui	
5609	Festive amazon	Amazona festiva	
5610	Chestnut-eared aracari	Pteroglossus castanotis	
5611	Blue-chinned sapphire	Chlorestes notata	
5612	Junin grebe	Podiceps taczanowskii	
5613	Racket-tailed roller	Coracias spatulatus	
5614	Beach stone-curlew	Esacus magnirostris	
5615	Sykes's warbler	Iduna rama	
5616	White-rumped swallow	Tachycineta leucorrhoa	
5617	Great grebe	Podiceps major	
5618	White-throated swallow	Hirundo albigularis	
5619	Hooded siskin	Spinus magellanicus	
5620	Yellow-footed gull	Larus livens	
5621	Clamorous reed warbler	Acrocephalus stentoreus	
5622	Snoring rail	Aramidopsis plateni	
5623	White-naped tit	Machlolophus nuchalis	
5624	Dolphin gull	Leucophaeus scoresbii	
5625	Bell's sparrow	Artemisiospiza belli	
5626	Tooth-billed hummingbird	Androdon aequatorialis	
5627	Great-winged petrel	Pterodroma macroptera	
5628	Silvery pigeon	Columba argentina	
5629	Great stone-curlew	Esacus recurvirostris	
5630	Green ibis	Mesembrinibis cayennensis	
5631	Rock shag	Phalacrocorax magellanicus	
5632	Ruddy-headed goose	Chloephaga rubidiceps	
5633	African pitta	Pitta angolensis	
5634	White-throated hummingbird	Leucochloris albicollis	
5635	White-shouldered ibis	Pseudibis davisoni	
5636	Asian house martin	Delichon dasypus	
5637	Jamaican tody	Todus todus	
5638	Atlantic petrel	Pterodroma incerta	
5639	Beautiful nuthatch	Sitta formosa	
5640	Wattled curassow	Crax globulosa	
5641	Gray-crowned rosy finch	Leucosticte tephrocotis	
5642	African river martin	Pseudochelidon eurystomina	
5643	Spotted harrier	Circus assimilis	
5644	Sulphur-bellied flycatcher	Myiodynastes luteiventris	
5645	Green hermit	Phaethornis guy	
5646	Hispaniolan parakeet	Psittacara chloropterus	
5647	West Peruvian dove	Zenaida meloda	
5648	Barred antshrike	Thamnophilus doliatus	
5649	Southern pochard	Netta erythrophthalma	
5650	Congo serpent eagle	Circaetus spectabilis	
5651	Blue-Crowned Motmot	Momotus coeruliceps	20 yrs
5652	Rufous motmot	Baryphthengus martii	
5653	Acacia pied barbet	Tricholaema leucomelas	
5654	Peach-fronted parakeet	Eupsittula aurea	
5655	Red-spectacled amazon	Amazona pretrei	
5656	Rufous-breasted hermit	Glaucis hirsutus	
5657	African dwarf kingfisher	Ispidina lecontei	
5658	Red-necked spurfowl	Pternistis afer	
5659	Yellow-billed teal	Anas flavirostris	
5660	Hispaniolan woodpecker	Melanerpes striatus	
5661	Red-legged cormorant	Phalacrocorax gaimardi	
5662	Black rosy finch	Leucosticte atrata	
5663	River warbler	Locustella fluviatilis	
5664	Philippine bulbul	Hypsipetes philippinus	
5665	Pied falconet	Microhierax melanoleucos	
5666	Black-and-red broadbill	Cymbirhynchus macrorhynchos	
5667	Rufous-legged owl	Strix rufipes	
5668	Whiskered auklet	Aethia pygmaea	
5669	Erckel's spurfowl	Pternistis erckelii	
5670	LeConte's thrasher	Toxostoma lecontei	
5671	Maccoa duck	Oxyura maccoa	
5672	White-banded mockingbird	Mimus triurus	
5673	Rufous-tailed hawk	Buteo ventralis	
5674	Trinidad piping guan	Pipile pipile	
5675	Red-faced cormorant	Phalacrocorax urile	
5676	Long-winged harrier	Circus buffoni	
5677	Yellow-bellied tit	Pardaliparus venustulus	
5678	Hume's leaf warbler	Phylloscopus humei	
5679	Brown-capped rosy finch	Leucosticte australis	
5680	Banded bay cuckoo	Cacomantis sonneratii	
5681	Bearded bellbird	Procnias averano	
5682	Dusky parrot	Pionus fuscus	
5683	Tropical parula	Setophaga pitiayumi	
5684	Plumbeous kite	Ictinia plumbea	
5685	Western spindalis	Spindalis zena	
5686	Black saw-wing	Psalidoprocne pristoptera	
5687	Patagonian tinamou	Tinamotis ingoufi	
5688	Lanceolated warbler	Locustella lanceolata	
5689	Black curassow	Crax alector	
5690	White-eyed gull	Ichthyaetus leucophthalmus	
5691	Yellow-backed oriole	Icterus chrysater	
5692	Blue nuthatch	Sitta azurea	
5693	Black-billed mountain toucan	Andigena nigrirostris	
5694	Guadalupe murrelet	Synthliboramphus hypoleucus	
5695	Streak-backed oriole	Icterus pustulatus	
5696	Bimaculated lark	Melanocorypha bimaculata	
5697	Masked trogon	Trogon personatus	
5698	Sayaca tanager	Thraupis sayaca	
5699	Crested coua	Coua cristata	
5700	Grey-headed gull	Chroicocephalus cirrocephalus	
5701	Bahama woodstar	Nesophlox evelynae	
5702	Kelp goose	Chloephaga hybrida	
5703	Grey-headed chachalaca	Ortalis cinereiceps	
5704	Long-tailed manakin	Chiroxiphia linearis	
5705	White-tipped sicklebill	Eutoxeres aquila	
5706	Black-chinned sparrow	Spizella atrogularis	
5707	Violet-tailed sylph	Aglaiocercus coelestis	
5708	Puna ibis	Plegadis ridgwayi	
5709	Iberian chiffchaff	Phylloscopus ibericus	
5710	Silver teal	Spatula versicolor	
5711	Smoky-brown woodpecker	Leuconotopicus fumigatus	
5712	African red-eyed bulbul	Pycnonotus nigricans	
5713	Horned coot	Fulica cornuta	
5714	Ultramarine grosbeak	Cyanoloxia brissonii	
5715	Antillean piculet	Nesoctites micromegas	
5716	African pied hornbill	Lophoceros fasciatus	
5717	Masked water tyrant	Fluvicola nengeta	
5718	Band-rumped storm petrel	Oceanodroma castro	
5719	Spectacled petrel	Procellaria conspicillata	
5720	Indian bush lark	Mirafra erythroptera	
5721	Violaceous euphonia	Euphonia violacea	
5722	Black-and-yellow broadbill	Eurylaimus ochromalus	
5723	Ocellated quail	Cyrtonyx ocellatus	
5724	Mangrove finch	Camarhynchus heliobates	
5725	Collared trogon	Trogon collaris	
5726	Pinnated bittern	Botaurus pinnatus	
5727	Picazuro pigeon	Patagioenas picazuro	
5728	Blue-cheeked amazon	Amazona dufresniana	
5729	Horsfield's bush lark	Mirafra javanica	
5730	Pompadour cotinga	Xipholena punicea	
5731	Olrog's gull	Larus atlanticus	
5732	Australian reed warbler	Acrocephalus australis	
5733	Cinereous harrier	Circus cinereus	
5734	Grey-necked rockfowl	Picathartes oreas	
5735	Grass wren	Cistothorus platensis	
5736	White-throated hawk	Buteo albigula	
5737	Brown-chested martin	Progne tapera	
5738	Scaled pigeon	Patagioenas speciosa	
5739	Olive ibis	Bostrychia olivacea	
5740	West Indian woodpecker	Melanerpes superciliaris	
5741	Swainson's spurfowl	Pternistis swainsonii	
5742	Red-faced warbler	Cardellina rubrifrons	
5743	Chilean seaside cinclodes	Cinclodes nigrofumosus	
5744	Christmas shearwater	Puffinus nativitatis	
5745	Fiery topaz	Topaza pyra	
5746	Transvolcanic jay	Aphelocoma ultramarina	17.5 years
5747	Meller's duck	Anas melleri	
5748	Bare-faced ibis	Phimosus infuscatus	
5749	Canary Islands chiffchaff	Phylloscopus canariensis	
5750	Fulvous owl	Strix fulvescens	
5751	Yellow-necked spurfowl	Pternistis leucoscepus	
5752	Green-crowned brilliant	Heliodoxa jacula	
5753	Black-backed puffback	Dryoscopus cubla	
5754	Chilean mockingbird	Mimus thenca	
5755	Mongolian finch	Bucanetes mongolicus	
5756	Eastern yellow-billed hornbill	Tockus flavirostris	
5757	Hooded grosbeak	Hesperiphona abeillei	
5758	Pale-vented pigeon	Patagioenas cayennensis	
5759	Red-legged thrush	Turdus plumbeus	
5760	Violet-crowned hummingbird	Leucolia violiceps	
5761	Turquoise-winged parrotlet	Forpus spengeli	
5762	Andean motmot	Momotus aequatorialis	
5763	Mascarene martin	Phedina borbonica	
5764	Pied heron	Egretta picata	
5765	Singing quail	Dactylortyx thoracicus	
5766	West Mexican chachalaca	Ortalis poliocephala	
5767	Brazilian tanager	Ramphocelus bresilius	
5768	Green-and-rufous kingfisher	Chloroceryle inda	
5769	Crimson-rumped toucanet	Aulacorhynchus haematopygus	
5770	Black-necked aracari	Pteroglossus aracari	
5771	Yucatan amazon	Amazona xantholora	
5772	Lilac-tailed parrotlet	Touit batavicus	
5773	Speckled chachalaca	Ortalis guttata	
5774	Andean potoo	Nyctibius maculosus	
5775	Black-headed bulbul	Brachypodius melanocephalos	
5776	Whistling heron	Syrigma sibilatrix	
5777	Ivory-billed aracari	Pteroglossus azara	
5778	Great thrush	Turdus fuscater	
5779	Barbados bullfinch	Loxigilla barbadensis	
5780	Yellow-bellied warbler	Abroscopus superciliaris	
5781	Rose-fronted parakeet	Pyrrhura roseifrons	
5782	Chilean skua	Stercorarius chilensis	
5783	Nilgiri laughingthrush	Montecincla cachinnans	
5784	White-rumped hawk	Parabuteo leucorrhous	
5785	Crested Bellbird	Oreoica gutturalis	
5786	Seychelles warbler	Acrocephalus sechellensis	
5787	Radde's warbler	Phylloscopus schwarzi	
5788	Natal spurfowl	Pternistis natalensis	
5789	Caribbean dove	Leptotila jamaicensis	
5790	Fischer's turaco	Tauraco fischeri	
5791	Southern black tit	Melaniparus niger	
5792	Rose-throated tanager	Piranga roseogularis	
5793	Slender-billed parakeet	Enicognathus leptorhynchus	
5794	Helmet vanga	Euryceros prevostii	
5795	Banded quail	Philortyx fasciatus	
5796	Blaze-winged parakeet	Pyrrhura devillei	
5797	Orange bullfinch	Pyrrhula aurantiaca	
5798	Grace's warbler	Setophaga graciae	
5799	Jamaican owl	Pseudoscops grammicus	
5800	Plain-breasted ground dove	Columbina minuta	
5801	Lesser Antillean bullfinch	Loxigilla noctis	
5802	White-browed meadowlark	Leistes superciliaris	
5803	McKay's bunting	Plectrophenax hyperboreus	
5804	Horned curassow	Pauxi unicornis	
5805	Cream-colored woodpecker	Celeus flavus	
5806	Toucan barbet	Semnornis ramphastinus	
5807	Red shoveler	Spatula platalea	
5809	Blue-faced parrotfinch	Erythrura trichroa	
5810	White woodpecker	Melanerpes candidus	
5811	White-winged potoo	Nyctibius leucopterus	
5812	Key West quail-dove	Geotrygon chrysia	
5813	Thick-billed flowerpecker	Dicaeum agile	
5814	Lance-tailed manakin	Chiroxiphia lanceolata	
5815	Long-tailed ground roller	Uratelornis chimaera	
5816	Fairy flycatcher	Stenostira scita	
5817	Many-colored rush tyrant	Tachuris rubrigastra	
5818	Blue-black grosbeak	Cyanocompsa cyanoides	
5819	Patagonian mockingbird	Mimus patagonicus	
5820	Red-headed barbet	Eubucco bourcierii	
5821	Guianan toucanet	Selenidera piperivora	
5822	Rufous-crested coquette	Lophornis delattrei	
5823	Collared forest falcon	Micrastur semitorquatus	
5824	Black caracara	Daptrius ater	
5825	Red-necked woodpecker	Campephilus rubricollis	
5826	Blue-and-white mockingbird	Melanotis hypoleucus	
5827	Bernier's teal	Anas bernieri	
5828	Lesser blue-eared starling	Lamprotornis chloropterus	
5829	Desert sparrow	Passer simplex	
5830	Blue-throated piping guan	Pipile cumanensis	
5831	Austral thrush	Turdus falcklandii	
5832	Crowned sandgrouse	Pterocles coronatus	
5833	Orange-backed troupial	Icterus croconotus	
5834	Pin-striped tit-babbler	Mixornis gularis	
5835	Purplish-backed jay	Cyanocorax beecheii	
5836	Red-ruffed fruitcrow	Pyroderus scutatus	
5837	Brown-hooded gull	Chroicocephalus maculipennis	
5838	Tucumán amazon	Amazona tucumana	
5839	Dusky-billed parrotlet	Forpus modestus	
5840	Senegal thick-knee	Burhinus senegalensis	
5841	Medium tree finch	Camarhynchus pauper	
5842	Cuban grassquit	Phonipara canora	
5843	Puna teal	Spatula puna	
5844	Ashy-headed goose	Chloephaga poliocephala	
5845	Chubut steamer duck	Tachyeres leucocephalus	
5846	Melodious blackbird	Dives dives	
5847	Golden-tailed woodpecker	Campethera abingoni	
5848	Caribbean martin	Progne dominicensis	
5849	Seven-colored tanager	Tangara fastuosa	
5850	Powerful woodpecker	Campephilus pollens	
5851	Red-capped cardinal	Paroaria gularis	
5852	Yellow-knobbed curassow	Crax daubentoni	
5853	Jerdon's nightjar	Caprimulgus atripennis	
5854	Solitary tinamou	Tinamus solitarius	
5855	Rose-bellied bunting	Passerina rositae	
5856	Grey-breasted mountain toucan	Andigena hypoglauca	
5857	Silvery grebe	Podiceps occipitalis	
5858	Blue petrel	Halobaena caerulea	
5859	Scarlet-rumped tanager	Ramphocelus passerinii	
5860	Chestnut-headed oropendola	Psarocolius wagleri	
5861	Blue-throated toucanet	Aulacorhynchus caeruleogularis	
5862	Yellow-eared toucanet	Selenidera spectabilis	
5863	Jamaican mango	Anthracothorax mango	
5864	Golden-olive woodpecker	Colaptes rubiginosus	
5865	African blue flycatcher	Elminia longicauda	
5866	Sapayoa	Sapayoa aenigma	
5867	Rainbow starfrontlet	Coeligena iris	
5868	Collared plover	Charadrius collaris	
5869	Buff-collared nightjar	Antrostomus ridgwayi	
5870	Chilean tinamou	Nothoprocta perdicaria	
5871	Blue-headed quail-dove	Starnoenas cyanocephala	
5872	Blue-naped chlorophonia	Chlorophonia cyanea	
5873	Soft-plumaged petrel	Pterodroma mollis	
5874	Crowned woodnymph	Thalurania colombica	
5875	Razor-billed curassow	Mitu tuberosum	
5876	Buller's shearwater	Ardenna bulleri	
5877	Blue-eyed ground dove	Columbina cyanopis	
5878	Millerbird	Acrocephalus familiaris	
5879	Marbled wood quail	Odontophorus gujanensis	
5880	Black-backed oriole	Icterus abeillei	
5881	Cinnamon hummingbird	Amazilia rutila	
5882	Bahama swallow	Tachycineta cyaneoviridis	
5883	Andean flicker	Colaptes rupicola	
5884	White-collared kite	Leptodon forbesi	
5885	Grey-breasted parakeet	Pyrrhura griseipectus	
5886	Grey-cheeked parakeet	Brotogeris pyrrhoptera	
5887	Short-tailed parrot	Graydidascalus brachyurus	
5888	Sombre greenbul	Andropadus importunus	
5889	Turquoise jay	Cyanolyca turcosa	
5890	Grey warbler-finch	Certhidea fusca	
5891	Chaco chachalaca	Ortalis canicollis	
5892	Grey-headed bulbul	Brachypodius priocephalus	
5893	Hawaiʻi ʻakepa	Loxops coccineus	
5894	Sulphur-breasted parakeet	Aratinga maculata	
5895	Kittlitz's murrelet	Brachyramphus brevirostris	
5896	Black-crowned sparrow-lark	Eremopterix nigriceps	
5897	Red-winged tinamou	Rhynchotus rufescens	
5898	Barred forest falcon	Micrastur ruficollis	
5899	Black-fronted piping guan	Pipile jacutinga	
5900	Cinnamon-breasted bunting	Emberiza tahapisi	
5901	Great lizard cuckoo	Coccyzus merlini	
5902	Slaty-tailed trogon	Trogon massena	
5903	Plain xenops	Xenops minutus	
5904	Bank cormorant	Phalacrocorax neglectus	
5905	Wire-tailed manakin	Pipra filicauda	
5906	Guadalupe junco	Junco insularis	
5907	Fernandina's flicker	Colaptes fernandinae	
5908	Greater pewee	Contopus pertinax	
5909	Thick-billed euphonia	Euphonia laniirostris	
5910	Marshall's iora	Aegithina nigrolutea	
5911	Red-bellied grackle	Hypopyrrhus pyrohypogaster	
5912	Variegated flycatcher	Empidonomus varius	
5913	Red-cowled cardinal	Paroaria dominicana	
5914	Bronze-winged duck	Speculanas specularis	
5915	Tawny-faced quail	Rhynchortyx cinctus	
5916	Maroon-fronted parrot	Rhynchopsitta terrisi	
5917	White-tufted grebe	Rollandia rolland	
5918	Antillean mango	Anthracothorax dominicus	
5919	Fork-tailed storm petrel	Oceanodroma furcata	
5920	Bannerman's turaco	Tauraco bannermani	
5921	African black swift	Apus barbatus	
5922	Purple-throated fruitcrow	Querula purpurata	
5923	Plumbeous ibis	Theristicus caerulescens	
5924	Broad-billed tody	Todus subulatus	
5925	Indian scimitar babbler	Pomatorhinus horsfieldii	
5926	Stresemann's bushcrow	Zavattariornis stresemanni	
5927	White-fronted falconet	Microhierax latifrons	
5928	Yellow-browed tit	Sylviparus modestus	
5929	Saw-billed hermit	Ramphodon naevius	
5930	Capped heron	Pilherodius pileatus	
5931	Djibouti spurfowl	Pternistis ochropectus	
5932	Yellow-rumped flycatcher	Ficedula zanthopygia	
5933	Black-chested jay	Cyanocorax affinis	
5934	Andean coot	Fulica ardesiaca	
5935	Yellow-bellied elaenia	Elaenia flavogaster	
5936	Unicolored jay	Aphelocoma unicolor	
5937	Yellow-hooded blackbird	Chrysomus icterocephalus	
5938	Thick-billed kingbird	Tyrannus crassirostris	
5939	Purple-winged ground dove	Paraclaravis geoffroyi	
5940	Brown-hooded parrot	Pyrilia haematotis	
5941	African pipit	Anthus cinnamomeus	
5942	Spot-billed toucanet	Selenidera maculirostris	
5943	Carunculated caracara	Phalcoboenus carunculatus	
5944	Slender-billed kite	Helicolestes hamatus	
5945	Dusky-legged guan	Penelope obscura	
5946	White-browed tit	Poecile superciliosus	
5947	Green-backed trogon	Trogon viridis	
5948	Black lark	Melanocorypha yeltoniensis	
5949	Amethyst woodstar	Calliphlox amethystina	
5950	Large-billed tern	Phaetusa simplex	
5951	Purplish jay	Cyanocorax cyanomelas	
5952	Spot-winged falconet	Spiziapteryx circumcincta	
5953	Black-and-white mannikin	Spermestes bicolor	
5954	Velvet-purple coronet	Boissonneaua jardini	
5955	White-bellied storm petrel	Fregetta grallaria	
5956	Chaco owl	Strix chacoensis	
5957	Many-banded aracari	Pteroglossus pluricinctus	
5958	Broad-billed motmot	Electron platyrhynchum	
5959	Rufous-vented tit	Periparus rubidiventris	
5960	Austral pygmy owl	Glaucidium nana	
5961	Red-tailed comet	Sappho sparganurus	
5962	Rufous-naped lark	Mirafra africana	
5963	Buff-throated saltator	Saltator maximus	
5964	Raso lark	Alauda razae	
5965	Red-headed tanager	Piranga erythrocephala	
5966	Ashy storm petrel	Oceanodroma homochroa	
5967	Trinidad motmot	Momotus bahamensis	
5968	Black-faced hawk	Leucopternis melanops	
5969	Black-headed trogon	Trogon melanocephalus	
5970	Guadeloupe woodpecker	Melanerpes herminieri	
5971	Rock sandpiper	Calidris ptilocnemis	
5972	Trindade petrel	Pterodroma arminjoniana	
5973	Bay-headed tanager	Tangara gyrola	
5974	Red-hooded tanager	Piranga rubriceps	
5975	Collared towhee	Pipilo ocai	
5976	Fasciated tiger heron	Tigrisoma fasciatum	
5977	Magellanic oystercatcher	Haematopus leucopodus	
5978	Oriental reed warbler	Acrocephalus orientalis	
5979	Spix's guan	Penelope jacquacu	
5980	Unspotted saw-whet owl	Aegolius ridgwayi	
5981	White-starred robin	Pogonocichla stellata	
5982	Kermadec petrel	Pterodroma neglecta	
5983	Golden-crowned warbler	Basileuterus culicivorus	
5984	Ashy tit	Melaniparus cinerascens	
5985	Blue-tailed emerald	Chlorostilbon mellisugus	
5986	Palm tanager	Thraupis palmarum	
5987	Blue-bearded helmetcrest	Oxypogon cyanolaemus	
5988	Chestnut-backed owlet	Glaucidium castanotum	
5989	Black-capped donacobius	Donacobius atricapilla	
5990	Magellanic plover	Pluvianellus socialis	
5991	Grey petrel	Procellaria cinerea	
5992	Green-barred woodpecker	Colaptes melanochloros	
5993	Large tree finch	Camarhynchus psittacula	
5994	Turquoise tanager	Tangara mexicana	
5995	Buff-tailed coronet	Boissonneaua flavescens	
5996	Large-billed reed warbler	Acrocephalus orinus	
5997	Black-headed canary	Serinus alario	
5998	Yucatan woodpecker	Melanerpes pygmaeus	
5999	Purple-crowned fairy	Heliothryx barroti	
6000	Rufous-tailed lark	Ammomanes phoenicura	
6001	Creamy-bellied thrush	Turdus amaurochalinus	
6002	Common Black Hawk	Buteogallus anthracinus	13.5 yrs
6003	Golden-hooded tanager	Stilpnia larvata	
6004	Peruvian thick-knee	Burhinus superciliaris	
6005	Highland tinamou	Nothocercus bonapartei	
6006	Crimson-backed tanager	Ramphocelus dimidiatus	
6007	White-throated towhee	Melozone albicollis	
6008	Burchell's starling	Lamprotornis australis	
6009	Pied starling	Lamprotornis bicolor	
6010	Collared inca	Coeligena torquata	
6011	Chilean pigeon	Patagioenas araucana	
6012	Long-billed starthroat	Heliomaster longirostris	
6013	Monteiro's hornbill	Tockus monteiri	
6014	Thick-billed warbler	Arundinax aedon	
6015	Buff-tailed sicklebill	Eutoxeres condamini	
6016	Guianan trogon	Trogon violaceus	
6017	Bare-eyed pigeon	Patagioenas corensis	
6018	Yellow-browed sparrow	Ammodramus aurifrons	
6019	Rock firefinch	Lagonosticta sanguinodorsalis	
6020	Nubian bustard	Neotis nuba	
6021	White-throated toucanet	Aulacorhynchus albivitta	
6023	Yellow-billed turaco	Tauraco macrorhynchus	
6024	Brown-cheeked rail	Rallus indicus	
6025	White-winged tanager	Piranga leucoptera	
6026	Jos Plateau indigobird	Vidua maryae	
6027	Hoffmann's woodpecker	Melanerpes hoffmannii	
6028	Rose-crowned parakeet	Pyrrhura rhodocephala	
6029	Bahama oriole	Icterus northropi	
6030	Stripe-backed bittern	Ixobrychus involucris	
6031	Sulawesi goshawk	Accipiter griseiceps	
6032	Yellow-tailed oriole	Icterus mesomelas	
6033	White-winged guan	Penelope albipennis	
6034	Cape Verde shearwater	Calonectris edwardsii	
6035	Black petrel	Procellaria parkinsoni	
6036	Baird's junco	Junco bairdi	
6037	Zapata wren	Ferminia cerverai	
6038	Grey-cowled wood rail	Aramides cajaneus	
6039	Rufous-bellied heron	Ardeola rufiventris	
6040	Kerguelen petrel	Aphrodroma brevirostris	
6041	Atlantic royal flycatcher	Onychorhynchus swainsoni	
6042	Barred hawk	Morphnarchus princeps	
6043	Gray vireo	Vireo vicinior	
6044	Scarlet-fronted parakeet	Psittacara wagleri	
6045	Sapphire-spangled emerald	Chionomesa lactea	
6046	Loggerhead kingbird	Tyrannus caudifasciatus	
6047	Olive-tree warbler	Hippolais olivetorum	
6048	Thekla's lark	Galerida theklae	
6049	Purple-throated mountaingem	Lampornis calolaemus	
6050	Tawny-shouldered blackbird	Agelaius humeralis	
6051	Rufous-naped tit	Periparus rufonuchalis	
6052	African grey woodpecker	Dendropicos goertae	
6053	Masked tityra	Tityra semifasciata	
6054	White-rumped falcon	Polihierax insignis	
6055	Red-billed spurfowl	Pternistis adspersus	
6056	Scarlet-shouldered parrotlet	Touit huetii	
6057	Silver-throated tanager	Tangara icterocephala	
6058	Blue-backed manakin	Chiroxiphia pareola	
6059	Red-shouldered blackbird	Agelaius assimilis	
6060	Red-billed curassow	Crax blumenbachii	
6061	Yellow-fronted woodpecker	Melanerpes flavifrons	
6062	Isabela oriole	Oriolus isabellae	
6063	Strange-tailed tyrant	Alectrurus risora	
6064	Volcano junco	Junco vulcani	
6065	Diademed sandpiper-plover	Phegornis mitchellii	
6066	Mountain trogon	Trogon mexicanus	
6067	Velvet-fronted grackle	Lampropsar tanagrinus	
6068	White-eared parakeet	Pyrrhura leucotis	
6069	Red-necked aracari	Pteroglossus bitorquatus	
6070	Townsend's shearwater	Puffinus auricularis	
6071	Sulphur-winged parakeet	Pyrrhura hoffmanni	
6072	Jamaican oriole	Icterus leucopteryx	
6073	Silver-beaked tanager	Ramphocelus carbo	
6074	San Cristóbal mockingbird	Mimus melanotis	
6075	Gundlach's hawk	Accipiter gundlachi	
6076	Long-tufted screech owl	Megascops sanctaecatarinae	
6077	Helmeted woodpecker	Celeus galeatus	
6078	Black-tailed trainbearer	Lesbia victoriae	
6079	Southern white-crowned shrike	Eurocephalus anguitimens	
6080	Purple-throated woodstar	Calliphlox mitchellii	
6081	Common diving petrel	Pelecanoides urinatrix	
6082	Blue-crowned manakin	Lepidothrix coronata	
6083	Kawall's amazon	Amazona kawalli	
6084	Buff-fronted owl	Aegolius harrisii	
6085	Black-backed grosbeak	Pheucticus aureoventris	
6086	Basra reed warbler	Acrocephalus griseldis	
6087	Red-gartered coot	Fulica armillata	
6088	Paint-billed crake	Neocrex erythrops	
6089	Tui parakeet	Brotogeris sanctithomae	
6090	Cloud-forest pygmy owl	Glaucidium nubicola	
6091	White-bearded manakin	Manacus manacus	
6092	Plum-throated cotinga	Cotinga maynana	
6093	Pink-headed warbler	Cardellina versicolor	
6094	Andean avocet	Recurvirostra andina	
6095	Bronzy hermit	Glaucis aeneus	
6096	Northern royal flycatcher	Onychorhynchus mexicanus	
6097	South American snipe	Gallinago paraguaiae	
6098	Dark-billed cuckoo	Coccyzus melacoryphus	
6099	South American tern	Sterna hirundinacea	
6100	Scaled dove	Columbina squammata	
6101	Southern rough-winged swallow	Stelgidopteryx ruficollis	
6102	Azure gallinule	Porphyrio flavirostris	
6103	Acacia tit	Melaniparus thruppi	
6104	Black-billed streamertail	Trochilus scitulus	
6105	Jocotoco antpitta	Grallaria ridgelyi	
6106	Black-cheeked woodpecker	Melanerpes pucherani	
6107	Malabar lark	Galerida malabarica	
6108	Rose-throated becard	Pachyramphus aglaiae	
6109	Green barbet	Stactolaema olivacea	
6110	Black-throated toucanet	Aulacorhynchus atrogularis	
6111	Finsch's parakeet	Psittacara finschi	
6112	Caribbean elaenia	Elaenia martinica	
6113	White-winged coot	Fulica leucoptera	
6114	Palani laughingthrush	Montecincla fairbanki	
6115	Ecuadorian hillstar	Oreotrochilus chimborazo	
6116	Buffy helmetcrest	Oxypogon stuebelii	
6117	Indian spotted creeper	Salpornis spilonota	
6118	White-throated tinamou	Tinamus guttatus	
6119	Golden-headed manakin	Ceratopipra erythrocephala	
6120	Rüppell's korhaan	Eupodotis rueppellii	
6121	Hooded mountain toucan	Andigena cucullata	
6122	Brazza's martin	Phedina brazzae	
6123	Cuban green woodpecker	Xiphidiopicus percussus	
6124	Shining honeycreeper	Cyanerpes lucidus	
6125	Grey crested tit	Lophophanes dichrous	
6126	Giant wren	Campylorhynchus chiapensis	
6127	Hispaniolan crossbill	Loxia megaplaga	
6128	Black-throated trogon	Trogon rufus	
6129	Giant nuthatch	Sitta magna	
6130	Rufous-winged sparrow	Peucaea carpalis	
6131	Cobalt-winged parakeet	Brotogeris cyanoptera	
6132	Black siskin	Spinus atratus	
6133	Bridled quail-dove	Geotrygon mystacea	
6134	Yellow-eared bulbul	Pycnonotus penicillatus	
6135	Band-tailed barbthroat	Threnetes ruckeri	
6136	Black tinamou	Tinamus osgoodi	
6137	Tawny-breasted tinamou	Nothocercus julius	
6138	Glittering-bellied emerald	Chlorostilbon lucidus	
6139	Galapagos crake	Laterallus spilonota	
6140	Amazilia hummingbird	Amazilis amazilia	
6141	Rufous crab hawk	Buteogallus aequinoctialis	
6142	Cuban martin	Progne cryptoleuca	
6143	Pfrimer's parakeet	Pyrrhura pfrimeri	
6144	Silver-throated bushtit	Aegithalos glaucogularis	
6145	D'Arnaud's barbet	Trachyphonus darnaudii	
6146	Chestnut-colored woodpecker	Celeus castaneus	
6147	Rusty-margined guan	Penelope superciliaris	
6148	Santa Marta screech owl	Megascops gilesi	
6149	White-capped dipper	Cinclus leucocephalus	
6150	Golden-browed chlorophonia	Chlorophonia callophrys	
6151	Nilgiri flowerpecker	Dicaeum concolor	
6152	Spotted wood quail	Odontophorus guttatus	
6153	Yellowish flycatcher	Empidonax flavescens	
6154	White-naped xenopsaris	Xenopsaris albinucha	
6155	Chopi blackbird	Gnorimopsar chopi	
6156	Buff-crested bustard	Lophotis gindiana	
6157	Curl-crested jay	Cyanocorax cristatellus	
6158	Picui ground dove	Columbina picui	
6159	Spot-breasted woodpecker	Colaptes punctigula	
6160	Western olivaceous warbler	Iduna opaca	
6161	Variable seedeater	Sporophila corvina	
6162	Cuban parakeet	Psittacara euops	
6163	Fiery-shouldered parakeet	Pyrrhura egregia	
6164	Spot-winged wood quail	Odontophorus capueira	
6165	Mottled petrel	Pterodroma inexpectata	
6166	Red-billed parrot	Pionus sordidus	
6167	Slender-billed prion	Pachyptila belcheri	
6168	Giant wood rail	Aramides ypecaha	
6169	White-browed scrub robin	Cercotrichas leucophrys	
6170	Black-thighed grosbeak	Pheucticus tibialis	
6171	Northern white-crowned shrike	Eurocephalus ruppelli	
6172	Boat-billed flycatcher	Megarynchus pitangua	
6173	Pink-footed shearwater	Ardenna creatopus	
6174	Russet-crowned motmot	Momotus mexicanus	
6175	Sharpbill	Oxyruncus cristatus	
6176	Yellow-throated euphonia	Euphonia hirundinacea	
6177	Rufous-capped warbler	Basileuterus rufifrons	
6178	Crested quail-dove	Geotrygon versicolor	
6179	Andean hillstar	Oreotrochilus estella	
6180	Sapphire-throated hummingbird	Chrysuronia coeruleogularis	
6181	Black-billed turaco	Tauraco schuettii	
6182	Ruddy pigeon	Patagioenas subvinacea	
6183	Westland petrel	Procellaria westlandica	
6184	Blond-crested woodpecker	Celeus flavescens	
6185	Pampas meadowlark	Leistes defilippii	
6186	Short-tailed swift	Chaetura brachyura	
6187	Pygmy bushtit	Aegithalos exilis	
6188	Botteri's sparrow	Peucaea botterii	
6189	Grey-bellied hawk	Accipiter poliogaster	
6190	Bennett's woodpecker	Campethera bennettii	
6191	Common miner	Geositta cunicularia	
6192	Andean ibis	Theristicus branickii	
6193	Orange-cheeked parrot	Pyrilia barrabandi	
6194	White-throated caracara	Phalcoboenus albogularis	
6195	Golden-winged parakeet	Brotogeris chrysoptera	
6196	Bengal bush lark	Mirafra assamica	
6197	Tepui parrotlet	Nannopsittaca panychlora	
6198	Grey-hooded parakeet	Psilopsiagon aymara	
6199	Tufted jay	Cyanocorax dickeyi	
6200	Shining sunbeam	Aglaeactis cupripennis	
6201	Socotra buzzard	Buteo socotraensis	
6202	Bradfield's hornbill	Lophoceros bradfieldi	
6203	Javan owlet	Glaucidium castanopterum	
6204	Andean siskin	Spinus spinescens	
6205	Père David's tit	Poecile davidi	
6206	White-tailed sabrewing	Campylopterus ensipennis	
6207	Stripe-headed sparrow	Peucaea ruficauda	
6208	Golden grosbeak	Pheucticus chrysogaster	
6209	Green oropendola	Psarocolius viridis	
6210	Mangrove rail	Rallus longirostris	
6211	White-naped swift	Streptoprocne semicollaris	
6212	Wine-throated hummingbird	Selasphorus ellioti	
6213	Spotted nothura	Nothura maculosa	
6214	Santa Marta parakeet	Pyrrhura viridicata	
6215	Frilled coquette	Lophornis magnificus	
6216	Nepal house martin	Delichon nipalense	
6217	El Oro parakeet	Pyrrhura orcesi	
6218	Blue-and-yellow tanager	Rauenia bonariensis	
6219	Undulated tinamou	Crypturellus undulatus	
6220	Spectacled thrush	Turdus nudigenis	
6221	Grey-breasted martin	Progne chalybea	
6222	Manu parrotlet	Nannopsittaca dachilleae	
6223	Violet-headed hummingbird	Klais guimeti	
6224	Rufous nightjar	Antrostomus rufus	
6225	White-necked puffbird	Notharchus hyperrhynchus	
6226	Stripe-throated bulbul	Pycnonotus finlaysoni	
6227	Rufous-browed peppershrike	Cyclarhis gujanensis	
6228	Andean guan	Penelope montagnii	
6229	Red-crowned ant tanager	Habia rubica	
6230	Antillean euphonia	Euphonia musica	
6231	Long-tailed silky-flycatcher	Ptiliogonys caudatus	
6232	Lesser kiskadee	Philohydor lictor	
6233	Chilean swallow	Tachycineta leucopyga	
6234	Black-and-yellow tanager	Chrysothlypis chrysomelas	
6235	Eastern crowned warbler	Phylloscopus coronatus	
6236	Pale-winged trumpeter	Psophia leucoptera	
6237	Crimson-bellied woodpecker	Campephilus haematogaster	
6238	Rufous-backed thrush	Turdus rufopalliatus	
6239	Rufous-throated antbird	Gymnopithys rufigula	
6240	Small-billed tinamou	Crypturellus parvirostris	
6241	Chiribiquete emerald	Chlorostilbon olivaresi	
6242	Thicket tinamou	Crypturellus cinnamomeus	
6243	Least nighthawk	Chordeiles pusillus	
6244	Jerdon's bush lark	Mirafra affinis	
6245	Black-breasted puffleg	Eriocnemis nigrivestis	
6246	Horned sungem	Heliactin bilophus	
6247	Giant snipe	Gallinago undulata	
6248	Masked cardinal	Paroaria nigrogenis	
6249	Rufous-bellied chachalaca	Ortalis wagleri	
6250	Greater yellow finch	Sicalis auriventris	
6251	Swallow tanager	Tersina viridis	
6252	Brown-backed woodpecker	Dendropicos obsoletus	
6253	Andean teal	Anas andium	
6254	Nocturnal curassow	Nothocrax urumutum	
6255	Little hermit	Phaethornis longuemareus	
6256	Wire-crested thorntail	Discosura popelairii	
6257	Highland guan	Penelopina nigra	
6258	Hook-billed hermit	Glaucis dohrnii	
6259	Pavonine cuckoo	Dromococcyx pavoninus	
6260	Cuban bullfinch	Melopyrrha nigra	
6261	Band-winged nightjar	Systellura longirostris	
6262	Sapphire-rumped parrotlet	Touit purpuratus	
6263	Black-chinned siskin	Spinus barbatus	
6264	Sharp-tailed ibis	Cercibis oxycerca	
6265	Whooping motmot	Momotus subrufescens	
6266	Bushy-crested jay	Cyanocorax melanocyaneus	
6267	Green-throated mango	Anthracothorax viridigula	
6268	Cayenne jay	Cyanocorax cayanus	
6269	Bearded screech owl	Megascops barbarus	
6270	Green-fronted lancebill	Doryfera ludovicae	
6271	Dwarf tinamou	Taoniscus nanus	
6272	Black-winged petrel	Pterodroma nigripennis	
6273	Marico sunbird	Cinnyris mariquensis	
6274	Golden-collared toucanet	Selenidera reinwardtii	
6275	Andean tinamou	Nothoprocta pentlandii	
6276	Bearded wood partridge	Dendrortyx barbatus	
6277	Kaempfer's woodpecker	Celeus obrieni	
6278	Bonaparte's parakeet	Pyrrhura lucianii	
6279	Semiplumbeous hawk	Leucopternis semiplumbeus	
6280	Orange-billed nightingale-thrush	Catharus aurantiirostris	
6281	Robust woodpecker	Campephilus robustus	
6282	Cerulean-capped manakin	Lepidothrix coeruleocapilla	
6283	Sri Lanka whistling thrush	Myophonus blighi	
6284	Mangrove hummingbird	Amazilia boucardi	
6285	Beautiful woodpecker	Melanerpes pulcher	
6286	Multicoloured tanager	Chlorochrysa nitidissima	
6287	Banded cotinga	Cotinga maculata	
6288	Blue-headed hummingbird	Riccordia bicolor	
6289	Unicolored blackbird	Agelasticus cyanopus	
6290	Brown tinamou	Crypturellus obsoletus	
6291	Yellow-tufted woodpecker	Melanerpes cruentatus	
6292	Rufous-vented ground cuckoo	Neomorphus geoffroyi	
6293	Blackish-blue seedeater	Amaurospiza moesta	
6294	Brazilian ruby	Clytolaema rubricauda	
6295	Krüper's nuthatch	Sitta krueperi	
6296	Agile tit-tyrant	Uromyias agilis	
6297	San Blas jay	Cyanocorax sanblasianus	
6298	Cuban blackbird	Dives atroviolaceus	
6299	Ivory-billed woodcreeper	Xiphorhynchus flavigaster	
6300	Tataupa tinamou	Crypturellus tataupa	
6301	Rufous-throated dipper	Cinclus schulzii	
6302	Puna tinamou	Tinamotis pentlandii	
6303	Oasis hummingbird	Rhodopis vesper	
6304	Slate-colored hawk	Buteogallus schistaceus	
6305	Spot-winged pigeon	Patagioenas maculosa	
6306	Olive-winged bulbul	Pycnonotus plumosus	
6307	Colima warbler	Leiothlypis crissalis	
6308	Common bush tanager	Chlorospingus flavopectus	
6309	Cinnamon-rumped seedeater	Sporophila torqueola	
6310	Rufous-thighed kite	Harpagus diodon	
6311	Bare-legged owl	Margarobyas lawrencii	
6312	White-winged lark	Alauda leucoptera	
6313	Common tody-flycatcher	Todirostrum cinereum	
6314	Blue-fronted parrotlet	Touit dilectissimus	
6315	Croaking ground dove	Columbina cruziana	
6316	Speckled hummingbird	Adelomyia melanogenys	
6317	Balsas screech owl	Megascops seductus	
6318	Nutting's flycatcher	Myiarchus nuttingi	
6319	Red-breasted chat	Granatellus venustus	
6320	Black-throated accentor	Prunella atrogularis	
6321	Mantled hawk	Pseudastur polionotus	
6322	Cuban pygmy owl	Glaucidium siju	
6323	Yellow-browed toucanet	Aulacorhynchus huallagae	
6324	Grey-backed storm petrel	Garrodia nereis	
6325	Red-fronted parrotlet	Touit costaricensis	
6326	Great-billed seed finch	Sporophila maximiliani	
6327	White-bellied chachalaca	Ortalis leucogastra	
6328	Black-capped gnatcatcher	Polioptila nigriceps	
6329	Perijá tapaculo	Scytalopus perijanus	
6330	Jamaican woodpecker	Melanerpes radiolatus	
6331	Green thorntail	Discosura conversii	
6332	Yellow-faced siskin	Spinus yarrellii	
6333	White-winged swallow	Tachycineta albiventer	
6334	Song wren	Cyphorhinus phaeocephalus	
6335	Aztec thrush	Ridgwayia pinicola	
6336	Sand lark	Alaudala raytal	
6337	Blue-winged mountain tanager	Anisognathus somptuosus	
6338	Moluccan woodcock	Scolopax rochussenii	
6339	Sickle-winged guan	Chamaepetes goudotii	
6340	Violet wood hoopoe	Phoeniculus damarensis	
6341	Pygmy cupwing	Pnoepyga pusilla	
6342	Golden-collared manakin	Manacus vitellinus	
6343	Grey-fronted dove	Leptotila rufaxilla	
6344	Dupont's lark	Chersophilus duponti	
6345	Stripe-tailed yellow finch	Sicalis citrina	
6346	Black cuckooshrike	Campephaga flava	
6347	Blue-crowned trogon	Trogon curucui	
6348	Rainbow-bearded thornbill	Chalcostigma herrani	
6349	Violet-capped woodnymph	Thalurania glaucopis	
6350	Colombian mountain grackle	Macroagelaius subalaris	
6351	Semicollared hawk	Accipiter collaris	
6352	Rosy thrush-tanager	Rhodinocichla rosea	
6353	Chestnut-bellied guan	Penelope ochrogaster	
6354	Gorgeted puffleg	Eriocnemis isabellae	
6355	Cryptic forest falcon	Micrastur mintoni	
6356	Bryan's shearwater	Puffinus bryani	
6357	Black-striped sparrow	Arremonops conirostris	
6358	Cinnamon screech owl	Megascops petersoni	
6359	Buffy hummingbird	Leucippus fallax	
6360	Long-tailed hermit	Phaethornis superciliosus	
6361	Black-browed reed warbler	Acrocephalus bistrigiceps	
6362	Barbuda warbler	Setophaga subita	
6363	Little woodstar	Chaetocercus bombus	
6364	Rufous-banded owl	Strix albitarsis	
6365	Singing bush lark	Mirafra cantillans	
6366	Scrub blackbird	Dives warczewiczi	
6367	Madagascar cuckoo-hawk	Aviceda madagascariensis	
6368	Sykes's lark	Galerida deva	
6369	White-crested elaenia	Elaenia albiceps	
6370	Red-legged tinamou	Crypturellus erythropus	
6371	White-whiskered puffbird	Malacoptila panamensis	
6372	Mountain wheatear	Myrmecocichla monticola	
6373	White-lined tanager	Tachyphonus rufus	
6374	Slaty-breasted tinamou	Crypturellus boucardi	
6375	White-collared manakin	Manacus candei	
6376	Rusty-barred owl	Strix hylophila	
6377	Piratic flycatcher	Legatus leucophaius	
6378	Black storm petrel	Oceanodroma melania	
6379	Rufous-backed wren	Campylorhynchus capistratus	
6380	Rufous-collared thrush	Turdus rufitorques	
6381	Craveri's murrelet	Synthliboramphus craveri	
6382	Gould's toucanet	Selenidera gouldii	
6383	Pale martin	Riparia diluta	
6384	Andean lapwing	Vanellus resplendens	
6385	Cream-backed woodpecker	Campephilus leucopogon	
6386	Ainley's storm petrel	Oceanodroma cheimomnestes	
6387	Black-breasted wood quail	Odontophorus leucolaemus	
6388	Plumbeous pigeon	Patagioenas plumbea	
6389	Handsome spurfowl	Pternistis nobilis	
6390	Black-collared jay	Cyanolyca armillata	
6391	Rufous-fronted bushtit	Aegithalos iouschistos	
6392	Black-vented oriole	Icterus wagleri	
6393	African yellow warbler	Iduna natalensis	
6394	Yellow-crowned euphonia	Euphonia luteicapilla	
6395	Middendorff's grasshopper warbler	Helopsaltes ochotensis	
6396	Burchell's courser	Cursorius rufus	
6397	Crimson-collared tanager	Ramphocelus sanguinolentus	
6398	Townsend's storm petrel	Oceanodroma socorroensis	
6399	Giant antpitta	Grallaria gigantea	
6400	Speckled tanager	Ixothraupis guttata	
6401	Torrent tyrannulet	Serpophaga cinerea	
6402	Giant coua	Coua gigas	
6403	Baja pygmy owl	Glaucidium hoskinsi	
6404	White-tailed trogon	Trogon chionurus	
6405	Tufted tit-tyrant	Anairetes parulus	
6406	Band-bellied owl	Pulsatrix melanota	
6407	Red-capped lark	Calandrella cinerea	
6408	Golden-naped woodpecker	Melanerpes chrysauchen	
6409	Yellow-billed tern	Sternula superciliaris	
6410	Chestnut-backed sparrow-lark	Eremopterix leucotis	
6411	Meves's starling	Lamprotornis mevesii	
6412	Yellow-bellied greenbul	Chlorocichla flaviventris	
6413	White-winged diuca finch	Idiopsar speculifer	
6414	Crescent-chested warbler	Oreothlypis superciliosa	
6415	Emerald-chinned hummingbird	Abeillia abeillei	
6416	Long-tailed wood partridge	Dendrortyx macroura	
6417	Crestless curassow	Mitu tomentosum	
6418	Glaucous-blue grosbeak	Cyanoloxia glaucocaerulea	
6419	Fire-eyed diucon	Xolmis pyrope	
6420	Tawny-tufted toucanet	Selenidera nattereri	
6421	Javan woodcock	Scolopax saturata	
6422	Grey silky-flycatcher	Ptiliogonys cinereus	
6423	Black thrush	Turdus infuscatus	
6424	Indigo-capped hummingbird	Saucerottia cyanifrons	
6425	Magpie tanager	Cissopis leveriana	
6426	Caatinga parakeet	Eupsittula cactorum	
6427	Reddish hermit	Phaethornis ruber	
6428	Russet-backed oropendola	Psarocolius angustifrons	
6429	Yellow-legged thrush	Turdus flavipes	
6430	Black-faced antthrush	Formicarius analis	
6431	Buffy-crowned wood partridge	Dendrortyx leucophrys	
6432	Grey-backed hawk	Pseudastur occidentalis	
6433	Elegant euphonia	Euphonia elegantissima	
6434	Short-billed pigeon	Patagioenas nigrirostris	
6435	Blue-throated roller	Eurystomus gularis	
6436	Fawn-breasted brilliant	Heliodoxa rubinoides	
6437	Cinereous tinamou	Crypturellus cinereus	
6438	White-vented violetear	Colibri serrirostris	
6439	Black-faced woodswallow	Artamus cinereus	
6440	Amazonian pygmy owl	Glaucidium hardyi	
6441	Antillean palm swift	Tachornis phoenicobia	
6442	Bare-faced bulbul	Nok hualon	
6443	Upcher's warbler	Hippolais languida	
6444	Tawny-browed owl	Pulsatrix koeniswaldiana	
6445	Bay-breasted cuckoo	Coccyzus rufigularis	
6446	Esmeraldas woodstar	Chaetocercus berlepschi	
6447	Chapman's swift	Chaetura chapmani	
6448	Great shrike-tyrant	Agriornis lividus	
6449	White-winged black tit	Melaniparus leucomelas	
6450	Black-eared fairy	Heliothryx auritus	
6451	Austral blackbird	Curaeus curaeus	
6452	Chestnut-collared swift	Streptoprocne rutila	
6453	Fuertes's parrot	Hapalopsittaca fuertesi	
6454	Asian short-toed lark	Alaudala cheleensis	
6455	Wattled guan	Aburria aburri	
6456	Little cuckoo	Coccycua minuta	
6457	Northern beardless tyrannulet	Camptostoma imberbe	
6458	Square-tailed bulbul	Hypsipetes ganeesa	
6459	Blue-throated sapphire	Chlorestes eliciae	
6460	Buff-breasted flycatcher	Empidonax fulvifrons	
6461	Saffron-headed parrot	Pyrilia pyrilia	
6462	Sira curassow	Pauxi koepckeae	
6463	Giant kingbird	Tyrannus cubensis	
6464	Yucatan bobwhite	Colinus nigrogularis	
6465	Flame-throated warbler	Oreothlypis gutturalis	
6466	Wrenthrush	Zeledonia coronata	
6467	Purple-throated euphonia	Euphonia chlorotica	
6468	Ornate tinamou	Nothoprocta ornata	
6469	Varied triller	Lalage leucomela	
6470	Andean emerald	Uranomitra franciae	
6471	Brown-backed solitaire	Myadestes occidentalis	
6472	Styan's bulbul	Pycnonotus taivanus	
6473	Canivet's emerald	Cynanthus canivetii	
6474	Drakensberg rockjumper	Chaetops aurantius	
6475	Colombian chachalaca	Ortalis columbiana	
6476	Steely-vented hummingbird	Saucerottia saucerottei	
6477	Grassland sparrow	Ammodramus humeralis	
6478	Black-eared wood quail	Odontophorus melanotis	
6479	Least seedsnipe	Thinocorus rumicivorus	
6480	Sabota lark	Calendulauda sabota	
6481	Grey-capped social weaver	Pseudonigrita arnaudi	
6482	Stripe-tailed hummingbird	Eupherusa eximia	
6483	Streaked flycatcher	Myiodynastes maculatus	
6484	Baird's trogon	Trogon bairdii	
6485	Chilean flicker	Colaptes pitius	
6486	White-throated bulbul	Alophoixus flaveolus	
6487	Golden-crowned manakin	Lepidothrix vilasboasi	
6488	Hispaniolan lizard cuckoo	Coccyzus longirostris	
6489	Zapata sparrow	Torreornis inexpectata	
6490	White-headed marsh tyrant	Arundinicola leucocephala	
6491	Red-necked tanager	Tangara cyanocephala	
6492	Caica parrot	Pyrilia caica	
6493	Black-vented shearwater	Puffinus opisthomelas	
6494	Great antshrike	Taraba major	
6495	Double-spurred spurfowl	Pternistis bicalcaratus	
6496	Hodgson's treecreeper	Certhia hodgsoni	
6497	Rufous-bellied seedsnipe	Attagis gayi	
6498	Spot-flanked gallinule	Porphyriops melanops	
6499	Blue-naped pitta	Hydrornis nipalensis	
6500	Black-headed siskin	Spinus notatus	
6501	Forest bittern	Zonerodius heliosylus	
6502	Burnished-buff tanager	Stilpnia cayana	
6503	Vermiculated screech owl	Megascops vermiculatus	
6504	Band-tailed manakin	Pipra fasciicauda	
6505	Ocellated antbird	Phaenostictus mcleannani	
6506	White-naped jay	Cyanocorax cyanopogon	
6507	Silvery-throated jay	Cyanolyca argentigula	
6508	White-tailed jay	Cyanocorax mystacalis	
6509	Narrow-billed tody	Todus angustirostris	
6510	Brown-breasted bulbul	Pycnonotus xanthorrhous	
6511	Empress brilliant	Heliodoxa imperatrix	
6512	Snowy-bellied hummingbird	Saucerottia edward	
6513	Peruvian diving petrel	Pelecanoides garnotii	
6514	Salvin's curassow	Mitu salvini	
6515	Violet-bellied hummingbird	Chlorestes julie	
6516	Guayaquil woodpecker	Campephilus gayaquilensis	
6517	Southern martin	Progne elegans	
6518	Chestnut-capped blackbird	Chrysomus ruficapillus	
6519	Surucua trogon	Trogon surrucura	
6520	Fork-tailed woodnymph	Thalurania furcata	
6521	Trilling gnatwren	Ramphocaenus melanurus	
6522	Blue-banded pitta	Erythropitta arquata	
6523	Brown trembler	Cinclocerthia ruficauda	
6524	Orange-bellied euphonia	Euphonia xanthogaster	
6525	Flame-faced tanager	Tangara parzudakii	
6526	Black-faced dacnis	Dacnis lineata	
6527	Dark-backed wood quail	Odontophorus melanonotus	
6528	Black-bibbed tit	Poecile hypermelaenus	
6529	Dark-fronted babbler	Dumetia atriceps	
6530	Blue-chested hummingbird	Polyerata amabilis	
6531	Peruvian tern	Sternula lorata	
6532	Chestnut wood quail	Odontophorus hyperythrus	
6533	Violaceous quail-dove	Geotrygon violacea	
6534	Rufous-necked wood rail	Aramides axillaris	
6535	Scaly-breasted cupwing	Pnoepyga albiventer	
6536	Brown-backed parrotlet	Touit melanonotus	
6537	Peruvian sheartail	Thaumastura cora	
6538	Knysna woodpecker	Campethera notata	
6539	Strickland's woodpecker	Leuconotopicus stricklandi	
6540	East Brazilian pygmy owl	Glaucidium minutissimum	
6541	Band-tailed nighthawk	Nyctiprogne leucopyga	
6542	Pacific pygmy owl	Glaucidium peruanum	
6543	Kinglet calyptura	Calyptura cristata	
6544	Thorn-tailed rayadito	Aphrastura spinicauda	
6545	Purple quail-dove	Geotrygon purpurata	
6546	Black oropendola	Psarocolius guatimozinus	
6547	Scissor-tailed hummingbird	Hylonympha macrocerca	
6548	Starred wood quail	Odontophorus stellatus	
6549	Olive oropendola	Psarocolius bifasciatus	
6550	Sichuan tit	Poecile weigoldicus	
6551	White-throated thrush	Turdus assimilis	
6552	Dusky starfrontlet	Coeligena orina	
6553	Santarem parakeet	Pyrrhura amazonum	
6554	Yemen thrush	Turdus menachensis	
6555	Two-banded plover	Charadrius falklandicus	
6556	Helmeted manakin	Antilophia galeata	
6557	Koepcke's hermit	Phaethornis koepckeae	
6558	Mongolian lark	Melanocorypha mongolica	
6559	Red-throated tit	Melaniparus fringillinus	
6560	White-tailed nightjar	Hydropsalis cayennensis	
6561	Elliot's storm petrel	Oceanites gracilis	
6562	Plumbeous hawk	Cryptoleucopteryx plumbea	
6563	Chestnut-breasted coronet	Boissonneaua matthewsii	
6564	Black-fronted nunbird	Monasa nigrifrons	
6565	Papuan harrier	Circus spilothorax	
6566	White-chinned swift	Cypseloides cryptus	
6567	Fiery-tailed awlbill	Avocettula recurvirostris	
6568	White-throated robin-chat	Cossypha humeralis	
6569	Blue cotinga	Cotinga nattererii	
6570	Prong-billed barbet	Semnornis frantzii	
6571	Rufous-tailed plantcutter	Phytotoma rara	
6572	Least storm petrel	Oceanodroma microsoma	
6573	Azure-naped jay	Cyanocorax heilprini	
6574	Flame-rumped tanager	Ramphocelus flammigerus	
6575	Hispaniolan emerald	Riccordia swainsonii	
6576	Cauca guan	Penelope perspicax	
6577	Grey-breasted spurfowl	Pternistis rufopictus	
6578	Worthen's sparrow	Spizella wortheni	
6579	Red-rumped cacique	Cacicus haemorrhous	
6580	Pale-tailed barbthroat	Threnetes leucurus	
6581	Rodrigues warbler	Acrocephalus rodericanus	
6582	Little chachalaca	Ortalis motmot	
6583	White monjita	Xolmis irupero	
6584	Royal sunangel	Heliangelus regalis	
6585	Striated bulbul	Alcurus striatus	
6586	Archer's lark	Heteromirafra archeri	
6587	Rück's blue flycatcher	Cyornis ruckii	
6588	Red-throated ant tanager	Habia fuscicauda	
6589	Black-faced solitaire	Myadestes melanops	
6590	Collared finchbill	Spizixos semitorques	
6591	Green-bearded helmetcrest	Oxypogon guerinii	
6592	Sooty barbthroat	Threnetes niger	
6593	Short-crested coquette	Lophornis brachylophus	
6594	Glittering-throated emerald	Chionomesa fimbriata	
6595	Rufescent screech owl	Megascops ingens	
6596	Drakensberg siskin	Crithagra symonsi	
6597	White-throated screech owl	Megascops albogularis	
6598	Antillean siskin	Spinus dominicensis	
6599	Maranon pigeon	Patagioenas oenops	
6600	Scaly-breasted hummingbird	Phaeochroa cuvierii	
6601	Yellow-bellied eremomela	Eremomela icteropygialis	
6602	Peruvian meadowlark	Leistes bellicosus	
6603	Rufous-throated solitaire	Myadestes genibarbis	
6604	Citreoline trogon	Trogon citreolus	
6605	White-crowned manakin	Pseudopipra pipra	
6606	Rufous-headed chachalaca	Ortalis erythroptera	
6607	Pied plover	Vanellus cayanus	
6608	Thick-billed seed finch	Sporophila funerea	
6609	White-fronted nunbird	Monasa morphoeus	
6610	Cape grassbird	Sphenoeacus afer	
6611	Brazilian tinamou	Crypturellus strigulosus	
6612	Golden tanager	Tangara arthus	
6613	White-chested emerald	Chrysuronia brevirostris	
6614	Choco tinamou	Crypturellus kerriae	
6615	White-bridled finch	Melanodera melanodera	
6616	Brushland tinamou	Nothoprocta cinerascens	
6617	Yellow-bellied bulbul	Alophoixus phaeocephalus	
6618	Hartlaub's spurfowl	Pternistis hartlaubi	
6619	Cherry-throated tanager	Nemosia rourei	
6620	Flame-winged parakeet	Pyrrhura calliptera	
6621	Andean parakeet	Bolborhynchus orbygnesius	
6622	Cape clapper lark	Mirafra apiata	
6623	Moluccan goshawk	Accipiter henicogrammus	
6624	Black-throated jay	Cyanolyca pumilo	
6625	Yellow-headed warbler	Teretistris fernandinae	
6626	Amethyst-throated sunangel	Heliangelus amethysticollis	
6627	Olivaceous woodcreeper	Sittasomus griseicapillus	
6628	Grey trembler	Cinclocerthia gutturalis	
6629	Common diuca finch	Diuca diuca	
6630	Flappet lark	Mirafra rufocinnamomea	
6631	Variegated tinamou	Crypturellus variegatus	
6632	Epaulet oriole	Icterus cayanensis	
6633	Tawny-bellied screech owl	Megascops watsonii	
6634	Five-striped sparrow	Amphispiza quinquestriata	
6635	Black-bellied hummingbird	Eupherusa nigriventris	
6636	Dusky pigeon	Patagioenas goodsoni	
6637	Slaty-backed forest falcon	Micrastur mirandollei	
6638	Double-collared seedeater	Sporophila caerulescens	
6639	Gilded sapphire	Hylocharis chrysura	
6640	Marail guan	Penelope marail	
6641	Collared whitestart	Myioborus torquatus	
6642	Barred tinamou	Crypturellus casiquiare	
6643	Scaly-breasted thrasher	Allenia fusca	
6644	Black metaltail	Metallura phoebe	
6645	Great-billed hermit	Phaethornis malaris	
6646	Berlepsch's tinamou	Crypturellus berlepschi	
6647	Masked yellowthroat	Geothlypis aequinoctialis	
6648	Magenta-throated woodstar	Calliphlox bryantae	
6649	Pin-tailed manakin	Ilicura militaris	
6650	La Sagra's flycatcher	Myiarchus sagrae	
6651	White-fronted quail-dove	Geotrygon leucometopia	
6652	Lesser swallow-tailed swift	Panyptila cayennensis	
6653	Festive coquette	Lophornis chalybeus	
6654	Black-tailed trogon	Trogon melanurus	
6655	Bahama yellowthroat	Geothlypis rostrata	
6656	Hooded tinamou	Nothocercus nigrocapillus	
6657	Uniform crake	Amaurolimnas concolor	
6658	Grayish baywing	Agelaioides badius	
6659	White-cheeked bushtit	Aegithalos leucogenys	
6660	Yellow-browed woodpecker	Piculus aurulentus	
6661	Socorro wren	Troglodytes sissonii	
6662	Tawny-throated dotterel	Oreopholus ruficollis	
6663	Collared puffbird	Bucco capensis	
6664	Gould's jewelfront	Heliodoxa aurescens	
6665	Scarlet-banded barbet	Capito wallacei	
6666	Lined forest falcon	Micrastur gilvicollis	
6667	Blue-tailed hummingbird	Saucerottia cyanura	
6668	Darwin's nothura	Nothura darwinii	
6669	White-breasted thrasher	Ramphocinclus brachyurus	
6670	Spangled coquette	Lophornis stictolophus	
6671	Bicolored antbird	Gymnopithys bicolor	
6672	Veraguan mango	Anthracothorax veraguensis	
6673	White-browed nuthatch	Sitta victoriae	
6674	White-plumed antbird	Pithys albifrons	
6675	Pied puffbird	Notharchus tectus	
6676	Cinnamon-throated hermit	Phaethornis nattereri	
6677	Orange-billed sparrow	Arremon aurantiirostris	
6678	Black-capped swallow	Notiochelidon pileata	
6679	Glistening-green tanager	Chlorochrysa phoenicotis	
6680	Yellow-legged tinamou	Crypturellus noctivagus	
6681	Sapphire-bellied hummingbird	Chrysuronia lilliae	
6682	Thick-billed vireo	Vireo crassirostris	
6683	Green hylia	Hylia prasina	
6684	Snowy-crowned tern	Sterna trudeaui	
6685	Black-capped siskin	Spinus atriceps	
6686	Rufous-breasted wood quail	Odontophorus speciosus	
6687	Hoary puffleg	Haplophaedia lugens	
6688	Sapphire quail-dove	Geotrygon saphirina	
6689	Chestnut woodpecker	Celeus elegans	
6690	White-tailed goldenthroat	Polytmus guainumbi	
6691	Golden-tailed parrotlet	Touit surdus	
6692	Galapagos flycatcher	Myiarchus magnirostris	
6693	Cuban oriole	Icterus melanopsis	
6694	Yellow-throated leaflove	Atimastillas flavicollis	
6695	Ashy flycatcher	Muscicapa caerulescens	
6696	Savile's bustard	Lophotis savilei	
6697	Ruddy-breasted seedeater	Sporophila minuta	
6698	Crested finchbill	Spizixos canifrons	
6699	Cocoa woodcreeper	Xiphorhynchus susurrans	
6700	Rusty tinamou	Crypturellus brevirostris	
6701	White-bellied seedsnipe	Attagis malouinus	
6702	Grey pileated finch	Coryphospingus pileatus	
6703	Spotted tanager	Ixothraupis punctata	
6704	Stripe-faced wood quail	Odontophorus balliviani	
6705	Band-tailed guan	Penelope argyrotis	
6706	Balearic warbler	Curruca balearica	
6707	Rufous-fronted wood quail	Odontophorus erythrops	
6708	Noronha vireo	Vireo gracilirostris	
6709	Andean pygmy owl	Glaucidium jardinii	
6710	Lesser ground cuckoo	Morococcyx erythropygus	
6711	Chiguanco thrush	Turdus chiguanco	
6712	Southern nightingale-wren	Microcerculus marginatus	
6713	Hooded visorbearer	Augastes lumachella	
6714	Russet nightingale-thrush	Catharus occidentalis	
6715	Pale-billed hornbill	Lophoceros pallidirostris	
6716	Rose-breasted chat	Granatellus pelzelni	
6717	Happy wren	Pheugopedius felix	
6718	Golden-cheeked woodpecker	Melanerpes chrysogenys	
6719	Maroon-chested ground dove	Paraclaravis mondetoura	
6720	Red-faced parrot	Hapalopsittaca pyrrhops	
6721	Plumbeous rail	Pardirallus sanguinolentus	
6722	Spot-winged parrotlet	Touit stictopterus	
6723	Black-fronted wood quail	Odontophorus atrifrons	
6724	Spike-heeled lark	Chersomanes albofasciata	
6725	Northern nightingale-wren	Microcerculus philomela	
6726	Giant antshrike	Batara cinerea	
6727	Crimson-hooded manakin	Pipra aureola	
6728	Pale-eyed thrush	Turdus leucops	
6729	Bearded guan	Penelope barbata	
6730	Central American pygmy owl	Glaucidium griseiceps	
6731	Fan-tailed warbler	Basileuterus lachrymosus	
6732	Quebracho crested tinamou	Eudromia formosa	
6733	Golden-winged sunbird	Drepanorhynchus reichenowi	
6734	Pale-breasted thrush	Turdus leucomelas	
6735	Slate-throated whitestart	Myioborus miniatus	
6736	Scarlet-rumped cacique	Cacicus uropygialis	
6737	White-ruffed manakin	Corapipo altera	
6738	Colorful puffleg	Eriocnemis mirabilis	
6739	Bronze-tailed plumeleteer	Chalybura urochrysia	
6740	Wedge-tailed sabrewing	Pampa pampa	
6741	Royal cinclodes	Cinclodes aricomae	
6742	Patagonian sierra finch	Phrygilus patagonicus	
6743	Blue-fronted lancebill	Doryfera johannae	
6744	Prevost's ground sparrow	Melozone biarcuata	
6745	Black nunbird	Monasa atra	
6746	Orange-collared manakin	Manacus aurantiacus	
6747	West Peruvian screech owl	Megascops roboratus	
6748	Cloud-forest screech owl	Megascops marshalli	
6749	Western chat-tanager	Calyptophilus tertius	
6750	Great sapphirewing	Pterophanes cyanopterus	
6751	Rose-faced parrot	Pyrilia pulchra	
6752	Ash-throated crake	Mustelirallus albicollis	
6753	Koepcke's screech owl	Megascops koepckeae	
6754	Rufous-throated sapphire	Hylocharis sapphirina	
6755	Nelicourvi weaver	Ploceus nelicourvi	
6756	Band-backed wren	Campylorhynchus zonatus	
6757	Black-billed nightingale-thrush	Catharus gracilirostris	
6758	Spectacled bulbul	Ixodia erythropthalmos	
6759	Grey-breasted woodpecker	Melanerpes hypopolius	
6760	White-fronted woodpecker	Melanerpes cactorum	
6761	Hispaniolan oriole	Icterus dominicensis	
6762	Spectacled tyrant	Hymenops perspicillatus	
6763	Cape Verde warbler	Acrocephalus brevipennis	
6764	Fuegian snipe	Gallinago stricklandii	
6765	Racket-tailed coquette	Discosura longicaudus	
6766	Collared crescentchest	Melanopareia torquata	
6767	Black-capped tinamou	Crypturellus atrocapillus	
6768	Jamaican lizard cuckoo	Coccyzus vetula	
6769	Purple-breasted cotinga	Cotinga cotinga	
6770	White-crested coquette	Lophornis adorabilis	
6771	Ochre-collared piculet	Picumnus temminckii	
6772	Yellow-throated woodpecker	Piculus flavigula	
6773	Rufous-bellied nighthawk	Lurocalis rufiventris	
6774	Sind woodpecker	Dendrocopos assimilis	
6775	Green-headed hillstar	Oreotrochilus stolzmanni	
6776	Manchurian reed warbler	Acrocephalus tangorum	
6777	Broad-tipped hermit	Anopetia gounellei	
6778	Thick-billed lark	Ramphocoris clotbey	
6779	Northern tufted flycatcher	Mitrephanes phaeocercus	
6780	Terrestrial brownbul	Phyllastrephus terrestris	
6781	White-crested guan	Penelope pileata	
6782	Green-and-gold tanager	Tangara schrankii	
6783	Hyacinth visorbearer	Augastes scutatus	
6784	Moustached turca	Pteroptochos megapodius	
6785	Baudo guan	Penelope ortoni	
6786	Galápagos shearwater	Puffinus subalaris	
6787	Fiery-throated fruiteater	Pipreola chlorolepidota	
6788	Plushcap	Catamblyrhynchus diadema	
6789	Tacarcuna wood quail	Odontophorus dialeucos	
6790	Wedge-billed woodcreeper	Glyphorynchus spirurus	
6791	Golden-winged cacique	Cacicus chrysopterus	
6792	Green-crowned plovercrest	Stephanoxis lalandi	
6793	Rufous-breasted wren	Pheugopedius rutilus	
6794	Black-tipped cotinga	Carpodectes hopkei	
6795	Black-capped pygmy tyrant	Myiornis atricapillus	
6796	Little woodpecker	Veniliornis passerinus	
6797	Versicolored emerald	Chrysuronia versicolor	
6798	Yucatan wren	Campylorhynchus yucatanicus	
6799	White-bellied hummingbird	Elliotomyia chionogaster	
6800	Olive-backed euphonia	Euphonia gouldi	
6801	Blue-and-black tanager	Tangara vassorii	
6802	Stolid flycatcher	Myiarchus stolidus	
6803	Eastern chat-tanager	Calyptophilus frugivorus	
6804	Gorgeted wood quail	Odontophorus strophium	
6805	Shining-green hummingbird	Chrysuronia goudoti	
6806	Minute hermit	Phaethornis idaliae	
6807	Rufous-and-white wren	Thryophilus rufalbus	
6808	Grey penduline tit	Anthoscopus caroli	
6809	Opal-rumped tanager	Tangara velia	
6810	Green-backed sparrow	Arremonops chloronotus	
6811	Planalto hermit	Phaethornis pretrei	
6812	Colima pygmy owl	Glaucidium palmarum	
6813	Rufous-faced warbler	Abroscopus albogularis	
6814	Bartlett's tinamou	Crypturellus bartletti	
6815	Venezuelan wood quail	Odontophorus columbianus	
6816	Plain-tailed nighthawk	Nyctiprogne vielliardi	
6817	Chestnut-winged chachalaca	Ortalis garrula	
6818	Long-billed woodcreeper	Nasica longirostris	
6819	Hornby's storm petrel	Oceanodroma hornbyi	
6820	Charming hummingbird	Polyerata decora	
6821	Darwin's flycatcher	Pyrocephalus nanus	
6822	Puna plover	Charadrius alticola	
6823	White-chinned sapphire	Chlorestes cyanus	
6824	Tawny-throated leaftosser	Sclerurus mexicanus	
6825	Ocellated tapaculo	Acropternis orthonyx	
6826	Variable oriole	Icterus pyrrhopterus	
6827	Guatemalan pygmy owl	Glaucidium cobanense	
6828	Green-and-white hummingbird	Elliotomyia viridicauda	
6829	White-shouldered tanager	Loriotus luctuosus	
6830	Stejneger's petrel	Pterodroma longirostris	
6831	Yellow-billed cacique	Amblycercus holosericeus	
6832	Hook-billed bulbul	Setornis criniger	
6833	Black inca	Coeligena prunellei	
6834	Oriente warbler	Teretistris fornsi	
6835	Grey-fronted quail-dove	Geotrygon caniceps	
6836	Turquoise cotinga	Cotinga ridgwayi	
6837	Mountain pipit	Anthus hoeschi	
6838	Ocellated crake	Micropygia schomburgkii	
6839	Black-headed saltator	Saltator atriceps	
6840	Black-spotted barbet	Capito niger	
6841	Red-rumped woodpecker	Veniliornis kirkii	
6842	Dot-eared coquette	Lophornis gouldii	
6843	Sooty swift	Cypseloides fumigatus	
6844	Blue-throated motmot	Aspatha gularis	
6845	Cream-vented bulbul	Pycnonotus simplex	
6846	Bogotá rail	Rallus semiplumbeus	
6847	Rusty-faced parrot	Hapalopsittaca amazonina	
6848	White-bellied wren	Uropsila leucogastra	
6849	Amethyst-throated mountaingem	Lampornis amethystinus	
6850	Olive-green tanager	Orthogonys chloricterus	
6851	Peacock coquette	Lophornis pavoninus	
6852	Lattice-tailed trogon	Trogon clathratus	
6853	Masked flowerpiercer	Diglossa cyanea	
6854	Tawny-bellied hermit	Phaethornis syrmatophorus	
6855	Blue-tufted starthroat	Heliomaster furcifer	
6856	Mountain thrush	Turdus plebejus	
6857	Dusky-throated hermit	Phaethornis squalidus	
6858	Lesser nothura	Nothura minor	
6859	Red-throated piping guan	Pipile cujubi	
6860	Plumbeous warbler	Setophaga plumbea	
6861	Puff-throated bulbul	Alophoixus pallidus	
6862	Arrowhead warbler	Setophaga pharetra	
6863	Checkered woodpecker	Veniliornis mixtus	
6864	Forbes's blackbird	Anumara forbesi	
6865	Lemon-throated barbet	Eubucco richardsoni	
6866	Dune lark	Calendulauda erythrochlamys	
6867	Black-crowned tityra	Tityra inquisitor	
6868	Streak-throated hermit	Phaethornis rupurumii	
6869	Striped woodpecker	Veniliornis lignarius	
6870	Masked crimson tanager	Ramphocelus nigrogularis	
6871	Vitelline warbler	Setophaga vitellina	
6872	Long-tailed ground dove	Uropelia campestris	
6873	Grey-chested dove	Leptotila cassinii	
6874	Rufous-fronted parakeet	Bolborhynchus ferrugineifrons	
6875	Black-crowned antshrike	Thamnophilus atrinucha	
6876	Ocellated thrasher	Toxostoma ocellatum	
6877	Rufous sabrewing	Pampa rufa	
6878	Black-throated hermit	Phaethornis atrimentalis	
6879	Black-bodied woodpecker	Dryocopus schulzii	
6880	Red lark	Calendulauda burra	
6881	Butterfly coquette	Lophornis verreauxii	
6882	Lemon-spectacled tanager	Chlorothraupis olivacea	
6883	Monotonous lark	Mirafra passerina	
6884	Hume's short-toed lark	Calandrella acutirostris	
6885	White-necked thrush	Turdus albicollis	
6886	Scaly spurfowl	Pternistis squamatus	
6887	Bright-rumped attila	Attila spadiceus	
6888	Ruddy-tailed flycatcher	Terenotriccus erythrurus	
6889	Cape penduline tit	Anthoscopus minutus	
6890	Long-tailed starling	Aplonis magna	
6891	Many-spotted hummingbird	Taphrospilus hypostictus	
6892	Vermilion tanager	Calochaetes coccineus	
6893	Golden-naped tanager	Chalcothraupis ruficervix	
6894	Plumbeous forest falcon	Micrastur plumbeus	
6895	Zarudny's sparrow	Passer zarudnyi	
6896	Stark's lark	Spizocorys starki	
6897	Jackson's spurfowl	Pternistis jacksoni	
6898	Green-tailed jacamar	Galbula galbula	
6899	Cinnamon woodpecker	Celeus loricatus	
6900	Numfor paradise kingfisher	Tanysiptera carolinae	
6901	Black-faced warbler	Abroscopus schisticeps	
6902	Scrub euphonia	Euphonia affinis	
6903	Streaked xenops	Xenops rutilans	
6904	Tanager finch	Oreothraupis arremonops	
6905	Lesser swamp warbler	Acrocephalus gracilirostris	
6906	Violet-throated metaltail	Metallura baroni	
6907	Red-faced guan	Penelope dabbenei	
6908	Huayco tinamou	Rhynchotus maculicollis	
6909	Garnet-throated hummingbird	Lamprolaima rhami	
6910	Black-capped screech owl	Megascops atricapilla	
6911	Cuban solitaire	Myadestes elisabeth	
6912	Grey-headed dove	Leptotila plumbeiceps	
6913	Moreno's ground dove	Metriopelia morenoi	
6914	Austral negrito	Lessonia rufa	
6915	White-banded swallow	Atticora fasciata	
6916	Rufous-rumped antwren	Euchrepomis callinota	
6917	Yellow-wattled bulbul	Poliolophus urostictus	
6918	Yellow-winged tanager	Thraupis abbas	
6919	White-shouldered fire-eye	Pyriglena leucoptera	
6920	White-throated bushtit	Aegithalos niveogularis	
6921	Gilded barbet	Capito auratus	
6922	Pale-legged hornero	Furnarius leucopus	
6923	Biscutate swift	Streptoprocne biscutata	
6924	East Brazilian chachalaca	Ortalis araucuan	
6925	Wedge-rumped storm petrel	Oceanodroma tethys	
6926	Buff-spotted flameback	Chrysocolaptes lucidus	
6927	Tyrian metaltail	Metallura tyrianthina	
6928	Papuan mountain pigeon	Gymnophaps albertisii	
6929	White-winged nightjar	Eleothreptus candicans	
6930	Noronha elaenia	Elaenia ridleyana	
6931	Tepui tinamou	Crypturellus ptaritepui	
6932	Gorgeted woodstar	Chaetocercus heliodor	
6933	Buckley's forest falcon	Micrastur buckleyi	
6934	Dusky lark	Pinarocorys nigricans	
6935	Black-tailed tityra	Tityra cayana	
6936	Northern fantail	Rhipidura rufiventris	
6937	Little greenbul	Eurillas virens	
6938	Ruddy-capped nightingale-thrush	Catharus frantzii	
6939	Slate-coloured grosbeak	Saltator grossus	
6940	Ochre-bellied dove	Leptotila ochraceiventris	
6941	Saffron-cowled blackbird	Xanthopsar flavus	
6942	Red-billed scythebill	Campylorhamphus trochilirostris	
6943	Orange-spotted bulbul	Pycnonotus bimaculatus	
6944	Yungas pygmy owl	Glaucidium bolivianum	
6945	Sad flycatcher	Myiarchus barbirostris	
6946	Little grey woodpecker	Dendropicos elachus	
6947	Miombo tit	Melaniparus griseiventris	
6948	Scarlet-bellied mountain tanager	Anisognathus igniventris	
6949	Sharp-tailed starling	Lamprotornis acuticaudus	
6950	Grey-crowned woodpecker	Colaptes auricularis	
6951	Taczanowski's tinamou	Nothoprocta taczanowskii	
6952	Green crombec	Sylvietta virens	
6953	Pale-browed tinamou	Crypturellus transfasciatus	
6954	Brown-and-yellow marshbird	Pseudoleistes virescens	
6955	Venezuelan sylph	Aglaiocercus berlepschii	
6956	Paradise jacamar	Galbula dea	
6957	Bay wren	Cantorchilus nigricapillus	
6958	Red-headed manakin	Ceratopipra rubrocapilla	
6959	Straight-billed hermit	Phaethornis bourcieri	
6960	Blunt-winged warbler	Acrocephalus concinens	
6961	Bare-necked fruitcrow	Gymnoderus foetidus	
6962	Rufous-capped motmot	Baryphthengus ruficapillus	
6963	White-eared ground sparrow	Melozone leucotis	
6964	Tuxtla quail-dove	Zentrygon carrikeri	
6965	Grey-legged tinamou	Crypturellus duidae	
6966	Guianan red cotinga	Phoenicircus carnifex	
6967	Rufous-fronted thornbird	Phacellodomus rufifrons	
6968	Snowy cotinga	Carpodectes nitidus	
6969	Pied water tyrant	Fluvicola pica	
6970	Scale-throated hermit	Phaethornis eurynome	
6971	Rockrunner	Achaetops pycnopygius	
6972	Tourmaline sunangel	Heliangelus exortis	
6973	Saint Lucia warbler	Setophaga delicata	
6974	Táchira antpitta	Grallaria chthonia	
6975	Aztec rail	Rallus tenuirostris	
6976	Gray thrasher	Toxostoma cinereum	
6977	Rudd's lark	Heteromirafra ruddi	
6978	Ecuadorian ground dove	Columbina buckleyi	
6979	Magellanic tapaculo	Scytalopus magellanicus	
6980	Sierra Madre sparrow	Xenospiza baileyi	
6981	Yellow-rumped marshbird	Pseudoleistes guirahuro	
6982	Wing-banded antbird	Myrmornis torquata	
6983	Malia	Malia grata	
6984	Sakalava rail	Zapornia olivieri	
6985	White-bearded hermit	Phaethornis hispidus	
6986	Brown-bellied swallow	Notiochelidon murina	
6987	Glaucous tanager	Thraupis glaucocolpa	
6988	Grey-breasted seedsnipe	Thinocorus orbignyianus	
6989	Pincoya storm petrel	Oceanites pincoyae	
6990	Rufous-chested plover	Charadrius modestus	
6991	Ashambu laughingthrush	Montecincla meridionalis	
6992	Bearded mountaineer	Oreonympha nobilis	
6993	White-bellied nothura	Nothura boraquira	
6994	Dusky-green oropendola	Psarocolius atrovirens	
6995	Saint Lucia oriole	Icterus laudabilis	
6996	Pale-eyed blackbird	Agelasticus xanthophthalmus	
6997	Striolated manakin	Machaeropterus striolatus	
6998	Dusky hummingbird	Phaeoptila sordida	
6999	Andean swift	Aeronautes andecolus	
7000	Ruddy crake	Laterallus ruber	
7001	Chestnut bulbul	Hemixos castanonotus	
7002	Luzon flameback	Chrysocolaptes haematribon	
7003	Long-tailed woodnymph	Thalurania watertonii	
7004	Plain antvireo	Dysithamnus mentalis	
7005	Mountain kingfisher	Syma megarhyncha	
7006	Olivaceous piculet	Picumnus olivaceus	
7007	Belding's yellowthroat	Geothlypis beldingi	
7008	Imperial snipe	Gallinago imperialis	
7009	Western emerald	Chlorostilbon melanorhynchus	
7010	Dusky-faced tanager	Mitrospingus cassinii	
7011	Scissor-tailed nightjar	Hydropsalis torquata	
7012	Grey-capped flycatcher	Myiozetetes granadensis	
7013	Glowing puffleg	Eriocnemis vestita	
7014	Letitia's thorntail	Discosura letitiae	
7015	Black-crowned antpitta	Pittasoma michleri	
7016	Fasciated antshrike	Cymbilaimus lineatus	
7017	Fawn-breasted tanager	Pipraeidea melanonota	
7018	Correndera pipit	Anthus correndera	
7019	Black-and-white bulbul	Microtarsus melanoleucos	
7020	Black-bellied cuckoo	Piaya melanogaster	
7021	Green-and-black fruiteater	Pipreola riefferii	
7022	White-vented plumeleteer	Chalybura buffonii	
7023	Fanti saw-wing	Psalidoprocne obscura	
7024	Scarlet-crowned barbet	Capito aurovirens	
7025	Western nicator	Nicator chloris	
7026	Red-faced crombec	Sylvietta whytii	
7027	Blue-wattled bulbul	Brachypodius nieuwenhuisii	
7028	Scarlet-thighed dacnis	Dacnis venusta	
7029	Dark-faced ground tyrant	Muscisaxicola maclovianus	
7030	Variable antshrike	Thamnophilus caerulescens	
7031	Blue-capped tanager	Sporathraupis cyanocephala	
7032	South American painted-snipe	Nycticryphes semicollaris	
7033	Beautiful sheartail	Calothorax pulcher	
7034	Flammulated flycatcher	Deltarhynchus flammulatus	
7035	Rufous-shafted woodstar	Chaetocercus jourdanii	
7036	Tepui toucanet	Aulacorhynchus whitelianus	
7037	Green-tailed trainbearer	Lesbia nuna	
7038	Annobón scops owl	Otus feae	
7039	Kinglet manakin	Machaeropterus regulus	
7040	Jameson's snipe	Gallinago jamesoni	
7041	Pale-bellied hermit	Phaethornis anthophilus	
7042	White-eared jacamar	Galbalcyrhynchus leucotis	
7043	Gorgeted sunangel	Heliangelus strophianus	
7044	Golden-rumped euphonia	Euphonia cyanocephala	
7045	Siberian nuthatch	Sitta arctica	
7046	Cabanis's wren	Cantorchilus modestus	
7047	Versicolored barbet	Eubucco versicolor	
7048	Green-tailed goldenthroat	Polytmus theresiae	
7049	Hildebrandt's spurfowl	Pternistis hildebrandti	
7050	Purple-backed sunbeam	Aglaeactis aliciae	
7051	Swallow-winged puffbird	Chelidoptera tenebrosa	
7052	Gray's lark	Ammomanopsis grayi	
7053	Short-billed honeycreeper	Cyanerpes nitidus	
7054	White-faced quail-dove	Zentrygon albifacies	
7055	Black-billed thrush	Turdus ignobilis	
7056	Tolima dove	Leptotila conoveri	
7057	Williams's lark	Mirafra williamsi	
7058	White-throated spadebill	Platyrinchus mystaceus	
7059	Scarlet-backed woodpecker	Veniliornis callonotus	
7060	Ruddy woodcreeper	Dendrocincla homochroa	
7061	Blue-crowned chlorophonia	Chlorophonia occipitalis	
7062	Yucatan vireo	Vireo magister	
7063	Black-eared sparrow-lark	Eremopterix australis	
7064	Greenish elaenia	Myiopagis viridicata	
7065	Lazuline sabrewing	Campylopterus falcatus	
7066	Foxy lark	Calendulauda alopex	
7067	Olive-capped warbler	Setophaga pityophila	
7068	Ladder-tailed nightjar	Hydropsalis climacocerca	
7069	Square-tailed saw-wing	Psalidoprocne nitens	
7070	Crested ant tanager	Habia cristata	
7071	Sombre hummingbird	Eupetomena cirrochloris	
7072	Purple-bibbed whitetip	Urosticte benjamini	
7073	Grey-bellied comet	Taphrolesbia griseiventris	
7074	Strong-billed woodcreeper	Xiphocolaptes promeropirhynchus	
7075	Curve-billed tinamou	Nothoprocta curvirostris	
7076	Little thornbird	Phacellodomus sibilatrix	
7077	Bare-faced ground dove	Metriopelia ceciliae	
7078	Dot-winged antwren	Microrhopias quixensis	
7079	Lesser greenlet	Pachysylvia decurtata	
7080	Cuban nightjar	Antrostomus cubanensis	
7081	Whistling warbler	Catharopeza bishopi	
7082	Golden-green woodpecker	Piculus chrysochloros	
7083	Black-winged parrot	Hapalopsittaca melanotis	
7084	Buff-fronted quail-dove	Zentrygon costaricensis	
7085	Black-capped sparrow	Arremon abeillei	
7086	Solitary cacique	Cacicus solitarius	
7087	Swallow-tailed cotinga	Phibalura flavirostris	
7088	Yungas screech owl	Megascops hoyi	
7089	Chestnut-backed antbird	Poliocrania exsul	
7090	Des Murs's wiretail	Sylviorthorhynchus desmursii	
7091	Purple-crowned plovercrest	Stephanoxis loddigesii	
7092	Recurve-billed bushbird	Clytoctantes alixii	
7093	Neergaard's sunbird	Cinnyris neergaardi	
7094	Mount Cameroon spurfowl	Pternistis camerunensis	
7095	Olive-backed quail-dove	Leptotrygon veraguensis	
7096	Chestnut-bellied cuckoo	Coccyzus pluvialis	
7097	Scaly-breasted woodpecker	Celeus grammicus	
7098	Black-necked red cotinga	Phoenicircus nigricollis	
7099	Blackish nightjar	Nyctipolus nigrescens	
7100	Noble snipe	Gallinago nobilis	
7101	Yungas dove	Leptotila megalura	
7102	Chinese nuthatch	Sitta villosa	
7103	Golden-bellied starfrontlet	Coeligena bonapartei	
7104	Greenish yellow finch	Sicalis olivascens	
7105	Hairy-backed bulbul	Tricholestes criniger	
7106	White-browed guan	Penelope jacucaca	
7107	White-browed purpletuft	Iodopleura isabellae	
7108	Stub-tailed spadebill	Platyrinchus cancrominus	
7109	Yellow-rumped siskin	Spinus uropygialis	
7110	Karoo lark	Calendulauda albescens	
7111	White-winged becard	Pachyramphus polychopterus	
7112	Small-billed elaenia	Elaenia parvirostris	
7113	Tropical pewee	Contopus cinereus	
7114	Black-throated grosbeak	Saltator fuliginosus	
7115	Yellow-shouldered grosbeak	Parkerthraustes humeralis	
7116	Chivi vireo	Vireo chivi	
7117	Bicolored conebill	Conirostrum bicolor	
7118	Mayotte scops owl	Otus mayottensis	
7119	Plain-brown woodcreeper	Dendrocincla fuliginosa	
7120	Yellow-whiskered greenbul	Eurillas latirostris	
7121	Short-tailed finch	Idiopsar brachyurus	
7122	Santa Marta sabrewing	Campylopterus phainopeplus	
7123	Golden-spotted ground dove	Metriopelia aymara	
7124	Lesser Antillean pewee	Contopus latirostris	
7125	La Selle thrush	Turdus swalesi	
7126	Colombian crake	Neocrex colombiana	
7127	Violet-fronted brilliant	Heliodoxa leadbeateri	
7128	Orangequit	Euneornis campestris	
7129	Cundinamarca antpitta	Grallaria kaestneri	
7130	Mountain saw-wing	Psalidoprocne fuliginosa	
7131	Purple-throated sunangel	Heliangelus viola	
7132	Scale-crested pygmy tyrant	Lophotriccus pileatus	
7133	Giant conebill	Conirostrum binghami	
7134	Red-winged lark	Mirafra hypermetra	
7135	Ochre-bellied flycatcher	Mionectes oleagineus	
7136	Harwood's spurfowl	Pternistis harwoodi	
7137	Black-bellied thorntail	Discosura langsdorffi	
7138	Tawny-headed swallow	Alopochelidon fucata	
7139	Three-striped warbler	Basileuterus tristriatus	
7140	Orange-throated sunangel	Heliangelus mavors	
7141	Beryl-spangled tanager	Tangara nigroviridis	
7142	Bridled sparrow	Peucaea mystacalis	
7143	Rusty-crowned ground sparrow	Melozone kieneri	
7144	Sick's swift	Chaetura meridionalis	
7145	Azuero dove	Leptotila battyi	
7146	Scaled chachalaca	Ortalis squamata	
7147	Sooty bushtit	Aegithalos fuliginosus	
7148	Slaty flowerpiercer	Diglossa plumbea	
7149	Buff-winged cinclodes	Cinclodes fuscus	
7150	Yellow-billed jacamar	Galbula albirostris	
7151	Austral rail	Rallus antarcticus	
7152	Clapperton's spurfowl	Pternistis clappertoni	
7153	Green-winged saltator	Saltator similis	
7154	Jamaican euphonia	Euphonia jamaica	
7155	Black-breasted hillstar	Oreotrochilus melanogaster	
7156	Santa Marta blossomcrown	Anthocephala floriceps	
7157	Bronze-winged woodpecker	Colaptes aeruginosus	
7158	Golden-tufted mountain grackle	Macroagelaius imthurni	
7159	Lined quail-dove	Zentrygon linearis	
7160	Buff-spotted woodpecker	Campethera nivosa	
7161	Greenish puffleg	Haplophaedia aureliae	
7162	Sapphire-vented puffleg	Eriocnemis luciani	
7163	White-tailed emerald	Microchera chionura	
7164	Chocó trogon	Trogon comptus	
7165	White-headed saw-wing	Psalidoprocne albiceps	
7166	Brown inca	Coeligena wilsoni	
7167	Needle-billed hermit	Phaethornis philippii	
7168	Chiriqui quail-dove	Zentrygon chiriquensis	
7169	White-sided hillstar	Oreotrochilus leucopleurus	
7170	Sooty-capped hermit	Phaethornis augusti	
7171	White-tailed starfrontlet	Coeligena phalerata	
7172	Streaked saltator	Saltator striatipectus	
7173	Mourning sierra finch	Rhopospina fruticeti	
7174	De Filippi's petrel	Pterodroma defilippiana	
7175	Bahia tapaculo	Eleoscytalopus psychopompus	
7176	Rufous-gaped hillstar	Urochroa bougueri	
7177	Moustached puffbird	Malacoptila mystacalis	
7178	Grass-green tanager	Chlorornis riefferii	
7179	Orange-breasted fruiteater	Pipreola jucunda	
7180	Chestnut-collared swallow	Petrochelidon rufocollaris	
7181	Flame-throated sunangel	Heliangelus micraster	
7182	Flutist wren	Microcerculus ustulatus	
7183	Mountain velvetbreast	Lafresnaya lafresnayi	
8726	Blacksmith thrush	Turdus subalaris	
7184	Ahanta spurfowl	Pternistis ahantensis	
7185	Ash-colored cuckoo	Coccycua cinerea	
7186	Purple-backed thornbill	Ramphomicron microrhynchum	
7187	Cocoa thrush	Turdus fumigatus	
7188	Rufous-capped antthrush	Formicarius colma	
7189	Iquitos gnatcatcher	Polioptila clementsi	
7190	White-chested swift	Cypseloides lemosi	
7191	Puna snipe	Gallinago andina	
7192	White-throated quail-dove	Zentrygon frenata	
7193	White-flanked antwren	Myrmotherula axillaris	
7194	Urrao antpitta	Grallaria urraoensis	
7195	Buru dwarf kingfisher	Ceyx cajeli	
7196	Violet-capped hummingbird	Goldmania violiceps	
7197	Black-crested antshrike	Sakesphorus canadensis	
7198	Streamer-tailed tyrant	Gubernetes yetapa	
7199	Galápagos martin	Progne modesta	
7200	Black-hooded sunbeam	Aglaeactis pamela	
7201	Rufous piha	Lipaugus unirufus	
7202	Euler's flycatcher	Lathrotriccus euleri	
7203	Fulvous-crested tanager	Tachyphonus surinamus	
7204	Sinaloa martin	Progne sinaloae	
7205	Zamboanga bulbul	Hypsipetes rufigularis	
7206	White-mantled barbet	Capito hypoleucus	
7207	Victorin's warbler	Cryptillas victorini	
7208	Somali lark	Mirafra somalica	
7209	Rusty sparrow	Aimophila rufescens	
7210	Bare-headed laughingthrush	Melanocichla calva	
7211	Santa Marta warbler	Myiothlypis basilica	
7212	Red-crested cotinga	Ampelion rubrocristatus	
7213	Southern beardless tyrannulet	Camptostoma obsoletum	
7214	Snow-capped manakin	Lepidothrix nattereri	
7215	Purple-collared woodstar	Myrtis fanny	
7216	White-tufted sunbeam	Aglaeactis castelnaudii	
7217	White-winged warbler	Xenoligea montana	
7218	Slaty finch	Haplospiza rustica	
7219	White-tailed hummingbird	Eupherusa poliocerca	
7220	White-breasted wood wren	Henicorhina leucosticta	
7221	Ruby-crowned tanager	Tachyphonus coronatus	
7222	Curve-winged sabrewing	Pampa curvipennis	
7223	Xavier's greenbul	Phyllastrephus xavieri	
7224	Altamira yellowthroat	Geothlypis flavovelata	
7225	Oleaginous hemispingus	Sphenopsis frontalis	
7226	Botha's lark	Spizocorys fringillaris	
7227	Black-throated brilliant	Heliodoxa schreibersii	
7228	Marsh seedeater	Sporophila palustris	
7229	Large-billed seed finch	Sporophila crassirostris	
7230	White-chinned thrush	Turdus aurantius	
7231	Masked gnatcatcher	Polioptila dumicola	
7232	White-capped tanager	Sericossypha albocristata	
7233	Purple-chested hummingbird	Polyerata rosenbergi	
7234	Golden-billed saltator	Saltator aurantiirostris	
7235	White-eared puffbird	Nystalus chacuru	
7236	Green-fronted hummingbird	Leucolia viridifrons	
7237	Great swallow-tailed swift	Panyptila sanctihieronymi	
7238	Tibetan lark	Melanocorypha maxima	
7239	Blood-colored woodpecker	Veniliornis sanguineus	
7240	Northern crombec	Sylvietta brachyura	
7241	White-winged cotinga	Xipholena atropurpurea	
7242	Ochre-breasted tanager	Chlorothraupis stolzmanni	
7243	Grey-hooded sierra finch	Phrygilus gayi	
7244	Andean swallow	Haplochelidon andecola	
7245	Dark-bellied cinclodes	Cinclodes patagonicus	
7246	Spot-tailed nightjar	Hydropsalis maculicaudus	
7247	Pearly-breasted cuckoo	Coccyzus euleri	
7248	Peruvian plantcutter	Phytotoma raimondii	
7249	Bronzy inca	Coeligena coeligena	
7250	White-bearded helmetcrest	Oxypogon lindenii	
7251	Mountain avocetbill	Opisthoprora euryptera	
7252	Opal-crowned manakin	Lepidothrix iris	
7253	Lanceolated monklet	Micromonacha lanceolata	
7254	Green-bellied hummingbird	Saucerottia viridigaster	
7255	Pink-throated brilliant	Heliodoxa gularis	
7256	Plain-bellied emerald	Chrysuronia leucogaster	
7257	Slaty bristlefront	Merulaxis ater	
7258	Pallid dove	Leptotila pallida	
7259	Slender-billed greenbul	Stelgidillas gracilirostris	
7260	White-browed hermit	Phaethornis stuarti	
7261	Band-rumped swift	Chaetura spinicaudus	
7262	Coppery emerald	Chlorostilbon russatus	
7263	Melodious lark	Mirafra cheniana	
7264	Ocellated poorwill	Nyctiphrynus ocellatus	
7265	Rufous-sided crake	Laterallus melanophaius	
7266	Grey-chinned hermit	Phaethornis griseogularis	
7267	Citrine warbler	Myiothlypis luteoviridis	
7268	Black-chested sparrow	Peucaea humeralis	
7269	Cone-billed tanager	Conothraupis mesoleuca	
7270	Red-banded fruiteater	Pipreola whitelyi	
7271	Buff-bellied hermit	Phaethornis subochraceus	
7272	Lafresnaye's piculet	Picumnus lafresnayi	
7273	Caatinga cacholote	Pseudoseisura cristata	
7274	Purplish-backed quail-dove	Zentrygon lawrencii	
7275	Apolinar's wren	Cistothorus apolinari	
7276	Canebrake wren	Cantorchilus zeledoni	
7277	Grey-breasted sabrewing	Campylopterus largipennis	
7278	Green shrike-vireo	Vireolanius pulchellus	
7279	Spot-crowned barbet	Capito maculicoronatus	
7280	Sooty ant tanager	Habia gutturalis	
7281	Black-and-white seedeater	Sporophila luctuosa	
7282	Sooty thrush	Turdus nigrescens	
7283	Blood-eared parakeet	Pyrrhura hoematotis	
7284	Chestnut-crowned antpitta	Grallaria ruficapilla	
7285	Hispaniolan nightjar	Antrostomus ekmani	
7286	Chestnut-bellied euphonia	Euphonia pectoralis	
7287	Cinnamon becard	Pachyramphus cinnamomeus	
7288	Black-collared swallow	Atticora melanoleuca	
7289	Large-billed lark	Galerida magnirostris	
7290	Black-capped flycatcher	Empidonax atriceps	
7291	Speckled reed warbler	Acrocephalus sorghophilus	
7292	Dwarf vireo	Vireo nelsoni	
7293	Purple-throated cotinga	Porphyrolaema porphyrolaema	
7294	Oaxaca sparrow	Aimophila notosticta	
7295	Grey-breasted wood wren	Henicorhina leucophrys	
7296	Little nightjar	Setopagis parvula	
7297	Short-tailed emerald	Chlorostilbon poortmani	
7298	Spotted wren	Campylorhynchus gularis	
7299	Cinnamon-tailed sparrow	Peucaea sumichrasti	
7300	Plain-flanked rail	Rallus wetmorei	
7301	Brazilian laniisoma	Laniisoma elegans	
7302	Buru mountain pigeon	Gymnophaps mada	
7303	Orange-headed tanager	Thlypopsis sordida	
7304	Blue-mantled thornbill	Chalcostigma stanleyi	
7305	Golden-crowned spadebill	Platyrinchus coronatus	
7306	Black-backed thornbill	Ramphomicron dorsale	
7307	Chestnut-capped puffbird	Bucco macrodactylus	
7308	White-throated crake	Laterallus albigularis	
7309	Pink-breasted lark	Calendulauda poecilosterna	
7310	Streak-headed woodcreeper	Lepidocolaptes souleyetii	
7311	White-vented euphonia	Euphonia minuta	
7312	Ash's lark	Mirafra ashi	
7313	Elegant crescentchest	Melanopareia elegans	
7314	Blue-throated starfrontlet	Coeligena helianthea	
7315	Yellowish bulbul	Hypsipetes everetti	
7316	Lemon-rumped tanager	Ramphocelus icteronotus	
7317	Speckled mourner	Laniocera rufescens	
7318	Short-tailed woodstar	Myrmia micrura	
7319	Trinidad euphonia	Euphonia trinitatis	
7320	Long-billed wren	Cantorchilus longirostris	
7321	White-spotted woodpecker	Veniliornis spilogaster	
7322	San Andres vireo	Vireo caribaeus	
7323	Pirre hummingbird	Goldmania bella	
7324	Yucatan flycatcher	Myiarchus yucatanensis	
7325	Black-thighed puffleg	Eriocnemis derbyi	
7326	Magellanic diving petrel	Pelecanoides magellani	
7327	Russet-throated puffbird	Hypnelus ruficollis	
7328	Cinereous becard	Pachyramphus rufus	
7329	Dusky antbird	Cercomacroides tyrannina	
7330	Red-billed emerald	Chlorostilbon gibsoni	
7331	Dusky nightjar	Antrostomus saturatus	
7332	Freckle-breasted thornbird	Phacellodomus striaticollis	
7333	Ecuadorian piculet	Picumnus sclateri'	
7334	Chestnut-crowned gnateater	Conopophaga castaneiceps	
7335	Fischer's sparrow-lark	Eremopterix leucopareia	
7336	Speckle-chested piculet	Picumnus steindachneri	
7337	Rufous-webbed brilliant	Heliodoxa branickii	
7338	Russet-crowned crake	Rufirallus viridis	
7339	Crested hornero	Furnarius cristatus	
7340	Jamaican spindalis	Spindalis nigricephala	
7341	Seram mountain pigeon	Gymnophaps stalkeri	
7342	Slaty-backed nightingale-thrush	Catharus fuscater	
7343	Blackish rail	Pardirallus nigricans	
7344	Fasciated wren	Campylorhynchus fasciatus	
7345	Scrub tanager	Stilpnia vitriolina	
7346	Tumbes swallow	Tachycineta stolzmanni	
7347	Olive-spotted hummingbird	Talaphorus chlorocercus	
7348	Fulvous shrike-tanager	Lanio fulvus	
7349	Emerald-bellied puffleg	Eriocnemis aline	
7350	Buff-winged starfrontlet	Coeligena lutetiae	
7351	Buff-rumped warbler	Myiothlypis fulvicauda	
7352	Chocó vireo	Vireo masteri	
7353	Chestnut-hooded laughingthrush	Pterorhinus treacheri	
7354	Tooth-billed wren	Odontorchilus cinereus	
7355	Yellow-bridled finch	Melanodera xanthogramma	
7356	Chestnut-throated huet-huet	Pteroptochos castaneus	
7357	Wing-barred piprites	Piprites chloris	
7358	Sooty-capped bush tanager	Chlorospingus pileatus	
7359	Barred fruiteater	Pipreola arcuata	
7360	Chestnut-bellied hummingbird	Saucerottia castaneiventris	
7361	Black-goggled tanager	Trichothraupis melanops	
7362	Olivaceous siskin	Spinus olivaceus	
7363	Puff-backed bulbul	Euptilotus eutilotus	
7364	Amazonian barred woodcreeper	Dendrocolaptes certhia	
7365	Nepal cupwing	Pnoepyga immaculata	
7366	Brown-capped vireo	Vireo leucophrys	
7367	Olive bulbul	Iole viridescens	
7368	White-edged oriole	Icterus graceannae	
7369	Fringe-backed fire-eye	Pyriglena atra	
7370	Black-cheeked gnateater	Conopophaga melanops	
7371	White-tipped swift	Aeronautes montivagus	
7372	Brown jacamar	Brachygalba lugubris	
7373	Swallow-tailed nightjar	Uropsalis segmentata	
7374	Chestnut-naped spurfowl	Pternistis castaneicollis	
7375	Golden-bellied flycatcher	Myiodynastes hemichrysus	
7376	Golden-breasted puffleg	Eriocnemis mosquera	
7377	Grey-backed sparrow-lark	Eremopterix verticalis	
7378	Jamaican becard	Pachyramphus niger	
7379	Purus jacamar	Galbalcyrhynchus purusianus	
7380	Undulated antpitta	Grallaria squamigera	
7381	Black flowerpiercer	Diglossa humeralis	
7382	Saffron-crested tyrant-manakin	Neopelma chrysocephalum	
7383	Zeledon's antbird	Percnostola zeledoni	
7384	Black-polled yellowthroat	Geothlypis speciosa	
7385	Black-and-white monjita	Heteroxolmis dominicanus	
7386	Guianan puffbird	Notharchus macrorhynchos	
7387	Bran-colored flycatcher	Myiophobus fasciatus	
7388	Mountain wren	Troglodytes solstitialis	
7389	White-faced nunbird	Hapaloptila castanea	
7390	Saffron siskin	Spinus siemiradzkii	
7391	Banded wren	Thryophilus pleurostictus	
7392	Black-crested finch	Lophospingus pusillus	
7393	Common scale-backed antbird	Willisornis poecilinotus	
7394	Bluish-fronted jacamar	Galbula cyanescens	
7395	Stripe-capped sparrow	Rhynchospiza strigiceps	
7396	Limestone leaf warbler	Phylloscopus calciatilis	
7397	Napo sabrewing	Campylopterus villaviscensio	
7398	Rufous-breasted sabrewing	Campylopterus hyperythrus	
7399	Lesson's seedeater	Sporophila bouvronides	
7400	Russet antshrike	Thamnistes anabatinus	
7401	Russet-crowned warbler	Myiothlypis coronata	
7402	Burmese bush lark	Mirafra microptera	
7403	Fulvous parrotbill	Suthora fulvifrons	
7404	Rufous-capped thornbill	Chalcostigma ruficeps	
7405	Crested black tyrant	Knipolegus lophotes	
7406	Neotropical palm swift	Tachornis squamata	
7407	Orinoco piculet	Picumnus pumilus	
7408	Red-and-white crake	Laterallus leucopyrrhus	
7409	Subtropical pygmy owl	Glaucidium parkeri	
7410	Ecuadorian piedtail	Phlogophilus hemileucurus	
7411	Sickle-winged nightjar	Eleothreptus anomalus	
7412	Black-and-gold tanager	Bangsia melanochlamys	
7413	White-breasted parakeet	Pyrrhura albipectus	
7414	Viridian metaltail	Metallura williami	
7415	Yellow-collared chlorophonia	Chlorophonia flavirostris	
7416	Geoffroy's daggerbill	Schistes geoffroyi	
7417	Mountain owlet-nightjar	Aegotheles albertisi	
7418	Green manakin	Cryptopipo holochlora	
7419	Yucatan nightjar	Antrostomus badius	
7420	Rufous-brown solitaire	Cichlopsis leucogenys	
7421	Black-chested fruiteater	Pipreola lubomirskii	
7422	White-lored gnatcatcher	Polioptila albiloris	
7423	Grey-headed tanager	Eucometis penicillata	
7424	Least poorwill	Siphonorhis brewsteri	
7425	Ludwig's double-collared sunbird	Cinnyris ludovicensis	
7426	Golden-spangled piculet	Picumnus exilis	
7427	Lesser Antillean saltator	Saltator albicollis	
7428	Spangle-cheeked tanager	Tangara dowii	
7429	Hispaniolan pewee	Contopus hispaniolensis	
7430	Thick-billed siskin	Spinus crassirostris	
7431	Cinnamon-bellied flowerpiercer	Diglossa baritula	
7432	Red-faced spinetail	Cranioleuca erythrops	
7433	Saffron-crowned tanager	Tangara xanthocephala	
7434	Tepui swift	Streptoprocne phelpsi	
7435	Black-headed berryeater	Carpornis melanocephala	
7436	Northern schiffornis	Schiffornis veraepacis	
7437	Sun lark	Galerida modesta	
7438	Red-billed ground cuckoo	Neomorphus pucheranii	
7439	Tawny-capped euphonia	Euphonia anneae	
7440	Black-hooded antshrike	Thamnophilus bridgesi	
7441	Chico's tyrannulet	Zimmerius chicomendesi	
7442	Five-colored barbet	Capito quinticolor	
7443	Straight-billed woodcreeper	Dendroplex picus	
7444	Streak-chested antpitta	Hylopezus perspicillatus	
7445	Arrowhead piculet	Picumnus minutissimus	
7446	Buff-throated purpletuft	Iodopleura pipra	
7447	Yellowish pipit	Anthus lutescens	
7448	Slaty antwren	Myrmotherula schisticolor	
7449	Grey-striped spurfowl	Pternistis griseostriatus	
7450	Wing-barred seedeater	Sporophila americana	
7451	Yucatan poorwill	Nyctiphrynus yucatanicus	
7452	Orange-crowned oriole	Icterus auricapillus	
7453	Blue-and-gold tanager	Bangsia arcaei	
7454	Buff-browed chachalaca	Ortalis superciliaris	
7455	Grey-breasted crake	Laterallus exilis	
7456	Coppery-chested jacamar	Galbula pastazae	
7457	Mistletoe tyrannulet	Zimmerius parvus	
7458	Silvery-fronted tapaculo	Scytalopus argentifrons	
7459	Lesser Antillean flycatcher	Myiarchus oberi	
7460	Ash-winged antwren	Euchrepomis spodioptila	
7461	Green-tailed emerald	Chlorostilbon alice	
7462	Chestnut-breasted chlorophonia	Chlorophonia pyrrhophrys	
7463	Rufous gnateater	Conopophaga lineata	
7464	Black-backed tanager	Stilpnia peruviana	
7465	Heuglin's spurfowl	Pternistis icterorhynchus	
7466	Icterine greenbul	Phyllastrephus icterinus	
7467	Grey-mantled wren	Odontorchilus branickii	
7468	Mangrove vireo	Vireo pallens	
7469	Brassy-breasted tanager	Tangara desmaresti	
7470	Diademed tanager	Stephanophorus diadematus	
7471	Pine flycatcher	Empidonax affinis	
7472	Rusty-necked piculet	Picumnus fuscus	
7473	Crimson-fronted cardinal	Paroaria baeri	
7474	Opal-crowned tanager	Tangara callophrys	
7475	Black-throated saltator	Saltatricula atricollis	
7476	Golden greenbul	Calyptocichla serinus	
7477	Cape long-billed lark	Certhilauda curvirostris	
7478	Yellow-olive flatbill	Tolmomyias sulphurescens	
7479	Blue Mountain vireo	Vireo osburni	
7480	Lesser elaenia	Elaenia chiriquensis	
7481	Peruvian sierra finch	Phrygilus punensis	
7482	Olive-crowned crescentchest	Melanopareia maximiliani	
7483	Sira barbet	Capito fitzpatricki	
7484	Peruvian piedtail	Phlogophilus harterti	
7485	Scaled fruiteater	Ampelioides tschudii	
7486	Tiny tyrant-manakin	Tyranneutes virescens	
7487	White-headed wren	Campylorhynchus albobrunneus	
7488	Rusty-breasted nunlet	Nonnula rubecula	
7489	Tepui goldenthroat	Polytmus milleri	
7490	Sombre pigeon	Cryptophaps poecilorrhoa	
7491	Eastern long-billed lark	Certhilauda semitorquata	
7492	Black mannikin	Lonchura stygia	
7493	Spot-breasted wren	Pheugopedius maculipectus	
7494	Swainson's flycatcher	Myiarchus swainsoni	
7495	Acre antshrike	Thamnophilus divisorius	
7496	Mottled piculet	Picumnus nebulosus	
7497	White-bellied cinclodes	Cinclodes palliatus	
7498	Grey-crested finch	Lophospingus griseocristatus	
7499	Barred puffbird	Nystalus radiatus	
7500	Golden-fronted whitestart	Myioborus ornatus	
7501	Gould's nightingale-thrush	Catharus dryas	
7502	Scarlet-breasted fruiteater	Pipreola frontalis	
7503	Black-spotted bare-eye	Phlegopsis nigromaculata	
7504	Golden-collared honeycreeper	Iridophanes pulcherrimus	
7505	Greater swamp warbler	Acrocephalus rufescens	
7506	Hume's bush warbler	Horornis brunnescens	
7507	Oaxaca hummingbird	Eupherusa cyanophrys	
7508	Spot-throated woodcreeper	Certhiasomus stictolaemus	
7509	White-eared conebill	Conirostrum leucogenys	
7510	Yellow-winged vireo	Vireo carmioli	
7511	Sepia-brown wren	Cinnycerthia olivascens	
7512	Curve-billed scythebill	Campylorhamphus procurvoides	
7513	Golden-breasted fruiteater	Pipreola aureopectus	
7514	Curve-billed reedhaunter	Limnornis curvirostris	
7515	Black-hooded sierra finch	Phrygilus atriceps	
7516	Caatinga puffbird	Nystalus maculatus	
7517	Pampa finch	Embernagra platensis	
7518	Red-fronted antpecker	Parmoptila rubrifrons	
7519	White-cheeked cotinga	Zaratornis stresemanni	
7520	Arafura fantail	Rhipidura dryas	
7521	Purplish-mantled tanager	Iridosornis porphyrocephalus	
7522	Tit-like dacnis	Xenodacnis parina	
7523	Black-breasted puffbird	Notharchus pectoralis	
7524	Lesser hoopoe-lark	Alaemon hamertoni	
7525	Painted manakin	Machaeropterus eckelberryi	
7526	Chestnut-capped brushfinch	Arremon brunneinucha	
7527	Golden-winged manakin	Masius chrysopterus	
7528	Veracruz wren	Campylorhynchus rufinucha	
7529	Short-clawed lark	Certhilauda chuana	
7530	Cordillera Azul antbird	Myrmoderus eowilsoni	
7531	Black-backed water tyrant	Fluvicola albiventer	
7532	Long-tailed tyrant	Colonia colonus	
7533	Swamp palm bulbul	Thescelocichla leucopleura	
7534	Ringed warbling finch	Microspingus torquatus	
7535	Golden-eared tanager	Tangara chrysotis	
7536	Pearly-bellied seedeater	Sporophila pileata	
7537	Thrush-like antpitta	Myrmothera campanisona	
7538	Ticking doradito	Pseudocolopteryx citreola	
7539	Cinereous antshrike	Thamnomanes caesius	
7540	White-bellied antbird	Myrmeciza longipes	
7541	Black-chinned mountain tanager	Anisognathus notabilis	
7542	Black-collared bulbul	Neolestes torquatus	
7543	Cock-tailed tyrant	Alectrurus tricolor	
7544	Scarlet-horned manakin	Ceratopipra cornuta	
7545	Black manakin	Xenopipo atronitens	
7546	Cinnamon-throated woodcreeper	Dendrexetastes rufigula	
7547	Mountain elaenia	Elaenia frantzii	
7548	Jamaican vireo	Vireo modestus	
7549	Lesser Antillean swift	Chaetura martinica	
7550	Buff-breasted wren	Cantorchilus leucotis	
7551	Moustached grass warbler	Melocichla mentalis	
7552	Azure-shouldered tanager	Thraupis cyanoptera	
7553	Masked fruiteater	Pipreola pulchra	
7554	Spot-crowned euphonia	Euphonia imitans	
7555	Olivaceous thornbill	Chalcostigma olivaceum	
7556	Bronze-tailed thornbill	Chalcostigma heteropogon	
7557	White-throated tapaculo	Scelorchilus albicollis	
7558	Azure-rumped tanager	Poecilostreptus cabanisi	
7559	Pink-billed lark	Spizocorys conirostris	
7560	Moss-backed tanager	Bangsia edwardsi	
7561	Bolivian blackbird	Oreopsar bolivianus	
7562	Spot-throated hummingbird	Thaumasius taczanowskii	
7563	Sulphury flycatcher	Tyrannopsis sulphurea	
7564	Chestnut-shouldered antwren	Euchrepomis humeralis	
7565	Gansu leaf warbler	Phylloscopus kansuensis	
7566	Crag chilia	Ochetorhynchus melanurus	
7567	Violet-throated starfrontlet	Coeligena violifer	
7568	Bahian mouse-colored tapaculo	Scytalopus gonzagai	
7569	Rufous-tailed flycatcher	Myiarchus validus	
7570	Ocellated piculet	Picumnus dorbignyanus	
7571	Brown-eared woodpecker	Pardipicus caroli	
7572	Brown wood rail	Aramides wolfi	
7573	Cuban gnatcatcher	Polioptila lembeyei	
7574	Sand-coloured nighthawk	Chordeiles rupestris	
7575	Rufous-breasted antthrush	Formicarius rufipectus	
7576	Little wood rail	Aramides mangle	
7577	Russet-crowned quail-dove	Zentrygon goldmani	
7578	Green-backed becard	Pachyramphus viridis	
7579	Archbold's owlet-nightjar	Aegotheles archboldi	
7580	Ash-breasted tit-tyrant	Anairetes alpinus	
7581	Tatama tapaculo	Scytalopus alvarezlopezi	
7582	Scaled piculet	Picumnus squamulatus	
7583	Tumbes hummingbird	Thaumasius baeri	
7584	Buff-thighed puffleg	Haplophaedia assimilis	
7585	Plain-colored tanager	Tangara inornata	
7586	Grey-eyed bulbul	Iole propinqua	
7587	Pygmy antwren	Myrmotherula brachyura	
7588	Round-tailed manakin	Ceratopipra chloromeros	
7589	Short-tailed antthrush	Chamaeza campanisona	
7590	Spot-crowned woodcreeper	Lepidocolaptes affinis	
7591	Plain-tailed wren	Pheugopedius euophrys	
7592	Scarlet-hooded barbet	Eubucco tucinkae	
7593	Cabanis's ground sparrow	Melozone cabanisi	
7594	Ecuadorian cacique	Cacicus sclateri	
7595	Fawn-breasted wren	Cantorchilus guarayanus	
7596	Rufous-bellied euphonia	Euphonia rufiventris	
7597	Varzea piculet	Picumnus varzeae	
7598	Black-billed shrike-tyrant	Agriornis montanus	
7599	Red-billed pied tanager	Lamprospiza melanoleuca	
7600	Brown-winged schiffornis	Schiffornis turdina	
7601	Northern brownbul	Phyllastrephus strepitans	
7602	Red-capped crombec	Sylvietta ruficapilla	
7603	Coal-crested finch	Charitospiza eucosma	
7604	Gold-ringed tanager	Bangsia aureocincta	
7605	Orange-throated tanager	Wetmorethraupis sterrhopteron	
7606	Sumichrast's wren	Hylorchilus sumichrasti	
7607	Tumbes sparrow	Rhynchospiza stolzmanni	
7608	Cinereous conebill	Conirostrum cinereum	
7609	Costa Rican swift	Chaetura fumosa	
7610	Serra antwren	Formicivora serrana	
7611	Spotted bamboowren	Psilorhamphus guttatus	
7612	Wedge-tailed hillstar	Oreotrochilus adela	
7613	Kaempfer's tody-tyrant	Hemitriccus kaempferi	
7614	Yellow-backed tanager	Hemithraupis flavicollis	
7615	Neblina metaltail	Metallura odomae	
7616	Black-headed antthrush	Formicarius nigricapillus	
7617	Andean solitaire	Myadestes ralloides	
7618	Hispaniolan spindalis	Spindalis dominicensis	
7619	Black-and-rufous warbling finch	Poospiza nigrorufa	
7620	Mountain cacique	Cacicus chrysonotus	
7621	Rose-collared piha	Lipaugus streptophorus	
7622	Bronzy jacamar	Galbula leucogastra	
7623	Blue-backed conebill	Conirostrum sitticolor	
7624	Fiery-throated metaltail	Metallura eupogon	
7625	Scrub greenlet	Hylophilus flavipes	
7626	Black-banded woodcreeper	Dendrocolaptes picumnus	
7627	Ochraceous piculet	Picumnus limae	
7628	Coppery-bellied puffleg	Eriocnemis cupreoventris	
7629	Papyrus yellow warbler	Calamonastides gracilirostris	
7630	White-chinned jacamar	Galbula tombacea	
7631	Wing-banded wren	Microcerculus bambla	
7632	Bananal antbird	Cercomacra ferdinandi	
7633	Casqued oropendola	Cacicus oseryi	
7634	Ochraceous wren	Troglodytes ochraceus	
7635	Rio de Janeiro antwren	Myrmotherula fluminensis	
7636	Cinnamon flycatcher	Pyrrhomyias cinnamomeus	
7637	Bar-crested antshrike	Thamnophilus multistriatus	
7638	Bay-vented cotinga	Doliornis sclateri	
7639	Turquoise dacnis	Dacnis hartlaubi	
7640	Ceará gnateater	Conopophaga cearae	
7641	Fulvous wren	Cinnycerthia fulva	
7642	Handsome fruiteater	Pipreola formosa	
7643	Rufous-vented whitetip	Urosticte ruficrissa	
7644	White-wedged piculet	Picumnus albosquamatus	
7645	Tocuyo sparrow	Arremonops tocuyensis	
7646	Moustached antpitta	Grallaria alleni	
7647	Guianan warbling antbird	Hypocnemis cantator	
7648	Russet-bellied spinetail	Synallaxis zimmeri	
7649	Buff-fronted foliage-gleaner	Dendroma rufa	
7650	Black-girdled barbet	Capito dayi	
7651	Blackish tapaculo	Scytalopus latrans	
7652	Dusky piha	Lipaugus fuscocinereus	
7653	Black-backed antshrike	Thamnophilus melanonotus	
7654	Grey seedeater	Sporophila intermedia	
7655	Peg-billed finch	Acanthidops bairdi	
7656	Togian white-eye	Zosterops somadikartai	
7657	Antioquia brushfinch	Atlapetes blancae	
7658	Blue-lored antbird	Percnostola immaculata	
7659	Marvelous spatuletail	Loddigesia mirabilis	
7660	Nava's wren	Hylorchilus navai	
7661	Moustached woodcreeper	Xiphocolaptes falcirostris	
7662	Bearded tachuri	Polystictus pectoralis	
7663	Black-capped piprites	Piprites pileata	
7664	Mayan antthrush	Formicarius moniliger	
7665	Chestnut-belted gnateater	Conopophaga aurita	
7666	Speckled rail	Coturnicops notatus	
7667	Crested gallito	Rhinocrypta lanceolata	
7668	Pectoral sparrow	Arremon taciturnus	
7669	Plumbeous euphonia	Euphonia plumbea	
7670	Yellow-chinned spinetail	Certhiaxis cinnamomeus	
7671	Cabanis's greenbul	Phyllastrephus cabanisi	
7672	Black-fronted spurfowl	Pternistis atrifrons	
7673	Madagascan lark	Eremopterix hova	
7674	Great xenops	Megaxenops parnaguae	
7675	Orange-fronted barbet	Capito squamatus	
7676	Flavescent warbler	Myiothlypis flaveola	
7677	White-throated jacamar	Brachygalba albogularis	
7678	Chestnut-bellied flowerpiercer	Diglossa gloriosissima	
7679	Black-and-white tanager	Conothraupis speculigera	
7680	Jet antbird	Cercomacra nigricans	
7681	Chestnut piculet	Picumnus cinnamomeus	
7682	Peruvian martin	Progne murphyi	
7683	Short-crested flycatcher	Myiarchus ferox	
7684	Large-footed finch	Pezopetes capitalis	
7685	Coraya wren	Pheugopedius coraya	
7686	Thicket antpitta	Hylopezus dives	
7687	Caatinga antwren	Herpsilochmus sellowi	
7688	White-tailed lark	Mirafra albicauda	
7689	Brasília tapaculo	Scytalopus novacapitalis	
7690	Bar-bellied woodpecker	Veniliornis nigriceps	
7691	Chestnut-capped piha	Lipaugus weberi	
7692	Purplish jacamar	Galbula chalcothorax	
7693	White-throated treerunner	Pygarrhichas albogularis	
7694	Plumbeous seedeater	Sporophila plumbea	
7695	Dusky bush tanager	Chlorospingus semifuscus	
7696	Northern barred woodcreeper	Dendrocolaptes sanctithomae	
7697	Silky-tailed nightjar	Antrostomus sericocaudatus	
7698	El Oro tapaculo	Scytalopus robbinsi	
7699	Russet-naped wood rail	Aramides albiventris	
7700	Sclater's antwren	Myrmotherula sclateri	
7701	Velvet-browed brilliant	Heliodoxa xanthogonys	
7702	White-fronted manakin	Lepidothrix serena	
7703	Mouse-colored tyrannulet	Phaeomyias murina	
7704	Yellow-rumped antwren	Euchrepomis sharpei	
7705	Lesser hornero	Furnarius minor	
7706	Rufous-rumped lark	Pinarocorys erythropygia	
7707	White-breasted tapaculo	Eleoscytalopus indigoticus	
7708	Guianan tyrannulet	Zimmerius acer	
7709	White-cheeked antbird	Gymnopithys leucaspis	
7710	Dusky-backed jacamar	Brachygalba salmoni	
7711	Grey monjita	Xolmis cinereus	
7712	Sclater's lark	Spizocorys sclateri	
7713	Coppery metaltail	Metallura theresiae	
7714	Olive-striped flycatcher	Mionectes olivaceus	
7715	Black-capped warbling finch	Microspingus melanoleucus	
7716	Niceforo's wren	Thryophilus nicefori	
7717	Buff-throated woodcreeper	Xiphorhynchus guttatus	
7718	Taiwan cupwing	Pnoepyga formosana	
7719	Glossy flowerpiercer	Diglossa lafresnayii	
7720	Obbia lark	Spizocorys obbiensis	
7721	Scaled metaltail	Metallura aeneocauda	
7722	Yungas manakin	Chiroxiphia boliviana	
7723	Tawny-collared nightjar	Antrostomus salvini	
7724	Blue-necked jacamar	Galbula cyanicollis	
7725	Golden vireo	Vireo hypochryseus	
7726	Chestnut-bellied cotinga	Doliornis remseni	
7727	Stripe-backed antbird	Myrmorchilus strigilatus	
7728	Tablas fantail	Rhipidura sauli	
7729	Inca wren	Pheugopedius eisenmanni	
7730	Tawny-crowned greenlet	Tunchiornis ochraceiceps	
7731	Black-masked finch	Coryphaspiza melanotis	
7732	Grey-winged cotinga	Lipaugus conditus	
7733	Band-tailed fruiteater	Pipreola intermedia	
7734	Black-throated antbird	Myrmophylax atrothorax	
7735	Blue-capped puffleg	Eriocnemis glaucopoides	
7736	Andean negrito	Lessonia oreas	
7737	Anthony's nightjar	Nyctidromus anthonyi	
7738	Greenish schiffornis	Schiffornis virescens	
7739	Mountain yellow warbler	Iduna similis	
7740	Slate-coloured seedeater	Sporophila schistacea	
7741	Tawny-crested tanager	Tachyphonus delatrii	
7742	Gray-throated warbling finch	Microspingus cabanisi	
7743	Jamaican elaenia	Myiopagis cotta	
7744	White-browed crombec	Sylvietta leucophrys	
7745	Saturnine antshrike	Thamnomanes saturninus	
7746	Helmeted pygmy tyrant	Lophotriccus galeatus	
7747	Patagonian yellow finch	Sicalis lebruni	
7748	Sepia-capped flycatcher	Leptopogon amaurocephalus	
7749	Red-tailed leaflove	Phyllastrephus scandens	
7750	Black bushbird	Neoctantes niger	
7751	Chestnut-sided shrike-vireo	Vireolanius melitophrys	
7752	Indigo flowerpiercer	Diglossa indigotica	
7753	White-throated seedeater	Sporophila albogularis	
7754	Black-crested warbler	Myiothlypis nigrocristata	
7755	Pale baywing	Agelaioides fringillarius	
7756	Ash-breasted sierra finch	Geospizopsis plebejus	
7757	Chestnut-throated seedeater	Sporophila telasco	
7758	Joyful greenbul	Chlorocichla laetissima	
7759	Selva cacique	Cacicus koepckeae	
7760	Southern white-fringed antwren	Formicivora grisea	
7761	Cryptic antthrush	Chamaeza meruloides	
7762	Cinnamon attila	Attila cinnamomeus	
7763	Hooded mountain tanager	Buthraupis montana	
7764	Santa Marta wren	Troglodytes monticola	
7765	Barred becard	Pachyramphus versicolor	
7766	Spotted woodcreeper	Xiphorhynchus erythropygius	
7767	Rusty flowerpiercer	Diglossa sittoides	
7768	White-browed tit-spinetail	Leptasthenura xenothorax	
7769	Spotted barbtail	Premnoplex brunnescens	
7770	Yellow-shouldered grassquit	Loxipasser anoxanthus	
7771	Band-tailed oropendola	Cacicus latirostris	
7772	Slaty-capped shrike-vireo	Vireolanius leucotis	
7773	Rufous-faced crake	Laterallus xenopterus	
7774	Blue-rumped manakin	Lepidothrix isidorei	
7775	Buffy tuftedcheek	Pseudocolaptes lawrencii	
7776	Chestnut-headed sparrow-lark	Eremopterix signatus	
7777	Tawny-winged woodcreeper	Dendrocincla anabatina	
7778	Rusty-tinged antpitta	Grallaria przewalskii	
7779	Band-tailed hornero	Furnarius figulus	
7780	Black-banded crake	Laterallus fasciatus	
7781	Copper seedeater	Sporophila bouvreuil	
7782	Violet-chested hummingbird	Sternoclyta cyanopectus	
7783	Lowland tiny greenbul	Phyllastrephus debilis	
7784	Narrow-billed antwren	Formicivora iheringi	
7785	One-colored becard	Pachyramphus homochrous	
7786	Red-stained woodpecker	Veniliornis affinis	
7787	Vogelkop owlet-nightjar	Aegotheles affinis	
7788	Yellow-eared woodpecker	Veniliornis maculifrons	
7789	Pale-headed jacamar	Brachygalba goeringi	
7790	Buff-breasted sabrewing	Campylopterus duidae	
7791	Cream-striped bulbul	Hemixos leucogrammicus	
7792	Black-faced tanager	Schistochlamys melanopis	
7793	Golden-bellied warbler	Myiothlypis chrysogaster	
7794	Golden-crowned tanager	Iridosornis rufivertex	
7795	Riverside wren	Cantorchilus semibadius	
7796	Chestnut-crested cotinga	Ampelion rufaxilla	
7797	White-tailed cotinga	Xipholena lamellipennis	
7798	Sclater's wren	Campylorhynchus humilis	
7799	Pale-breasted spinetail	Synallaxis albescens	
7800	Tropeiro seedeater	Sporophila beltoni	
7801	White-ringed flycatcher	Conopias albovittatus	
7802	Crescent-faced antpitta	Grallaricula lineifrons	
7803	Ruddy treerunner	Margarornis rubiginosus	
7804	Bare-crowned antbird	Gymnocichla nudiceps	
7805	Rufous-browed wren	Troglodytes rufociliatus	
7806	Chestnut-naped antpitta	Grallaria nuchalis	
7807	Stripe-backed wren	Campylorhynchus nuchalis	
7808	Stripe-throated jery	Neomixis striatigula	
7809	Cream-winged cinclodes	Cinclodes albiventris	
7810	Allpahuayo antbird	Percnostola arenarum	
7811	Black-faced antbird	Myrmoborus myotherinus	
7812	Pale-vented thrush	Turdus obsoletus	
7813	Sincorá antwren	Formicivora grantsaui	
7814	Black-throated flowerpiercer	Diglossa brunneiventris	
7815	Chestnut-breasted wren	Cyphorhinus thoracicus	
7816	Flat-billed vireo	Vireo nanus	
7817	Lesser woodcreeper	Xiphorhynchus fuscus	
7818	Brown twinspot	Clytospiza monteiri	
7819	Lacrimose mountain tanager	Anisognathus lacrymosus	
7820	Patagonian tyrant	Colorhamphus parvirostris	
7821	White-rumped sirystes	Sirystes albocinereus	
7822	Spotted tody-flycatcher	Todirostrum maculatum	
7823	Pale-footed swallow	Notiochelidon flavipes	
7824	Ecuadorian thrush	Turdus maculirostris	
7825	Many-colored Chaco finch	Saltatricula multicolor	
7826	Jamaican pewee	Contopus pallidus	
7827	Slender-billed xenops	Xenops tenuirostris	
7828	White-bellied piculet	Picumnus spilogaster	
7829	Orange-crowned euphonia	Euphonia saturata	
7830	Whiskered myiobius	Myiobius barbatus	
7831	Wedge-tailed grass finch	Emberizoides herbicola	
7832	Black solitaire	Entomodestes coracinus	
7833	Rondônia bushbird	Clytoctantes atrogularis	
7834	Sandy gallito	Teledromas fuscus	
7835	Marsh tapaculo	Scytalopus iraiensis	
7836	Tawny-faced gnatwren	Microbates cinereiventris	
7837	Finsch's bulbul	Iole finschii	
7838	Blue-backed tanager	Cyanicterus cyanicterus	
7839	Chirinda apalis	Apalis chirindensis	
7840	Golden-winged sparrow	Arremon schlegeli	
7841	Rufous-capped antshrike	Thamnophilus ruficapillus	
7842	Stout-billed cinclodes	Cinclodes excelsior	
7843	Brown tanager	Orchesticus abeillei	
7844	Great rufous woodcreeper	Xiphocolaptes major	
7845	Suiriri flycatcher	Suiriri suiriri	
7846	Yellow tyrannulet	Capsiempis flaveola	
7847	Brown-billed scythebill	Campylorhamphus pusillus	
7848	Moustached antwren	Myrmotherula ignota	
7849	Indochinese bush lark	Mirafra erythrocephala	
7850	Little grey greenbul	Eurillas gracilis	
7851	Spotted piculet	Picumnus pygmaeus	
7852	Campina thrush	Turdus arthuri	
7853	Collared lark	Mirafra collaris	
7854	Fork-tailed tody-tyrant	Hemitriccus furcatus	
7855	Sibilant sirystes	Sirystes sibilator	
7856	Slender-tailed woodstar	Microstilbon burmeisteri	
7857	White-chested puffbird	Malacoptila fusca	
7858	Chestnut-winged cinclodes	Cinclodes albidiventris	
7859	Yellow-throated apalis	Apalis flavigularis	
7860	Honeyguide greenbul	Baeopogon indicator	
7861	Jet manakin	Chloropipo unicolor	
7862	Miombo pied barbet	Tricholaema frontata	
7863	Narrow-billed woodcreeper	Lepidocolaptes angustirostris	
7864	White-lored euphonia	Euphonia chrysopasta	
7865	Rough-legged tyrannulet	Phyllomyias burmeisteri	
7866	Amazonian antshrike	Thamnophilus amazonicus	
7867	Hooded yellowthroat	Geothlypis nelsoni	
7868	Yellow-throated bush tanager	Chlorospingus flavigularis	
7869	Banded antbird	Dichrozona cincta	
7870	Fulvous-vented euphonia	Euphonia fulvicrissa	
7871	Short-billed pipit	Anthus furcatus	
7872	Anjouan brush warbler	Nesillas longicaudata	
7873	Dull-mantled antbird	Sipia laemosticta	
7874	Necklaced spinetail	Synallaxis stictothorax	
7875	Black-eared hemispingus	Sphenopsis melanotis	
7876	Rufous mourner	Rhytipterna holerythra	
7877	Star-throated antwren	Rhopias gularis	
7878	Black-billed scythebill	Campylorhamphus falcularius	
7879	Orange-bellied manakin	Lepidothrix suavissima	
7880	Scimitar-winged piha	Lipaugus uropygialis	
7881	White-chinned thistletail	Asthenes fuliginosa	
7882	Crested doradito	Pseudocolopteryx sclateri	
7883	Dubois's seedeater	Sporophila ardesiaca	
7884	Ochre-breasted pipit	Anthus nattereri	
7885	White-throated woodpecker	Piculus leucolaemus	
7886	Crested becard	Pachyramphus validus	
7887	Lesser Antillean tanager	Stilpnia cucullata	
7888	Amazonian streaked antwren	Myrmotherula multostriata	
7889	White-bearded antshrike	Biatas nigropectus	
7890	Long-tailed cinclodes	Cinclodes pabsti	
7891	Bornean stubtail	Urosphena whiteheadi	
7892	Carbonated sierra finch	Porphyrospiza carbonaria	
7893	Grey-throated chat	Granatellus sallaei	
7894	Two-banded warbler	Myiothlypis bivittata	
7895	Bamboo antshrike	Cymbilaimus sanctaemariae	
7896	Tacarcuna tapaculo	Scytalopus panamensis	
7897	Velvet-fronted euphonia	Euphonia concinna	
7898	Slaty vireo	Vireo brevipennis	
7899	Belted flycatcher	Xenotriccus callizonus	
7900	White-bellied seedeater	Sporophila leucoptera	
7901	Grey-cheeked nunlet	Nonnula frontalis	
7902	Sao Francisco black tyrant	Knipolegus franciscanus	
7903	Pale-billed antpitta	Grallaria carrikeri	
7904	Antioquia wren	Thryophilus sernai	
7905	Mountain greenbul	Arizelocichla nigriceps	
7906	Rufous-winged tanager	Tangara lavinia	
7907	Stripe-cheeked greenbul	Arizelocichla milanjensis	
7908	Chestnut-vented conebill	Conirostrum speciosum	
7909	Junin tapaculo	Scytalopus gettyae	
7910	Large-tailed antshrike	Mackenziaena leachii	
7911	Russet-winged schiffornis	Schiffornis stenorhyncha	
7912	Yellow-scarfed tanager	Iridosornis reinhardti	
7913	Ash-throated antwren	Herpsilochmus parkeri	
7914	Ashy-headed greenlet	Hylophilus pectoralis	
7915	Buff-bellied puffbird	Notharchus swainsoni	
7916	Black-billed seed finch	Sporophila atrirostris	
7917	Rufous-winged antshrike	Thamnophilus torquatus	
7918	Rusty-flanked crake	Laterallus levraudi	
7919	Speckle-breasted wren	Pheugopedius sclateri	
7920	Yellow penduline tit	Anthoscopus parvulus	
7921	Slaty-capped flycatcher	Leptopogon superciliaris	
7922	Scale-throated earthcreeper	Upucerthia dumetaria	
7923	Chestnut-breasted mountain finch	Poospizopsis caesar	
7924	Ruddy foliage-gleaner	Clibanornis rubiginosus	
7925	Yellow-crested manakin	Heterocercus flavivertex	
7926	Rufous-headed tanager	Hemithraupis ruficapilla	
7927	Golden-crowned flycatcher	Myiodynastes chrysocephalus	
7928	Rufous-breasted piculet	Picumnus rufiventris	
7929	White-bearded flycatcher	Phelpsia inornata	
7930	Buff-throated foliage-gleaner	Automolus ochrolaemus	
7931	Paramo seedeater	Catamenia homochroa	
7932	Planalto tapaculo	Scytalopus pachecoi	
7933	White-eyed thrush	Turdus jamaicensis	
7934	Brown-chested barbet	Capito brunneipectus	
7935	Munchique wood wren	Henicorhina negreti	
7936	Rusty-belted tapaculo	Liosceles thoracicus	
7937	Lemon-chested greenlet	Hylophilus thoracicus	
7938	Patagonian forest earthcreeper	Upucerthia saturatior	
7939	Highland elaenia	Elaenia obscura	
7940	Paramo pipit	Anthus bogotensis	
7941	Pearly-breasted conebill	Conirostrum margaritae	
7942	Brown nunlet	Nonnula brunnea	
7943	Rufous-crowned antpitta	Pittasoma rufopileatum	
7944	Pinto's spinetail	Synallaxis infuscata	
7945	Rufous flycatcher	Myiarchus semirufus	
7946	Blackish antbird	Cercomacroides nigrescens	
7947	Black-and-white becard	Pachyramphus albogriseus	
7948	Hellmayr's pipit	Anthus hellmayri	
7949	Rock tapaculo	Scytalopus petrophilus	
7950	Sooty-capped puffbird	Bucco noanamae	
7951	Eastern striolated puffbird	Nystalus striolatus	
7952	Ibera seedeater	Sporophila iberaensis	
7953	Austral canastero	Asthenes anthoides	
7954	Streaked tuftedcheek	Pseudocolaptes boissonneautii	
7955	Ochre-fronted antpitta	Grallaricula ochraceifrons	
7956	Santa Marta foliage-gleaner	Clibanornis rufipectus	
7957	Bay hornero	Furnarius torridus	
7958	Bertoni's antbird	Drymophila rubricollis	
7959	Smoke-colored pewee	Contopus fumigatus	
7960	Black-cheeked warbler	Basileuterus melanogenys	
7961	Spot-winged antbird	Myrmelastes leucostigma	
7962	Stripe-cheeked woodpecker	Piculus callopterus	
7963	Ashy-throated bush tanager	Chlorospingus canigularis	
7964	Cocha antshrike	Thamnophilus praecox	
7965	Long-trained nightjar	Macropsalis forcipata	
7966	Viridian dacnis	Dacnis viguieri	
7967	Plain gerygone	Gerygone inornata	
7968	Dotted tanager	Ixothraupis varia	
7969	Black-throated shrike-tanager	Lanio aurantius	
7970	Crimson-breasted finch	Rhodospingus cruentus	
7971	Lulu's tody-flycatcher	Poecilotriccus luluae	
7972	Black-crested tit-tyrant	Anairetes nigrocristatus	
7973	Yapacana antbird	Aprositornis disjuncta	
7974	Rock earthcreeper	Ochetorhynchus andaecola	
7975	Spot-winged antshrike	Pygiptila stellaris	
7976	Mérida wren	Cistothorus meridae	
7977	Black-faced cotinga	Conioptilon mcilhennyi	
7978	Olivaceous piha	Snowornis cryptolophus	
7979	Sulphur-rumped tanager	Heterospingus rubrifrons	
7980	Green-tailed bristlebill	Bleda eximius	
7981	Golden-sided euphonia	Euphonia cayennensis	
7982	Peruvian wren	Cinnycerthia peruana	
7983	Panamanian flycatcher	Myiarchus panamensis	
7984	Plain greenbul	Eurillas curvirostris	
7985	Yellow-headed brushfinch	Atlapetes flaviceps	
7986	Plain-colored seedeater	Catamenia inornata	
7987	Grey-rumped swift	Chaetura cinereiventris	
7988	Santa Marta antbird	Drymophila hellmayri	
7989	Black-capped hemispingus	Kleinothraupis atropileus	
7990	Pale-bellied tapaculo	Scytalopus griseicollis	
7991	Lemon-bellied crombec	Sylvietta denti	
7992	Blanford's lark	Calandrella blanfordi	
7993	Large elaenia	Elaenia spectabilis	
7994	Northern white-fringed antwren	Formicivora intermedia	
7995	Silvery-cheeked antshrike	Sakesphorus cristatus	
7996	White-rumped tanager	Cypsnagra hirundinacea	
7997	Tepui wren	Troglodytes rufulus	
7998	Pampas pipit	Anthus chacoensis	
7999	Parker's antbird	Cercomacroides parkeri	
8000	Venezuelan flowerpiercer	Diglossa venezuelensis	
8001	Peruvian warbling antbird	Hypocnemis peruviana	
8002	Scarlet-and-white tanager	Chrysothlypis salmoni	
8003	Plumbeous antbird	Myrmelastes hyperythrus	
8004	Red-tailed bristlebill	Bleda syndactylus	
8005	Capped conebill	Conirostrum albifrons	
8006	Large-billed antwren	Herpsilochmus longirostris	
8007	Northern chestnut-tailed antbird	Sciaphylax castanea	
8008	Varzea schiffornis	Schiffornis major	
8009	Mayotte white-eye	Zosterops mayottensis	
8010	Chocolate-vented tyrant	Neoxolmis rufiventris	
8011	Subtropical doradito	Pseudocolopteryx acutipennis	
8012	Yellow-browed shrike-vireo	Vireolanius eximius	
8013	Black-striped woodcreeper	Xiphorhynchus lachrymosus	
8014	Collared warbling finch	Poospiza hispaniolensis	
8015	Tapajós hermit	Phaethornis aethopygus	
8016	Ochre-lored flatbill	Tolmomyias flaviventris	
8017	White-rumped monjita	Xolmis velatus	
8018	Yellow-lored tody-flycatcher	Todirostrum poliocephalum	
8019	Cherrie's antwren	Myrmotherula cherriei	
8020	Pygmy palm swift	Tachornis furcata	
8021	Buff-throated warbling finch	Microspingus lateralis	
8022	Stripe-breasted wren	Cantorchilus thoracicus	
8023	Peruvian seaside cinclodes	Cinclodes taczanowskii	
8024	Chestnut antpitta	Grallaria blakei	
8025	Grey-and-gold warbler	Myiothlypis fraseri	
8026	Northern slaty antshrike	Thamnophilus punctatus	
8027	White-bibbed manakin	Corapipo leucorrhoa	
8028	Apolo cotinga	Phibalura boliviana	
8029	Yellow-bellied tanager	Ixothraupis xanthogastra	
8030	Orinoco saltator	Saltator orenocensis	
8031	Sucre antpitta	Grallaricula cumanensis	
8032	Pectoral antwren	Herpsilochmus pectoralis	
8033	Yellow-browed tyrant	Satrapa icterophrys	
8034	Fuscous flycatcher	Cnemotriccus fuscatus	
8035	Olivaceous flatbill	Rhynchocyclus olivaceus	
8036	Tschudi's nightjar	Systellura decussata	
8037	Antioquia bristle tyrant	Pogonotriccus lanyoni	
8038	Black-winged saltator	Saltator atripennis	
8039	Pale-rumped swift	Chaetura egregia	
8040	Tolima blossomcrown	Anthocephala berlepschi	
8041	Narrow-tailed emerald	Chlorostilbon stenurus	
8042	Lawrence's thrush	Turdus lawrencii	
8043	Sooty-faced finch	Arremon crassirostris	
8044	Sulphur-rumped myiobius	Myiobius sulphureipygius	
8045	Capped white-eye	Zosterops fuscicapilla	
8046	Golden-collared tanager	Iridosornis jelskii	
8047	Greyish piculet	Picumnus granadensis'	
8048	Coiba spinetail	Cranioleuca dissita	
8049	Black-chested mountain tanager	Cnemathraupis eximia	
8050	Dark pewee	Contopus lugubris	
8051	Semicollared puffbird	Malacoptila semicincta	
8052	Todd's nightjar	Setopagis heterura	
8053	Western greenbul	Arizelocichla tephrolaema	
8054	Olive-crowned yellowthroat	Geothlypis semiflava	
8055	Red-billed woodcreeper	Hylexetastes perrotii	
8056	Sierran elaenia	Elaenia pallatangae	
8057	Short-billed leaftosser	Sclerurus rufigularis	
8058	Cochabamba mountain finch	Poospiza garleppi	
8059	Orange-eyed thornbird	Phacellodomus erythrophthalmus	
8060	Puna yellow finch	Sicalis lutea	
8061	Grey-collared becard	Pachyramphus major	
8062	Pirre warbler	Basileuterus ignotus	
8063	Brown-banded puffbird	Notharchus ordii	
8064	Black-legged dacnis	Dacnis nigripes	
8065	Shrike-like tanager	Neothraupis fasciata	
8066	Streak-crowned antvireo	Dysithamnus striaticeps	
8067	White-throated shrike-tanager	Lanio leucothorax	
8068	Yellow-bellied chat-tyrant	Silvicultrix diadema	
8069	Golden-backed mountain tanager	Cnemathraupis aureodorsalis	
8070	Hoary-throated spinetail	Synallaxis kollari	
8071	Yellow-bearded greenbul	Criniger olivaceus	
8072	Collared antshrike	Thamnophilus bernardi	
8073	Eared pygmy tyrant	Myiornis auricularis	
8074	Flame-crested manakin	Heterocercus linteatus	
8075	Undulated antshrike	Frederickena unduliger	
8076	Brownish twistwing	Cnipodectes subbrunneus	
8077	Buff-browed foliage-gleaner	Syndactyla rufosuperciliata	
8078	Forest elaenia	Myiopagis gaimardii	
8079	Uniform finch	Haplospiza unicolor	
8080	Yellow-breasted antpitta	Grallaria flavotincta	
8081	Santa Marta antpitta	Grallaria bangsi	
8082	White-eared solitaire	Entomodestes leucotis	
8083	Superciliaried hemispingus	Thlypopsis superciliaris	
8084	Ferruginous antbird	Drymophila ferruginea	
8085	Golden-collared woodpecker	Veniliornis cassini	
8086	Black-billed peppershrike	Cyclarhis nigrirostris	
8087	Southern chestnut-tailed antbird	Sciaphylax hemimelaena	
8088	Brownish elaenia	Elaenia pelzelni	
8089	Plain-backed antpitta	Grallaria haplonota	
8090	Slaty-headed tody-flycatcher	Poecilotriccus sylvia	
8091	Ansorge's greenbul	Eurillas ansorgei	
8092	Yellow longbill	Macrosphenus flavicans	
8093	Beautiful treerunner	Margarornis bellulus	
8094	Mouse-coloured tapaculo	Scytalopus speluncae	
8095	Black-and-tawny seedeater	Sporophila nigrorufa	
8096	Golden-fronted greenlet	Pachysylvia aurantiifrons	
8097	Lita woodpecker	Piculus litae	
8098	Yellow-billed nunbird	Monasa flavirostris	
8099	Dusky-throated antshrike	Thamnomanes ardesiacus	
8100	Fulvous-headed tanager	Thlypopsis fulviceps	
8101	Orange-bellied antwren	Terenura sicki	
8102	Grey-capped cuckoo	Coccyzus lansbergi	
8103	Ash-colored tapaculo	Myornis senilis	
8104	Rufous-capped nunlet	Nonnula ruficapilla	
8105	Rufous-crowned tody-flycatcher	Poecilotriccus ruficeps	
8106	Black-chinned antbird	Hypocnemoides melanopogon	
8107	Bahia tyrannulet	Phylloscartes beckeri	
8108	Scarlet-breasted dacnis	Dacnis berlepschi	
8109	Black-hooded thrush	Turdus olivater	
8110	Finsch's euphonia	Euphonia finschi	
8111	Grey-throated warbler	Myiothlypis cinereicollis	
8112	Planalto tyrannulet	Phyllomyias fasciatus	
8113	Nicaraguan seed finch	Sporophila nuttingi	
8114	Sira tanager	Stilpnia phillipsi	
8115	Bronze-green euphonia	Euphonia mesochrysa	
8116	Red-billed tyrannulet	Zimmerius cinereicapilla	
8117	Nariño tapaculo	Scytalopus vicinior	
8118	White-rimmed warbler	Myiothlypis leucoblephara	
8119	Goeldi's antbird	Percnostola goeldii	
8120	Kemp's longbill	Macrosphenus kempi	
8121	Paramillo tapaculo	Scytalopus canus	
8122	White-striped warbler	Myiothlypis leucophrys	
8123	Yellow-browed antbird	Hypocnemis hypoxantha	
8124	Parker's spinetail	Cranioleuca vulpecula	
8125	Orange-crested manakin	Heterocercus aurantiivertex	
8126	Cinereous finch	Piezorina cinerea	
8127	Cordilleran canastero	Asthenes modesta	
8128	Unicolored tapaculo	Scytalopus unicolor	
8129	Cinnamon-vented piha	Lipaugus lanioides	
8130	Golden-chested tanager	Bangsia rothschildi	
8131	Eastern bearded greenbul	Criniger chloronotus	
8132	Plain-winged antshrike	Thamnophilus schistaceus	
8133	Magdalena antbird	Sipia palliata	
8134	Rusty bush lark	Mirafra rufa	
8135	Salvadori's antwren	Myrmotherula minor	
8136	Gillett's lark	Mirafra gilletti	
8137	Pale-browed treehunter	Cichlocolaptes leucophrus	
8138	Perijá metaltail	Metallura iracunda	
8139	Riparian antbird	Cercomacroides fuscicauda	
8140	Squamate antbird	Myrmoderus squamosus	
8141	Venezuelan flycatcher	Myiarchus venezuelensis	
8142	Ihering's antwren	Myrmotherula iheringi	
8143	Cinnamon tanager	Schistochlamys ruficapillus	
8144	Mouse-colored antshrike	Thamnophilus murinus	
8145	Rufous-throated tanager	Ixothraupis rufigula	
8146	Bicolored antpitta	Grallaria rufocinerea	
8147	Rufous-breasted flycatcher	Leptopogon rufipectus	
8148	Red-backed sierra finch	Idiopsar dorsalis	
8149	Sulphur-bellied tyrant-manakin	Neopelma sulphureiventer	
8150	Dusky-tailed antbird	Drymophila malura	
8151	Grey-tailed piha	Snowornis subalaris	
8152	Unicolored antwren	Myrmotherula unicolor	
8153	Masked saltator	Saltator cinctus	
8154	Bluish flowerpiercer	Diglossa caerulescens	
8155	Bright-rumped yellow finch	Sicalis uropygialis	
8156	Tamarugo conebill	Conirostrum tamarugense	
8157	Black-capped antwren	Herpsilochmus atricapillus	
8158	Hudson's canastero	Asthenes hudsoni	
8159	Paramo tapaculo	Scytalopus opacus	
8160	Peruvian tyrannulet	Zimmerius viridiflavus	
8161	Drab seedeater	Sporophila simplex	
8162	Fine-barred piculet	Picumnus subtilis	
8163	Kretschmer's longbill	Macrosphenus kretschmeri	
8164	Scalloped woodcreeper	Lepidocolaptes falcinellus	
8165	Ochre-faced tody-flycatcher	Poecilotriccus plumbeiceps	
8166	Serra do Mar tyrant-manakin	Neopelma chrysolophum	
8167	Slaty elaenia	Elaenia strepera	
8168	Black thicket fantail	Rhipidura maculipectus	
8169	Tepui antpitta	Myrmothera simplex	
8170	Grey antwren	Myrmotherula menetriesii	
8171	Chocó woodpecker	Veniliornis chocoensis	
8172	Silvered antbird	Sclateria naevia	
8173	Sooty antbird	Percnostola fortis	
8174	Olive-backed tanager	Mitrospingus oleagineus	
8175	Bar-winged wood wren	Henicorhina leucoptera	
8176	Blue-billed black tyrant	Knipolegus cyanirostris	
8177	Plain-mantled tit-spinetail	Leptasthenura aegithaloides	
8178	Ochre-flanked tapaculo	Eugralla paradoxa	
8179	Double-banded pygmy tyrant	Lophotriccus vitiosus	
8180	Yellow-green tanager	Bangsia flavovirens	
8181	Black-headed tody-flycatcher	Todirostrum nigriceps	
8182	Pale-faced bare-eye	Phlegopsis borbae	
8183	Guianan streaked antwren	Myrmotherula surinamensis	
8184	Streak-headed antbird	Drymophila striaticeps	
8185	Chapada flycatcher	Guyramemua affine	
8186	Plain-winged woodcreeper	Dendrocincla turdina	
8187	Dusky tapaculo	Scytalopus fuscus	
8188	Grey-headed piprites	Piprites griseiceps	
8189	Spotted greenbul	Ixonotus guttatus	
8190	Band-tailed antbird	Hypocnemoides maculicauda	
8191	Glossy antshrike	Sakesphorus luctuosus	
8192	Pale-legged warbler	Myiothlypis signata	
8193	Predicted antwren	Herpsilochmus praedictus	
8194	Rufous-breasted leaftosser	Sclerurus scansor	
8195	Whiskered wren	Pheugopedius mystacalis	
8196	White-tailed shrike-tyrant	Agriornis albicauda	
8197	Striated antbird	Drymophila devillei	
8198	Three-banded warbler	Basileuterus trifasciatus	
8199	Andean slaty thrush	Turdus nigriceps	
8200	Spot-breasted antvireo	Dysithamnus stictothorax	
8201	Pileated flycatcher	Xenotriccus mexicanus	
8202	White-naped seedeater	Sporophila fringilloides	
8203	Zimmer's flatbill	Tolmomyias assimilis	
8204	Black-bellied gnateater	Conopophaga melanogaster	
8205	Forest penduline tit	Anthoscopus flavifrons	
8206	Dark-throated seedeater	Sporophila ruficollis	
8207	Spot-crowned antvireo	Dysithamnus puncticeps	
8208	White-masked antbird	Pithys castaneus	
8209	Bicolored antvireo	Dysithamnus occidentalis	
8210	Karoo eremomela	Eremomela gregalis	
8211	Lined antshrike	Thamnophilus tenuepunctatus	
8212	Ochraceous attila	Attila torridus	
8213	Pink-legged graveteiro	Acrobatornis fonsecai	
8214	Red-shouldered tanager	Tachyphonus phoenicius	
8215	White-winged black tyrant	Knipolegus aterrimus	
8216	Reddish-winged bare-eye	Phlegopsis erythroptera	
8217	Greater flowerpiercer	Diglossa major	
8218	Masked antpitta	Hylopezus auricularis	
8219	Ochre-striped antpitta	Grallaria dignissima	
8220	Castelnau's antshrike	Thamnophilus cryptoleucus	
8221	Olive manakin	Xenopipo uniformis	
8222	Choco brushfinch	Atlapetes crassus	
8223	Warbling doradito	Pseudocolopteryx flaviventris	
8224	Friedmann's lark	Mirafra pulpa	
8225	Parrot-billed seedeater	Sporophila peruviana	
8226	Stripe-chested antwren	Myrmotherula longicauda	
8227	Grey-headed bristlebill	Bleda canicapillus	
8228	Rio Suno antwren	Myrmotherula sunensis	
8229	Thick-billed saltator	Saltator maxillosus	
8230	Todd's antwren	Herpsilochmus stictocephalus	
8231	Bay-chested warbling finch	Castanozoster thoracicus	
8232	Ferruginous-backed antbird	Myrmoderus ferrugineus	
8233	Long-tailed reed finch	Donacospiza albifrons	
8234	Slaty becard	Pachyramphus spodiurus	
8235	White-winged cinclodes	Cinclodes atacamensis	
8236	Diamantina tapaculo	Scytalopus diamantinensis	
8237	Pearly antshrike	Megastictus margaritatus	
8238	Stiles's tapaculo	Scytalopus stilesi	
8239	White-throated earthcreeper	Upucerthia albigula	
8240	Straneck's tyrannulet	Serpophaga griseicapilla	
8241	Angolan lark	Mirafra angolensis	
8242	Cinnamon-crested spadebill	Platyrinchus saturatus	
8243	Rondonia warbling antbird	Hypocnemis ochrogyna	
8244	Wied's tyrant-manakin	Neopelma aurifrons	
8245	Yellow-throated flycatcher	Conopias parvus	
8246	Grey elaenia	Myiopagis caniceps	
8247	Straight-billed reedhaunter	Limnoctites rectirostris	
8248	Subdesert brush warbler	Nesillas lantzii	
8249	White-browed tapaculo	Scytalopus superciliaris	
8250	Yellow-throated antwren	Myrmotherula ambigua	
8251	Ash-breasted antbird	Myrmoborus lugubris	
8252	Crowned chat-tyrant	Silvicultrix frontalis	
8253	Tufted tit-spinetail	Leptasthenura platensis	
8254	Yellow-breasted antwren	Herpsilochmus axillaris	
8255	Short-billed miner	Geositta antarctica	
8256	Ash-throated gnateater	Conopophaga peruviana	
8257	Fulvous-chinned nunlet	Nonnula sclateri	
8258	Lark-like brushrunner	Coryphistera alaudina	
8259	Spotted antpitta	Hylopezus macularius	
8260	Chapman's antshrike	Thamnophilus zarumae	
8261	White-bibbed antbird	Myrmoderus loricatus	
8262	Grey-and-gold tanager	Poecilostreptus palmeri	
8263	Rufous-crowned greenlet	Hylophilus poicilotis	
8264	Klages's antwren	Myrmotherula klagesi	
8265	Tawny-chested flycatcher	Aphanotriccus capitalis	
8266	Green-naped tanager	Tangara fucosa	
8267	White-eyed tody-tyrant	Hemitriccus zosterops	
8268	Grey-breasted flycatcher	Lathrotriccus griseipectus	
8269	Sooty-headed wren	Pheugopedius spadix	
8270	Biak gerygone	Gerygone hypoxantha	
8271	Grey longbill	Macrosphenus concolor	
8272	Glossy-backed becard	Pachyramphus surinamus	
8273	Pale-bellied tyrant-manakin	Neopelma pallescens	
8274	Southern antpipit	Corythopis delalandi	
8275	Tyrannine woodcreeper	Dendrocincla tyrannina	
8276	Scarlet-throated tanager	Compsothraupis loricata	
8277	White-eyed foliage-gleaner	Automolus leucophthalmus	
8278	Tufted antshrike	Mackenziaena severa	
8279	Pacific elaenia	Myiopagis subplacens	
8280	Plain-throated antwren	Isleria hauxwelli	
8281	Roraiman antwren	Herpsilochmus roraimae	
8282	Rufous-tailed antbird	Drymophila genei	
8283	Creamy-bellied gnatcatcher	Polioptila lactea	
8284	Dark-winged miner	Geositta saxicolina	
8285	Grey-crowned flatbill	Tolmomyias poliocephalus	
8286	Foothill elaenia	Myiopagis olallai	
8287	Russet-mantled softtail	Thripophaga berlepschi	
8288	Cinnamon warbling finch	Poospiza ornata	
8289	Chotoy spinetail	Schoeniophylax phryganophilus	
8290	Pulitzer's longbill	Macrosphenus pulitzeri	
8291	Olivaceous greenlet	Hylophilus olivaceus	
8292	Stripe-breasted spinetail	Synallaxis cinnamomea	
8293	Willis's antbird	Cercomacroides laeta	
8294	Collared gnatwren	Microbates collaris	
8295	Yellow-crowned tyrannulet	Tyrannulus elatus	
8296	Mouse-coloured penduline tit	Anthoscopus musculus	
8297	Rufous-tailed attila	Attila phoenicurus	
8298	Slate-colored antbird	Myrmelastes schistaceus	
8299	Amazonian antpitta	Hylopezus berlepschi	
8300	Blue-whiskered tanager	Tangara johannae	
8301	Rufous casiornis	Casiornis rufus	
8302	Sooretama slaty antshrike	Thamnophilus ambiguus	
8303	Manu antbird	Cercomacra manu	
8304	Scaled antbird	Drymophila squamata	
8305	Rufous-browed conebill	Conirostrum rufum	
8306	Small-headed elaenia	Elaenia sordida	
8307	White-shouldered antshrike	Thamnophilus aethiops	
8308	Ashy-tailed swift	Chaetura andrei	
8309	Sennar penduline tit	Anthoscopus punctifrons	
8310	Black-headed hemispingus	Pseudospingus verticalis	
8311	Chestnut-headed tanager	Thlypopsis pyrrhocoma	
8312	Esmeraldas antbird	Sipia nigricauda	
8313	Masked mountain tanager	Tephrophilus wetmorei	
8314	Pink-throated becard	Pachyramphus minor	
8315	Salinas monjita	Xolmis salinarum	
8316	Scalloped antbird	Myrmoderus ruficauda	
8317	Yellow-thighed brushfinch	Atlapetes tibialis	
8318	Bolivian warbling finch	Poospiza boliviana	
8319	Slaty-backed hemispingus	Poospiza goeringi	
8320	White-browed antpitta	Hylopezus ochroleucus	
8321	Yellow-crowned whitestart	Myioborus flavivertex	
8322	Steinbach's canastero	Pseudasthenes steinbachi	
8323	Brown-rumped tapaculo	Scytalopus latebricola	
8324	Citron-headed yellow finch	Sicalis luteocephala	
8325	Long-winged antwren	Myrmotherula longipennis	
8326	Madagascan starling	Hartlaubius auratus	
8327	White-crested tyrannulet	Serpophaga subcristata	
8328	Pardusco	Nephelornis oneilli	
8329	Coastal miner	Geositta peruviana	
8330	Dusky purpletuft	Iodopleura fusca	
8331	Rufous-bellied antwren	Isleria guttata	
8332	Spot-backed antbird	Hylophylax naevius	
8333	Straight-billed earthcreeper	Ochetorhynchus ruficaudus	
8334	Ancient antwren	Herpsilochmus gentryi	
8335	Band-tailed earthcreeper	Ochetorhynchus phoenicurus	
8336	Grey-flanked cinclodes	Cinclodes oustaleti	
8337	Buff-breasted earthcreeper	Upucerthia validirostris	
8338	White-throated greenbul	Phyllastrephus albigularis	
8339	Rufous-faced antpitta	Grallaria erythrotis	
8340	Blackish-headed spinetail	Synallaxis tithys	
8341	Cameroon greenbul	Arizelocichla montana	
8342	Natterer's slaty antshrike	Thamnophilus stictocephalus	
8343	Many-striped canastero	Asthenes flammulata	
8344	Rufous-breasted chat-tyrant	Ochthoeca rufipectoralis	
8345	Sooty-headed tyrannulet	Phyllomyias griseiceps	
8346	Streak-capped antwren	Terenura maculata	
8347	Varied solitaire	Myadestes coloratus	
8348	Uniform woodcreeper	Hylexetastes uniformis	
8349	Slaty spinetail	Synallaxis brachyura	
8350	White-streaked antvireo	Dysithamnus leucostictus	
8351	Zimmer's tapaculo	Scytalopus zimmeri	
8352	Large-footed tapaculo	Scytalopus macropus	
8353	Peruvian pipit	Anthus peruvianus	
8354	Rusty-backed monjita	Xolmis rubetra	
8355	Acre tody-tyrant	Hemitriccus cohnhafti	
8356	Rufous-tailed xenops	Microxenops milleri	
8357	Lunulated antbird	Oneillornis lunulatus	
8358	Elegant woodcreeper	Xiphorhynchus elegans	
8359	Bar-bellied woodcreeper	Hylexetastes stresemanni	
8360	Chapin's apalis	Apalis chapini	
8361	Foothill schiffornis	Schiffornis aenea	
8362	Scaled flowerpiercer	Diglossa duidae	
8363	Spot-backed antshrike	Hypoedaleus guttatus	
8364	Grey-crested cacholote	Pseudoseisura unirufa	
8365	Plumbeous antvireo	Dysithamnus plumbeus	
8366	Blackish chat-tyrant	Ochthoeca nigrita	
8367	Streak-backed canastero	Asthenes wyatti	
8368	Scallop-breasted antpitta	Grallaricula loricata	
8369	Grey-hooded attila	Attila rufus	
8370	White-bellied thicket fantail	Rhipidura leucothorax	
8371	Yellow-whiskered bush tanager	Chlorospingus parvirostris	
8372	Raimondi's yellow finch	Sicalis raimondii	
8373	Bluish-slate antshrike	Thamnomanes schistogynus	
8374	Klages's antbird	Drymophila klagesi	
8375	Montane woodcreeper	Lepidocolaptes lacrymiger	
8376	Buff-breasted tody-tyrant	Hemitriccus mirandae	
8377	Cinnamon-bellied ground tyrant	Muscisaxicola capistratus	
8378	Grand Comoro brush warbler	Nesillas brevicaudata	
8379	Ocellated woodcreeper	Xiphorhynchus ocellatus	
8380	Brown-backed chat-tyrant	Ochthoeca fumicolor	
8381	Chocó poorwill	Nyctiphrynus rosenbergi	
8382	Masked lark	Spizocorys personata	
8383	Plumbeous-crowned tyrannulet	Phyllomyias plumbeiceps	
8384	Marble-faced bristle tyrant	Pogonotriccus ophthalmicus	
8385	Little Inca finch	Incaspiza watkinsi	
8386	Manicoré warbling antbird	Hypocnemis rondoni	
8387	Rufous-faced antbird	Myrmelastes rufifacies	
8388	Yellow-throated nicator	Nicator vireo	
8389	Grey-hooded flycatcher	Mionectes rufiventris	
8390	Rufous-sided warbling finch	Poospizopsis hypochondria	
8391	Streak-backed antshrike	Thamnophilus insignis	
8392	Unstreaked tit-tyrant	Uromyias agraphia	
8393	Band-tailed antwren	Myrmotherula urosticta	
8394	Dugand's antwren	Herpsilochmus dugandi	
8395	Pale-tipped inezia	Inezia caudata	
8396	Streak-fronted thornbird	Phacellodomus striaticeps	
8397	Southern bristle tyrant	Pogonotriccus eximius	
8398	Uniform antshrike	Thamnophilus unicolor	
8399	Black-and-white tody-flycatcher	Poecilotriccus capitalis	
8400	Golden-winged tody-flycatcher	Poecilotriccus calopterus	
8401	Lesser wagtail-tyrant	Stigmatura napensis	
8402	Long-tailed tapaculo	Scytalopus micropterus	
8403	Speckled spinetail	Cranioleuca gutturata	
8404	Silver-backed tanager	Stilpnia viridicollis	
8405	Velvety black tyrant	Knipolegus nigerrimus	
8406	Leaden antwren	Myrmotherula assimilis	
8407	Northern scrub flycatcher	Sublegatus arenarum	
8408	Lineated foliage-gleaner	Syndactyla subalaris	
8409	Bolivian spinetail	Cranioleuca henricae	
8410	Humaita antbird	Myrmelastes humaythae	
8411	Lesser shrike-tyrant	Agriornis murinus	
8412	Várzea thrush	Turdus sanchezorum	
8413	Brownish-headed antbird	Myrmelastes brunneiceps	
8414	Buff-breasted mountain tanager	Dubusia taeniata	
8415	Hazel-fronted pygmy tyrant	Pseudotriccus simplex	
8416	Rusty-browed warbling finch	Microspingus erythrophrys	
8417	Tepui whitestart	Myioborus castaneocapilla	
8418	Amazonian black tyrant	Knipolegus poecilocercus	
8419	White-naped brushfinch	Atlapetes albinucha	
8420	Roraiman barbtail	Roraimia adusta	
8421	Amazonian inezia	Inezia subflava	
8422	Eastern woodhaunter	Automolus subulatus	
8423	Inambari woodcreeper	Lepidocolaptes fatimalimae	
8424	Vilcabamba tapaculo	Scytalopus urubambae	
8425	Slaty-winged foliage-gleaner	Philydor fuscipenne	
8426	Dot-backed antbird	Hylophylax punctulatus	
8427	Line-cheeked spinetail	Cranioleuca antisiensis	
8428	Rufous-capped spinetail	Synallaxis ruficapilla	
8429	Baudó oropendola	Psarocolius cassini	
8430	Sclater's nightingale-thrush	Catharus maculatus	
8431	Great Inca finch	Incaspiza pulchra	
8432	Inca flycatcher	Leptopogon taczanowskii	
8433	Peruvian antpitta	Grallaricula peruviana	
8434	Pirre bush tanager	Chlorospingus inornatus	
8435	Rufous-tailed flatbill	Ramphotrigon ruficauda	
8436	Sooty tyrannulet	Serpophaga nigricans	
8437	White-lored warbler	Myiothlypis conspicillata	
8438	Streak-necked flycatcher	Mionectes striaticollis	
8439	Greater wagtail-tyrant	Stigmatura budytoides	
8440	Slaty-crowned antpitta	Grallaricula nana	
8441	Slender-billed finch	Xenospingus concolor	
8442	Yellow-throated tanager	Iridosornis analis	
8443	Bay antpitta	Grallaria capitalis	
8444	Black-and-white antbird	Myrmochanes hemileucus	
8445	White-chinned woodcreeper	Dendrocincla merula	
8446	White-crested spadebill	Platyrinchus platyrhynchos	
8447	Black-crowned monjita	Xolmis coronatus	
8448	Green-chinned euphonia	Euphonia chalybea	
8449	Grey-headed antbird	Ampelornis griseiceps	
8450	Rondonia woodcreeper	Lepidocolaptes fuscicapillus	
8451	Ochre-breasted foliage-gleaner	Anabacerthia lichtensteini	
8452	Stripe-headed antpitta	Grallaria andicolus	
8453	Tacarcuna bush tanager	Chlorospingus tacarcunae	
8454	White-throated tyrannulet	Mecocerculus leucophrys	
8455	White-throated woodcreeper	Xiphocolaptes albicollis	
8456	Eye-ringed tody-tyrant	Hemitriccus orbitatus	
8457	Spix's spinetail	Synallaxis spixi	
8458	Slender-billed inezia	Inezia tenuirostris	
8459	Rufous-naped ground tyrant	Muscisaxicola rufivertex	
8460	Bolivian recurvebill	Syndactyla striatus	
8461	Mato Grosso antbird	Cercomacra melanaria	
8462	Chestnut-bellied mountain tanager	Dubusia castaneoventris	
8463	Yellow-billed tit-tyrant	Anairetes flavirostris	
8464	Rusty-breasted antpitta	Grallaricula ferrugineipectus	
8465	Ashy-headed tyrannulet	Phyllomyias cinereiceps	
8466	Guaiquinima whitestart	Myioborus cardonai	
8467	Duida grass finch	Emberizoides duidae	
8468	Flavescent flycatcher	Myiophobus flavicans	
8469	Spot-tailed antwren	Herpsilochmus sticturus	
8470	Vilcabamba thistletail	Asthenes vilcabambae	
8471	Chestnut-crested antbird	Rhegmatorhina cristata	
8472	Lesser grass finch	Emberizoides ypiranganus	
8473	Slaty-backed chat-tyrant	Ochthoeca cinnamomeiventris	
8474	Speckled antshrike	Xenornis setifrons	
8475	Russet-winged spadebill	Platyrinchus leucoryphus	
8476	Sooty-crowned flycatcher	Myiarchus phaeocephalus	
8477	Western woodhaunter	Automolus virgatus	
8478	Black-cowled saltator	Saltator nigriceps	
8479	Crested spinetail	Cranioleuca subcristata	
8480	Orange-crested flycatcher	Myiophobus phoenicomitra	
8481	Rufous twistwing	Cnipodectes superrufus	
8482	Chestnut-headed nunlet	Nonnula amaurocephala	
8483	Cinereous warbling finch	Microspingus cinereus	
8484	Duida woodcreeper	Lepidocolaptes duidae	
8485	Mottle-cheeked tyrannulet	Phylloscartes ventralis	
8486	Rusty-backed spinetail	Cranioleuca vulpina	
8487	Rusty-fronted tody-flycatcher	Poecilotriccus latirostris	
8488	White-fronted ground tyrant	Muscisaxicola albifrons	
8489	Chestnut-backed thornbird	Phacellodomus dorsalis	
8490	Guianan gnatcatcher	Polioptila guianensis	
8491	Ancash tapaculo	Scytalopus affinis	
8492	Itatiaia spinetail	Asthenes moreirae	
8493	Rufous-breasted spinetail	Synallaxis erythrothorax	
8494	Slate-throated gnatcatcher	Polioptila schistaceigula	
8495	Yungas antwren	Myrmotherula grisea	
8496	Rufous-crested tanager	Creurgops verticalis	
8497	Scaled woodcreeper	Lepidocolaptes squamatus	
8498	Hangnest tody-tyrant	Hemitriccus nidipendulus	
8499	Tawny-crowned pygmy tyrant	Euscarthmus meloryphus	
8500	River tyrannulet	Serpophaga hypoleuca	
8501	Rufous-cheeked tanager	Tangara rufigenis	
8502	White-shouldered antbird	Percnostola melanoceps	
8503	Yungas tyrannulet	Phyllomyias weedeni	
8504	Hooded gnateater	Conopophaga roberti	
8505	Straw-backed tanager	Stilpnia argyrofenges	
8506	Falkenstein's greenbul	Chlorocichla falkensteini	
8507	Tschudi's tapaculo	Scytalopus acutirostris	
8508	Grey-bellied flowerpiercer	Diglossa carbonaria	
8509	Plain-winged antwren	Myrmotherula behni	
8510	Red-and-white spinetail	Certhiaxis mustelinus	
8511	Band-tailed antshrike	Thamnophilus melanothorax	
8512	Cinereous tyrant	Knipolegus striaticeps	
8513	Sierra Nevada brushfinch	Arremon basilicus	
8514	Yellow-breasted warbling antbird	Hypocnemis subflava	
8515	Snethlage's tody-tyrant	Hemitriccus minor	
8516	Grey-throated leaftosser	Sclerurus albigularis	
8517	Urich's tyrannulet	Phyllomyias urichi	
8518	White-striped woodcreeper	Lepidocolaptes leucogaster	
8519	Drab-breasted bamboo tyrant	Hemitriccus diops	
8520	Paramo ground tyrant	Muscisaxicola alpinus	
8521	Baird's flycatcher	Myiodynastes bairdii	
8522	Rufous-backed antvireo	Dysithamnus xanthopterus	
8523	Western bearded greenbul	Criniger barbatus	
8524	Black-backed bush tanager	Urothraupis stolzmanni	
8525	Black-tailed antbird	Myrmoborus melanurus	
8526	Hoffmanns's woodcreeper	Dendrocolaptes hoffmannsi	
8527	Orange-browed hemispingus	Kleinothraupis calophrys	
8528	Puna tapaculo	Scytalopus simonsi	
8529	Smoky bush tyrant	Myiotheretes fumigatus	
8530	Yellow-browed tody-flycatcher	Todirostrum chrysocrotaphum	
8531	Chaco earthcreeper	Tarphonomus certhioides	
8532	Grey antbird	Cercomacra cinerascens	
8533	Northern white-crowned tapaculo	Scytalopus atratus	
8534	Stripe-necked tody-tyrant	Hemitriccus striaticollis	
8535	Caracas tapaculo	Scytalopus caracae	
8536	Black-throated tody-tyrant	Hemitriccus granadensis	
8537	Creamy-bellied antwren	Herpsilochmus motacilloides	
8538	Hermit wood wren	Henicorhina anachoreta	
8539	Blue-browed tanager	Tangara cyanotis	
8540	Streak-breasted treehunter	Thripadectes rufobrunneus	
8541	Thick-billed miner	Geositta crassirostris	
8542	Campo miner	Geositta poeciloptera	
8543	Costa Rican brushfinch	Arremon costaricensis	
8544	Chestnut-crowned foliage-gleaner	Automolus rufipileatus	
8545	Olivaceous elaenia	Elaenia mesoleuca	
8546	Grey-bellied antbird	Ammonastes pelzelni	
8547	Spix's woodcreeper	Xiphorhynchus spixii	
8548	White-browed antbird	Myrmoborus leucophrys	
8549	Plain-crested elaenia	Elaenia cristata	
8550	Dusky-tailed flatbill	Ramphotrigon fuscicauda	
8551	Grey-capped tyrannulet	Phyllomyias griseocapilla	
8552	Greater scythebill	Drymotoxeres pucheranii	
8553	McConnell's flycatcher	Mionectes macconnelli	
8554	Parodi's hemispingus	Kleinothraupis parodii	
8555	Rufous-sided pygmy tyrant	Euscarthmus rufomarginatus	
8556	Tucumán mountain finch	Poospiza baeri	
8557	Huallaga tanager	Ramphocelus melanogaster	
8558	Rusty-fronted canastero	Asthenes ottonis	
8559	White-throated sierra finch	Idiopsar erythronotus	
8560	Western sirystes	Sirystes albogriseus	
8561	Dusky-chested flycatcher	Myiozetetes luteiventris	
8562	Rufous-lored tyrannulet	Phylloscartes flaviventris	
8563	Tawny-breasted myiobius	Myiobius villosus	
8564	Andean tit-spinetail	Leptasthenura andicola	
8565	Brown-breasted bamboo tyrant	Hemitriccus obsoletus	
8566	Handsome flycatcher	Nephelomyias pulcher	
8567	Plain inezia	Inezia inornata	
8568	Sharp-billed canastero	Asthenes pyrrholeuca	
8569	Spot-breasted thornbird	Phacellodomus maculipectus	
8570	Yungas tody-tyrant	Hemitriccus spodiops	
8571	Black-capped becard	Pachyramphus marginatus	
8572	Grey-bellied shrike-tyrant	Agriornis micropterus	
8573	Henna-hooded foliage-gleaner	Clibanornis erythrocephalus	
8574	Olive-faced flatbill	Tolmomyias viridiceps	
8575	Spillmann's tapaculo	Scytalopus spillmanni	
8576	Stub-tailed antbird	Sipia berlepschi	
8577	White-browed brushfinch	Arremon torquatus	
8578	Dinelli's doradito	Pseudocolopteryx dinelliana	
8579	Henna-capped foliage-gleaner	Clibanornis rectirostris	
8580	Serra finch	Embernagra longicauda	
8581	White-throated antpitta	Grallaria albigula	
8582	Yellow-margined flatbill	Tolmomyias flavotectus	
8583	Johannes's tody-tyrant	Hemitriccus iohannis	
8584	Paria whitestart	Myioborus pariae	
8585	Plain-tailed warbling finch	Microspingus alticola	
8586	White-cheeked tody-flycatcher	Poecilotriccus albifacies	
8587	Slaty tanager	Creurgops dentatus	
8588	Alagoas tyrannulet	Phylloscartes ceciliae	
8589	Roberts's warbler	Oreophilais robertsi	
8590	Striated softtail	Thripophaga macroura	
8591	Rust-and-yellow tanager	Thlypopsis ruficeps	
8592	Araucaria tit-spinetail	Leptasthenura setaria	
8593	Amazonian scrub flycatcher	Sublegatus obscurior	
8594	Bronze-olive pygmy tyrant	Pseudotriccus pelzelni	
8595	Rufous-tailed tyrant	Knipolegus poecilurus	
8596	Marañón spinetail	Synallaxis maranonica	
8597	Perijá thistletail	Asthenes perijana	
8598	Rufous-breasted antpitta	Grallaricula leymebambae	
8599	Upland antshrike	Thamnophilus aroyae	
8600	Mishana tyrannulet	Zimmerius villarejoi	
8601	Reiser's tyrannulet	Phyllomyias reiseri	
8602	Green-capped tanager	Stilpnia meyerdeschauenseei	
8603	Dusky-capped greenlet	Pachysylvia hypoxantha	
8604	Orange-eared tanager	Chlorochrysa calliparaea	
8605	Slender-billed miner	Geositta tenuirostris	
8606	Prigogine's greenbul	Chlorocichla prigoginei	
8607	Bay-ringed tyrannulet	Phylloscartes sylviolus	
8608	White-browed conebill	Conirostrum ferrugineiventre	
8609	Grey-bellied spinetail	Synallaxis cinerascens	
8610	Large-headed flatbill	Ramphotrigon megacephalum	
8611	Spot-backed antwren	Herpsilochmus dorsimaculatus	
8612	Zimmer's tody-tyrant	Hemitriccus minimus	
8613	White-headed brushfinch	Atlapetes albiceps	
8614	Brown cacholote	Pseudoseisura lophotes	
8615	Checker-throated stipplethroat	Epinecrophylla fulviventris	
8616	Silvery-throated spinetail	Synallaxis subpudica	
8617	Rusty-vented canastero	Asthenes dorbignyi	
8618	Slaty brushfinch	Atlapetes schistaceus	
8619	Spix's warbling antbird	Hypocnemis striata	
8620	Dark-winged canastero	Asthenes arequipae	
8621	Striolated tit-spinetail	Leptasthenura striolata	
8622	Rufous-crowned elaenia	Elaenia ruficeps	
8623	Olive-chested flycatcher	Myiophobus cryptoxanthus	
8624	White-tailed tyrannulet	Mecocerculus poecilocercus	
8625	Black-headed brushfinch	Arremon atricapillus	
8626	Hudson's black tyrant	Knipolegus hudsoni	
8627	Maracaibo tody-flycatcher	Todirostrum viridanum	
8628	Streak-capped treehunter	Thripadectes virgaticeps	
8629	Streak-throated bush tyrant	Myiotheretes striaticollis	
8630	White-breasted antbird	Rhegmatorhina hoffmannsi	
8631	Cabanis's spinetail	Synallaxis cabanisi	
8632	Bahia antwren	Herpsilochmus pileatus	
8633	Buff-bellied tanager	Thlypopsis inornata	
8634	Guianan woodcreeper	Lepidocolaptes albolineatus	
8635	Pelzeln's tody-tyrant	Hemitriccus inornatus	
8636	Rufous-capped brushfinch	Atlapetes pileatus	
8637	Boat-billed tody-tyrant	Hemitriccus josephinae	
8638	Mérida tapaculo	Scytalopus meridanus	
8639	Ochraceous-breasted flycatcher	Nephelomyias ochraceiventris	
8640	Grey-naped antpitta	Grallaria griseonucha	
8641	Marañón thrush	Turdus maranonicus	
8642	Rufous-browed tyrannulet	Phylloscartes superciliaris	
8643	Unicolored thrush	Turdus haplochrous	
8644	White-browed chat-tyrant	Ochthoeca leucophrys	
8645	Zimmer's woodcreeper	Dendroplex kienerii	
8646	Coopmans's elaenia	Elaenia brachyptera	
8647	Mérida flowerpiercer	Diglossa gloriosa	
8648	D'Orbigny's chat-tyrant	Ochthoeca oenanthoides	
8649	Neblina tapaculo	Scytalopus altirostris	
8650	Citron-bellied attila	Attila citriniventris	
8651	Jelski's black tyrant	Knipolegus signatus	
8652	White-collared foliage-gleaner	Anabazenops fuscus	
8653	Grey-headed warbler	Basileuterus griseiceps	
8654	Buff-cheeked greenlet	Pachysylvia muscicapina	
8655	Sooty-fronted spinetail	Synallaxis frontalis	
8656	White-throated barbtail	Premnoplex tatei	
8657	Uniform treehunter	Thripadectes ignobilis	
8658	Sulphur-throated finch	Sicalis taczanowskii	
8659	White-bellied tody-tyrant	Hemitriccus griseipectus	
8660	Ceara woodcreeper	Xiphorhynchus atlanticus	
8661	Yellow-throated spadebill	Platyrinchus flavigularis	
8662	Unadorned flycatcher	Myiophobus inornatus	
8663	Cinnamon-rumped foliage-gleaner	Philydor pyrrhodes	
8664	Olive-backed woodcreeper	Xiphorhynchus triangularis	
8665	Bolivian earthcreeper	Tarphonomus harterti	
8666	Bolivian slaty antshrike	Thamnophilus sticturus	
8667	Imeri warbling antbird	Hypocnemis flavescens	
8668	Rusty-winged barbtail	Premnornis guttuliger	
8669	Rufous-breasted warbling finch	Poospiza rubecula	
8670	Rufous-rumped foliage-gleaner	Philydor erythrocercum	
8671	Cinnamon-breasted tody-tyrant	Hemitriccus cinnamomeipectus	
8672	Grey-backed tachuri	Polystictus superciliaris	
8673	Sclater's tyrannulet	Phyllomyias sclateri	
8674	Marcapata spinetail	Cranioleuca marcapatae	
8675	Rufous-naped greenlet	Pachysylvia semibrunnea	
8676	Southern scrub flycatcher	Sublegatus modestus	
8677	Black-billed flycatcher	Aphanotriccus audax	
8678	Rufous-chested tanager	Thlypopsis ornata	
8679	Caura antbird	Myrmelastes caurensis	
8680	White-throated cacholote	Pseudoseisura gutturalis	
8681	Plain softtail	Thripophaga fusciceps	
8682	Rufous-headed pygmy tyrant	Pseudotriccus ruficeps	
8683	White-eyed attila	Attila bolivianus	
8684	Orinoco softtail	Thripophaga cherriei	
8685	Plain-crowned spinetail	Synallaxis gujanensis	
8686	Cinnamon neopipo	Neopipo cinnamomea	
8687	Yellow-crowned elaenia	Myiopagis flavivertex	
8688	Eye-ringed thistletail	Asthenes palpebralis	
8689	Fulvous-breasted flatbill	Rhynchocyclus fulvipectus	
8690	Double-banded greytail	Xenerpestes minlosi	
8691	Slender-footed tyrannulet	Zimmerius gracilipes	
8692	White-throated pewee	Contopus albogularis	
8693	Smoky-fronted tody-flycatcher	Poecilotriccus fumifrons	
8694	Olrog's cinclodes	Cinclodes olrogi	
8695	Cipo canastero	Asthenes luizae	
8696	Little ground tyrant	Muscisaxicola fluviatilis	
8697	Long-crested pygmy tyrant	Lophotriccus eulophotes	
8698	Pale-olive greenbul	Phyllastrephus fulviventris	
8699	Rufous-browed hemispingus	Poospiza rufosuperciliaris	
8700	Moheli brush warbler	Nesillas mariae	
8701	Black-capped tyrannulet	Phyllomyias nigrocapillus	
8702	Black-fronted brushfinch	Atlapetes nigrifrons	
8703	Grey-chested greenlet	Hylophilus semicinereus	
8704	Tepui foliage-gleaner	Syndactyla roraimae	
8705	Rusty-headed spinetail	Synallaxis fuscorufa	
8706	Sulphur-bellied tyrannulet	Mecocerculus minor	
8707	Cuzco brushfinch	Atlapetes canigenis	
8708	Rufous-tailed foliage-gleaner	Anabacerthia ruficaudata	
8709	Canyon canastero	Asthenes pudibunda	
8710	Tepui spinetail	Cranioleuca demissa	
8711	Sjöstedt's greenbul	Baeopogon clamans	
8712	Cinereous ground tyrant	Muscisaxicola cinereus	
8713	Black-backed tody-flycatcher	Poecilotriccus pulchellus	
8714	Cinnamon-faced tyrannulet	Phylloscartes parkeri	
8715	Ochre-naped ground tyrant	Muscisaxicola flavinucha	
8716	Pale-headed brushfinch	Atlapetes pallidiceps	
8717	Tawny tit-spinetail	Sylviorthorhynchus yanacensis	
8718	Lemon-browed flycatcher	Conopias cinchoneti	
8719	Striated earthcreeper	Geocerthia serrana	
8720	Piura chat-tyrant	Ochthoeca piurae	
8721	Ruddy spinetail	Synallaxis rutilans	
8722	Cactus canastero	Pseudasthenes cactorum	
8723	Olive tufted flycatcher	Mitrephanes olivaceus	
8724	Oustalet's tyrannulet	Phylloscartes oustaleti	
8725	White-bellied pygmy tyrant	Myiornis albiventris	
8727	Buff-throated tody-tyrant	Hemitriccus rufigularis	
8728	White-banded tyrannulet	Mecocerculus stictopterus	
8729	Creamy-crested spinetail	Cranioleuca albicapilla	
8730	Flammulated treehunter	Thripadectes flammulatus	
8731	Tricolored brushfinch	Atlapetes tricolor	
8732	Pale-eyed pygmy tyrant	Atalotriccus pilaris	
8733	Baumann's olive greenbul	Phyllastrephus baumanni	
8734	Drab water tyrant	Ochthornis littoralis	
8735	Peruvian recurvebill	Syndactyla ucayalae	
8736	Río Orinoco spinetail	Synallaxis beverlyae	
8737	Olive-headed greenbul	Arizelocichla olivaceiceps	
8738	Roraiman flycatcher	Myiophobus roraimae	
8739	Restinga tyrannulet	Phylloscartes kronei	
8740	Rufous spinetail	Synallaxis unirufa	
8741	Three-striped hemispingus	Microspingus trifasciatus	
8742	White-lored tyrannulet	Ornithion inerme	
8743	Ochre-cheeked spinetail	Synallaxis scutata	
8744	Spectacled tyrannulet	Zimmerius improbus	
8745	Panamanian tyrannulet	Phylloscartes flavovirens	
8746	Buff-cheeked tody-flycatcher	Poecilotriccus senex	
8747	Cameroon olive greenbul	Phyllastrephus poensis	
8748	Pale-tailed canastero	Asthenes huancavelicae	
8749	Chusquea tapaculo	Scytalopus parkeri	
8750	Guianan schiffornis	Schiffornis olivacea	
8751	Olive-backed foliage-gleaner	Automolus infuscatus	
8752	Line-fronted canastero	Asthenes urubambensis	
8753	Orange-eyed flatbill	Tolmomyias traylori	
8754	Riverside tyrant	Knipolegus orenocensis	
8755	Ayacucho thistletail	Asthenes ayacuchensis	
8756	Mouse-colored thistletail	Asthenes griseomurina	
8757	Black-billed treehunter	Thripadectes melanorhynchus	
8758	Puna canastero	Asthenes sclateri	
8759	Spot-billed ground tyrant	Muscisaxicola maculirostris	
8760	Cinereous-breasted spinetail	Synallaxis hypospodia	
8761	Ash-browed spinetail	Cranioleuca curtata	
8762	Orange-banded flycatcher	Nephelomyias lintoni	
8763	Magdalena tapaculo	Scytalopus rodriguezi	
8764	Dusky spinetail	Synallaxis moesta	
8765	Bolivian white-crowned tapaculo	Scytalopus bolivianus	
8766	Grey-hooded bush tanager	Cnemoscopus rubrirostris	
8767	Chestnut-winged hookbill	Ancistrops strigilatus	
8768	Variegated bristle tyrant	Pogonotriccus poecilotis	
8769	Jelski's chat-tyrant	Silvicultrix jelskii	
8770	Peruvian treehunter	Thripadectes scrutator	
8771	White-bellied spinetail	Mazaria propinqua	
8772	Tumbes pewee	Contopus punensis	
8773	Ecuadorian tyrannulet	Phylloscartes gualaquizae	
8774	Puna ground tyrant	Muscisaxicola juninensis	
8775	Apurímac spinetail	Synallaxis courseni	
8776	Golden-browed chat-tyrant	Silvicultrix pulchella	
8777	Black-chested tyrant	Taeniotriccus andrei	
8778	Ruddy tody-flycatcher	Poecilotriccus russatus	
8779	Short-billed canastero	Asthenes baeri	
8780	Spectacled bristle tyrant	Pogonotriccus orbitalis	
8781	Grey-browed brushfinch	Arremon assimilis	
8782	Rufous-necked foliage-gleaner	Syndactyla ruficollis	
8783	Berlepsch's canastero	Asthenes berlepschi	
8784	Ornate stipplethroat	Epinecrophylla ornata	
8785	Scribble-tailed canastero	Asthenes maculicauda	
8786	Guttulate foliage-gleaner	Syndactyla guttulata	
8787	Pale-naped brushfinch	Atlapetes pallidinucha	
8788	Great spinetail	Synallaxis hypochondriaca	
8789	Light-crowned spinetail	Cranioleuca albiceps	
8790	São Francisco sparrow	Arremon franciscanus	
8791	Dusky-headed brushfinch	Atlapetes fuscoolivaceus	
8792	Venezuelan tyrannulet	Zimmerius petersi	
8793	Black-throated thistletail	Asthenes harterti	
8794	Chapman's bristle tyrant	Pogonotriccus chapmani	
8795	Greyish miner	Geositta maritima	
8796	Santa Marta brushfinch	Atlapetes melanocephalus	
8797	Caracas brushfinch	Arremon phaeopleurus	
8798	Brown-flanked tanager	Thlypopsis pectoralis	
8799	Scaled spinetail	Cranioleuca muelleri	
8800	Buff-banded tyrannulet	Mecocerculus hellmayri	
8801	Tumbes tyrant	Tumbezia salvini	
8802	Bay-capped wren-spinetail	Spartonoica maluroides	
8803	Brown-capped tit-spinetail	Leptasthenura fuliginiceps	
8804	White-browed spinetail	Hellmayrea gularis	
8805	Gray-barred wren	Campylorhynchus megalopterus	
8806	Moustached brushfinch	Atlapetes albofrenatus	
8807	Orange-fronted plushcrown	Metopothrix aurantiaca	
8808	Sharp-tailed grass tyrant	Culicivora caudacuta	
8809	Vilcabamba brushfinch	Atlapetes terborghi	
8810	Black-spectacled brushfinch	Atlapetes melanopsis	
8811	Grey-winged Inca finch	Incaspiza ortizi	
8812	Tepui brushfinch	Atlapetes personatus	
8813	Bamboo foliage-gleaner	Anabazenops dorsalis	
8814	Ochre-browed thistletail	Asthenes coryi	
8815	Tumbesian tyrannulet	Phaeomyias tumbezana	
8816	Black-fronted ground tyrant	Muscisaxicola frontalis	
8817	Black-throated spinetail	Synallaxis castanea	
8818	Olive spinetail	Cranioleuca obsoleta	
8819	Pacific flatbill	Rhynchocyclus pacificus	
8820	Red-shouldered spinetail	Synallaxis hellmayri	
8821	Tepui elaenia	Elaenia olivina	
8822	Taczanowski's ground tyrant	Muscisaxicola griseus	
8823	Rufous-winged tyrannulet	Mecocerculus calopterus	
8824	Bolivian tyrannulet	Zimmerius bolivianus	
8825	Rufous-bellied bush tyrant	Myiotheretes fuscorufus	
8826	Sharp-billed treehunter	Heliobletus contaminatus	
8827	Black-fronted tyrannulet	Phylloscartes nigrifrons	
8828	Grey-and-white tyrannulet	Pseudelaenia leucospodia	
8829	Rufous-backed stipplethroat	Epinecrophylla haematonota	
8830	Buff-bridled Inca finch	Incaspiza laeta	
8831	Rusty-crowned tit-spinetail	Leptasthenura pileata	
8832	Rufous-backed Inca finch	Incaspiza personata	
8833	Planalto foliage-gleaner	Syndactyla dimidiata	
8834	Short-tailed field tyrant	Muscigralla brevicauda	
8835	Streak-backed tit-spinetail	Leptasthenura striata	
8836	Ochre-breasted brushfinch	Atlapetes semirufus	
8837	Bay-crowned brushfinch	Atlapetes seebohmi	
8838	Bolivian brushfinch	Atlapetes rufinucha	
8839	White-winged brushfinch	Atlapetes leucopterus	
8840	Spectacled prickletail	Siptornis striaticollis	
8841	Yellow-green brushfinch	Atlapetes luteoviridis	
8842	Paria brushfinch	Arremon phygas	
8843	Rusty-bellied brushfinch	Atlapetes nationi	
8844	White-eyed stipplethroat	Epinecrophylla leucophthalma	
8845	Foothill stipplethroat	Epinecrophylla spodionota	
8846	White-rimmed brushfinch	Atlapetes leucopis	
8847	Shear-tailed grey tyrant	Muscipipra vetula	
8848	Rufous-eared brushfinch	Atlapetes rufigenis	
8849	Brown-bellied stipplethroat	Epinecrophylla gutturalis	
8850	Rufous-tailed stipplethroat	Epinecrophylla erythrura	
8851	Guatemalan tyrannulet	Zimmerius vilissimus	
8852	Córdoba cinclodes	Cinclodes comechingonus	
8853	Western hemispingus	Sphenopsis ochracea	
8854	Sulphur-bearded reedhaunter	Limnoctites sulphuriferus	
8855	McConnell's spinetail	Synallaxis macconnelli	
8856	Junín canastero	Asthenes virgata	
\.


--
-- Data for Name: animals_concern; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.animals_concern (animal_id, trend_id, status_id) FROM stdin;
1	1	1
2	2	2
3	1	1
4	3	2
5	3	3
6	2	3
7	2	3
8	2	1
9	2	3
10	2	4
11	3	1
12	2	3
13	2	4
14	3	1
15	1	1
16	1	1
17	2	3
18	2	3
19	2	1
20	2	2
21	1	1
22	2	2
23	1	4
24	2	2
25	2	1
26	1	1
27	1	1
28	2	2
29	1	1
30	3	1
31	1	1
32	2	2
33	2	3
34	3	1
35	2	1
36	2	1
37	1	1
38	2	2
39	1	1
40	1	1
41	2	2
42	3	1
43	1	1
44	1	1
45	1	1
46	1	1
47	1	1
48	1	1
49	2	2
50	2	5
51	3	1
52	2	3
53	2	1
54	2	3
55	2	4
56	2	6
57	2	3
58	2	3
59	2	2
60	2	3
61	2	1
62	1	1
63	3	1
64	2	3
65	1	1
66	2	2
67	1	1
68	1	1
69	2	4
70	2	4
71	2	2
72	2	3
73	2	3
74	2	1
75	3	3
76	3	1
77	3	3
78	3	6
79	3	4
80	1	1
81	2	1
82	1	1
83	2	2
84	1	1
85	1	1
86	2	1
87	1	1
88	3	1
89	1	4
90	3	3
91	2	1
92	2	7
93	2	1
94	1	1
95	3	1
96	3	1
97	2	3
98	1	1
99	1	1
100	2	1
101	1	1
102	2	3
103	3	1
104	1	1
105	1	1
106	2	4
107	2	3
108	3	2
109	1	1
110	3	1
111	3	1
112	2	6
113	2	6
114	1	1
115	2	1
116	1	1
117	1	1
118	1	1
119	1	1
120	3	2
121	1	1
122	2	1
123	1	1
124	2	1
125	2	2
126	2	2
127	1	1
128	2	1
129	2	1
130	2	1
131	1	1
132	3	1
133	3	2
134	1	6
135	1	1
136	3	1
137	2	2
138	2	6
139	1	1
140	2	2
141	2	6
142	2	3
143	2	2
144	2	1
145	2	2
146	2	3
147	2	2
148	1	1
149	2	3
150	1	1
151	2	1
152	1	3
153	2	2
154	2	2
155	2	4
156	1	4
157	2	1
158	2	3
159	2	6
160	2	3
161	1	1
162	2	2
163	1	4
164	2	6
165	1	1
166	2	4
167	2	6
168	2	6
169	1	1
170	2	6
171	2	4
172	1	1
173	2	2
174	1	1
175	2	2
176	3	1
177	2	1
178	2	3
179	2	3
180	1	1
181	2	2
182	1	1
183	2	2
184	1	1
185	2	6
186	2	2
187	2	3
188	2	1
189	1	1
190	2	1
191	1	1
192	3	1
193	2	4
194	2	3
195	1	1
196	2	3
197	1	1
198	1	1
199	2	6
200	2	2
201	2	2
202	1	1
203	2	4
204	1	1
205	1	1
206	3	1
207	2	2
208	2	6
209	1	1
210	3	1
211	1	2
212	3	2
213	2	1
214	1	1
215	1	4
216	2	4
217	2	4
218	3	1
219	2	3
220	2	4
221	2	6
222	2	4
223	1	2
224	2	3
225	2	6
226	1	1
227	1	1
228	1	1
229	3	1
230	1	1
231	2	1
232	1	1
233	1	1
234	3	2
235	1	1
236	2	1
237	2	1
238	3	4
239	2	3
240	1	1
241	2	3
242	3	4
243	2	3
244	1	1
245	2	3
246	2	6
247	2	1
248	2	3
249	1	4
250	2	1
251	1	1
252	2	3
253	2	4
254	2	4
255	1	1
256	1	1
257	2	3
258	1	1
259	2	3
260	1	1
261	2	3
262	1	1
263	3	4
264	2	1
265	2	1
266	1	1
267	1	1
268	1	1
269	2	4
270	3	3
271	2	1
272	1	1
273	2	1
274	2	2
275	1	1
276	1	1
277	2	3
278	2	3
279	2	4
280	2	3
281	2	3
282	2	1
283	2	1
284	1	1
285	2	3
286	2	6
287	2	6
288	2	1
289	2	4
290	2	6
291	1	1
292	2	3
293	2	1
294	2	2
295	1	1
296	2	4
297	1	1
298	2	6
299	1	1
300	2	3
301	1	1
302	3	1
303	1	1
304	2	2
305	2	3
306	2	3
307	1	1
308	1	1
309	1	1
310	2	3
311	1	1
312	1	1
313	2	1
314	1	1
315	1	1
316	2	7
317	2	4
318	1	1
319	2	3
320	1	1
321	1	1
322	1	1
323	4	1
324	2	1
325	2	1
326	2	2
327	1	1
328	4	1
329	1	1
330	1	1
331	2	4
332	1	1
333	1	1
334	3	1
335	1	1
336	2	7
337	1	1
338	1	1
339	2	3
340	1	1
341	2	5
342	2	2
343	2	1
344	2	2
345	2	4
346	1	1
347	3	1
348	1	1
349	1	1
350	1	1
351	1	1
352	1	1
353	1	6
354	2	4
355	2	2
356	2	3
357	1	1
358	1	1
359	1	1
360	2	1
361	2	6
362	2	2
363	1	1
364	2	3
365	2	1
366	3	1
367	2	1
368	2	6
369	2	2
370	1	1
371	2	1
372	2	2
373	2	2
374	4	1
375	2	1
376	2	2
377	2	1
378	1	1
379	2	3
380	1	1
381	1	1
382	2	6
383	2	1
384	2	1
385	2	3
386	2	3
387	2	2
388	2	1
389	2	6
390	2	6
391	2	3
392	2	1
393	2	4
394	1	1
395	1	1
396	2	1
397	2	4
398	2	3
399	1	1
400	1	1
401	1	1
402	2	1
403	2	1
404	1	1
405	2	2
406	1	1
407	1	1
408	2	1
409	1	1
410	2	1
411	1	1
412	1	1
413	1	1
414	1	1
415	2	1
416	2	1
417	2	1
418	2	4
419	1	1
420	2	2
421	2	2
422	2	3
423	2	4
424	2	2
425	2	3
426	1	1
427	2	2
428	2	4
429	2	3
430	2	3
431	1	1
432	1	1
433	2	1
434	2	3
435	1	1
436	1	1
437	1	1
438	2	1
439	2	2
440	1	1
441	2	6
442	1	1
443	2	1
444	3	1
445	3	1
446	2	2
447	2	1
448	1	1
449	3	3
450	1	1
451	2	4
452	2	2
453	2	4
454	2	2
455	2	3
456	2	2
457	2	4
458	2	1
459	2	6
460	2	2
461	2	1
462	2	4
463	1	1
464	2	2
465	2	2
466	2	6
467	3	1
468	2	2
469	1	1
470	2	3
471	1	4
472	2	2
473	2	1
474	2	4
475	2	1
476	1	1
477	2	1
478	2	3
479	2	2
480	2	3
481	1	1
482	2	6
483	1	1
484	2	6
485	2	6
486	2	2
487	2	4
488	1	1
489	2	1
490	3	1
491	1	1
492	2	6
493	2	6
494	1	1
495	2	1
496	1	1
497	2	4
498	2	3
499	2	1
500	1	1
501	2	2
502	1	3
503	2	1
504	1	1
505	1	1
506	2	4
507	2	6
508	3	1
509	2	2
510	2	6
511	1	1
512	1	1
513	1	1
514	2	3
515	2	1
516	2	2
517	2	3
518	2	1
519	2	3
520	2	2
521	1	1
522	2	1
523	2	3
524	4	1
525	2	6
526	1	1
527	2	4
528	2	4
529	2	1
530	2	4
531	2	3
532	2	1
533	1	1
534	2	1
535	2	4
536	2	3
537	2	2
538	2	6
539	3	1
540	2	1
541	2	3
542	2	1
543	2	1
544	1	1
545	2	2
546	2	2
547	2	2
548	1	1
549	1	1
550	1	1
551	1	1
552	2	2
553	2	6
554	2	3
555	2	4
556	1	1
557	1	1
558	2	1
559	2	4
560	1	1
561	2	4
562	1	1
563	2	1
564	1	1
565	1	1
566	1	1
567	2	1
568	2	2
569	2	2
570	2	6
571	1	1
572	3	3
573	1	1
574	1	1
575	1	1
576	2	3
577	4	1
578	2	6
579	1	1
580	2	2
581	2	6
582	1	1
583	2	2
584	1	1
585	1	1
586	1	1
587	2	2
588	2	2
589	2	1
590	2	4
591	2	2
592	1	1
593	1	1
594	2	3
595	1	6
596	1	1
597	2	3
598	2	3
599	2	3
600	2	2
601	2	2
602	1	1
603	2	2
604	2	1
605	3	1
606	4	1
607	2	3
608	1	1
609	2	6
610	1	1
611	2	1
612	2	3
613	1	1
614	2	1
615	2	1
616	2	6
617	2	6
618	1	1
619	2	2
620	4	1
621	1	1
622	1	1
623	2	3
624	2	3
625	2	1
626	4	1
627	1	1
628	1	1
629	2	4
630	3	1
631	1	1
632	2	2
633	4	1
634	2	4
635	2	4
636	2	4
637	3	1
638	4	6
639	2	1
640	2	1
641	1	1
642	2	2
643	4	1
644	2	4
645	4	1
646	4	1
647	2	1
648	2	6
649	2	1
650	2	1
651	1	1
652	2	3
653	2	6
654	4	1
655	4	1
656	2	1
657	2	3
658	1	1
659	2	2
660	1	1
661	1	1
662	1	1
663	2	1
664	1	1
665	1	1
666	3	1
667	2	2
668	3	1
669	2	2
670	2	2
671	2	2
672	2	2
673	2	2
674	2	1
675	2	4
676	2	1
677	2	4
678	2	2
679	2	3
680	2	2
681	2	3
682	2	3
683	3	1
684	2	2
685	2	1
686	2	3
687	2	2
688	2	1
689	1	1
690	2	4
691	2	4
692	1	1
693	2	2
694	2	3
695	1	1
696	1	1
697	1	2
698	1	1
699	2	2
700	1	1
701	2	1
702	2	6
703	2	1
704	4	1
705	2	3
706	3	2
707	2	3
708	1	1
709	2	3
710	4	1
711	4	7
712	2	1
713	1	1
714	2	1
715	1	1
716	4	1
717	2	3
718	2	6
719	2	4
720	2	2
721	2	1
722	2	6
723	1	1
724	4	2
725	2	3
726	2	3
727	2	1
728	4	1
729	2	3
730	2	3
731	4	1
732	1	1
733	2	2
734	2	1
735	1	1
736	2	3
737	2	2
738	2	3
739	2	1
740	2	4
741	4	1
742	4	1
743	2	2
744	2	2
745	2	1
746	1	1
747	2	2
748	4	1
749	1	1
750	2	4
751	2	1
752	2	3
753	1	1
754	2	4
755	2	4
756	2	2
757	4	1
758	1	1
759	2	1
760	4	1
761	1	1
762	2	1
763	1	6
764	2	1
765	2	3
766	2	1
767	1	1
768	1	1
769	2	1
770	4	1
771	1	1
772	4	4
773	1	1
774	2	1
775	2	2
776	1	1
777	2	1
778	1	1
779	1	1
780	4	1
781	1	1
782	1	1
783	1	1
784	2	3
785	1	1
786	1	1
787	1	2
788	2	6
789	2	3
790	2	2
791	1	1
792	2	6
793	4	1
794	4	1
795	3	1
796	4	1
797	2	6
798	2	7
799	2	4
800	1	1
801	2	7
802	2	4
803	2	6
804	2	4
805	2	2
806	2	1
807	2	3
808	1	1
809	1	1
810	2	3
811	1	1
812	2	1
813	1	1
814	2	1
815	2	6
816	3	1
817	2	1
818	2	1
819	2	2
820	1	1
821	3	1
822	2	2
823	2	6
824	1	1
825	1	1
826	2	6
827	1	1
828	2	4
829	1	1
830	2	3
831	2	2
832	4	1
833	4	1
834	1	1
835	2	2
836	2	6
837	2	1
838	4	1
839	2	4
840	4	7
841	1	1
842	1	1
843	2	4
844	1	1
845	2	2
846	1	1
847	2	4
848	1	1
849	2	1
850	1	1
851	2	3
852	4	1
853	1	1
854	2	4
855	1	4
856	4	1
857	1	1
858	2	4
859	2	1
860	1	1
861	2	2
862	1	1
863	1	4
864	1	1
865	2	2
866	2	3
867	2	1
868	2	2
869	2	2
870	1	1
871	1	1
872	2	3
873	4	1
874	4	1
875	2	1
876	2	2
877	2	3
878	1	1
879	2	2
880	2	6
881	2	2
882	4	1
883	2	1
884	2	1
885	1	3
886	1	1
887	4	1
888	4	1
889	2	4
890	4	7
891	4	7
892	1	1
893	1	1
894	2	3
895	2	4
896	2	3
897	2	1
898	1	1
899	2	2
900	2	2
901	1	1
902	2	1
903	2	2
904	4	1
905	2	1
906	1	1
907	1	1
908	1	1
909	2	1
910	2	4
911	4	1
912	2	3
913	1	1
914	2	1
915	4	4
916	2	3
917	2	3
918	2	6
919	1	3
920	1	1
921	4	7
922	1	1
923	1	1
924	2	3
925	2	1
926	1	1
927	1	1
928	1	1
929	2	2
930	2	2
931	2	6
932	2	2
933	1	1
934	2	1
935	1	1
936	1	1
937	2	2
938	2	3
939	4	1
940	2	4
941	4	1
942	4	1
943	4	1
944	4	4
945	2	2
946	2	2
947	1	1
948	1	1
949	1	1
950	2	6
951	1	6
952	2	1
953	4	1
954	1	1
955	1	1
956	2	2
957	2	4
958	1	1
959	1	1
960	2	7
961	4	7
962	2	2
963	1	1
964	4	7
965	4	1
966	1	1
967	2	1
968	1	1
969	2	5
970	4	1
971	4	1
972	3	3
973	2	4
974	2	3
975	2	3
976	4	7
977	1	1
978	4	1
979	3	1
980	2	4
981	2	1
982	2	3
983	1	1
984	4	1
985	1	1
986	1	1
987	2	3
988	2	3
989	4	1
990	1	1
991	4	1
992	4	7
993	1	1
994	1	1
995	2	2
996	4	1
997	2	6
998	4	1
999	2	2
1000	2	1
1001	1	1
1002	4	1
1003	2	4
1004	4	1
1005	2	2
1006	4	1
1007	2	2
1008	2	4
1009	2	4
1010	4	7
1011	4	1
1012	1	1
1013	2	1
1014	4	3
1015	2	2
1016	1	1
1017	1	1
1018	1	1
1019	2	3
1020	4	1
1021	1	1
1022	4	1
1023	2	4
1024	2	1
1025	2	2
1026	1	1
1027	1	1
1028	2	6
1029	2	2
1030	2	3
1031	4	7
1032	4	1
1033	2	2
1034	4	1
1035	4	1
1036	2	1
1037	2	1
1038	2	6
1039	1	1
1040	2	1
1041	4	1
1042	2	2
1043	2	4
1044	2	2
1045	4	1
1046	1	1
1047	2	1
1048	2	1
1049	2	4
1050	1	1
1051	2	1
1052	1	1
1053	4	1
1054	1	1
1055	2	3
1056	4	1
1057	1	1
1058	2	2
1059	4	7
1060	2	1
1061	2	6
1062	4	1
1063	4	1
1064	2	4
1065	2	1
1066	4	2
1067	2	4
1068	2	2
1069	2	2
1070	1	1
1071	2	3
1072	2	3
1073	2	3
1074	1	1
1075	2	3
1076	2	7
1077	4	4
1078	4	1
1079	2	3
1080	2	3
1081	4	7
1082	4	7
1083	4	1
1084	2	6
1085	4	1
1086	4	1
1087	4	1
1088	2	2
1089	1	1
1090	1	1
1091	2	2
1092	1	1
1093	1	1
1094	2	2
1095	4	1
1096	2	2
1097	2	3
1098	2	2
1099	1	1
1100	1	1
1101	2	7
1102	2	3
1103	2	3
1104	4	1
1105	4	1
1106	1	1
1107	2	3
1108	1	1
1109	2	1
1110	1	1
1111	2	3
1112	2	1
1113	2	2
1114	1	1
1115	2	3
1116	1	1
1117	2	1
1118	2	1
1119	1	1
1120	1	1
1121	2	3
1122	2	1
1123	2	1
1124	4	4
1125	4	1
1126	4	1
1127	1	1
1128	1	1
1129	2	6
1130	1	1
1131	1	1
1132	2	3
1133	1	1
1134	2	3
1135	2	7
1136	2	1
1137	2	2
1138	2	3
1139	1	1
1140	4	1
1141	1	1
1142	2	3
1143	2	3
1144	4	1
1145	1	1
1146	4	7
1147	4	1
1148	4	1
1149	2	3
1150	2	4
1151	2	3
1152	2	1
1153	2	2
1154	2	1
1155	1	1
1156	2	1
1157	2	1
1158	2	3
1159	2	4
1160	2	3
1161	4	1
1162	4	7
1163	2	6
1164	2	4
1165	4	1
1166	2	3
1167	4	1
1168	2	4
1169	2	6
1170	2	3
1171	2	2
1172	2	4
1173	4	1
1174	1	1
1175	1	1
1176	2	2
1177	2	3
1178	1	1
1179	2	6
1180	2	6
1181	2	3
1182	1	1
1183	4	1
1184	2	2
1185	4	1
1186	2	1
1187	1	1
1188	2	3
1189	1	1
1190	4	7
1191	2	2
1192	2	3
1193	2	3
1194	4	3
1195	2	2
1196	4	1
1197	4	1
1198	2	1
1199	1	1
1200	2	6
1201	2	4
1202	2	4
1203	4	1
1204	2	3
1205	4	1
1206	2	4
1207	4	1
1208	2	4
1209	1	1
1210	4	1
1211	4	7
1212	4	4
1213	2	1
1214	4	1
1215	2	2
1216	2	1
1217	4	1
1218	2	4
1219	4	1
1220	2	1
1221	2	1
1222	2	2
1223	4	1
1224	2	2
1225	2	1
1226	2	1
1227	2	1
1228	4	6
1229	2	3
1230	2	1
1231	4	4
1232	4	7
1233	1	1
1234	2	6
1235	2	2
1236	2	2
1237	2	3
1238	2	3
1239	1	1
1240	2	2
1241	2	4
1242	1	1
1243	4	4
1244	2	3
1245	2	2
1246	1	1
1247	1	1
1248	4	1
1249	1	1
1250	1	1
1251	2	4
1252	4	1
1253	2	3
1254	4	7
1255	2	4
1256	1	1
1257	1	1
1258	2	4
1259	2	3
1260	1	1
1261	2	2
1262	2	3
1263	4	1
1264	4	7
1265	4	7
1266	4	1
1267	2	3
1268	2	2
1269	4	1
1270	1	1
1271	2	3
1272	2	4
1273	1	1
1274	1	1
1275	4	1
1276	2	1
1277	2	3
1278	4	1
1279	4	1
1280	2	3
1281	2	4
1282	2	1
1283	2	2
1284	2	3
1285	1	1
1286	4	7
1287	4	1
1288	1	1
1289	1	1
1290	1	1
1291	1	1
1292	2	4
1293	2	6
1294	2	4
1295	1	1
1296	1	1
1297	2	3
1298	4	1
1299	2	3
1300	1	1
1301	4	7
1302	4	1
1303	2	1
1304	1	1
1305	2	1
1306	1	1
1307	1	1
1308	4	1
1309	1	1
1310	1	1
1311	2	3
1312	2	1
1313	1	1
1314	2	1
1315	1	1
1316	2	2
1317	1	1
1318	1	1
1319	4	1
1320	4	1
1321	2	2
1322	1	1
1323	4	1
1324	1	1
1325	2	6
1326	1	1
1327	4	1
1328	2	3
1329	2	2
1330	2	4
1331	1	1
1332	2	6
1333	2	1
1334	2	4
1335	1	1
1336	2	3
1337	4	1
1338	2	3
1339	2	1
1340	1	1
1341	2	2
1342	2	3
1343	4	1
1344	1	1
1345	1	1
1346	2	7
1347	2	6
1348	4	7
1349	2	3
1350	1	1
1351	2	1
1352	1	1
1353	2	4
1354	2	3
1355	2	6
1356	4	1
1357	4	3
1358	4	1
1359	2	1
1360	2	3
1361	4	7
1362	2	3
1363	1	1
1364	2	2
1365	2	2
1366	4	4
1367	1	1
1368	4	1
1369	2	6
1370	1	1
1371	2	1
1372	4	1
1373	1	1
1374	2	2
1375	2	6
1376	2	3
1377	2	7
1378	2	3
1379	2	1
1380	2	3
1381	2	1
1382	2	1
1383	2	6
1384	2	1
1385	2	2
1386	4	7
1387	4	1
1388	4	1
1389	4	1
1390	2	1
1391	4	1
1392	4	1
1393	1	1
1394	1	2
1395	1	1
1396	2	6
1397	2	3
1398	4	7
1399	2	3
1400	4	1
1401	4	2
1402	4	1
1403	1	1
1404	4	1
1405	1	1
1406	1	1
1407	2	7
1408	1	1
1409	1	1
1410	1	1
1411	2	1
1412	2	3
1413	2	1
1414	1	1
1415	4	1
1416	2	2
1417	2	2
1418	2	1
1419	4	1
1420	1	1
1421	1	1
1422	2	4
1423	2	2
1424	2	3
1425	4	1
1426	2	2
1427	4	1
1428	2	7
1429	2	1
1430	2	1
1431	2	2
1432	2	4
1433	4	1
1434	4	1
1435	1	1
1436	1	1
1437	1	1
1438	4	1
1439	1	1
1440	2	2
1441	2	3
1442	4	2
1443	2	3
1444	1	1
1445	4	7
1446	2	3
1447	4	1
1448	2	1
1449	2	2
1450	2	6
1451	2	6
1452	2	2
1453	2	1
1454	2	6
1455	4	1
1456	4	1
1457	2	3
1458	4	7
1459	2	4
1460	1	1
1461	1	1
1462	2	4
1463	4	3
1464	1	1
1465	1	1
1466	4	1
1467	2	2
1468	1	1
1469	2	1
1470	4	7
1471	2	4
1472	1	1
1473	2	6
1474	4	1
1475	2	3
1476	4	7
1477	1	1
1478	2	3
1479	4	4
1480	4	1
1481	1	1
1482	1	1
1483	4	7
1484	1	1
1485	4	1
1486	2	4
1487	4	3
1488	1	1
1489	2	3
1490	1	1
1491	1	1
1492	2	6
1493	4	1
1494	2	4
1495	2	2
1496	4	1
1497	2	6
1498	2	1
1499	1	1
1500	2	3
1501	1	1
1502	1	1
1503	4	1
1504	2	2
1505	2	3
1506	4	1
1507	4	1
1508	4	1
1509	2	3
1510	2	2
1511	4	1
1512	1	1
1513	2	4
1514	4	1
1515	4	1
1516	2	3
1517	4	1
1518	4	1
1519	1	1
1520	4	1
1521	4	7
1522	2	6
1523	2	6
1524	2	4
1525	4	7
1526	1	3
1527	4	1
1528	4	1
1529	2	2
1530	1	1
1531	2	6
1532	1	1
1533	1	1
1534	1	1
1535	2	2
1536	4	1
1537	2	6
1538	4	1
1539	4	1
1540	2	1
1541	4	1
1542	4	1
1543	1	3
1544	1	1
1545	4	3
1546	1	1
1547	2	4
1548	2	4
1549	1	1
1550	4	1
1551	2	2
1552	4	1
1553	2	1
1554	2	4
1555	4	1
1556	2	6
1557	1	1
1558	2	4
1559	4	1
1560	1	1
1561	2	1
1562	2	3
1563	2	1
1564	4	1
1565	2	1
1566	2	3
1567	4	2
1568	4	7
1569	4	1
1570	1	1
1571	2	1
1572	2	1
1573	4	7
1574	2	2
1575	2	3
1576	1	1
1577	1	1
1578	2	6
1579	4	1
1580	4	7
1581	1	1
1582	1	1
1583	4	1
1584	2	3
1585	2	6
1586	2	3
1587	4	1
1588	2	1
1589	2	4
1590	1	1
1591	2	2
1592	2	2
1593	1	1
1594	4	1
1595	2	3
1596	4	1
1597	2	3
1598	4	2
1599	2	2
1600	2	2
1601	1	1
1602	2	2
1603	2	3
1604	1	1
1605	4	3
1606	4	1
1607	1	1
1608	2	1
1609	2	1
1610	1	1
1611	2	7
1612	1	1
1613	4	1
1614	1	1
1615	4	1
1616	4	1
1617	2	3
1618	4	7
1619	4	1
1620	1	1
1621	4	1
1622	1	1
1623	2	2
1624	2	7
1625	2	2
1626	1	1
1627	4	1
1628	2	4
1629	2	3
1630	1	1
1631	2	2
1632	4	1
1633	4	2
1634	2	4
1635	4	1
1636	2	3
1637	2	2
1638	2	6
1639	2	2
1640	1	1
1641	1	1
1642	2	2
1643	2	3
1644	1	1
1645	2	2
1646	1	1
1647	4	1
1648	4	1
1649	4	1
1650	2	1
1651	2	2
1652	4	1
1653	1	1
1654	1	1
1655	4	1
1656	2	3
1657	1	1
1658	2	1
1659	4	1
1660	1	1
1661	2	1
1662	4	1
1663	4	1
1664	4	1
1665	4	7
1666	4	1
1667	2	1
1668	4	1
1669	4	1
1670	1	1
1671	2	3
1672	2	1
1673	4	1
1674	4	7
1675	1	1
1676	2	3
1677	4	1
1678	1	1
1679	4	1
1680	2	2
1681	2	3
1682	1	1
1683	1	1
1684	4	7
1685	4	1
1686	4	1
1687	2	3
1688	4	2
1689	4	3
1690	4	7
1691	4	1
1692	2	2
1693	4	1
1694	4	7
1695	2	3
1696	2	7
1697	2	2
1698	2	6
1699	1	1
1700	4	7
1701	4	1
1702	2	6
1703	1	1
1704	4	1
1705	1	1
1706	2	2
1707	1	1
1708	2	3
1709	4	1
1710	1	1
1711	2	1
1712	2	1
1713	2	1
1714	4	1
1715	4	1
1716	2	3
1717	4	7
1718	4	1
1719	1	1
1720	4	1
1721	4	1
1722	4	1
1723	2	3
1724	4	1
1725	1	1
1726	4	1
1727	4	1
1728	4	1
1729	4	1
1730	4	2
1731	4	1
1732	2	2
1733	1	1
1734	4	1
1735	2	4
1736	2	3
1737	1	1
1738	2	3
1739	4	1
1740	4	6
1741	1	1
1742	4	7
1743	4	1
1744	4	1
1745	1	1
1746	4	1
1747	4	1
1748	2	1
1749	4	1
1750	4	1
1751	1	1
1752	2	7
1753	2	4
1754	4	7
1755	4	7
1756	4	7
1757	2	2
1758	2	2
1759	4	7
1760	4	7
1761	2	6
1762	1	1
1763	1	1
1764	4	1
1765	4	1
1766	4	1
1767	4	1
1768	2	1
1769	1	1
1770	1	1
1771	4	7
1772	1	1
1773	1	1
1774	4	1
1775	4	1
1776	1	1
1777	4	2
1778	1	1
1779	2	1
1780	4	1
1781	2	2
1782	2	4
1783	4	7
1784	2	2
1785	2	2
1786	2	6
1787	1	1
1788	1	1
1789	4	1
1790	4	1
1791	2	4
1792	1	1
1793	2	4
1794	4	1
1795	4	1
1796	1	1
1797	1	1
1798	4	1
1799	4	4
1800	2	2
1801	4	1
1802	4	1
1803	2	2
1804	4	1
1805	2	2
1806	4	1
1807	4	2
1808	2	3
1809	4	1
1810	4	1
1811	4	1
1812	1	1
1813	1	1
1814	4	7
1815	4	1
1816	4	1
1817	2	1
1818	4	1
1819	2	1
1820	1	1
1821	2	2
1822	2	2
1823	4	1
1824	2	6
1825	1	1
1826	1	1
1827	1	1
1828	2	4
1829	4	1
1830	1	1
1831	4	7
1832	1	1
1833	4	7
1834	2	3
1835	2	1
1836	1	1
1837	2	2
1838	4	4
1839	4	1
1840	2	3
1841	2	2
1842	2	3
1843	4	1
1844	2	1
1845	2	3
1846	1	1
1847	4	1
1848	2	3
1849	4	1
1850	4	1
1851	1	1
1852	4	1
1853	2	3
1854	2	2
1855	1	1
1856	1	1
1857	4	2
1858	4	3
1859	4	1
1860	1	1
1861	2	6
1862	2	3
1863	4	1
1864	2	2
1865	2	2
1866	2	6
1867	1	1
1868	2	4
1869	1	1
1870	4	7
1871	4	1
1872	1	1
1873	1	1
1874	2	2
1875	4	1
1876	4	1
1877	4	3
1878	2	1
1879	4	1
1880	2	1
1881	2	2
1882	2	1
1883	4	1
1884	4	7
1885	2	1
1886	2	2
1887	4	7
1888	4	7
1889	2	4
1890	4	1
1891	2	6
1892	4	3
1893	2	2
1894	4	3
1895	4	1
1896	2	2
1897	1	1
1898	4	1
1899	1	1
1900	2	2
1901	4	1
1902	4	1
1903	4	1
1904	2	2
1905	4	1
1906	2	3
1907	4	7
1908	4	1
1909	4	7
1910	1	1
1911	4	1
1912	1	1
1913	2	3
1914	4	1
1915	1	1
1916	2	2
1917	2	1
1918	2	4
1919	1	1
1920	1	1
1921	2	1
1922	4	1
1923	2	1
1924	4	1
1925	1	3
1926	1	1
1927	2	3
1928	1	1
1929	4	7
1930	4	1
1931	1	1
1932	4	1
1933	4	1
1934	2	2
1935	2	1
1936	1	3
1937	1	1
1938	2	1
1939	4	1
1940	4	1
1941	2	1
1942	1	1
1943	4	3
1944	2	6
1945	4	1
1946	2	3
1947	2	1
1948	1	1
1949	4	4
1950	2	3
1951	1	1
1952	2	3
1953	4	1
1954	2	7
1955	1	1
1956	2	2
1957	1	1
1958	4	7
1959	2	3
1960	1	1
1961	4	1
1962	2	1
1963	2	1
1964	4	1
1965	4	7
1966	2	6
1967	2	1
1968	4	1
1969	4	1
1970	4	1
1971	1	1
1972	4	1
1973	2	3
1974	1	1
1975	1	1
1976	2	1
1977	2	1
1978	2	2
1979	4	1
1980	2	7
1981	4	1
1982	4	1
1983	4	7
1984	1	1
1985	2	2
1986	4	1
1987	2	2
1988	2	1
1989	1	1
1990	1	1
1991	4	1
1992	1	1
1993	1	1
1994	2	1
1995	4	1
1996	1	1
1997	4	7
1998	1	1
1999	4	1
2000	4	1
2001	4	1
2002	1	1
2003	2	3
2004	1	1
2005	2	3
2006	4	1
2007	2	1
2008	2	3
2009	1	1
2010	4	1
2011	4	1
2012	2	1
2013	4	1
2014	2	2
2015	4	1
2016	4	1
2017	4	1
2018	2	1
2019	4	7
2020	4	1
2021	2	2
2022	4	1
2023	4	1
2024	4	1
2025	4	1
2026	4	1
2027	1	1
2028	4	1
2029	4	1
2030	4	7
2031	4	1
2032	2	1
2033	2	6
2034	2	4
2035	1	1
2036	4	7
2037	4	1
2038	4	1
2039	1	1
2040	1	1
2041	2	3
2042	4	1
2043	4	7
2044	4	1
2045	2	7
2046	2	3
2047	1	1
2048	2	1
2049	1	1
2050	2	2
2051	2	1
2052	2	1
2053	4	7
2054	2	2
2055	1	1
2056	2	1
2057	2	2
2058	2	3
2059	2	1
2060	4	7
2061	4	1
2062	4	7
2063	2	4
2064	2	2
2065	4	1
2066	1	7
2067	4	1
2068	1	1
2069	2	2
2070	4	1
2071	1	1
2072	1	1
2073	1	1
2074	1	1
2075	4	1
2076	2	3
2077	1	1
2078	4	1
2079	2	3
2080	2	3
2081	4	1
2082	2	1
2083	4	1
2084	2	1
2085	4	1
2086	4	7
2087	2	4
2088	2	2
2089	4	7
2090	4	1
2091	1	1
2092	3	1
2093	2	1
2094	1	1
2095	2	1
2096	4	1
2097	1	1
2098	2	2
2099	1	1
2100	1	1
2101	2	3
2102	4	1
2103	2	3
2104	4	1
2105	4	1
2106	4	1
2107	2	2
2108	2	3
2109	4	7
2110	2	4
2111	2	2
2112	2	2
2113	2	4
2114	4	1
2115	4	1
2116	1	1
2117	2	7
2118	4	7
2119	4	1
2120	2	1
2121	2	1
2122	1	1
2123	1	1
2124	4	1
2125	4	7
2126	4	1
2127	1	1
2128	4	7
2129	4	1
2130	1	1
2131	2	3
2132	4	1
2133	4	7
2134	2	4
2135	1	1
2136	4	1
2137	4	7
2138	1	1
2139	4	1
2140	4	1
2141	4	1
2142	4	4
2143	2	6
2144	4	1
2145	2	2
2146	4	1
2147	2	1
2148	4	1
2149	1	1
2150	2	3
2151	4	7
2152	2	2
2153	4	1
2154	4	7
2155	4	1
2156	4	7
2157	4	3
2158	4	1
2159	4	1
2160	4	1
2161	2	2
2162	4	1
2163	4	1
2164	4	1
2165	4	1
2166	2	4
2167	4	3
2168	4	1
2169	1	1
2170	2	4
2171	1	1
2172	2	7
2173	2	1
2174	4	1
2175	4	7
2176	1	1
2177	1	1
2178	4	1
2179	2	3
2180	4	4
2181	2	3
2182	1	1
2183	1	1
2184	4	4
2185	4	1
2186	1	1
2187	4	7
2188	1	1
2189	1	1
2190	4	1
2191	2	2
2192	2	3
2193	2	2
2194	4	1
2195	4	7
2196	2	1
2197	4	7
2198	4	1
2199	2	3
2200	2	2
2201	1	1
2202	4	1
2203	4	1
2204	4	1
2205	2	3
2206	2	6
2207	1	1
2208	4	4
2209	4	1
2210	1	1
2211	2	6
2212	4	7
2213	4	7
2214	1	1
2215	4	1
2216	4	1
2217	2	3
2218	4	1
2219	4	1
2220	4	1
2221	1	1
2222	4	7
2223	4	1
2224	4	1
2225	4	1
2226	1	1
2227	4	1
2228	2	2
2229	4	1
2230	1	1
2231	4	3
2232	2	1
2233	2	2
2234	2	3
2235	4	1
2236	4	7
2237	4	7
2238	4	1
2239	4	1
2240	1	1
2241	4	7
2242	4	7
2243	1	1
2244	4	1
2245	2	1
2246	4	1
2247	4	1
2248	4	7
2249	2	6
2250	4	1
2251	2	4
2252	1	1
2253	4	1
2254	4	1
2255	1	1
2256	4	7
2257	4	7
2258	2	2
2259	1	3
2260	4	1
2261	4	1
2262	4	1
2263	4	1
2264	2	4
2265	4	1
2266	4	7
2267	1	1
2268	1	1
2269	4	7
2270	2	3
2271	4	1
2272	1	1
2273	4	1
2274	1	1
2275	1	1
2276	4	1
2277	4	1
2278	4	7
2279	4	1
2280	2	6
2281	4	1
2282	4	7
2283	4	7
2284	4	7
2285	4	1
2286	4	1
2287	2	3
2288	1	1
2289	4	1
2290	1	1
2291	4	7
2292	1	1
2293	4	1
2294	4	1
2295	4	7
2296	4	1
2297	4	1
2298	4	7
2299	4	1
2300	4	1
2301	4	1
2302	2	2
2303	2	2
2304	2	3
2305	4	1
2306	2	3
2307	2	6
2308	4	1
2309	4	1
2310	4	1
2311	2	2
2312	4	7
2313	1	1
2314	4	1
2315	4	1
2316	4	7
2317	4	1
2318	4	7
2319	4	1
2320	2	2
2321	4	7
2322	1	1
2323	4	1
2324	4	1
2325	4	1
2326	4	1
2327	1	1
2328	4	7
2329	4	1
2330	2	2
2331	1	1
2332	4	7
2333	2	3
2334	4	7
2335	4	7
2336	4	1
2337	4	1
2338	4	1
2339	4	1
2340	4	1
2341	2	1
2342	1	1
2343	4	2
2344	4	1
2345	4	1
2346	4	2
2347	2	6
2348	4	1
2349	4	7
2350	4	2
2351	4	4
2352	1	1
2353	1	1
2354	1	1
2355	4	1
2356	4	1
2357	1	1
2358	4	1
2359	4	7
2360	4	1
2361	4	1
2362	1	1
2363	4	7
2364	2	1
2365	4	1
2366	4	7
2367	4	1
2368	2	3
2369	4	1
2370	1	1
2371	4	1
2372	1	1
2373	2	2
2374	2	2
2375	4	1
2376	4	1
2377	4	7
2378	4	1
2379	1	1
2380	4	1
2381	4	7
2382	4	1
2383	4	7
2384	4	1
2385	1	1
2386	2	1
2387	1	1
2388	4	1
2389	4	7
2390	1	1
2391	4	1
2392	2	1
2393	4	3
2394	4	1
2395	4	7
2396	4	2
2397	2	3
2398	4	4
2399	1	1
2400	4	1
2401	4	1
2402	4	1
2403	4	1
2404	4	1
2405	4	1
2406	1	1
2407	4	1
2408	4	7
2409	1	1
2410	1	7
2411	4	1
2412	2	3
2413	4	7
2414	4	7
2415	2	4
2416	4	1
2417	4	1
2418	4	1
2419	4	1
2420	4	1
2421	4	1
2422	1	1
2423	4	1
2424	2	3
2425	4	1
2426	1	1
2427	2	1
2428	4	2
2429	4	1
2430	2	1
2431	4	1
2432	4	2
2433	2	3
2434	4	1
2435	4	1
2436	2	1
2437	4	7
2438	4	1
2439	4	1
2440	4	7
2441	1	1
2442	4	1
2443	2	2
2444	2	2
2445	4	1
2446	4	1
2447	4	1
2448	4	7
2449	1	1
2450	2	3
2451	1	1
2452	1	1
2453	4	1
2454	4	1
2455	4	1
2456	4	1
2457	4	7
2458	2	4
2459	4	1
2460	1	1
2461	2	3
2462	4	7
2463	4	1
2464	4	7
2465	4	1
2466	4	1
2467	1	1
2468	4	1
2469	4	1
2470	4	1
2471	4	1
2472	4	1
2473	4	3
2474	2	1
2475	4	1
2476	4	7
2477	4	7
2478	4	1
2479	4	1
2480	4	4
2481	2	3
2482	1	1
2483	4	4
2484	4	7
2485	2	4
2486	4	7
2487	4	7
2488	2	1
2489	4	7
2490	4	1
2491	4	1
2492	1	1
2493	2	1
2494	4	1
2495	4	2
2496	2	1
2497	2	3
2498	4	1
2499	2	3
2500	4	1
2501	1	1
2502	4	2
2503	4	1
2504	4	7
2505	4	1
2506	2	2
2507	4	7
2508	2	1
2509	1	1
2510	4	3
2511	4	4
2512	2	3
2513	4	7
2514	2	2
2515	1	1
2516	4	1
2517	2	4
2518	2	3
2519	4	1
2520	4	1
2521	4	1
2522	2	2
2523	4	1
2524	4	1
2525	2	2
2526	4	7
2527	4	1
2528	4	1
2529	4	7
2530	4	7
2531	2	2
2532	4	1
2533	2	3
2534	4	7
2535	4	1
2536	4	1
2537	1	1
2538	4	1
2539	1	1
2540	4	1
2541	4	1
2542	4	1
2543	4	1
2544	4	7
2545	4	1
2546	1	3
2547	4	7
2548	4	1
2549	2	2
2550	2	2
2551	1	1
2552	2	1
2553	1	1
2554	4	7
2555	2	3
2556	2	2
2557	1	3
2558	4	3
2559	4	1
2560	4	1
2561	4	7
2562	2	3
2563	4	2
2564	1	1
2565	4	1
2566	1	1
2567	4	7
2568	1	1
2569	4	7
2570	2	1
2571	2	2
2572	4	1
2573	4	7
2574	4	3
2575	4	1
2576	4	7
2577	1	1
2578	4	1
2579	4	1
2580	1	3
2581	2	1
2582	4	7
2583	1	1
2584	4	1
2585	4	1
2586	4	1
2587	1	1
2588	1	1
2589	2	3
2590	4	1
2591	1	1
2592	4	7
2593	4	1
2594	4	1
2595	4	3
2596	4	7
2597	2	1
2598	4	7
2599	4	1
2600	2	3
2601	4	1
2602	4	7
2603	1	1
2604	4	1
2605	4	7
2606	4	1
2607	1	1
2608	4	1
2609	4	7
2610	2	7
2611	2	4
2612	1	1
2613	4	1
2614	4	7
2615	4	1
2616	4	1
2617	4	1
2618	1	1
2619	4	1
2620	4	1
2621	4	1
2622	2	3
2623	4	1
2624	1	1
2625	4	1
2626	4	7
2627	2	4
2628	1	1
2629	2	3
2630	4	1
2631	2	1
2632	4	1
2633	1	1
2634	1	1
2635	1	1
2636	4	1
2637	1	1
2638	1	1
2639	1	1
2640	4	7
2641	4	7
2642	4	1
2643	4	7
2644	4	7
2645	4	1
2646	4	1
2647	2	4
2648	4	1
2649	4	1
2650	4	7
2651	4	1
2652	2	1
2653	1	1
2654	1	1
2655	4	3
2656	4	1
2657	1	7
2658	1	1
2659	2	1
2660	4	4
2661	4	1
2662	1	1
2663	4	1
2664	2	4
2665	4	1
2666	1	1
2667	4	1
2668	4	1
2669	4	1
2670	4	1
2671	4	1
2672	4	1
2673	4	1
2674	2	4
2675	4	1
2676	4	1
2677	1	1
2678	4	1
2679	1	1
2680	4	1
2681	4	1
2682	4	6
2683	2	1
2684	4	7
2685	4	7
2686	4	1
2687	4	7
2688	1	1
2689	4	1
2690	4	7
2691	4	1
2692	4	1
2693	4	1
2694	4	1
2695	4	2
2696	4	7
2697	4	1
2698	2	1
2699	4	7
2700	4	7
2701	4	1
2702	4	1
2703	4	1
2704	2	1
2705	2	3
2706	4	1
2707	4	7
2708	4	7
2709	4	7
2710	4	3
2711	4	1
2712	2	1
2713	4	1
2714	4	7
2715	4	7
2716	4	1
2717	4	7
2718	4	1
2719	2	4
2720	4	7
2721	4	1
2722	4	1
2723	1	1
2724	4	3
2725	4	1
2726	4	1
2727	2	3
2728	4	1
2729	4	7
2730	1	7
2731	2	3
2732	4	7
2733	4	7
2734	1	1
2735	2	3
2736	4	7
2737	1	1
2738	2	4
2739	4	7
2740	1	1
2741	1	1
2742	2	3
2743	2	1
2744	4	7
2745	1	1
2746	4	7
2747	4	1
2748	4	7
2749	4	7
2750	4	7
2751	4	7
2752	2	3
2753	2	4
2754	4	1
2755	1	1
2756	4	1
2757	4	1
2758	2	4
2759	4	4
2760	1	1
2761	4	7
2762	4	1
2763	2	1
2764	4	1
2765	4	7
2766	1	1
2767	4	7
2768	4	1
2769	4	1
2770	4	1
2771	1	1
2772	4	7
2773	4	1
2774	1	1
2775	2	4
2776	4	7
2777	4	7
2778	4	7
2779	2	4
2780	4	3
2781	4	7
2782	4	1
2783	4	1
2784	4	7
2785	2	2
2786	2	2
2787	1	1
2788	4	1
2789	4	7
2790	4	7
2791	2	2
2792	2	3
2793	4	2
2794	4	1
2795	2	2
2796	1	1
2797	4	7
2798	4	7
2799	4	1
2800	2	3
2801	1	1
2802	4	1
2803	4	1
2804	2	1
2805	2	1
2806	4	1
2807	1	1
2808	2	1
2809	2	4
2810	4	1
2811	1	1
2812	1	1
2813	4	7
2814	2	4
2815	2	3
2816	4	7
2817	4	7
2818	2	4
2819	4	3
2820	4	7
2821	2	2
2822	1	1
2823	4	7
2824	4	1
2825	1	1
2826	2	4
2827	4	1
2828	4	7
2829	4	7
2830	4	1
2831	4	1
2832	2	7
2833	2	3
2834	4	1
2835	4	1
2836	4	1
2837	2	2
2838	1	1
2839	1	1
2840	4	1
2841	4	1
2842	4	1
2843	1	1
2844	4	1
2845	4	7
2846	4	1
2847	4	7
2848	2	4
2849	4	7
2850	4	7
2851	4	1
2852	2	4
2853	1	1
2854	4	7
2855	4	2
2856	2	2
2857	4	7
2858	4	3
2859	4	1
2860	4	7
2861	2	1
2862	4	7
2863	1	1
2864	1	1
2865	2	7
2866	1	1
2867	4	1
2868	2	3
2869	4	1
2870	4	1
2871	4	1
2872	4	7
2873	4	1
2874	4	1
2875	4	7
2876	4	1
2877	4	7
2878	4	7
2879	2	4
2880	4	7
2881	2	3
2882	2	2
2883	4	7
2884	1	1
2885	4	1
2886	4	1
2887	4	1
2888	4	1
2889	4	1
2890	1	1
2891	4	7
2892	4	7
2893	4	1
2894	4	1
2895	4	7
2896	1	1
2897	4	7
2898	4	7
2899	2	2
2900	4	1
2901	1	1
2902	4	7
2903	4	7
2904	4	1
2905	2	4
2906	4	1
2907	4	7
2908	4	1
2909	1	1
2910	2	3
2911	1	1
2912	1	1
2913	1	1
2914	3	1
2915	2	3
2916	1	3
2917	3	3
2918	1	1
2919	1	1
2920	2	1
2921	2	4
2922	2	1
2923	2	3
2924	1	1
2925	1	1
2926	1	1
2927	1	1
2928	1	1
2929	2	2
2930	2	3
2931	1	1
2932	1	1
2933	1	1
2934	1	1
2935	1	1
2936	1	1
2937	1	1
2938	1	1
2939	2	1
2940	2	6
2941	1	1
2942	1	1
2943	2	1
2944	1	6
2945	1	1
2946	1	1
2947	2	1
2948	2	3
2949	1	1
2950	2	6
2951	1	1
2952	1	1
2953	2	3
2954	1	1
2955	3	1
2956	2	1
2957	1	1
2958	1	1
2959	1	1
2960	1	1
2961	2	1
2962	1	1
2963	1	1
2964	1	1
2965	2	4
2966	1	1
2967	2	1
2968	1	1
2969	2	1
2970	1	1
2971	2	3
2972	1	1
2973	1	1
2974	1	1
2975	1	1
2976	1	1
2977	1	1
2978	2	6
2979	2	1
2980	1	1
2981	1	1
2982	1	1
2983	1	1
2984	1	1
2985	4	6
2986	1	1
2987	1	1
2988	2	1
2989	1	1
2990	1	1
2991	1	1
2992	2	3
2993	2	2
2994	1	1
2995	2	2
2996	1	1
2997	1	1
2998	1	1
2999	1	1
3000	2	1
3001	2	1
3002	1	1
3003	1	1
3004	2	1
3005	1	1
3006	1	1
3007	1	1
3008	1	1
3009	2	6
3010	2	1
3011	2	6
3012	1	1
3013	2	1
3014	1	1
3015	2	1
3016	1	1
3017	1	1
3018	1	1
3019	1	1
3020	2	4
3021	1	1
3022	1	1
3023	1	1
3024	1	1
3025	1	1
3026	1	1
3027	1	1
3028	1	1
3029	2	2
3030	1	1
3031	1	1
3032	1	1
3033	1	1
3034	1	1
3035	1	1
3036	1	1
3037	1	1
3038	2	6
3039	1	1
3040	1	1
3041	2	1
3042	1	1
3043	1	1
3044	1	1
3045	2	3
3046	1	1
3047	2	2
3048	1	1
3049	1	1
3050	1	1
3051	2	1
3052	3	1
3053	2	1
3054	1	1
3055	1	1
3056	2	1
3057	1	1
3058	1	1
3059	2	1
3060	1	1
3061	2	1
3062	1	1
3063	1	1
3064	1	1
3065	2	2
3066	1	1
3067	2	3
3068	2	1
3069	2	1
3070	1	1
3071	1	1
3072	1	1
3073	1	1
3074	2	6
3075	1	1
3076	1	1
3077	2	1
3078	1	1
3079	2	3
3080	1	1
3081	2	3
3082	1	1
3083	4	2
3084	1	1
3085	1	1
3086	1	1
3087	1	1
3088	1	1
3089	4	4
3090	1	1
3091	1	1
3092	1	1
3093	1	1
3094	4	7
3095	2	1
3096	2	6
3097	2	3
3098	1	1
3099	2	2
3100	1	1
3101	1	1
3102	4	1
3103	1	1
3104	2	1
3105	2	4
3106	4	1
3107	2	4
3108	1	1
3109	2	1
3110	2	3
3111	2	1
3112	2	3
3113	1	1
3114	1	1
3115	1	1
3116	1	1
3117	2	6
3118	1	1
3119	2	3
3120	1	1
3121	1	1
3122	1	1
3123	1	1
3124	1	1
3125	1	1
3126	1	1
3127	2	1
3128	2	3
3129	1	1
3130	2	3
3131	1	6
3132	1	1
3133	1	1
3134	1	1
3135	1	1
3136	2	2
3137	2	3
3138	1	1
3139	1	1
3140	1	1
3141	1	1
3142	1	1
3143	2	6
3144	2	4
3145	1	1
3146	4	1
3147	1	1
3148	4	1
3149	1	1
3150	1	1
3151	2	6
3152	2	1
3153	1	2
3154	1	1
3155	1	1
3156	1	1
3157	4	1
3158	4	1
3159	1	1
3160	2	6
3161	2	3
3162	1	1
3163	1	1
3164	2	3
3165	1	1
3166	1	1
3167	1	1
3168	3	6
3169	1	1
3170	1	1
3171	1	1
3172	1	1
3173	1	1
3174	4	6
3175	1	1
3176	1	1
3177	4	1
3178	1	1
3179	2	1
3180	2	2
3181	1	1
3182	1	1
3183	4	1
3184	2	3
3185	1	1
3186	1	1
3187	1	1
3188	2	2
3189	2	1
3190	2	1
3191	1	1
3192	4	1
3193	2	1
3194	2	4
3195	1	1
3196	1	1
3197	4	1
3198	4	1
3199	1	1
3200	4	3
3201	4	1
3202	1	1
3203	3	1
3204	4	1
3205	2	1
3206	4	1
3207	2	4
3208	1	1
3209	1	1
3210	1	1
3211	1	1
3212	4	1
3213	2	3
3214	1	1
3215	4	1
3216	2	2
3217	4	1
3218	2	1
3219	1	1
3220	1	1
3221	1	1
3222	1	1
3223	4	7
3224	2	1
3225	2	3
3226	1	1
3227	2	1
3228	1	1
3229	1	1
3230	1	1
3231	2	2
3232	1	1
3233	4	1
3234	2	1
3235	2	6
3236	2	6
3237	1	1
3238	3	6
3239	2	4
3240	1	1
3241	1	1
3242	2	2
3243	1	1
3244	2	1
3245	1	1
3246	1	1
3247	4	6
3248	2	3
3249	2	1
3250	1	1
3251	4	3
3252	1	1
3253	4	1
3254	4	3
3255	2	3
3256	4	3
3257	2	3
3258	4	4
3259	2	2
3260	4	7
3261	2	4
3262	4	2
3263	1	1
3264	1	1
3265	1	1
3266	2	3
3267	1	1
3268	2	2
3269	1	1
3270	2	2
3271	4	1
3272	2	6
3273	4	1
3274	2	4
3275	2	1
3276	4	1
3277	4	2
3278	4	3
3279	2	3
3280	2	2
3281	4	1
3282	2	3
3283	4	3
3284	1	1
3285	4	1
3286	2	4
3287	1	1
3288	2	3
3289	1	1
3290	2	2
3291	2	3
3292	1	1
3293	4	1
3294	2	1
3295	2	2
3296	1	1
3297	2	4
3298	1	1
3299	4	1
3300	2	4
3301	2	4
3302	4	1
3303	4	7
3304	2	2
3305	2	3
3306	4	1
3307	1	1
3308	1	1
3309	4	1
3310	2	6
3311	1	1
3312	2	6
3313	1	1
3314	4	2
3315	2	2
3316	4	7
3317	1	1
3318	4	1
3319	2	1
3320	2	6
3321	2	4
3322	4	1
3323	2	1
3324	1	1
3325	4	7
3326	2	3
3327	2	2
3328	1	4
3329	2	2
3330	2	3
3331	4	1
3332	4	1
3333	2	3
3334	4	1
3335	4	1
3336	1	1
3337	1	1
3338	1	1
3339	4	7
3340	1	1
3341	1	1
3342	1	1
3343	2	4
3344	1	1
3345	4	1
3346	4	1
3347	2	2
3348	1	1
3349	4	1
3350	1	1
3351	2	2
3352	1	1
3353	4	1
3354	2	2
3355	2	2
3356	4	1
3357	1	1
3358	4	7
3359	4	7
3360	4	1
3361	1	6
3362	1	1
3363	4	1
3364	2	2
3365	2	2
3366	1	1
3367	1	3
3368	1	1
3369	4	4
3370	4	7
3371	4	1
3372	1	3
3373	2	3
3374	2	3
3375	4	1
3376	1	1
3377	2	2
3378	4	1
3379	4	1
3380	2	2
3381	4	1
3382	2	3
3383	2	2
3384	1	1
3385	1	1
3386	4	1
3387	1	1
3388	2	2
3389	4	7
3390	4	1
3391	4	1
3392	4	1
3393	1	1
3394	4	1
3395	4	7
3396	4	1
3397	1	1
3398	1	1
3399	1	1
3400	4	1
3401	4	3
3402	1	1
3403	2	2
3404	4	2
3405	1	1
3406	2	6
3407	2	2
3408	1	1
3409	2	4
3410	1	1
3411	4	2
3412	2	2
3413	1	1
3414	4	1
3415	1	1
3416	4	4
3417	4	7
3418	4	7
3419	1	1
3420	2	4
3421	4	7
3422	2	2
3423	4	7
3424	2	2
3425	4	3
3426	1	1
3427	1	1
3428	2	3
3429	2	3
3430	4	1
3431	4	7
3432	4	7
3433	1	1
3434	2	6
3435	4	7
3436	1	1
3437	1	1
3438	1	4
3439	1	3
3440	1	1
3441	4	7
3442	1	1
3443	2	2
3444	4	6
3445	4	1
3446	1	1
3447	1	4
3448	2	2
3449	2	2
3450	4	4
3451	4	7
3452	1	1
3453	4	1
3454	1	1
3455	4	7
3456	4	7
3457	1	1
3458	2	1
3459	1	1
3460	2	1
3461	2	3
3462	2	1
3463	1	1
3464	1	1
3465	2	3
3466	1	1
3467	2	6
3468	1	1
3469	2	1
3470	1	1
3471	2	3
3472	4	7
3473	2	6
3474	2	3
3475	4	7
3476	2	2
3477	4	1
3478	1	4
3479	1	1
3480	4	2
3481	2	4
3482	4	1
3483	4	1
3484	1	1
3485	1	1
3486	1	1
3487	1	4
3488	4	7
3489	4	7
3490	4	2
3491	1	3
3492	2	6
3493	4	1
3494	4	1
3495	4	1
3496	4	1
3497	1	1
3498	2	1
3499	4	7
3500	4	1
3501	2	2
3502	4	1
3503	1	1
3504	4	1
3505	4	1
3506	4	1
3507	4	7
3508	1	1
3509	4	1
3510	2	2
3511	2	2
3512	2	3
3513	3	1
3514	2	4
3515	2	3
3516	1	1
3517	1	1
3518	1	4
3519	1	1
3520	4	7
3521	1	1
3522	2	1
3523	4	7
3524	4	7
3525	1	1
3526	4	4
3527	2	1
3528	2	1
3529	4	2
3530	4	1
3531	2	3
3532	4	7
3533	4	6
3534	4	1
3535	4	1
3536	4	1
3537	4	2
3538	4	1
3539	1	1
3540	1	1
3541	2	2
3542	1	1
3543	1	1
3544	4	7
3545	2	2
3546	1	4
3547	2	2
3548	4	3
3549	2	3
3550	4	1
3551	1	4
3552	2	2
3553	4	7
3554	4	1
3555	4	7
3556	4	7
3557	4	7
3558	2	6
3559	1	1
3560	4	7
3561	2	4
3562	2	2
3563	4	1
3564	2	1
3565	4	1
3566	1	1
3567	2	2
3568	4	7
3569	4	7
3570	4	7
3571	1	1
3572	4	7
3573	4	1
3574	4	1
3575	4	7
3576	1	1
3577	4	7
3578	4	2
3579	2	6
3580	2	3
3581	3	1
3582	3	1
3583	1	1
3584	1	1
3585	1	1
3586	2	1
3587	2	6
3588	1	1
3589	1	1
3590	1	1
3591	2	2
3592	1	1
3593	1	1
3594	1	1
3595	2	1
3596	1	1
3597	1	1
3598	2	2
3599	2	1
3600	4	4
3601	1	1
3602	1	1
3603	1	1
3604	2	1
3605	2	1
3606	1	1
3607	2	1
3608	1	1
3609	1	1
3610	2	1
3611	2	1
3612	1	1
3613	1	1
3614	2	1
3615	2	2
3616	2	4
3617	1	1
3618	2	1
3619	3	1
3620	2	3
3621	1	1
3622	2	1
3623	1	1
3624	1	1
3625	1	1
3626	2	1
3627	1	1
3628	2	1
3629	1	1
3630	4	6
3631	1	1
3632	2	3
3633	2	1
3634	1	1
3635	1	1
3636	2	2
3637	2	1
3638	1	1
3639	2	3
3640	2	3
3641	2	3
3642	2	1
3643	2	2
3644	1	1
3645	3	2
3646	1	3
3647	1	1
3648	2	4
3649	1	1
3650	3	1
3651	2	3
3652	1	1
3653	2	1
3654	2	1
3655	1	1
3656	2	2
3657	2	6
3658	1	1
3659	2	1
3660	4	1
3661	1	1
3662	2	2
3663	2	2
3664	2	1
3665	1	1
3666	2	2
3667	1	1
3668	2	4
3669	2	3
3670	2	1
3671	1	1
3672	4	7
3673	2	4
3674	2	3
3675	2	6
3676	2	6
3677	2	1
3678	1	1
3679	2	3
3680	1	1
3681	1	1
3682	4	1
3683	2	1
3684	2	1
3685	2	1
3686	4	4
3687	1	1
3688	2	2
3689	2	3
3690	1	1
3691	2	4
3692	1	1
3693	1	1
3694	4	1
3695	2	1
3696	2	2
3697	1	1
3698	1	4
3699	2	6
3700	2	1
3701	2	1
3702	2	1
3703	2	3
3704	2	1
3705	4	1
3706	4	1
3707	2	6
3708	2	3
3709	1	1
3710	2	3
3711	4	1
3712	2	4
3713	1	1
3714	4	1
3715	2	2
3716	1	1
3717	2	2
3718	4	7
3719	4	1
3720	1	1
3721	2	3
3722	4	7
3723	4	1
3724	2	2
3725	1	1
3726	1	1
3727	4	7
3728	1	1
3729	1	1
3730	1	1
3731	2	2
3732	2	6
3733	4	1
3734	2	2
3735	1	1
3736	4	7
3737	4	1
3738	1	1
3739	4	7
3740	2	3
3741	4	7
3742	2	1
3743	2	6
3744	2	2
3745	4	7
3746	1	1
3747	1	1
3748	2	2
3749	4	1
3750	4	7
3751	2	2
3752	4	7
3753	2	6
3754	2	6
3755	1	3
3756	4	7
3757	2	2
3758	2	2
3759	4	1
3760	1	3
3761	2	4
3762	1	1
3763	2	2
3764	2	6
3765	2	2
3766	2	2
3767	4	7
3768	4	7
3769	4	7
3770	4	2
3771	4	7
3772	1	1
3773	4	7
3774	4	1
3775	4	4
3776	1	4
3777	2	4
3778	2	6
3779	2	6
3780	2	6
3781	4	1
3782	2	3
3783	4	7
3784	4	7
3785	1	1
3786	4	4
3787	2	2
3788	4	7
3789	2	6
3790	4	7
3791	4	1
3792	2	2
3793	2	2
3794	4	7
3795	2	3
3796	4	7
3797	1	1
3798	2	1
3799	4	1
3800	4	7
3801	2	2
3802	4	3
3803	4	3
3804	4	4
3805	2	3
3806	1	1
3807	2	6
3808	4	2
3809	4	4
3810	1	1
3811	1	1
3812	4	1
3813	2	2
3814	4	1
3815	4	7
3816	4	7
3817	4	7
3818	4	7
3819	4	1
3820	4	2
3821	1	1
3822	4	7
3823	1	1
3824	4	7
3825	2	1
3826	2	1
3827	4	7
3828	4	7
3829	1	1
3830	4	1
3831	2	1
3832	4	7
3833	4	7
3834	4	7
3835	4	7
3836	2	2
3837	4	7
3838	2	6
3839	2	1
3840	1	1
3841	2	1
3842	4	1
3843	4	7
3844	4	7
3845	2	4
3846	2	6
3847	4	1
3848	4	1
3849	4	1
3850	2	2
3851	4	2
3852	3	1
3853	4	7
3854	1	1
3855	1	1
3856	4	1
3857	4	7
3858	2	1
3859	2	1
3860	4	1
3861	4	1
3862	4	1
3863	4	1
3864	3	1
3865	4	3
3866	1	1
3867	4	1
3868	2	6
3869	4	1
3870	3	1
3871	3	1
3872	2	4
3873	2	3
3874	1	1
3875	2	1
3876	3	1
3877	3	1
3878	1	1
3879	3	1
3880	3	1
3881	3	1
3882	1	1
3883	3	1
3884	3	1
3885	2	1
3886	3	1
3887	1	1
3888	1	1
3889	3	1
3890	3	1
3891	3	1
3892	3	1
3893	1	1
3894	2	1
3895	1	1
3896	1	1
3897	2	1
3898	2	1
3899	1	1
3900	3	1
3901	1	1
3902	3	1
3903	2	1
3904	3	1
3905	3	6
3906	2	3
3907	2	1
3908	2	1
3909	2	3
3910	1	1
3911	3	1
3912	2	6
3913	1	1
3914	2	1
3915	2	4
3916	2	1
3917	3	1
3918	2	1
3919	1	1
3920	3	1
3921	2	1
3922	1	1
3923	2	1
3924	3	1
3925	3	1
3926	1	1
3927	3	1
3928	3	1
3929	3	1
3930	3	1
3931	2	1
3932	2	4
3933	2	1
3934	2	3
3935	2	3
3936	3	1
3937	3	1
3938	3	1
3939	3	1
3940	3	1
3941	1	1
3942	3	1
3943	2	4
3944	2	1
3945	2	1
3946	2	1
3947	1	1
3948	3	1
3949	2	6
3950	2	3
3951	2	3
3952	3	1
3953	1	1
3954	3	1
3955	2	1
3956	2	4
3957	3	1
3958	2	4
3959	3	1
3960	3	1
3961	1	1
3962	3	1
3963	2	3
3964	1	1
3965	2	1
3966	3	1
3967	1	1
3968	3	1
3969	3	1
3970	3	1
3971	2	1
3972	3	1
3973	1	1
3974	1	1
3975	2	1
3976	3	1
3977	2	6
3978	1	1
3979	3	1
3980	2	1
3981	1	1
3982	1	1
3983	2	2
3984	1	1
3985	2	1
3986	3	1
3987	3	1
3988	3	1
3989	2	1
3990	1	1
3991	1	1
3992	3	2
3993	3	1
3994	2	1
3995	1	1
3996	3	1
3997	3	1
3998	3	1
3999	1	1
4000	1	1
4001	3	1
4002	2	1
4003	1	1
4004	3	1
4005	2	1
4006	2	1
4007	3	1
4008	2	3
4009	1	1
4010	2	1
4011	1	1
4012	3	1
4013	2	1
4014	3	1
4015	2	1
4016	3	1
4017	1	1
4018	3	1
4019	1	1
4020	2	1
4021	2	4
4022	1	1
4023	3	1
4024	2	1
4025	3	1
4026	2	3
4027	2	1
4028	1	1
4029	2	1
4030	3	1
4031	2	1
4032	2	1
4033	2	1
4034	2	3
4035	2	1
4036	2	1
4037	2	3
4038	2	1
4039	1	1
4040	2	4
4041	3	1
4042	2	4
4043	3	1
4044	3	1
4045	1	1
4046	2	3
4047	3	1
4048	2	1
4049	2	1
4050	1	1
4051	3	1
4052	2	1
4053	3	3
4054	2	1
4055	3	1
4056	1	1
4057	3	1
4058	1	1
4059	1	1
4060	2	4
4061	3	1
4062	2	1
4063	2	2
4064	3	1
4065	3	1
4066	2	1
4067	3	1
4068	2	2
4069	2	1
4070	1	1
4071	2	1
4072	1	1
4073	2	1
4074	3	1
4075	3	1
4076	3	1
4077	1	1
4078	2	1
4079	1	1
4080	2	6
4081	1	1
4082	2	3
4083	2	4
4084	3	1
4085	2	2
4086	1	1
4087	2	1
4088	3	1
4089	1	1
4090	3	1
4091	2	1
4092	3	1
4093	1	1
4094	2	2
4095	2	1
4096	3	1
4097	3	1
4098	2	2
4099	2	1
4100	2	1
4101	2	3
4102	1	1
4103	1	1
4104	2	4
4105	2	1
4106	2	1
4107	3	1
4108	1	1
4109	2	1
4110	2	1
4111	3	1
4112	2	6
4113	3	1
4114	2	1
4115	2	1
4116	1	1
4117	3	1
4118	2	1
4119	2	1
4120	3	1
4121	2	3
4122	4	1
4123	1	1
4124	3	1
4125	1	1
4126	3	1
4127	2	1
4128	2	4
4129	2	1
4130	2	1
4131	2	3
4132	3	1
4133	2	1
4134	2	4
4135	2	1
4136	1	1
4137	2	3
4138	1	1
4139	2	1
4140	3	1
4141	1	1
4142	2	1
4143	2	1
4144	2	1
4145	2	1
4146	1	1
4147	2	1
4148	2	4
4149	3	4
4150	1	1
4151	2	4
4152	1	1
4153	3	1
4154	1	1
4155	2	3
4156	1	1
4157	1	1
4158	2	1
4159	2	1
4160	1	1
4161	1	1
4162	2	3
4163	2	1
4164	1	1
4165	2	1
4166	3	1
4167	3	1
4168	2	1
4169	3	1
4170	3	1
4171	3	1
4172	3	1
4173	3	1
4174	3	1
4175	2	4
4176	1	1
4177	4	1
4178	2	1
4179	1	1
4180	1	1
4181	2	4
4182	1	1
4183	2	1
4184	1	1
4185	2	3
4186	2	2
4187	1	1
4188	2	1
4189	2	1
4190	3	1
4191	1	4
4192	1	1
4193	2	1
4194	2	1
4195	4	1
4196	1	1
4197	4	1
4198	2	1
4199	2	1
4200	2	4
4201	3	1
4202	2	1
4203	2	1
4204	1	1
4205	3	1
4206	3	1
4207	3	1
4208	2	6
4209	2	3
4210	1	1
4211	2	1
4212	2	4
4213	2	1
4214	3	1
4215	1	1
4216	3	1
4217	1	1
4218	1	1
4219	3	1
4220	1	1
4221	2	4
4222	1	1
4223	3	1
4224	2	1
4225	2	3
4226	2	4
4227	2	1
4228	2	1
4229	1	1
4230	2	1
4231	2	1
4232	1	1
4233	1	1
4234	1	1
4235	3	1
4236	4	1
4237	2	3
4238	1	1
4239	1	1
4240	4	1
4241	2	1
4242	1	1
4243	2	3
4244	3	1
4245	1	1
4246	4	1
4247	2	6
4248	1	1
4249	1	1
4250	1	1
4251	2	1
4252	2	1
4253	2	1
4254	2	1
4255	3	1
4256	3	1
4257	2	4
4258	1	3
4259	1	1
4260	2	1
4261	2	1
4262	4	1
4263	3	1
4264	3	1
4265	2	1
4266	2	6
4267	2	1
4268	4	1
4269	2	1
4270	2	4
4271	1	1
4272	4	1
4273	4	1
4274	1	1
4275	1	1
4276	1	1
4277	1	1
4278	4	1
4279	2	1
4280	1	1
4281	1	1
4282	2	1
4283	1	1
4284	1	1
4285	3	1
4286	2	1
4287	3	1
4288	2	4
4289	2	1
4290	3	1
4291	3	1
4292	3	1
4293	2	1
4294	1	1
4295	4	1
4296	1	1
4297	2	1
4298	2	4
4299	3	1
4300	2	1
4301	2	2
4302	3	1
4303	2	1
4304	2	1
4305	1	1
4306	1	6
4307	1	4
4308	3	1
4309	2	1
4310	2	1
4311	3	1
4312	1	1
4313	2	3
4314	2	3
4315	2	1
4316	1	1
4317	1	1
4318	2	3
4319	4	1
4320	4	1
4321	2	1
4322	1	1
4323	1	1
4324	2	6
4325	2	2
4326	1	1
4327	1	1
4328	3	2
4329	2	4
4330	2	1
4331	3	1
4332	4	1
4333	1	1
4334	2	3
4335	2	1
4336	2	1
4337	3	1
4338	2	4
4339	1	1
4340	2	1
4341	3	1
4342	3	1
4343	2	4
4344	2	1
4345	2	1
4346	2	1
4347	2	1
4348	3	2
4349	2	1
4350	1	1
4351	1	1
4352	3	1
4353	1	1
4354	1	1
4355	2	4
4356	2	1
4357	2	1
4358	2	2
4359	1	1
4360	1	1
4361	2	4
4362	2	4
4363	2	1
4364	3	1
4365	3	1
4366	1	1
4367	3	1
4368	2	2
4369	2	1
4370	1	1
4371	3	1
4372	4	1
4373	1	1
4374	1	1
4375	4	1
4376	3	1
4377	3	5
4378	2	1
4379	2	1
4380	1	1
4381	2	1
4382	2	1
4383	2	1
4384	1	1
4385	1	1
4386	2	1
4387	1	1
4388	2	1
4389	2	1
4390	3	4
4391	4	1
4392	2	4
4393	2	6
4394	2	3
4395	2	2
4396	2	1
4397	2	1
4398	2	1
4399	2	1
4400	1	1
4401	1	1
4402	2	3
4403	3	1
4404	2	6
4405	1	4
4406	1	1
4407	2	6
4408	2	1
4409	1	1
4410	1	1
4411	2	1
4412	3	1
4413	2	1
4414	1	1
4415	1	2
4416	1	4
4417	2	3
4418	3	1
4419	3	1
4420	2	1
4421	2	3
4422	1	1
4423	2	1
4424	1	1
4425	2	1
4426	2	1
4427	3	1
4428	3	1
4429	1	1
4430	1	1
4431	4	1
4432	2	1
4433	1	1
4434	2	4
4435	2	6
4436	2	1
4437	3	1
4438	1	1
4439	3	1
4440	1	4
4441	3	1
4442	2	1
4443	2	1
4444	2	1
4445	1	1
4446	2	1
4447	2	2
4448	2	1
4449	3	1
4450	2	1
4451	1	1
4452	3	3
4453	3	1
4454	2	4
4455	1	1
4456	2	1
4457	2	4
4458	3	1
4459	2	1
4460	1	1
4461	1	1
4462	2	1
4463	2	1
4464	1	1
4465	2	2
4466	1	1
4467	1	1
4468	1	3
4469	2	1
4470	2	1
4471	3	1
4472	3	1
4473	2	4
4474	1	3
4475	1	1
4476	2	3
4477	3	1
4478	2	1
4479	2	3
4480	3	1
4481	2	1
4482	2	1
4483	1	3
4484	2	1
4485	2	4
4486	2	1
4487	2	1
4488	3	1
4489	1	1
4490	3	1
4491	2	3
4492	2	1
4493	2	1
4494	1	1
4495	3	1
4496	2	1
4497	3	1
4498	2	4
4499	2	1
4500	2	3
4501	3	1
4502	2	1
4503	3	1
4504	1	1
4505	1	1
4506	1	1
4507	3	1
4508	2	1
4509	1	1
4510	1	3
4511	2	1
4512	2	4
4513	2	1
4514	3	1
4515	1	1
4516	2	3
4517	4	1
4518	2	4
4519	1	1
4520	2	3
4521	1	1
4522	4	1
4523	1	1
4524	3	1
4525	3	1
4526	1	3
4527	1	1
4528	3	2
4529	1	1
4530	2	4
4531	1	1
4532	2	2
4533	4	1
4534	2	1
4535	3	1
4536	2	1
4537	1	1
4538	2	6
4539	2	1
4540	3	1
4541	1	1
4542	4	1
4543	1	1
4544	2	1
4545	1	1
4546	3	1
4547	3	1
4548	4	1
4549	3	4
4550	3	1
4551	1	1
4552	2	1
4553	1	1
4554	2	6
4555	2	4
4556	2	3
4557	2	1
4558	2	4
4559	2	1
4560	1	1
4561	2	1
4562	2	1
4563	3	1
4564	2	4
4565	1	1
4566	3	1
4567	3	1
4568	2	1
4569	1	1
4570	1	1
4571	2	3
4572	3	1
4573	1	1
4574	2	1
4575	2	2
4576	2	1
4577	2	1
4578	3	1
4579	1	1
4580	2	1
4581	2	3
4582	3	1
4583	4	1
4584	3	1
4585	2	1
4586	2	1
4587	3	1
4588	2	1
4589	2	1
4590	2	1
4591	3	1
4592	3	1
4593	2	1
4594	2	3
4595	2	4
4596	3	1
4597	1	1
4598	2	4
4599	2	1
4600	2	1
4601	2	3
4602	2	1
4603	2	1
4604	1	1
4605	1	1
4606	3	1
4607	2	1
4608	2	1
4609	3	1
4610	2	2
4611	2	2
4612	1	1
4613	4	1
4614	3	1
4615	2	1
4616	1	1
4617	2	1
4618	3	3
4619	4	6
4620	2	1
4621	3	1
4622	1	1
4623	2	6
4624	1	1
4625	1	1
4626	2	1
4627	1	1
4628	2	2
4629	2	1
4630	2	1
4631	1	1
4632	3	1
4633	2	1
4634	2	1
4635	2	1
4636	1	1
4637	2	3
4638	3	1
4639	3	1
4640	1	1
4641	2	1
4642	1	1
4643	1	1
4644	2	4
4645	2	1
4646	1	1
4647	2	2
4648	2	4
4649	4	1
4650	3	1
4651	2	6
4652	1	1
4653	2	1
4654	2	1
4655	2	1
4656	2	1
4657	2	1
4658	3	1
4659	2	3
4660	1	1
4661	1	1
4662	3	1
4663	2	1
4664	2	1
4665	3	1
4666	1	1
4667	3	1
4668	2	1
4669	1	1
4670	1	1
4671	3	1
4672	2	1
4673	3	1
4674	2	4
4675	2	1
4676	2	1
4677	2	1
4678	2	1
4679	1	1
4680	1	1
4681	2	4
4682	1	1
4683	2	1
4684	2	1
4685	1	1
4686	2	4
4687	2	3
4688	2	1
4689	2	4
4690	1	1
4691	3	1
4692	1	1
4693	2	1
4694	1	1
4695	1	1
4696	2	3
4697	2	1
4698	1	1
4699	2	6
4700	2	4
4701	1	1
4702	2	1
4703	1	1
4704	2	4
4705	1	1
4706	3	1
4707	2	1
4708	3	4
4709	2	1
4710	2	6
4711	3	1
4712	2	1
4713	1	1
4714	2	1
4715	2	1
4716	1	1
4717	3	6
4718	1	3
4719	1	1
4720	2	1
4721	3	1
4722	3	1
4723	3	1
4724	1	1
4725	1	1
4726	2	1
4727	2	1
4728	3	1
4729	1	1
4730	3	1
4731	2	1
4732	2	2
4733	2	3
4734	2	1
4735	2	2
4736	2	2
4737	3	1
4738	2	1
4739	1	1
4740	2	4
4741	3	1
4742	4	1
4743	2	2
4744	2	4
4745	1	1
4746	2	1
4747	2	4
4748	1	1
4749	2	4
4750	2	1
4751	4	1
4752	2	1
4753	2	1
4754	1	1
4755	1	1
4756	3	1
4757	1	1
4758	2	1
4759	2	4
4760	3	1
4761	3	1
4762	2	1
4763	2	1
4764	2	3
4765	2	1
4766	2	1
4767	2	1
4768	2	6
4769	3	1
4770	2	1
4771	2	3
4772	2	1
4773	3	1
4774	3	1
4775	1	1
4776	1	1
4777	2	4
4778	1	1
4779	2	1
4780	3	1
4781	1	1
4782	2	1
4783	2	4
4784	3	1
4785	1	1
4786	1	1
4787	2	1
4788	3	1
4789	2	4
4790	1	1
4791	3	1
4792	1	1
4793	2	1
4794	3	1
4795	2	2
4796	1	1
4797	2	4
4798	1	1
4799	1	1
4800	2	1
4801	2	4
4802	1	1
4803	2	1
4804	1	1
4805	3	1
4806	2	1
4807	1	1
4808	2	1
4809	2	3
4810	2	1
4811	2	1
4812	4	1
4813	2	1
4814	4	1
4815	3	1
4816	2	3
4817	2	1
4818	3	1
4819	2	1
4820	2	1
4821	1	1
4822	2	1
4823	1	4
4824	1	1
4825	1	1
4826	2	1
4827	1	1
4828	2	1
4829	2	4
4830	2	1
4831	2	1
4832	4	1
4833	3	1
4834	3	1
4835	2	4
4836	1	1
4837	2	1
4838	3	1
4839	1	1
4840	1	1
4841	2	3
4842	2	6
4843	2	1
4844	1	1
4845	3	1
4846	3	1
4847	2	3
4848	3	1
4849	1	1
4850	2	3
4851	2	2
4852	2	1
4853	1	1
4854	1	1
4855	4	1
4856	2	1
4857	4	1
4858	1	1
4859	2	1
4860	3	1
4861	2	3
4862	3	1
4863	1	1
4864	3	1
4865	2	1
4866	1	1
4867	3	1
4868	3	1
4869	3	3
4870	1	1
4871	2	1
4872	1	1
4873	2	1
4874	1	1
4875	2	1
4876	3	1
4877	2	1
4878	2	1
4879	1	1
4880	2	2
4881	2	6
4882	2	1
4883	2	2
4884	1	1
4885	2	2
4886	2	2
4887	2	4
4888	1	1
4889	2	3
4890	1	1
4891	3	1
4892	1	1
4893	1	1
4894	2	3
4895	2	1
4896	1	1
4897	2	1
4898	1	1
4899	2	4
4900	2	1
4901	3	1
4902	1	1
4903	2	1
4904	2	1
4905	2	6
4906	2	3
4907	1	4
4908	2	4
4909	1	1
4910	2	1
4911	2	1
4912	2	1
4913	2	1
4914	1	1
4915	4	1
4916	3	1
4917	3	1
4918	2	1
4919	1	1
4920	2	1
4921	1	1
4922	1	3
4923	3	1
4924	1	1
4925	1	1
4926	3	1
4927	1	1
4928	2	1
4929	2	4
4930	2	6
4931	2	1
4932	2	1
4933	2	1
4934	2	1
4935	3	1
4936	2	1
4937	2	3
4938	4	3
4939	3	1
4940	2	1
4941	1	1
4942	2	4
4943	1	1
4944	2	2
4945	1	1
4946	2	3
4947	2	1
4948	2	2
4949	3	1
4950	2	1
4951	2	1
4952	2	1
4953	1	1
4954	3	4
4955	1	1
4956	1	1
4957	2	6
4958	1	1
4959	1	1
4960	1	1
4961	2	3
4962	2	1
4963	1	1
4964	1	1
4965	2	4
4966	2	2
4967	1	1
4968	2	1
4969	2	1
4970	2	1
4971	4	1
4972	2	1
4973	3	1
4974	4	1
4975	2	1
4976	2	1
4977	2	1
4978	1	1
4979	2	1
4980	2	1
4981	3	1
4982	2	4
4983	1	1
4984	2	1
4985	1	1
4986	4	1
4987	2	1
4988	2	4
4989	1	1
4990	2	1
4991	2	1
4992	1	1
4993	3	1
4994	3	3
4995	2	1
4996	3	1
4997	1	1
4998	2	1
4999	2	1
5000	1	1
5001	2	6
5002	2	1
5003	2	2
5004	1	3
5005	2	1
5006	3	1
5007	1	1
5008	1	1
5009	2	1
5010	1	1
5011	2	1
5012	2	3
5013	4	1
5014	1	1
5015	2	4
5016	2	3
5017	3	1
5018	2	1
5019	3	1
5020	2	3
5021	2	1
5022	1	1
5023	3	1
5024	4	1
5025	2	4
5026	4	1
5027	2	1
5028	2	1
5029	1	1
5030	1	1
5031	2	1
5032	3	1
5033	1	1
5034	2	3
5035	1	1
5036	3	1
5037	1	1
5038	3	1
5039	1	1
5040	2	1
5041	2	1
5042	2	1
5043	2	1
5044	4	1
5045	2	4
5046	1	1
5047	2	1
5048	3	1
5049	1	1
5050	1	1
5051	2	4
5052	1	1
5053	2	1
5054	2	3
5055	2	1
5056	3	1
5057	2	1
5058	3	1
5059	2	1
5060	2	1
5061	2	2
5062	1	1
5063	1	1
5064	1	1
5065	1	3
5066	2	1
5067	2	1
5068	2	1
5069	2	1
5070	2	1
5071	1	1
5072	2	1
5073	2	2
5074	3	1
5075	1	1
5076	2	1
5077	2	4
5078	2	1
5079	2	2
5080	1	1
5081	1	1
5082	3	1
5083	2	1
5084	2	1
5085	3	1
5086	4	1
5087	3	1
5088	2	3
5089	2	1
5090	2	3
5091	3	1
5092	1	1
5093	2	2
5094	1	1
5095	2	1
5096	1	1
5097	3	1
5098	1	1
5099	1	1
5100	2	1
5101	1	6
5102	4	6
5103	3	1
5104	4	1
5105	2	1
5106	1	1
5107	1	1
5108	1	1
5109	1	1
5110	1	1
5111	1	3
5112	1	1
5113	1	1
5114	2	1
5115	4	1
5116	2	4
5117	1	1
5118	1	1
5119	2	4
5120	1	1
5121	1	1
5122	2	3
5123	1	1
5124	1	1
5125	1	1
5126	3	1
5127	2	2
5128	2	1
5129	2	1
5130	1	1
5131	2	3
5132	1	1
5133	2	1
5134	4	1
5135	1	1
5136	2	3
5137	2	1
5138	1	1
5139	1	1
5140	1	1
5141	1	1
5142	4	1
5143	4	1
5144	2	3
5145	2	1
5146	4	1
5147	2	1
5148	4	1
5149	3	1
5150	3	1
5151	3	1
5152	2	1
5153	1	1
5154	2	1
5155	2	1
5156	4	1
5157	2	3
5158	3	1
5159	2	3
5160	2	1
5161	2	2
5162	4	1
5163	1	1
5164	2	1
5165	2	1
5166	3	1
5167	1	1
5168	2	1
5169	1	1
5170	1	1
5171	2	1
5172	1	1
5173	1	1
5174	1	1
5175	2	1
5176	1	1
5177	1	1
5178	2	1
5179	1	1
5180	3	1
5181	2	1
5182	2	4
5183	2	1
5184	2	3
5185	1	1
5186	2	2
5187	3	1
5188	1	1
5189	1	1
5190	1	1
5191	1	1
5192	4	1
5193	2	4
5194	2	6
5195	3	3
5196	2	1
5197	2	1
5198	1	1
5199	1	1
5200	4	3
5201	2	1
5202	1	1
5203	1	1
5204	1	1
5205	2	1
5206	1	1
5207	1	2
5208	4	1
5209	2	1
5210	1	1
5211	2	1
5212	4	4
5213	1	1
5214	2	4
5215	2	4
5216	2	2
5217	2	1
5218	4	1
5219	1	1
5220	2	1
5221	4	1
5222	2	3
5223	2	1
5224	1	1
5225	2	1
5226	1	1
5227	2	1
5228	1	1
5229	1	1
5230	4	1
5231	1	1
5232	3	4
5233	2	1
5234	2	1
5235	2	1
5236	1	1
5237	2	4
5238	2	4
5239	2	4
5240	4	1
5241	2	1
5242	3	1
5243	4	1
5244	2	1
5245	2	6
5246	1	1
5247	1	1
5248	1	4
5249	1	2
5250	2	3
5251	3	1
5252	1	1
5253	1	1
5254	1	1
5255	1	1
5256	2	6
5257	1	1
5258	1	1
5259	1	1
5260	3	1
5261	2	1
5262	2	1
5263	2	1
5264	1	6
5265	2	4
5266	1	1
5267	2	3
5268	2	6
5269	1	1
5270	3	1
5271	1	1
5272	2	3
5273	1	1
5274	4	1
5275	1	1
5276	2	1
5277	2	4
5278	2	1
5279	1	1
5280	1	1
5281	1	1
5282	1	1
5283	1	1
5284	3	1
5285	4	1
5286	2	4
5287	2	1
5288	2	1
5289	3	1
5290	1	1
5291	1	4
5292	1	1
5293	1	1
5294	3	1
5295	2	1
5296	4	1
5297	2	1
5298	2	3
5299	2	2
5300	1	1
5301	4	1
5302	1	1
5303	1	3
5304	1	1
5305	2	4
5306	2	6
5307	2	1
5308	1	1
5309	1	1
5310	2	3
5311	1	1
5312	3	1
5313	2	1
5314	2	1
5315	1	1
5316	1	1
5317	2	1
5318	2	3
5319	1	1
5320	1	3
5321	1	1
5322	3	1
5323	2	1
5324	2	1
5325	2	3
5326	4	1
5327	1	1
5328	1	1
5329	1	1
5330	2	1
5331	2	1
5332	3	1
5333	1	1
5334	2	1
5335	4	1
5336	2	3
5337	1	1
5338	1	1
5339	2	3
5340	2	2
5341	1	1
5342	2	3
5343	1	1
5344	1	3
5345	2	1
5346	1	1
5347	2	4
5348	2	4
5349	2	1
5350	1	1
5351	2	3
5352	2	1
5353	4	1
5354	2	1
5355	2	1
5356	2	2
5357	2	1
5358	2	1
5359	1	1
5360	2	4
5361	4	3
5362	2	1
5363	2	1
5364	2	1
5365	3	1
5366	2	1
5367	2	3
5368	3	3
5369	2	2
5370	2	6
5371	4	1
5372	2	1
5373	2	1
5374	2	3
5375	2	1
5376	2	4
5377	2	1
5378	2	2
5379	1	1
5380	1	1
5381	1	1
5382	2	1
5383	1	1
5384	3	1
5385	2	1
5386	1	1
5387	2	1
5388	2	1
5389	1	1
5390	2	2
5391	2	3
5392	1	1
5393	2	3
5394	1	1
5395	3	1
5396	1	1
5397	1	1
5398	1	1
5399	2	1
5400	2	2
5401	1	1
5402	1	1
5403	3	1
5404	2	1
5405	3	1
5406	1	1
5407	2	4
5408	2	1
5409	4	1
5410	3	1
5411	2	1
5412	2	1
5413	2	1
5414	1	1
5415	1	1
5416	3	1
5417	4	1
5418	2	4
5419	2	4
5420	1	1
5421	2	1
5422	3	1
5423	2	3
5424	2	6
5425	1	1
5426	1	1
5427	1	1
5428	2	3
5429	2	2
5430	1	1
5431	2	1
5432	2	1
5433	3	1
5434	1	1
5435	2	1
5436	2	1
5437	2	1
5438	1	1
5439	1	1
5440	2	1
5441	2	6
5442	1	1
5443	2	2
5444	1	1
5445	2	1
5446	1	1
5447	1	1
5448	2	1
5449	2	6
5450	2	1
5451	4	3
5452	1	1
5453	2	4
5454	2	4
5455	3	1
5456	1	1
5457	2	1
5458	2	1
5459	2	1
5460	1	1
5461	2	4
5462	1	1
5463	2	2
5464	2	1
5465	1	1
5466	3	1
5467	3	6
5468	2	3
5469	2	1
5470	2	1
5471	4	1
5472	1	1
5473	2	6
5474	3	1
5475	2	1
5476	1	1
5477	1	1
5478	2	1
5479	4	1
5480	1	1
5481	1	1
5482	2	1
5483	1	1
5484	3	4
5485	2	4
5486	1	1
5487	3	1
5488	1	1
5489	2	4
5490	1	1
5491	2	1
5492	2	1
5493	1	1
5494	2	6
5495	2	1
5496	1	1
5497	2	3
5498	2	1
5499	2	3
5500	1	1
5501	2	1
5502	2	6
5503	1	1
5504	3	3
5505	3	1
5506	2	1
5507	2	1
5508	2	1
5509	2	1
5510	2	1
5511	4	1
5512	1	1
5513	2	3
5514	1	1
5515	3	1
5516	4	1
5517	2	4
5518	2	4
5519	1	1
5520	2	1
5521	1	1
5522	2	6
5523	2	1
5524	1	1
5525	2	1
5526	2	4
5527	4	1
5528	1	1
5529	2	6
5530	2	1
5531	1	1
5532	1	1
5533	2	3
5534	4	1
5535	1	1
5536	1	1
5537	2	1
5538	1	1
5539	2	1
5540	1	1
5541	1	1
5542	1	1
5543	1	1
5544	1	1
5545	3	1
5546	1	1
5547	1	2
5548	2	4
5549	4	1
5550	3	1
5551	2	1
5552	2	1
5553	4	1
5554	4	1
5555	2	1
5556	3	1
5557	2	1
5558	2	1
5559	2	2
5560	2	1
5561	1	1
5562	1	1
5563	2	1
5564	2	1
5565	2	1
5566	2	1
5567	2	1
5568	2	1
5569	1	1
5570	2	1
5571	2	3
5572	1	3
5573	2	1
5574	2	1
5575	1	1
5576	1	1
5577	1	1
5578	2	1
5579	2	1
5580	3	1
5581	2	4
5582	2	1
5583	2	3
5584	1	1
5585	1	1
5586	3	1
5587	2	2
5588	2	3
5589	2	1
5590	3	1
5591	4	1
5592	2	4
5593	1	1
5594	1	1
5595	2	1
5596	2	4
5597	3	2
5598	1	1
5599	1	1
5600	2	1
5601	1	1
5602	1	1
5603	3	1
5604	1	1
5605	3	1
5606	1	1
5607	3	1
5608	2	1
5609	2	4
5610	2	1
5611	4	1
5612	2	2
5613	2	1
5614	2	4
5615	1	1
5616	3	1
5617	1	1
5618	3	1
5619	1	1
5620	4	1
5621	1	1
5622	2	3
5623	2	3
5624	1	1
5625	4	1
5626	2	1
5627	2	1
5628	2	6
5629	2	4
5630	2	1
5631	4	1
5632	2	1
5633	2	1
5634	4	1
5635	2	6
5636	3	1
5637	2	1
5638	2	2
5639	2	3
5640	2	2
5641	1	1
5642	2	7
5643	1	1
5644	1	1
5645	4	1
5646	2	3
5647	3	1
5648	1	1
5649	2	1
5650	2	1
5651	2	1
5652	2	1
5653	3	1
5654	1	1
5655	2	3
5656	2	1
5657	1	1
5658	2	1
5659	2	1
5660	2	1
5661	2	4
5662	2	2
5663	2	1
5664	1	1
5665	1	1
5666	2	1
5667	2	1
5668	2	1
5669	1	1
5670	1	1
5671	2	3
5672	4	1
5673	1	3
5674	3	6
5675	2	1
5676	2	1
5677	2	1
5678	1	1
5679	2	2
5680	1	1
5681	2	1
5682	2	1
5683	2	1
5684	2	1
5685	1	1
5686	2	1
5687	1	1
5688	1	1
5689	2	3
5690	1	1
5691	2	1
5692	2	1
5693	2	1
5694	2	2
5695	1	1
5696	1	1
5697	1	1
5698	1	1
5699	2	1
5700	1	1
5701	1	1
5702	1	1
5703	2	1
5704	1	1
5705	4	1
5706	2	1
5707	1	1
5708	2	1
5709	3	1
5710	1	1
5711	2	1
5712	3	1
5713	2	4
5714	4	1
5715	2	1
5716	4	1
5717	3	1
5718	2	1
5719	3	3
5720	1	1
5721	2	1
5722	2	4
5723	2	3
5724	2	6
5725	2	1
5726	4	1
5727	3	1
5728	2	4
5729	1	1
5730	2	1
5731	1	4
5732	1	1
5733	2	1
5734	2	3
5735	3	1
5736	4	1
5737	2	1
5738	2	1
5739	2	1
5740	2	1
5741	1	1
5742	2	1
5743	1	1
5744	1	1
5745	2	1
5746	2	1
5747	2	2
5748	1	1
5749	3	1
5750	2	1
5751	2	1
5752	2	1
5753	2	1
5754	1	1
5755	1	1
5756	2	1
5757	2	1
5758	1	1
5759	1	1
5760	4	1
5761	2	1
5762	2	1
5763	1	1
5764	1	1
5765	2	1
5766	2	1
5767	1	1
5768	2	1
5769	1	1
5770	2	1
5771	1	1
5772	2	1
5773	4	1
5774	2	1
5775	1	1
5776	4	1
5777	1	1
5778	1	1
5779	1	1
5780	1	1
5781	2	1
5782	1	1
5783	2	2
5784	2	1
5785	2	1
5786	3	4
5787	1	1
5788	1	1
5789	2	1
5790	2	4
5791	1	1
5792	2	1
5793	1	1
5794	2	2
5795	1	1
5796	1	4
5797	1	1
5798	2	1
5799	2	1
5800	1	1
5801	1	1
5802	1	1
5803	1	1
5804	2	6
5805	2	1
5806	2	4
5807	1	1
5808	1	7
5809	1	1
5810	3	1
5811	2	1
5812	1	1
5813	1	1
5814	1	1
5815	2	3
5816	1	1
5817	1	1
5818	2	1
5819	1	1
5820	2	1
5821	1	1
5822	4	1
5823	2	1
5824	1	1
5825	2	1
5826	2	1
5827	2	2
5828	1	1
5829	2	1
5830	2	1
5831	1	1
5832	1	1
5833	2	1
5834	1	1
5835	2	1
5836	2	1
5837	3	1
5838	2	3
5839	1	1
5840	4	1
5841	2	6
5842	2	1
5843	1	1
5844	2	1
5845	2	3
5846	3	1
5847	1	1
5848	3	1
5849	2	3
5850	2	1
5851	1	1
5852	2	4
5853	1	1
5854	2	4
5855	1	4
5856	2	4
5857	2	1
5858	2	1
5859	1	1
5860	2	1
5861	2	1
5862	2	1
5863	4	1
5864	2	1
5865	1	1
5866	2	1
5867	2	1
5868	2	1
5869	2	1
5870	2	1
5871	2	2
5872	1	1
5873	1	1
5874	2	1
5875	2	1
5876	1	3
5877	2	6
5878	1	6
5879	2	4
5880	2	1
5881	4	1
5882	2	2
5883	1	1
5884	2	2
5885	3	2
5886	2	2
5887	2	1
5888	1	1
5889	1	1
5890	1	1
5891	2	1
5892	2	4
5893	2	2
5894	3	1
5895	2	4
5896	3	1
5897	2	1
5898	2	1
5899	2	2
5900	1	1
5901	1	1
5902	1	1
5903	2	1
5904	2	2
5905	1	1
5906	3	2
5907	2	3
5908	2	1
5909	1	1
5910	4	1
5911	2	3
5912	1	1
5913	1	1
5914	1	4
5915	2	1
5916	2	2
5917	2	1
5918	4	1
5919	3	1
5920	2	2
5921	2	1
5922	2	1
5923	1	1
5924	2	1
5925	3	1
5926	2	2
5927	2	4
5928	1	1
5929	2	4
5930	4	1
5931	2	6
5932	1	1
5933	1	1
5934	4	1
5935	1	1
5936	2	1
5937	3	1
5938	3	1
5939	2	6
5940	1	1
5941	1	1
5942	2	1
5943	1	1
5944	2	1
5945	2	1
5946	1	1
5947	1	1
5948	2	1
5949	2	1
5950	1	1
5951	1	1
5952	1	1
5953	1	1
5954	2	1
5955	2	1
5956	2	4
5957	2	1
5958	2	1
5959	1	1
5960	1	1
5961	1	1
5962	2	1
5963	2	1
5964	1	6
5965	2	1
5966	2	2
5967	1	1
5968	2	1
5969	2	1
5970	3	1
5971	2	1
5972	1	3
5973	2	1
5974	2	1
5975	2	1
5976	4	1
5977	1	1
5978	2	1
5979	2	1
5980	1	1
5981	2	1
5982	2	1
5983	2	1
5984	1	1
5985	1	1
5986	1	1
5987	2	6
5988	2	4
5989	2	1
5990	1	4
5991	2	4
5992	1	1
5993	2	3
5994	2	1
5995	4	1
5996	4	7
5997	1	1
5998	2	1
5999	2	1
6000	1	1
6001	1	1
6002	2	1
6003	1	1
6004	4	1
6005	2	1
6006	1	1
6007	1	1
6008	4	1
6009	1	1
6010	2	1
6011	3	1
6012	1	1
6013	1	1
6014	2	1
6015	2	1
6016	3	1
6017	1	1
6018	1	1
6019	1	1
6020	2	4
6021	2	1
6022	2	1
6023	2	1
6024	2	1
6025	2	1
6026	2	1
6027	3	1
6028	1	1
6029	2	6
6030	1	1
6031	2	1
6032	2	1
6033	1	2
6034	2	4
6035	1	3
6036	4	4
6037	2	2
6038	2	1
6039	4	1
6040	2	1
6041	2	3
6042	2	1
6043	3	1
6044	2	4
6045	2	1
6046	1	1
6047	1	1
6048	2	1
6049	2	1
6050	1	1
6051	1	1
6052	1	1
6053	1	1
6054	2	4
6055	1	1
6056	1	3
6057	2	1
6058	1	1
6059	1	1
6060	2	2
6061	4	1
6062	2	6
6063	2	3
6064	1	1
6065	2	4
6066	2	1
6067	1	1
6068	2	3
6069	2	2
6070	2	6
6071	1	1
6072	1	1
6073	1	1
6074	1	4
6075	2	2
6076	2	1
6077	2	3
6078	1	1
6079	1	1
6080	1	1
6081	2	1
6082	2	1
6083	1	4
6084	1	1
6085	4	1
6086	1	2
6087	4	1
6088	4	1
6089	1	1
6090	2	3
6091	1	1
6092	2	1
6093	2	1
6094	4	1
6095	4	1
6096	2	1
6097	1	1
6098	1	1
6099	2	1
6100	1	1
6101	1	1
6102	4	1
6103	1	1
6104	4	1
6105	2	2
6106	2	1
6107	1	1
6108	1	1
6109	2	1
6110	2	1
6111	3	1
6112	4	1
6113	1	1
6114	2	4
6115	1	1
6116	1	3
6117	2	1
6118	2	4
6119	1	1
6120	1	1
6121	1	1
6122	1	1
6123	1	1
6124	1	1
6125	1	1
6126	1	1
6127	2	2
6128	2	1
6129	2	2
6130	2	1
6131	1	1
6132	1	1
6133	2	1
6134	2	4
6135	4	1
6136	2	3
6137	2	1
6138	4	1
6139	2	3
6140	4	1
6141	2	4
6142	1	1
6143	2	2
6144	1	1
6145	1	1
6146	2	1
6147	2	1
6148	2	3
6149	1	1
6150	2	1
6151	1	1
6152	2	1
6153	1	1
6154	1	1
6155	1	1
6156	1	1
6157	1	1
6158	1	1
6159	1	1
6160	2	1
6161	3	1
6162	2	3
6163	2	1
6164	2	1
6165	2	4
6166	2	1
6167	1	1
6168	2	1
6169	1	1
6170	2	1
6171	1	1
6172	1	1
6173	4	3
6174	2	1
6175	4	1
6176	2	1
6177	2	1
6178	2	4
6179	1	1
6180	4	1
6181	1	1
6182	2	3
6183	4	2
6184	2	1
6185	2	3
6186	1	1
6187	2	1
6188	1	1
6189	3	4
6190	1	1
6191	2	1
6192	2	4
6193	1	4
6194	1	1
6195	2	1
6196	1	1
6197	1	1
6198	1	1
6199	2	4
6200	1	1
6201	1	3
6202	2	1
6203	1	1
6204	1	1
6205	2	1
6206	2	4
6207	1	1
6208	1	1
6209	1	1
6210	2	1
6211	2	1
6212	1	1
6213	2	1
6214	2	2
6215	4	1
6216	1	1
6217	2	2
6218	1	1
6219	2	1
6220	1	1
6221	1	1
6222	2	1
6223	2	1
6224	2	1
6225	2	1
6226	1	1
6227	3	1
6228	2	1
6229	2	1
6230	1	1
6231	2	1
6232	1	1
6233	3	1
6234	2	1
6235	1	1
6236	2	4
6237	2	1
6238	1	1
6239	1	1
6240	2	1
6241	4	1
6242	2	1
6243	1	1
6244	1	1
6245	2	2
6246	3	1
6247	2	1
6248	1	1
6249	2	1
6250	1	1
6251	1	1
6252	1	1
6253	2	1
6254	2	1
6255	1	1
6256	4	4
6257	2	3
6258	2	2
6259	2	1
6260	2	4
6261	1	1
6262	1	1
6263	1	1
6264	1	1
6265	1	1
6266	1	1
6267	2	1
6268	1	1
6269	2	1
6270	4	1
6271	2	2
6272	2	1
6273	1	1
6274	4	1
6275	1	1
6276	2	3
6277	2	3
6278	2	1
6279	2	1
6280	4	1
6281	3	1
6282	1	1
6283	2	2
6284	2	2
6285	1	1
6286	2	4
6287	2	6
6288	2	1
6289	1	1
6290	1	1
6291	1	1
6292	2	3
6293	2	1
6294	4	1
6295	2	1
6296	1	1
6297	2	1
6298	1	1
6299	2	1
6300	2	1
6301	2	3
6302	1	1
6303	1	1
6304	2	1
6305	3	1
6306	1	1
6307	1	1
6308	2	1
6309	3	1
6310	2	1
6311	1	1
6312	2	1
6313	3	1
6314	2	1
6315	3	1
6316	4	1
6317	2	1
6318	1	1
6319	2	1
6320	1	1
6321	2	4
6322	1	1
6323	2	2
6324	2	1
6325	2	3
6326	2	2
6327	1	1
6328	2	1
6329	2	3
6330	2	1
6331	2	1
6332	2	3
6333	1	1
6334	2	1
6335	2	1
6336	1	1
6337	1	1
6338	2	2
6339	2	1
6340	2	1
6341	2	1
6342	1	1
6343	2	1
6344	2	3
6345	1	1
6346	1	1
6347	2	1
6348	2	1
6349	4	1
6350	2	2
6351	1	1
6352	1	1
6353	2	3
6354	2	6
6355	2	1
6356	2	6
6357	1	1
6358	2	1
6359	2	1
6360	2	1
6361	1	1
6362	2	3
6363	2	3
6364	2	1
6365	1	1
6366	3	1
6367	2	1
6368	1	1
6369	1	1
6370	2	1
6371	2	1
6372	1	1
6373	1	1
6374	2	1
6375	1	1
6376	2	4
6377	1	1
6378	2	1
6379	1	1
6380	2	1
6381	2	3
6382	2	1
6383	4	1
6384	1	1
6385	1	1
6386	1	3
6387	2	1
6388	2	1
6389	2	1
6390	1	1
6391	1	1
6392	2	1
6393	1	1
6394	1	1
6395	2	1
6396	2	1
6397	1	1
6398	2	2
6399	2	3
6400	1	1
6401	2	1
6402	2	1
6403	4	1
6404	1	1
6405	1	1
6406	2	1
6407	3	1
6408	2	1
6409	1	1
6410	1	1
6411	4	1
6412	1	1
6413	1	1
6414	2	1
6415	2	1
6416	2	1
6417	2	4
6418	2	1
6419	1	1
6420	4	1
6421	2	4
6422	1	1
6423	2	1
6424	1	1
6425	1	1
6426	1	1
6427	2	1
6428	2	1
6429	1	1
6430	2	1
6431	2	1
6432	2	2
6433	2	1
6434	2	1
6435	2	1
6436	4	1
6437	2	1
6438	4	1
6439	3	1
6440	2	1
6441	1	1
6442	2	1
6443	1	1
6444	2	1
6445	2	2
6446	2	3
6447	2	1
6448	1	1
6449	1	1
6450	2	1
6451	1	1
6452	2	1
6453	2	6
6454	2	1
6455	2	4
6456	2	1
6457	3	1
6458	1	1
6459	3	1
6460	2	1
6461	2	4
6462	2	6
6463	2	2
6464	1	1
6465	1	1
6466	1	1
6467	1	1
6468	2	1
6469	2	1
6470	4	1
6471	2	1
6472	2	3
6473	4	1
6474	2	4
6475	2	1
6476	3	1
6477	1	1
6478	2	1
6479	1	1
6480	3	1
6481	1	1
6482	4	1
6483	1	1
6484	2	4
6485	1	1
6486	1	1
6487	2	3
6488	2	1
6489	2	3
6490	1	1
6491	1	1
6492	1	4
6493	4	4
6494	1	1
6495	2	1
6496	1	1
6497	1	1
6498	1	1
6499	2	1
6500	2	1
6501	2	4
6502	1	1
6503	2	1
6504	2	1
6505	2	1
6506	2	1
6507	1	1
6508	2	1
6509	2	1
6510	1	1
6511	4	1
6512	4	1
6513	3	4
6514	2	1
6515	4	1
6516	2	4
6517	1	1
6518	1	1
6519	2	1
6520	4	1
6521	2	1
6522	2	1
6523	4	1
6524	2	1
6525	2	1
6526	2	1
6527	2	3
6528	1	1
6529	2	1
6530	4	1
6531	2	2
6532	2	1
6533	2	1
6534	4	1
6535	4	1
6536	2	3
6537	1	1
6538	1	4
6539	2	1
6540	2	1
6541	2	1
6542	1	1
6543	2	6
6544	1	1
6545	2	2
6546	2	1
6547	2	2
6548	2	1
6549	2	1
6550	1	1
6551	2	1
6552	2	2
6553	2	2
6554	2	4
6555	1	1
6556	2	1
6557	2	4
6558	1	1
6559	1	1
6560	2	1
6561	4	7
6562	2	4
6563	4	1
6564	2	1
6565	1	1
6566	2	1
6567	2	1
6568	1	1
6569	2	1
6570	1	1
6571	1	1
6572	1	1
6573	1	1
6574	1	1
6575	4	1
6576	2	2
6577	2	1
6578	2	2
6579	2	1
6580	1	1
6581	3	4
6582	2	1
6583	1	1
6584	2	2
6585	1	1
6586	2	6
6587	4	6
6588	2	1
6589	2	1
6590	1	1
6591	2	1
6592	4	1
6593	2	6
6594	4	1
6595	2	1
6596	1	1
6597	1	1
6598	1	1
6599	2	3
6600	4	1
6601	1	1
6602	1	1
6603	2	1
6604	1	1
6605	2	1
6606	2	3
6607	4	1
6608	3	1
6609	2	1
6610	2	1
6611	2	1
6612	2	1
6613	4	1
6614	2	3
6615	2	1
6616	2	1
6617	1	1
6618	1	1
6619	2	6
6620	2	3
6621	1	1
6622	2	1
6623	2	4
6624	2	1
6625	1	1
6626	1	1
6627	2	1
6628	1	1
6629	1	1
6630	2	1
6631	2	1
6632	1	1
6633	2	1
6634	2	1
6635	4	1
6636	2	1
6637	2	1
6638	3	1
6639	3	1
6640	2	1
6641	2	1
6642	2	1
6643	4	1
6644	2	1
6645	2	1
6646	2	1
6647	1	1
6648	1	1
6649	2	1
6650	2	1
6651	2	2
6652	2	1
6653	4	4
6654	1	1
6655	2	1
6656	2	1
6657	2	1
6658	1	1
6659	1	1
6660	2	4
6661	4	4
6662	2	1
6663	2	1
6664	2	1
6665	1	3
6666	2	1
6667	4	1
6668	3	1
6669	2	2
6670	4	1
6671	2	1
6672	4	1
6673	2	2
6674	1	1
6675	2	1
6676	2	1
6677	2	1
6678	2	1
6679	2	1
6680	2	4
6681	2	6
6682	1	1
6683	1	1
6684	1	1
6685	2	1
6686	2	4
6687	2	4
6688	2	1
6689	2	1
6690	4	1
6691	2	3
6692	2	1
6693	2	1
6694	1	1
6695	1	1
6696	1	1
6697	1	1
6698	3	1
6699	2	1
6700	2	1
6701	1	1
6702	1	1
6703	2	1
6704	2	1
6705	2	1
6706	1	1
6707	2	1
6708	4	4
6709	1	1
6710	2	1
6711	1	1
6712	2	1
6713	2	4
6714	2	1
6715	2	1
6716	1	1
6717	4	1
6718	1	1
6719	2	1
6720	2	3
6721	1	1
6722	2	3
6723	2	3
6724	2	1
6725	2	1
6726	2	1
6727	2	1
6728	2	1
6729	2	4
6730	1	1
6731	2	1
6732	2	1
6733	1	1
6734	1	1
6735	2	1
6736	2	1
6737	2	1
6738	2	2
6739	2	1
6740	2	1
6741	2	6
6742	1	1
6743	2	1
6744	2	1
6745	1	1
6746	2	1
6747	1	1
6748	1	4
6749	2	3
6750	1	1
6751	1	1
6752	4	1
6753	1	1
6754	4	1
6755	1	1
6756	1	1
6757	1	1
6758	2	1
6759	2	1
6760	2	1
6761	2	1
6762	1	1
6763	4	3
6764	2	4
6765	2	1
6766	1	1
6767	2	1
6768	2	1
6769	2	1
6770	4	1
6771	4	1
6772	2	1
6773	2	1
6774	1	1
6775	1	1
6776	2	3
6777	4	1
6778	1	1
6779	1	1
6780	1	1
6781	2	3
6782	2	1
6783	2	1
6784	1	1
6785	2	2
6786	2	1
6787	2	4
6788	2	1
6789	1	3
6790	2	1
6791	1	1
6792	4	1
6793	4	1
6794	2	1
6795	1	1
6796	1	1
6797	4	1
6798	1	4
6799	4	1
6800	2	1
6801	2	1
6802	2	1
6803	2	4
6804	2	3
6805	3	1
6806	2	1
6807	4	1
6808	2	1
6809	2	1
6810	2	1
6811	4	1
6812	1	1
6813	1	1
6814	2	1
6815	2	4
6816	2	1
6817	1	1
6818	2	1
6819	2	4
6820	4	1
6821	2	3
6822	4	1
6823	4	1
6824	2	1
6825	1	1
6826	1	1
6827	2	1
6828	4	1
6829	2	1
6830	2	3
6831	2	1
6832	2	3
6833	2	3
6834	1	1
6835	2	3
6836	2	3
6837	2	4
6838	4	1
6839	4	1
6840	1	1
6841	1	1
6842	4	3
6843	2	1
6844	2	1
6845	2	1
6846	2	2
6847	2	3
6848	4	1
6849	2	1
6850	2	1
6851	4	1
6852	2	1
6853	1	1
6854	4	1
6855	2	1
6856	2	1
6857	4	1
6858	2	3
6859	2	1
6860	2	1
6861	1	1
6862	2	1
6863	1	1
6864	2	3
6865	2	1
6866	1	1
6867	1	1
6868	4	1
6869	1	1
6870	1	1
6871	2	4
6872	1	1
6873	2	1
6874	2	3
6875	1	1
6876	2	1
6877	4	1
6878	2	1
6879	2	4
6880	2	3
6881	2	1
6882	2	1
6883	2	1
6884	1	1
6885	1	1
6886	2	1
6887	1	1
6888	2	1
6889	1	1
6890	4	1
6891	2	1
6892	2	1
6893	1	1
6894	2	3
6895	2	1
6896	1	1
6897	1	1
6898	1	1
6899	2	1
6900	2	4
6901	1	1
6902	2	1
6903	1	1
6904	2	1
6905	1	1
6906	2	2
6907	2	1
6908	2	1
6909	4	1
6910	1	1
6911	2	4
6912	2	1
6913	1	1
6914	1	1
6915	2	1
6916	2	1
6917	1	1
6918	1	1
6919	2	1
6920	1	1
6921	2	1
6922	3	1
6923	2	1
6924	2	1
6925	2	1
6926	2	1
6927	1	1
6928	1	1
6929	2	3
6930	1	3
6931	1	1
6932	1	1
6933	2	1
6934	1	1
6935	2	1
6936	1	1
6937	1	1
6938	4	1
6939	4	1
6940	2	3
6941	2	2
6942	2	1
6943	2	4
6944	2	1
6945	2	1
6946	4	1
6947	1	1
6948	1	1
6949	1	1
6950	2	1
6951	2	3
6952	1	1
6953	2	4
6954	1	1
6955	2	2
6956	2	1
6957	4	1
6958	2	1
6959	1	1
6960	1	1
6961	2	1
6962	2	1
6963	2	1
6964	2	2
6965	2	1
6966	2	1
6967	1	1
6968	2	1
6969	3	1
6970	2	1
6971	1	1
6972	1	1
6973	1	1
6974	2	6
6975	2	4
6976	1	1
6977	2	2
6978	2	1
6979	4	1
6980	2	2
6981	1	1
6982	2	1
6983	2	1
6984	2	2
6985	2	1
6986	1	1
6987	1	1
6988	1	1
6989	4	7
6990	4	1
6991	2	3
6992	1	1
6993	2	1
6994	1	1
6995	2	2
6996	1	1
6997	2	1
6998	4	1
6999	1	1
7000	4	1
7001	3	1
7002	2	1
7003	2	2
7004	2	1
7005	1	1
7006	2	1
7007	2	3
7008	2	4
7009	1	1
7010	2	1
7011	1	1
7012	1	1
7013	1	1
7014	4	7
7015	2	1
7016	1	1
7017	1	1
7018	1	1
7019	2	4
7020	2	1
7021	1	1
7022	3	1
7023	1	1
7024	1	1
7025	1	1
7026	2	1
7027	1	7
7028	1	1
7029	2	1
7030	2	1
7031	1	1
7032	2	1
7033	1	1
7034	2	1
7035	1	1
7036	2	1
7037	1	1
7038	2	6
7039	2	1
7040	4	1
7041	4	1
7042	1	1
7043	2	1
7044	1	1
7045	1	1
7046	4	1
7047	4	1
7048	4	1
7049	1	1
7050	2	3
7051	3	1
7052	1	1
7053	2	1
7054	2	1
7055	1	1
7056	2	4
7057	1	1
7058	2	1
7059	3	1
7060	2	1
7061	2	1
7062	4	1
7063	2	1
7064	1	1
7065	4	1
7066	1	1
7067	2	1
7068	1	1
7069	2	1
7070	2	1
7071	4	1
7072	2	1
7073	2	2
7074	2	1
7075	1	1
7076	2	1
7077	1	1
7078	2	1
7079	1	1
7080	2	1
7081	2	2
7082	2	1
7083	1	1
7084	2	1
7085	2	1
7086	1	1
7087	2	4
7088	2	1
7089	2	1
7090	2	1
7091	4	1
7092	2	2
7093	2	4
7094	2	2
7095	2	1
7096	1	1
7097	2	1
7098	2	1
7099	1	1
7100	2	4
7101	1	1
7102	2	1
7103	2	1
7104	1	1
7105	2	1
7106	2	3
7107	2	1
7108	2	1
7109	1	1
7110	2	1
7111	1	1
7112	1	1
7113	1	1
7114	4	1
7115	2	1
7116	1	1
7117	2	4
7118	1	1
7119	2	1
7120	1	1
7121	1	1
7122	2	6
7123	1	1
7124	2	1
7125	2	3
7126	4	7
7127	2	1
7128	2	1
7129	2	2
7130	1	1
7131	1	1
7132	1	1
7133	2	4
7134	1	1
7135	1	1
7136	2	4
7137	2	1
7138	1	1
7139	2	1
7140	1	1
7141	1	1
7142	2	1
7143	2	1
7144	1	1
7145	2	3
7146	2	1
7147	1	1
7148	1	1
7149	1	1
7150	2	1
7151	2	3
7152	2	1
7153	2	1
7154	1	1
7155	1	1
7156	2	3
7157	1	1
7158	1	1
7159	2	1
7160	1	1
7161	1	1
7162	1	1
7163	4	1
7164	2	1
7165	1	1
7166	2	1
7167	4	1
7168	2	1
7169	1	1
7170	1	1
7171	2	4
7172	3	1
7173	1	1
7174	1	3
7175	2	2
7176	4	1
7177	1	1
7178	2	1
7179	2	1
7180	3	1
7181	4	1
7182	1	1
7183	1	1
7184	2	1
7185	2	1
7186	2	1
7187	2	1
7188	2	1
7189	1	1
7190	2	1
7191	1	1
7192	1	1
7193	2	1
7194	2	6
7195	2	4
7196	2	4
7197	2	1
7198	1	1
7199	2	2
7200	1	1
7201	2	1
7202	1	1
7203	2	1
7204	2	3
7205	2	4
7206	2	3
7207	4	1
7208	1	1
7209	1	1
7210	2	1
7211	2	3
7212	1	1
7213	1	1
7214	2	1
7215	1	1
7216	2	4
7217	2	3
7218	2	1
7219	2	3
7220	2	1
7221	1	1
7222	2	1
7223	1	1
7224	2	3
7225	2	1
7226	2	2
7227	2	1
7228	2	2
7229	2	1
7230	1	1
7231	2	1
7232	2	3
7233	4	1
7234	4	1
7235	1	1
7236	4	1
7237	2	1
7238	1	1
7239	1	1
7240	1	1
7241	2	3
7242	1	1
7243	1	1
7244	1	1
7245	1	1
7246	1	1
7247	1	1
7248	2	3
7249	1	1
7250	2	1
7251	1	1
7252	2	3
7253	2	1
7254	2	1
7255	2	3
7256	4	1
7257	2	4
7258	2	1
7259	1	1
7260	2	1
7261	2	1
7262	4	1
7263	2	1
7264	2	1
7265	4	1
7266	4	1
7267	2	1
7268	2	1
7269	2	2
7270	1	1
7271	2	1
7272	2	1
7273	3	1
7274	2	1
7275	2	2
7276	4	1
7277	1	1
7278	2	1
7279	2	1
7280	2	4
7281	1	1
7282	2	1
7283	2	1
7284	3	1
7285	1	1
7286	2	1
7287	1	1
7288	1	1
7289	3	1
7290	2	1
7291	2	2
7292	4	1
7293	2	1
7294	2	1
7295	2	1
7296	1	1
7297	4	1
7298	1	1
7299	1	4
7300	2	2
7301	2	4
7302	1	1
7303	1	1
7304	2	1
7305	2	1
7306	2	2
7307	2	1
7308	4	1
7309	2	1
7310	2	1
7311	2	1
7312	2	2
7313	3	1
7314	4	1
7315	1	1
7316	1	1
7317	2	1
7318	1	1
7319	1	1
7320	4	1
7321	1	1
7322	1	3
7323	4	4
7324	2	1
7325	2	4
7326	2	1
7327	1	1
7328	1	1
7329	1	1
7330	4	1
7331	1	1
7332	1	1
7333	1	1
7334	3	1
7335	4	1
7336	2	2
7337	2	1
7338	4	1
7339	1	1
7340	1	1
7341	1	1
7342	2	1
7343	4	1
7344	1	1
7345	1	1
7346	1	1
7347	4	1
7348	1	1
7349	2	1
7350	2	1
7351	2	1
7352	2	4
7353	2	1
7354	2	4
7355	1	1
7356	2	1
7357	2	1
7358	1	1
7359	1	1
7360	2	4
7361	1	1
7362	2	1
7363	2	4
7364	1	1
7365	1	1
7366	1	1
7367	1	1
7368	1	1
7369	2	2
7370	1	1
7371	1	1
7372	2	1
7373	1	1
7374	1	1
7375	2	1
7376	1	1
7377	1	1
7378	1	1
7379	1	1
7380	1	1
7381	1	1
7382	1	1
7383	2	1
7384	2	3
7385	2	3
7386	1	1
7387	3	1
7388	2	1
7389	1	1
7390	2	3
7391	4	1
7392	1	1
7393	1	1
7394	1	1
7395	1	1
7396	1	1
7397	2	4
7398	1	1
7399	1	1
7400	2	1
7401	2	1
7402	1	1
7403	2	1
7404	1	1
7405	1	1
7406	1	1
7407	4	1
7408	4	1
7409	1	1
7410	2	3
7411	2	4
7412	2	3
7413	2	3
7414	2	1
7415	2	1
7416	1	1
7417	1	1
7418	1	1
7419	2	1
7420	2	2
7421	2	1
7422	2	1
7423	1	1
7424	2	4
7425	1	1
7426	2	1
7427	4	1
7428	2	1
7429	2	1
7430	1	1
7431	1	1
7432	2	1
7433	2	1
7434	2	1
7435	2	3
7436	2	1
7437	1	1
7438	1	1
7439	2	1
7440	2	1
7441	2	4
7442	2	4
7443	2	1
7444	2	1
7445	1	1
7446	2	2
7447	2	1
7448	2	1
7449	2	1
7450	2	1
7451	2	1
7452	1	1
7453	2	4
7454	2	1
7455	4	1
7456	2	3
7457	1	1
7458	1	1
7459	2	1
7460	2	1
7461	4	1
7462	2	1
7463	1	1
7464	2	3
7465	1	1
7466	1	1
7467	2	1
7468	4	1
7469	1	1
7470	1	1
7471	1	1
7472	2	1
7473	1	1
7474	2	1
7475	4	1
7476	1	1
7477	2	1
7478	1	1
7479	2	4
7480	2	1
7481	1	1
7482	1	1
7483	1	4
7484	2	4
7485	2	1
7486	2	1
7487	1	1
7488	2	1
7489	4	1
7490	2	1
7491	2	1
7492	2	4
7493	4	1
7494	1	1
7495	1	1
7496	2	4
7497	2	6
7498	1	1
7499	2	1
7500	2	1
7501	2	1
7502	2	1
7503	2	1
7504	2	1
7505	1	1
7506	2	1
7507	2	2
7508	2	1
7509	1	1
7510	1	1
7511	2	1
7512	2	1
7513	2	1
7514	1	1
7515	1	1
7516	1	1
7517	1	1
7518	2	4
7519	2	3
7520	2	1
7521	2	4
7522	2	1
7523	2	1
7524	1	1
7525	1	1
7526	2	1
7527	1	1
7528	1	1
7529	2	1
7530	2	4
7531	1	1
7532	1	1
7533	1	1
7534	1	1
7535	2	1
7536	2	1
7537	1	1
7538	2	1
7539	2	1
7540	1	1
7541	2	1
7542	1	1
7543	2	3
7544	1	1
7545	2	1
7546	1	1
7547	1	1
7548	1	1
7549	1	1
7550	2	1
7551	1	1
7552	2	4
7553	2	1
7554	2	1
7555	1	1
7556	2	1
7557	1	1
7558	2	3
7559	2	1
7560	2	1
7561	1	1
7562	4	1
7563	1	1
7564	2	1
7565	1	1
7566	1	1
7567	2	1
7568	2	2
7569	2	1
7570	1	1
7571	2	1
7572	2	3
7573	2	1
7574	2	1
7575	2	1
7576	4	1
7577	1	4
7578	1	1
7579	1	1
7580	2	2
7581	2	4
7582	1	1
7583	4	1
7584	2	1
7585	1	1
7586	1	1
7587	1	1
7588	2	1
7589	2	1
7590	2	1
7591	4	1
7592	1	1
7593	2	4
7594	1	1
7595	2	1
7596	1	1
7597	1	2
7598	1	1
7599	2	1
7600	2	1
7601	2	1
7602	1	1
7603	2	4
7604	2	3
7605	2	3
7606	2	4
7607	1	1
7608	1	1
7609	1	1
7610	2	1
7611	2	4
7612	2	4
7613	2	3
7614	2	1
7615	2	1
7616	2	1
7617	2	1
7618	1	1
7619	1	1
7620	1	1
7621	1	1
7622	2	1
7623	2	1
7624	2	1
7625	4	1
7626	2	1
7627	1	1
7628	2	4
7629	2	3
7630	2	1
7631	2	1
7632	2	4
7633	1	1
7634	2	1
7635	2	1
7636	1	1
7637	1	1
7638	2	3
7639	2	3
7640	1	1
7641	2	1
7642	1	1
7643	2	1
7644	2	1
7645	1	1
7646	2	3
7647	1	1
7648	2	2
7649	2	1
7650	2	3
7651	1	1
7652	2	1
7653	2	1
7654	1	1
7655	2	1
7656	2	4
7657	4	6
7658	2	1
7659	2	2
7660	2	3
7661	2	3
7662	2	4
7663	2	4
7664	2	1
7665	2	1
7666	2	1
7667	1	1
7668	1	1
7669	1	1
7670	2	1
7671	1	1
7672	2	2
7673	3	1
7674	1	1
7675	2	1
7676	2	1
7677	2	1
7678	4	4
7679	2	4
7680	1	1
7681	4	1
7682	2	4
7683	1	1
7684	1	1
7685	4	1
7686	2	1
7687	2	1
7688	2	1
7689	2	2
7690	1	1
7691	2	6
7692	2	1
7693	2	1
7694	1	1
7695	2	1
7696	2	1
7697	2	1
7698	2	2
7699	2	1
7700	2	1
7701	2	1
7702	1	1
7703	3	1
7704	2	2
7705	2	1
7706	1	1
7707	2	4
7708	3	1
7709	2	1
7710	2	1
7711	2	1
7712	4	4
7713	2	1
7714	1	1
7715	1	1
7716	2	6
7717	2	1
7718	4	1
7719	1	1
7720	2	7
7721	2	1
7722	2	1
7723	2	1
7724	2	1
7725	4	1
7726	2	3
7727	2	1
7728	2	3
7729	3	1
7730	2	1
7731	2	3
7732	1	3
7733	1	1
7734	1	1
7735	1	1
7736	1	1
7737	3	1
7738	2	1
7739	1	1
7740	2	1
7741	1	1
7742	2	1
7743	2	1
7744	1	1
7745	1	1
7746	2	1
7747	1	1
7748	2	1
7749	1	1
7750	2	1
7751	4	1
7752	2	1
7753	1	1
7754	2	1
7755	1	1
7756	1	1
7757	3	1
7758	1	1
7759	2	4
7760	2	1
7761	1	1
7762	2	1
7763	1	1
7764	2	6
7765	1	1
7766	2	1
7767	1	1
7768	2	2
7769	2	1
7770	2	1
7771	2	1
7772	2	1
7773	2	3
7774	1	4
7775	1	1
7776	3	1
7777	2	1
7778	1	3
7779	3	1
7780	4	1
7781	2	1
7782	4	1
7783	2	1
7784	2	4
7785	1	1
7786	1	1
7787	2	7
7788	1	1
7789	1	1
7790	4	1
7791	1	1
7792	1	1
7793	4	1
7794	1	1
7795	4	1
7796	1	1
7797	1	4
7798	1	1
7799	1	1
7800	2	3
7801	2	1
7802	1	1
7803	1	1
7804	2	1
7805	2	1
7806	1	1
7807	1	1
7808	4	1
7809	1	1
7810	2	3
7811	1	1
7812	2	1
7813	1	2
7814	1	1
7815	2	1
7816	4	1
7817	2	1
7818	1	1
7819	1	1
7820	1	1
7821	2	1
7822	1	1
7823	1	1
7824	1	1
7825	2	1
7826	2	1
7827	1	1
7828	2	3
7829	1	1
7830	1	1
7831	2	1
7832	2	1
7833	2	3
7834	1	1
7835	2	2
7836	2	1
7837	2	4
7838	2	1
7839	1	1
7840	1	1
7841	2	1
7842	1	1
7843	2	4
7844	2	1
7845	2	1
7846	1	1
7847	2	1
7848	2	1
7849	1	1
7850	1	1
7851	4	1
7852	1	1
7853	1	1
7854	2	3
7855	2	1
7856	1	1
7857	1	1
7858	1	1
7859	2	2
7860	1	1
7861	2	1
7862	2	1
7863	3	1
7864	2	1
7865	1	1
7866	1	1
7867	2	1
7868	1	1
7869	2	1
7870	2	1
7871	1	1
7872	1	1
7873	2	1
7874	1	1
7875	1	1
7876	2	1
7877	2	1
7878	2	1
7879	1	1
7880	2	3
7881	1	1
7882	1	1
7883	3	1
7884	2	3
7885	2	1
7886	2	1
7887	1	1
7888	1	1
7889	2	3
7890	2	4
7891	1	1
7892	1	1
7893	2	1
7894	4	1
7895	2	1
7896	1	3
7897	2	1
7898	4	1
7899	2	1
7900	1	1
7901	2	1
7902	2	1
7903	2	1
7904	2	2
7905	1	1
7906	1	1
7907	1	1
7908	2	1
7909	4	4
7910	2	1
7911	2	1
7912	1	1
7913	2	2
7914	1	1
7915	1	1
7916	1	1
7917	2	1
7918	2	3
7919	2	1
7920	1	1
7921	2	1
7922	2	1
7923	1	1
7924	2	1
7925	1	1
7926	1	1
7927	3	1
7928	1	1
7929	1	1
7930	2	1
7931	1	1
7932	2	1
7933	2	1
7934	2	1
7935	2	3
7936	1	1
7937	2	1
7938	2	1
7939	1	1
7940	1	1
7941	2	3
7942	2	1
7943	2	4
7944	2	2
7945	2	3
7946	2	1
7947	2	1
7948	1	1
7949	2	1
7950	2	4
7951	2	1
7952	2	2
7953	1	1
7954	1	1
7955	2	2
7956	2	3
7957	2	1
7958	1	1
7959	1	1
7960	2	1
7961	1	1
7962	2	1
7963	2	1
7964	2	4
7965	2	1
7966	2	1
7967	2	1
7968	1	1
7969	2	1
7970	1	1
7971	2	2
7972	1	1
7973	4	1
7974	2	1
7975	1	1
7976	1	1
7977	1	1
7978	2	1
7979	1	1
7980	2	4
7981	1	1
7982	2	1
7983	1	1
7984	1	1
7985	2	4
7986	3	1
7987	2	1
7988	2	4
7989	2	1
7990	1	1
7991	1	1
7992	4	1
7993	2	1
7994	2	1
7995	2	1
7996	1	1
7997	2	1
7998	1	1
7999	2	1
8000	2	2
8001	3	1
8002	1	1
8003	1	1
8004	1	1
8005	2	1
8006	2	1
8007	2	1
8008	2	1
8009	2	1
8010	4	1
8011	2	1
8012	2	1
8013	2	1
8014	1	1
8015	2	3
8016	1	1
8017	1	1
8018	1	1
8019	2	1
8020	2	1
8021	2	1
8022	4	1
8023	1	1
8024	2	4
8025	2	1
8026	4	1
8027	2	1
8028	2	2
8029	2	1
8030	4	1
8031	2	3
8032	2	3
8033	1	1
8034	2	1
8035	1	1
8036	1	1
8037	2	2
8038	4	1
8039	2	1
8040	2	3
8041	4	1
8042	2	1
8043	2	1
8044	2	1
8045	4	1
8046	1	1
8047	2	1
8048	3	1
8049	1	1
8050	1	1
8051	2	1
8052	1	1
8053	1	1
8054	3	1
8055	1	1
8056	1	1
8057	2	1
8058	2	2
8059	2	1
8060	1	1
8061	1	1
8062	1	3
8063	1	1
8064	2	4
8065	2	4
8066	2	1
8067	2	1
8068	1	1
8069	2	2
8070	2	6
8071	2	3
8072	1	1
8073	2	1
8074	2	1
8075	2	1
8076	2	1
8077	1	1
8078	1	1
8079	2	1
8080	1	1
8081	2	3
8082	2	1
8083	2	1
8084	1	1
8085	1	1
8086	2	1
8087	1	1
8088	2	1
8089	1	1
8090	3	1
8091	1	1
8092	1	1
8093	1	4
8094	2	1
8095	2	3
8096	1	1
8097	2	1
8098	1	1
8099	2	1
8100	1	1
8101	2	6
8102	2	1
8103	1	1
8104	2	1
8105	2	1
8106	1	1
8107	2	2
8108	2	3
8109	2	1
8110	1	1
8111	2	4
8112	2	1
8113	1	1
8114	1	1
8115	2	1
8116	2	3
8117	1	1
8118	2	1
8119	1	1
8120	1	1
8121	2	2
8122	2	1
8123	1	1
8124	1	1
8125	1	1
8126	1	1
8127	2	1
8128	2	1
8129	2	4
8130	2	1
8131	1	1
8132	2	1
8133	2	4
8134	1	1
8135	2	3
8136	3	1
8137	2	1
8138	2	2
8139	2	1
8140	2	1
8141	1	1
8142	2	1
8143	1	1
8144	2	1
8145	2	1
8146	2	3
8147	2	1
8148	1	1
8149	2	1
8150	1	1
8151	2	1
8152	2	4
8153	2	1
8154	1	1
8155	1	1
8156	3	1
8157	2	1
8158	2	4
8159	1	1
8160	2	1
8161	3	1
8162	1	1
8163	2	1
8164	1	1
8165	1	1
8166	1	1
8167	2	1
8168	1	1
8169	1	1
8170	2	1
8171	2	4
8172	1	1
8173	1	1
8174	2	1
8175	2	4
8176	2	1
8177	1	1
8178	2	1
8179	1	1
8180	2	3
8181	1	1
8182	2	1
8183	1	3
8184	1	1
8185	3	4
8186	2	1
8187	2	1
8188	2	1
8189	1	1
8190	2	1
8191	2	1
8192	2	1
8193	2	1
8194	2	1
8195	4	1
8196	2	3
8197	2	1
8198	2	1
8199	4	1
8200	2	4
8201	2	1
8202	1	1
8203	2	1
8204	1	1
8205	1	1
8206	2	4
8207	2	1
8208	2	4
8209	2	3
8210	2	1
8211	2	3
8212	2	3
8213	2	3
8214	1	1
8215	1	1
8216	2	1
8217	2	1
8218	4	3
8219	1	1
8220	2	4
8221	1	1
8222	2	1
8223	2	1
8224	2	7
8225	3	1
8226	2	1
8227	1	1
8228	2	1
8229	4	1
8230	2	1
8231	2	1
8232	1	1
8233	1	1
8234	2	3
8235	2	1
8236	2	2
8237	2	1
8238	1	1
8239	2	1
8240	1	1
8241	2	1
8242	1	1
8243	2	3
8244	2	3
8245	1	1
8246	2	1
8247	2	4
8248	1	1
8249	1	1
8250	1	1
8251	2	3
8252	1	1
8253	1	1
8254	2	3
8255	1	1
8256	1	1
8257	2	1
8258	1	1
8259	1	1
8260	2	1
8261	2	1
8262	2	1
8263	1	1
8264	2	3
8265	2	3
8266	2	4
8267	1	1
8268	2	3
8269	2	1
8270	2	3
8271	1	1
8272	1	1
8273	2	1
8274	1	1
8275	2	1
8276	1	1
8277	2	1
8278	1	1
8279	2	1
8280	2	1
8281	2	1
8282	2	1
8283	2	4
8284	1	1
8285	1	1
8286	2	1
8287	2	3
8288	1	1
8289	1	1
8290	2	2
8291	2	4
8292	1	1
8293	1	1
8294	2	1
8295	1	1
8296	1	1
8297	2	1
8298	2	1
8299	1	1
8300	2	4
8301	2	1
8302	1	1
8303	2	1
8304	1	1
8305	1	1
8306	1	1
8307	2	1
8308	2	3
8309	1	1
8310	2	1
8311	1	1
8312	2	1
8313	2	3
8314	2	1
8315	1	4
8316	2	2
8317	1	1
8318	1	1
8319	1	4
8320	2	4
8321	2	1
8322	1	1
8323	1	4
8324	1	1
8325	1	1
8326	2	1
8327	1	1
8328	1	1
8329	1	1
8330	2	1
8331	1	1
8332	1	1
8333	2	1
8334	2	1
8335	2	1
8336	2	1
8337	2	1
8338	1	1
8339	1	1
8340	2	3
8341	2	4
8342	2	1
8343	4	1
8344	1	1
8345	1	1
8346	2	1
8347	1	1
8348	1	1
8349	1	1
8350	2	1
8351	1	1
8352	1	1
8353	1	1
8354	2	1
8355	2	4
8356	1	1
8357	2	1
8358	2	1
8359	2	1
8360	1	1
8361	2	1
8362	2	1
8363	2	1
8364	1	1
8365	2	3
8366	1	1
8367	1	1
8368	2	4
8369	2	1
8370	1	1
8371	2	1
8372	1	1
8373	2	1
8374	1	1
8375	1	1
8376	2	3
8377	4	1
8378	1	1
8379	2	1
8380	1	1
8381	2	4
8382	1	1
8383	1	1
8384	1	1
8385	2	4
8386	1	1
8387	1	1
8388	1	1
8389	2	1
8390	1	1
8391	2	1
8392	1	1
8393	2	3
8394	2	1
8395	1	1
8396	1	1
8397	2	4
8398	2	1
8399	2	1
8400	2	1
8401	1	1
8402	1	1
8403	1	1
8404	1	1
8405	1	1
8406	2	1
8407	4	1
8408	2	1
8409	2	3
8410	1	1
8411	1	1
8412	2	1
8413	1	1
8414	1	1
8415	2	1
8416	1	1
8417	2	1
8418	2	1
8419	2	1
8420	1	1
8421	1	1
8422	2	1
8423	1	1
8424	1	1
8425	2	1
8426	2	1
8427	1	1
8428	1	1
8429	2	3
8430	1	1
8431	1	1
8432	2	4
8433	2	4
8434	1	1
8435	2	1
8436	1	1
8437	2	4
8438	1	1
8439	1	1
8440	1	1
8441	2	4
8442	2	1
8443	1	1
8444	1	1
8445	2	1
8446	2	1
8447	1	1
8448	2	4
8449	2	3
8450	2	1
8451	2	1
8452	1	1
8453	2	1
8454	1	1
8455	1	1
8456	2	4
8457	3	1
8458	2	1
8459	1	1
8460	2	1
8461	2	1
8462	2	1
8463	1	1
8464	1	1
8465	1	1
8466	2	4
8467	1	4
8468	1	1
8469	1	1
8470	1	1
8471	1	1
8472	1	1
8473	1	1
8474	2	4
8475	2	3
8476	2	1
8477	2	1
8478	4	1
8479	1	1
8480	2	1
8481	3	3
8482	2	1
8483	1	1
8484	2	1
8485	2	1
8486	4	1
8487	1	1
8488	1	1
8489	2	4
8490	1	1
8491	1	1
8492	2	1
8493	1	1
8494	2	1
8495	2	1
8496	2	1
8497	2	1
8498	2	1
8499	3	1
8500	1	1
8501	2	1
8502	1	1
8503	2	3
8504	2	1
8505	2	3
8506	1	1
8507	1	1
8508	1	1
8509	2	1
8510	1	1
8511	2	1
8512	2	1
8513	2	4
8514	3	1
8515	2	1
8516	1	4
8517	2	2
8518	2	1
8519	2	1
8520	1	1
8521	1	1
8522	2	1
8523	1	1
8524	1	1
8525	2	3
8526	2	3
8527	2	1
8528	1	1
8529	1	1
8530	1	1
8531	1	1
8532	2	1
8533	1	1
8534	2	1
8535	1	1
8536	1	1
8537	2	4
8538	2	4
8539	2	1
8540	1	1
8541	2	1
8542	2	3
8543	4	1
8544	2	1
8545	2	1
8546	1	1
8547	2	1
8548	2	1
8549	2	1
8550	2	1
8551	2	4
8552	2	4
8553	2	1
8554	2	4
8555	2	4
8556	2	3
8557	1	1
8558	1	1
8559	1	1
8560	2	1
8561	1	1
8562	2	1
8563	2	1
8564	1	1
8565	2	1
8566	1	1
8567	2	1
8568	2	1
8569	1	1
8570	2	1
8571	2	1
8572	1	1
8573	2	4
8574	1	1
8575	1	1
8576	1	1
8577	2	1
8578	2	4
8579	2	1
8580	2	1
8581	1	1
8582	2	1
8583	1	1
8584	2	2
8585	2	2
8586	2	1
8587	2	1
8588	2	6
8589	1	1
8590	2	3
8591	1	1
8592	2	4
8593	1	1
8594	2	1
8595	1	1
8596	2	6
8597	2	2
8598	1	1
8599	2	1
8600	2	3
8601	2	1
8602	3	4
8603	2	1
8604	2	1
8605	1	1
8606	2	2
8607	2	4
8608	1	1
8609	2	1
8610	2	1
8611	2	1
8612	1	1
8613	1	1
8614	2	1
8615	2	1
8616	1	1
8617	2	1
8618	1	1
8619	2	1
8620	2	1
8621	1	1
8622	1	1
8623	3	1
8624	1	1
8625	2	1
8626	1	1
8627	2	1
8628	1	1
8629	1	1
8630	2	4
8631	2	4
8632	2	3
8633	1	1
8634	2	1
8635	2	1
8636	2	1
8637	2	1
8638	1	1
8639	1	1
8640	1	1
8641	2	1
8642	1	1
8643	2	4
8644	1	1
8645	2	4
8646	2	1
8647	1	1
8648	1	1
8649	1	1
8650	1	1
8651	1	1
8652	2	1
8653	2	2
8654	2	1
8655	3	1
8656	2	2
8657	1	1
8658	1	1
8659	1	1
8660	2	1
8661	2	1
8662	2	1
8663	1	1
8664	2	1
8665	2	1
8666	4	1
8667	3	1
8668	1	1
8669	2	2
8670	1	1
8671	1	1
8672	2	1
8673	1	1
8674	1	1
8675	1	1
8676	3	1
8677	2	4
8678	1	1
8679	2	1
8680	1	1
8681	1	1
8682	2	1
8683	2	1
8684	2	3
8685	1	1
8686	2	1
8687	2	1
8688	2	1
8689	1	1
8690	2	1
8691	3	1
8692	1	1
8693	2	1
8694	2	1
8695	2	4
8696	1	1
8697	2	1
8698	1	1
8699	4	1
8700	1	1
8701	1	1
8702	2	4
8703	1	1
8704	1	1
8705	2	3
8706	3	1
8707	2	1
8708	2	1
8709	2	1
8710	1	1
8711	1	1
8712	1	1
8713	2	1
8714	2	1
8715	1	1
8716	1	2
8717	2	4
8718	1	3
8719	1	1
8720	2	1
8721	2	1
8722	2	1
8723	1	1
8724	2	4
8725	2	1
8726	4	1
8727	2	4
8728	1	1
8729	1	1
8730	1	1
8731	2	1
8732	1	1
8733	1	1
8734	1	1
8735	2	4
8736	1	4
8737	1	1
8738	1	1
8739	2	1
8740	1	1
8741	2	1
8742	2	1
8743	2	1
8744	2	1
8745	1	1
8746	1	1
8747	1	1
8748	2	4
8749	1	1
8750	2	1
8751	2	1
8752	2	4
8753	2	1
8754	1	1
8755	1	1
8756	2	1
8757	1	1
8758	1	1
8759	1	1
8760	1	1
8761	1	3
8762	2	4
8763	2	2
8764	2	4
8765	2	1
8766	2	1
8767	1	1
8768	1	1
8769	1	1
8770	1	1
8771	1	1
8772	1	1
8773	2	4
8774	1	1
8775	1	3
8776	1	1
8777	2	1
8778	1	1
8779	2	1
8780	2	1
8781	2	1
8782	2	3
8783	1	4
8784	1	1
8785	2	1
8786	1	1
8787	1	1
8788	2	3
8789	1	1
8790	2	4
8791	2	4
8792	2	1
8793	2	1
8794	2	1
8795	1	1
8796	1	1
8797	2	1
8798	1	1
8799	2	2
8800	1	1
8801	2	4
8802	2	4
8803	1	1
8804	1	1
8805	1	1
8806	1	1
8807	1	1
8808	2	3
8809	2	4
8810	2	2
8811	1	1
8812	1	1
8813	1	1
8814	1	1
8815	3	1
8816	1	1
8817	1	1
8818	2	1
8819	1	1
8820	2	1
8821	1	1
8822	1	1
8823	1	1
8824	1	1
8825	1	1
8826	2	1
8827	2	1
8828	2	1
8829	1	1
8830	1	1
8831	1	1
8832	1	1
8833	2	1
8834	1	1
8835	2	1
8836	1	1
8837	1	1
8838	2	1
8839	1	1
8840	1	1
8841	2	3
8842	2	3
8843	1	1
8844	2	1
8845	2	1
8846	1	1
8847	1	1
8848	2	4
8849	2	4
8850	1	1
8851	1	1
8852	2	1
8853	1	1
8854	2	1
8855	1	1
8856	4	1
\.


--
-- Data for Name: animals_continents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.animals_continents (animal_id, continent_id) FROM stdin;
1	1
2	2
3	3
4	4
5	2
6	5
7	6
8	7
9	6
10	7
11	8
12	5
13	6
14	8
15	9
16	10
17	11
18	12
19	13
20	2
21	14
22	6
23	8
24	12
25	5
26	15
27	8
28	2
29	16
30	8
31	12
32	12
33	17
34	18
35	7
36	19
37	20
38	12
39	12
40	6
41	12
42	21
43	17
44	12
45	22
46	23
47	8
48	24
49	25
50	2
51	16
52	12
53	12
54	12
55	12
56	8
57	2
58	2
59	2
60	26
61	2
62	12
63	27
64	2
65	28
66	2
67	29
68	30
69	12
70	2
71	2
72	2
73	2
74	2
75	12
76	31
77	2
78	12
79	2
80	32
81	12
82	8
83	12
84	12
85	16
86	8
87	2
88	14
89	33
90	16
91	34
92	14
93	16
94	8
95	17
96	8
97	12
98	35
99	8
100	7
101	8
102	14
103	14
104	8
105	30
106	36
107	2
108	2
109	16
110	37
111	12
112	2
113	16
114	12
115	2
116	6
117	34
118	8
119	38
120	39
121	40
122	8
123	2
124	41
125	2
126	14
127	42
128	6
129	38
130	37
131	25
132	42
133	43
134	2
135	43
136	41
137	12
138	2
139	44
140	8
141	2
142	7
143	45
144	11
145	12
146	32
147	12
148	8
149	2
150	5
151	12
152	5
153	2
154	2
155	7
156	12
157	46
158	47
159	12
160	2
161	7
162	6
163	2
164	2
165	8
166	7
167	2
168	2
169	12
170	12
171	2
172	48
173	2
174	12
175	2
176	17
177	8
178	34
179	14
180	49
181	2
182	8
183	50
184	34
185	12
186	2
187	51
188	2
189	12
190	12
191	8
192	8
193	2
194	2
195	2
196	2
197	16
198	8
199	2
200	2
201	2
202	34
203	41
204	34
205	12
206	52
207	2
208	6
209	6
210	16
211	12
212	53
213	8
214	8
215	12
216	2
217	2
218	54
219	14
220	12
221	12
222	14
223	14
224	12
225	2
226	55
227	12
228	20
229	5
230	8
231	34
232	12
233	12
234	38
235	2
236	7
237	14
238	8
239	2
240	12
241	6
242	25
243	12
244	8
245	32
246	16
247	12
248	49
249	2
250	12
251	56
252	12
253	42
254	57
255	3
256	12
257	14
258	12
259	12
260	2
261	14
262	8
263	2
264	2
265	12
266	8
267	7
268	58
269	2
270	12
271	8
272	8
273	8
274	14
275	16
276	12
277	11
278	14
279	6
280	59
281	2
282	8
283	34
284	8
285	7
286	2
287	12
288	2
289	14
290	8
291	7
292	2
293	14
294	2
295	49
296	2
297	34
298	14
299	2
300	2
301	8
302	2
303	16
304	2
305	12
306	2
307	60
308	16
309	16
310	12
311	6
312	2
313	12
314	8
315	12
316	2
317	14
318	8
319	2
320	43
321	16
322	16
323	61
324	2
325	8
326	12
327	2
328	14
329	20
330	6
331	8
332	16
333	14
334	12
335	8
336	14
337	12
338	8
339	6
340	12
341	7
342	14
343	2
344	2
345	12
346	14
347	62
348	8
349	12
350	8
351	2
352	63
353	6
354	14
355	14
356	12
357	14
358	8
359	2
360	8
361	2
362	6
363	12
364	2
365	2
366	6
367	2
368	2
369	2
370	64
371	16
372	2
373	12
374	61
375	12
376	14
377	12
378	2
379	5
380	32
381	58
382	2
383	2
384	7
385	2
386	25
387	7
388	65
389	8
390	12
391	2
392	2
393	12
394	2
395	8
396	2
397	12
398	7
399	58
400	12
401	38
402	12
403	14
404	6
405	66
406	14
407	16
408	8
409	12
410	12
411	2
412	12
413	8
414	12
415	12
416	6
417	2
418	12
419	12
420	2
421	2
422	12
423	14
424	6
425	38
426	34
427	6
428	2
429	2
430	2
431	11
432	8
433	2
434	2
435	12
436	8
437	16
438	38
439	14
440	8
441	8
442	14
443	16
444	67
445	67
446	14
447	12
448	14
449	12
450	12
451	6
452	8
453	2
454	2
455	2
456	12
457	2
458	12
459	12
460	12
461	12
462	12
463	8
464	2
465	8
466	68
467	6
468	14
469	12
470	8
471	8
472	2
473	12
474	34
475	69
476	8
477	2
478	6
479	2
480	14
481	14
482	12
483	12
484	2
485	6
486	12
487	12
488	12
489	16
490	8
491	8
492	6
493	12
494	34
495	6
496	6
497	12
498	2
499	7
500	12
501	14
502	2
503	20
504	20
505	8
506	2
507	12
508	43
509	14
510	14
511	34
512	2
513	6
514	14
515	12
516	7
517	12
518	12
519	42
520	2
521	8
522	8
523	14
524	2
525	7
526	6
527	12
528	2
529	8
530	7
531	14
532	14
533	8
534	12
535	2
536	7
537	6
538	8
539	6
540	6
541	12
542	12
543	8
544	8
545	32
546	2
547	2
548	16
549	16
550	12
551	16
552	2
553	6
554	2
555	2
556	70
557	5
558	12
559	14
560	2
561	6
562	8
563	14
564	12
565	8
566	5
567	8
568	6
569	2
570	12
571	14
572	8
573	8
574	12
575	2
576	6
577	71
578	2
579	8
580	14
581	2
582	2
583	12
584	8
585	6
586	2
587	2
588	8
589	20
590	2
591	68
592	6
593	6
594	12
595	2
596	2
597	2
598	2
599	43
600	14
601	7
602	14
603	2
604	14
605	14
606	2
607	16
608	16
609	12
610	8
611	12
612	8
613	8
614	2
615	8
616	2
617	2
618	12
619	12
620	7
621	2
622	32
623	2
624	14
625	12
626	2
627	2
628	8
629	16
630	8
631	8
632	6
633	14
634	14
635	12
636	6
637	12
638	14
639	14
640	12
641	14
642	2
643	2
644	5
645	62
646	2
647	2
648	12
649	2
650	12
651	12
652	20
653	14
654	2
655	38
656	12
657	2
658	8
659	2
660	14
661	72
662	12
663	12
664	2
665	16
666	43
667	2
668	12
669	2
670	12
671	68
672	14
673	12
674	43
675	14
676	68
677	12
678	34
679	2
680	2
681	14
682	6
683	2
684	2
685	12
686	8
687	2
688	16
689	12
690	2
691	2
692	12
693	12
694	14
695	16
696	20
697	2
698	8
699	2
700	8
701	12
702	14
703	38
704	2
705	12
706	12
707	14
708	8
709	2
710	12
711	2
712	7
713	14
714	49
715	7
716	2
717	2
718	2
719	2
720	14
721	2
722	12
723	7
724	12
725	2
726	2
727	8
728	25
729	2
730	12
731	12
732	12
733	12
734	2
735	73
736	12
737	2
738	38
739	8
740	12
741	8
742	12
743	2
744	2
745	2
746	8
747	12
748	2
749	8
750	2
751	14
752	6
753	12
754	6
755	14
756	12
757	5
758	2
759	14
760	16
761	8
762	12
763	2
764	2
765	8
766	20
767	2
768	8
769	12
770	7
771	7
772	14
773	8
774	2
775	8
776	7
777	2
778	14
779	12
780	74
781	2
782	8
783	16
784	12
785	8
786	2
787	2
788	12
789	14
790	2
791	14
792	12
793	14
794	2
795	14
796	2
797	14
798	16
799	2
800	8
801	14
802	6
803	12
804	14
805	2
806	12
807	2
808	2
809	12
810	2
811	14
812	12
813	16
814	2
815	12
816	8
817	2
818	7
819	12
820	16
821	2
822	12
823	2
824	2
825	8
826	2
827	12
828	2
829	2
830	2
831	2
832	8
833	16
834	8
835	2
836	12
837	2
838	12
839	2
840	75
841	2
842	12
843	8
844	32
845	6
846	6
847	8
848	8
849	14
850	2
851	14
852	29
853	2
854	8
855	8
856	61
857	5
858	2
859	2
860	8
861	2
862	6
863	6
864	8
865	2
866	2
867	2
868	14
869	2
870	8
871	2
872	12
873	2
874	12
875	14
876	8
877	12
878	8
879	2
880	14
881	2
882	16
883	14
884	8
885	6
886	8
887	12
888	2
889	12
890	7
891	12
892	16
893	8
894	14
895	12
896	12
897	12
898	6
899	8
900	7
901	5
902	16
903	14
904	12
905	14
906	8
907	12
908	8
909	12
910	14
911	12
912	12
913	8
914	14
915	14
916	2
917	12
918	2
919	20
920	8
921	8
922	14
923	2
924	12
925	14
926	7
927	2
928	16
929	14
930	12
931	2
932	5
933	8
934	7
935	2
936	2
937	2
938	2
939	12
940	14
941	14
942	12
943	12
944	7
945	12
946	8
947	14
948	8
949	6
950	2
951	68
952	6
953	12
954	12
955	12
956	12
957	16
958	14
959	8
960	2
961	12
962	2
963	8
964	12
965	2
966	17
967	2
968	12
969	12
970	2
971	12
972	12
973	2
974	12
975	2
976	12
977	6
978	12
979	8
980	14
981	12
982	2
983	12
984	12
985	71
986	12
987	8
988	12
989	2
990	12
991	34
992	76
993	12
994	2
995	12
996	77
997	12
998	38
999	14
1000	14
1001	7
1002	2
1003	16
1004	38
1005	2
1006	12
1007	14
1008	14
1009	2
1010	14
1011	2
1012	7
1013	2
1014	14
1015	12
1016	8
1017	12
1018	38
1019	2
1020	12
1021	12
1022	2
1023	14
1024	12
1025	2
1026	14
1027	8
1028	2
1029	6
1030	6
1031	14
1032	7
1033	2
1034	14
1035	12
1036	14
1037	78
1038	2
1039	8
1040	2
1041	79
1042	12
1043	16
1044	12
1045	80
1046	8
1047	12
1048	2
1049	12
1050	7
1051	14
1052	12
1053	12
1054	8
1055	2
1056	12
1057	25
1058	14
1059	2
1060	34
1061	2
1062	12
1063	2
1064	38
1065	12
1066	12
1067	2
1068	2
1069	8
1070	7
1071	12
1072	12
1073	2
1074	7
1075	8
1076	2
1077	8
1078	14
1079	12
1080	12
1081	12
1082	43
1083	81
1084	12
1085	8
1086	17
1087	8
1088	12
1089	43
1090	7
1091	2
1092	16
1093	7
1094	2
1095	2
1096	14
1097	12
1098	2
1099	2
1100	8
1101	7
1102	2
1103	12
1104	14
1105	12
1106	2
1107	12
1108	8
1109	14
1110	16
1111	14
1112	12
1113	12
1114	2
1115	2
1116	14
1117	12
1118	14
1119	7
1120	8
1121	43
1122	8
1123	7
1124	2
1125	12
1126	12
1127	8
1128	8
1129	12
1130	2
1131	8
1132	43
1133	7
1134	14
1135	7
1136	7
1137	12
1138	12
1139	25
1140	12
1141	7
1142	12
1143	12
1144	14
1145	12
1146	14
1147	14
1148	14
1149	8
1150	8
1151	12
1152	12
1153	12
1154	34
1155	12
1156	2
1157	8
1158	8
1159	12
1160	2
1161	2
1162	14
1163	2
1164	12
1165	12
1166	2
1167	34
1168	2
1169	14
1170	12
1171	82
1172	14
1173	8
1174	8
1175	12
1176	12
1177	12
1178	8
1179	14
1180	12
1181	14
1182	8
1183	12
1184	12
1185	12
1186	14
1187	14
1188	14
1189	8
1190	2
1191	14
1192	12
1193	12
1194	14
1195	12
1196	2
1197	38
1198	14
1199	8
1200	12
1201	14
1202	2
1203	14
1204	14
1205	12
1206	25
1207	38
1208	2
1209	14
1210	12
1211	12
1212	14
1213	12
1214	12
1215	14
1216	12
1217	14
1218	12
1219	12
1220	2
1221	14
1222	8
1223	2
1224	8
1225	14
1226	2
1227	12
1228	12
1229	12
1230	2
1231	12
1232	14
1233	8
1234	2
1235	14
1236	14
1237	14
1238	14
1239	68
1240	12
1241	16
1242	5
1243	14
1244	2
1245	2
1246	12
1247	2
1248	14
1249	2
1250	38
1251	12
1252	14
1253	12
1254	75
1255	12
1256	8
1257	12
1258	2
1259	2
1260	14
1261	12
1262	14
1263	8
1264	75
1265	8
1266	8
1267	2
1268	12
1269	12
1270	2
1271	12
1272	2
1273	8
1274	7
1275	8
1276	14
1277	2
1278	8
1279	12
1280	2
1281	14
1282	14
1283	2
1284	2
1285	8
1286	14
1287	12
1288	5
1289	7
1290	14
1291	8
1292	2
1293	12
1294	2
1295	8
1296	12
1297	14
1298	12
1299	12
1300	71
1301	25
1302	16
1303	16
1304	83
1305	2
1306	12
1307	12
1308	2
1309	12
1310	2
1311	56
1312	8
1313	8
1314	2
1315	8
1316	2
1317	8
1318	2
1319	34
1320	2
1321	12
1322	12
1323	16
1324	14
1325	12
1326	2
1327	2
1328	2
1329	2
1330	14
1331	2
1332	12
1333	12
1334	2
1335	7
1336	43
1337	12
1338	12
1339	12
1340	8
1341	2
1342	6
1343	34
1344	2
1345	14
1346	12
1347	2
1348	8
1349	8
1350	8
1351	2
1352	2
1353	12
1354	2
1355	2
1356	12
1357	12
1358	12
1359	12
1360	2
1361	14
1362	6
1363	2
1364	12
1365	2
1366	14
1367	8
1368	16
1369	2
1370	2
1371	14
1372	12
1373	7
1374	8
1375	14
1376	8
1377	12
1378	12
1379	14
1380	2
1381	2
1382	38
1383	12
1384	16
1385	2
1386	12
1387	12
1388	12
1389	14
1390	14
1391	2
1392	7
1393	2
1394	12
1395	16
1396	12
1397	14
1398	2
1399	14
1400	12
1401	12
1402	8
1403	8
1404	2
1405	8
1406	8
1407	7
1408	2
1409	8
1410	12
1411	2
1412	12
1413	12
1414	8
1415	2
1416	2
1417	2
1418	14
1419	14
1420	8
1421	8
1422	12
1423	14
1424	2
1425	14
1426	2
1427	2
1428	2
1429	2
1430	84
1431	2
1432	12
1433	34
1434	14
1435	14
1436	7
1437	8
1438	2
1439	2
1440	12
1441	14
1442	2
1443	8
1444	14
1445	12
1446	2
1447	2
1448	14
1449	14
1450	2
1451	14
1452	2
1453	12
1454	12
1455	7
1456	12
1457	14
1458	14
1459	14
1460	2
1461	8
1462	43
1463	2
1464	12
1465	12
1466	14
1467	2
1468	8
1469	12
1470	14
1471	2
1472	5
1473	14
1474	2
1475	43
1476	14
1477	2
1478	14
1479	12
1480	12
1481	14
1482	8
1483	12
1484	8
1485	14
1486	12
1487	2
1488	8
1489	12
1490	12
1491	8
1492	2
1493	14
1494	14
1495	43
1496	14
1497	2
1498	12
1499	2
1500	12
1501	14
1502	2
1503	2
1504	2
1505	12
1506	12
1507	14
1508	14
1509	14
1510	2
1511	14
1512	12
1513	6
1514	12
1515	2
1516	12
1517	5
1518	14
1519	12
1520	34
1521	14
1522	12
1523	14
1524	12
1525	14
1526	12
1527	2
1528	8
1529	2
1530	43
1531	12
1532	5
1533	8
1534	8
1535	43
1536	2
1537	14
1538	14
1539	12
1540	2
1541	14
1542	12
1543	2
1544	2
1545	2
1546	8
1547	2
1548	2
1549	14
1550	2
1551	2
1552	14
1553	14
1554	2
1555	12
1556	12
1557	14
1558	12
1559	16
1560	12
1561	14
1562	12
1563	12
1564	7
1565	14
1566	34
1567	2
1568	12
1569	12
1570	7
1571	2
1572	12
1573	2
1574	12
1575	14
1576	25
1577	8
1578	14
1579	8
1580	2
1581	2
1582	7
1583	2
1584	38
1585	12
1586	14
1587	2
1588	2
1589	14
1590	8
1591	12
1592	2
1593	8
1594	2
1595	2
1596	12
1597	8
1598	12
1599	2
1600	2
1601	2
1602	2
1603	14
1604	43
1605	14
1606	2
1607	2
1608	12
1609	56
1610	8
1611	2
1612	2
1613	2
1614	7
1615	12
1616	2
1617	2
1618	2
1619	14
1620	2
1621	2
1622	2
1623	12
1624	14
1625	12
1626	8
1627	2
1628	2
1629	12
1630	2
1631	2
1632	7
1633	2
1634	14
1635	8
1636	2
1637	12
1638	8
1639	12
1640	2
1641	2
1642	2
1643	14
1644	8
1645	12
1646	14
1647	14
1648	12
1649	8
1650	14
1651	12
1652	8
1653	8
1654	8
1655	12
1656	12
1657	14
1658	14
1659	2
1660	8
1661	12
1662	2
1663	2
1664	2
1665	14
1666	14
1667	2
1668	12
1669	34
1670	8
1671	12
1672	2
1673	2
1674	14
1675	2
1676	14
1677	14
1678	8
1679	14
1680	12
1681	12
1682	8
1683	14
1684	12
1685	43
1686	14
1687	12
1688	12
1689	2
1690	12
1691	2
1692	14
1693	2
1694	14
1695	14
1696	12
1697	12
1698	14
1699	8
1700	14
1701	14
1702	2
1703	14
1704	8
1705	6
1706	2
1707	14
1708	14
1709	14
1710	8
1711	2
1712	2
1713	14
1714	2
1715	12
1716	12
1717	2
1718	2
1719	7
1720	2
1721	43
1722	14
1723	43
1724	12
1725	14
1726	14
1727	12
1728	2
1729	14
1730	8
1731	14
1732	2
1733	7
1734	43
1735	2
1736	16
1737	2
1738	12
1739	2
1740	8
1741	2
1742	14
1743	12
1744	7
1745	7
1746	2
1747	12
1748	2
1749	14
1750	12
1751	2
1752	2
1753	14
1754	12
1755	12
1756	12
1757	12
1758	12
1759	12
1760	12
1761	14
1762	8
1763	8
1764	8
1765	2
1766	14
1767	2
1768	12
1769	16
1770	2
1771	2
1772	7
1773	14
1774	8
1775	12
1776	5
1777	12
1778	2
1779	12
1780	2
1781	2
1782	14
1783	12
1784	14
1785	12
1786	2
1787	14
1788	14
1789	14
1790	7
1791	2
1792	7
1793	43
1794	2
1795	14
1796	12
1797	7
1798	14
1799	8
1800	12
1801	2
1802	16
1803	2
1804	2
1805	12
1806	2
1807	12
1808	2
1809	14
1810	14
1811	14
1812	2
1813	12
1814	2
1815	7
1816	43
1817	2
1818	2
1819	2
1820	8
1821	12
1822	2
1823	14
1824	12
1825	2
1826	43
1827	7
1828	2
1829	2
1830	8
1831	2
1832	8
1833	2
1834	2
1835	2
1836	2
1837	12
1838	8
1839	12
1840	43
1841	2
1842	2
1843	8
1844	12
1845	14
1846	14
1847	2
1848	2
1849	14
1850	8
1851	12
1852	2
1853	2
1854	14
1855	7
1856	8
1857	12
1858	2
1859	2
1860	7
1861	8
1862	2
1863	2
1864	2
1865	2
1866	12
1867	8
1868	2
1869	2
1870	2
1871	2
1872	14
1873	43
1874	12
1875	38
1876	2
1877	2
1878	14
1879	8
1880	12
1881	12
1882	12
1883	2
1884	14
1885	12
1886	12
1887	14
1888	2
1889	2
1890	2
1891	12
1892	12
1893	12
1894	12
1895	34
1896	12
1897	2
1898	7
1899	2
1900	12
1901	2
1902	2
1903	7
1904	8
1905	7
1906	12
1907	14
1908	2
1909	8
1910	12
1911	2
1912	2
1913	12
1914	43
1915	12
1916	12
1917	2
1918	8
1919	8
1920	2
1921	12
1922	12
1923	2
1924	2
1925	12
1926	12
1927	2
1928	2
1929	7
1930	2
1931	2
1932	8
1933	14
1934	12
1935	14
1936	14
1937	8
1938	12
1939	14
1940	8
1941	12
1942	14
1943	12
1944	12
1945	8
1946	14
1947	2
1948	14
1949	8
1950	14
1951	14
1952	12
1953	8
1954	14
1955	2
1956	2
1957	8
1958	12
1959	2
1960	14
1961	2
1962	12
1963	12
1964	2
1965	2
1966	12
1967	14
1968	2
1969	14
1970	2
1971	7
1972	14
1973	2
1974	7
1975	14
1976	14
1977	12
1978	2
1979	14
1980	2
1981	8
1982	12
1983	2
1984	8
1985	2
1986	2
1987	12
1988	2
1989	7
1990	2
1991	2
1992	2
1993	7
1994	12
1995	2
1996	7
1997	2
1998	2
1999	85
2000	12
2001	14
2002	16
2003	12
2004	7
2005	12
2006	12
2007	12
2008	2
2009	2
2010	14
2011	2
2012	2
2013	14
2014	2
2015	2
2016	2
2017	12
2018	2
2019	12
2020	2
2021	12
2022	7
2023	2
2024	2
2025	5
2026	14
2027	2
2028	2
2029	14
2030	14
2031	2
2032	2
2033	12
2034	12
2035	2
2036	14
2037	2
2038	7
2039	12
2040	7
2041	2
2042	12
2043	8
2044	14
2045	14
2046	14
2047	14
2048	8
2049	7
2050	14
2051	2
2052	2
2053	14
2054	14
2055	2
2056	14
2057	12
2058	14
2059	2
2060	2
2061	14
2062	14
2063	14
2064	12
2065	12
2066	2
2067	2
2068	2
2069	2
2070	2
2071	2
2072	12
2073	2
2074	12
2075	12
2076	2
2077	2
2078	12
2079	2
2080	2
2081	2
2082	12
2083	2
2084	2
2085	2
2086	14
2087	2
2088	2
2089	2
2090	2
2091	8
2092	2
2093	12
2094	7
2095	14
2096	7
2097	12
2098	8
2099	8
2100	2
2101	2
2102	12
2103	12
2104	2
2105	12
2106	14
2107	86
2108	2
2109	2
2110	2
2111	12
2112	12
2113	12
2114	2
2115	12
2116	8
2117	7
2118	2
2119	2
2120	2
2121	14
2122	12
2123	12
2124	14
2125	14
2126	71
2127	2
2128	2
2129	8
2130	2
2131	2
2132	2
2133	14
2134	12
2135	8
2136	2
2137	14
2138	12
2139	2
2140	12
2141	2
2142	14
2143	12
2144	8
2145	12
2146	14
2147	14
2148	14
2149	2
2150	12
2151	2
2152	14
2153	5
2154	14
2155	14
2156	2
2157	2
2158	2
2159	14
2160	14
2161	12
2162	14
2163	8
2164	43
2165	8
2166	2
2167	14
2168	2
2169	2
2170	2
2171	8
2172	12
2173	8
2174	5
2175	2
2176	12
2177	2
2178	7
2179	2
2180	12
2181	2
2182	8
2183	7
2184	14
2185	14
2186	2
2187	2
2188	14
2189	2
2190	12
2191	12
2192	2
2193	2
2194	12
2195	12
2196	12
2197	14
2198	12
2199	14
2200	12
2201	7
2202	14
2203	2
2204	2
2205	12
2206	12
2207	2
2208	14
2209	12
2210	2
2211	12
2212	14
2213	14
2214	12
2215	2
2216	14
2217	8
2218	12
2219	2
2220	2
2221	2
2222	2
2223	2
2224	2
2225	2
2226	8
2227	43
2228	2
2229	8
2230	7
2231	12
2232	2
2233	2
2234	2
2235	12
2236	12
2237	8
2238	7
2239	2
2240	8
2241	2
2242	14
2243	2
2244	2
2245	2
2246	12
2247	12
2248	2
2249	8
2250	12
2251	12
2252	7
2253	7
2254	2
2255	8
2256	2
2257	12
2258	2
2259	14
2260	12
2261	12
2262	7
2263	14
2264	2
2265	12
2266	2
2267	14
2268	7
2269	2
2270	2
2271	7
2272	2
2273	8
2274	7
2275	14
2276	14
2277	2
2278	14
2279	12
2280	12
2281	12
2282	12
2283	12
2284	12
2285	12
2286	2
2287	8
2288	2
2289	7
2290	8
2291	12
2292	12
2293	2
2294	14
2295	12
2296	14
2297	2
2298	2
2299	14
2300	7
2301	2
2302	14
2303	12
2304	2
2305	2
2306	12
2307	12
2308	7
2309	12
2310	2
2311	7
2312	71
2313	7
2314	12
2315	7
2316	2
2317	12
2318	14
2319	8
2320	2
2321	12
2322	12
2323	2
2324	2
2325	2
2326	2
2327	7
2328	12
2329	8
2330	12
2331	12
2332	2
2333	2
2334	2
2335	8
2336	12
2337	12
2338	2
2339	12
2340	7
2341	2
2342	2
2343	8
2344	2
2345	7
2346	14
2347	8
2348	12
2349	8
2350	12
2351	2
2352	8
2353	2
2354	2
2355	2
2356	2
2357	8
2358	7
2359	12
2360	12
2361	2
2362	7
2363	14
2364	12
2365	2
2366	2
2367	8
2368	14
2369	12
2370	2
2371	14
2372	14
2373	12
2374	2
2375	12
2376	12
2377	14
2378	2
2379	2
2380	12
2381	2
2382	7
2383	12
2384	2
2385	14
2386	12
2387	2
2388	12
2389	8
2390	14
2391	7
2392	12
2393	12
2394	2
2395	2
2396	2
2397	8
2398	14
2399	2
2400	14
2401	7
2402	2
2403	14
2404	8
2405	12
2406	14
2407	7
2408	12
2409	8
2410	12
2411	12
2412	12
2413	14
2414	2
2415	12
2416	12
2417	7
2418	14
2419	7
2420	12
2421	2
2422	2
2423	2
2424	2
2425	12
2426	12
2427	2
2428	2
2429	2
2430	12
2431	12
2432	14
2433	14
2434	12
2435	2
2436	2
2437	12
2438	12
2439	12
2440	12
2441	8
2442	12
2443	12
2444	2
2445	2
2446	12
2447	12
2448	8
2449	8
2450	12
2451	12
2452	2
2453	2
2454	8
2455	2
2456	14
2457	2
2458	12
2459	2
2460	7
2461	12
2462	14
2463	12
2464	12
2465	8
2466	2
2467	8
2468	14
2469	12
2470	2
2471	12
2472	2
2473	2
2474	8
2475	14
2476	2
2477	14
2478	12
2479	12
2480	14
2481	2
2482	8
2483	12
2484	2
2485	12
2486	12
2487	12
2488	12
2489	12
2490	2
2491	2
2492	8
2493	2
2494	12
2495	12
2496	12
2497	12
2498	2
2499	12
2500	7
2501	14
2502	14
2503	12
2504	14
2505	12
2506	12
2507	12
2508	14
2509	7
2510	12
2511	12
2512	12
2513	2
2514	14
2515	8
2516	7
2517	14
2518	2
2519	2
2520	7
2521	12
2522	12
2523	2
2524	14
2525	12
2526	8
2527	12
2528	2
2529	2
2530	2
2531	12
2532	12
2533	5
2534	12
2535	12
2536	2
2537	14
2538	2
2539	8
2540	12
2541	12
2542	12
2543	12
2544	2
2545	14
2546	8
2547	2
2548	2
2549	12
2550	8
2551	2
2552	12
2553	12
2554	12
2555	12
2556	12
2557	60
2558	2
2559	8
2560	2
2561	14
2562	2
2563	14
2564	2
2565	12
2566	7
2567	2
2568	14
2569	12
2570	7
2571	8
2572	7
2573	14
2574	14
2575	12
2576	14
2577	12
2578	12
2579	7
2580	14
2581	2
2582	12
2583	14
2584	12
2585	12
2586	2
2587	8
2588	7
2589	8
2590	14
2591	8
2592	12
2593	14
2594	14
2595	14
2596	12
2597	2
2598	12
2599	2
2600	12
2601	12
2602	12
2603	14
2604	14
2605	2
2606	12
2607	14
2608	2
2609	2
2610	14
2611	2
2612	8
2613	2
2614	2
2615	12
2616	12
2617	14
2618	7
2619	12
2620	12
2621	14
2622	14
2623	12
2624	14
2625	14
2626	14
2627	14
2628	2
2629	2
2630	8
2631	14
2632	7
2633	2
2634	14
2635	14
2636	14
2637	12
2638	2
2639	12
2640	2
2641	2
2642	2
2643	2
2644	2
2645	2
2646	2
2647	2
2648	14
2649	2
2650	2
2651	12
2652	14
2653	8
2654	2
2655	12
2656	2
2657	12
2658	2
2659	2
2660	8
2661	7
2662	8
2663	2
2664	2
2665	2
2666	12
2667	2
2668	2
2669	14
2670	12
2671	12
2672	7
2673	2
2674	2
2675	2
2676	12
2677	2
2678	12
2679	8
2680	14
2681	14
2682	2
2683	12
2684	2
2685	14
2686	14
2687	2
2688	7
2689	2
2690	14
2691	12
2692	12
2693	7
2694	7
2695	12
2696	2
2697	12
2698	2
2699	14
2700	2
2701	12
2702	2
2703	2
2704	2
2705	12
2706	2
2707	2
2708	2
2709	14
2710	14
2711	12
2712	8
2713	12
2714	12
2715	12
2716	7
2717	14
2718	12
2719	8
2720	12
2721	7
2722	2
2723	2
2724	8
2725	12
2726	12
2727	14
2728	12
2729	2
2730	2
2731	7
2732	2
2733	2
2734	7
2735	2
2736	14
2737	14
2738	2
2739	2
2740	8
2741	8
2742	2
2743	7
2744	12
2745	2
2746	2
2747	14
2748	14
2749	12
2750	2
2751	2
2752	12
2753	12
2754	7
2755	2
2756	2
2757	12
2758	2
2759	14
2760	14
2761	2
2762	2
2763	2
2764	12
2765	8
2766	2
2767	14
2768	7
2769	14
2770	14
2771	14
2772	14
2773	2
2774	8
2775	2
2776	12
2777	2
2778	2
2779	14
2780	12
2781	7
2782	14
2783	2
2784	12
2785	12
2786	8
2787	14
2788	12
2789	2
2790	2
2791	2
2792	2
2793	14
2794	2
2795	12
2796	2
2797	14
2798	14
2799	8
2800	2
2801	2
2802	2
2803	14
2804	12
2805	12
2806	2
2807	14
2808	2
2809	2
2810	12
2811	14
2812	14
2813	2
2814	2
2815	2
2816	2
2817	2
2818	2
2819	2
2820	2
2821	2
2822	2
2823	12
2824	12
2825	8
2826	14
2827	5
2828	12
2829	14
2830	7
2831	7
2832	12
2833	2
2834	2
2835	12
2836	14
2837	12
2838	14
2839	14
2840	7
2841	7
2842	12
2843	8
2844	2
2845	2
2846	2
2847	2
2848	2
2849	14
2850	12
2851	14
2852	14
2853	14
2854	12
2855	2
2856	8
2857	2
2858	12
2859	12
2860	2
2861	2
2862	12
2863	14
2864	14
2865	14
2866	14
2867	2
2868	8
2869	2
2870	2
2871	14
2872	2
2873	14
2874	14
2875	12
2876	2
2877	14
2878	12
2879	14
2880	14
2881	2
2882	14
2883	2
2884	8
2885	14
2886	2
2887	14
2888	12
2889	12
2890	7
2891	8
2892	2
2893	14
2894	2
2895	14
2896	14
2897	7
2898	14
2899	14
2900	14
2901	14
2902	14
2903	14
2904	2
2905	12
2906	14
2907	14
2908	14
2909	12
2910	2
2911	8
2912	8
2913	8
2914	8
2915	87
2916	2
2917	34
2918	12
2919	8
2920	16
2921	8
2922	8
2923	2
2924	8
2925	8
2926	34
2927	66
2928	8
2929	88
2930	61
2931	16
2932	6
2933	8
2934	8
2935	8
2936	8
2937	8
2938	8
2939	8
2940	89
2941	6
2942	8
2943	8
2944	2
2945	8
2946	14
2947	2
2948	8
2949	8
2950	2
2951	2
2952	90
2953	14
2954	8
2955	91
2956	12
2957	2
2958	8
2959	8
2960	8
2961	6
2962	6
2963	8
2964	8
2965	16
2966	8
2967	16
2968	68
2969	6
2970	6
2971	2
2972	8
2973	8
2974	7
2975	8
2976	8
2977	8
2978	14
2979	68
2980	8
2981	6
2982	8
2983	92
2984	68
2985	8
2986	12
2987	8
2988	2
2989	8
2990	2
2991	8
2992	2
2993	8
2994	2
2995	8
2996	68
2997	8
2998	8
2999	12
3000	8
3001	43
3002	8
3003	7
3004	8
3005	7
3006	8
3007	8
3008	12
3009	2
3010	2
3011	2
3012	8
3013	8
3014	20
3015	8
3016	8
3017	12
3018	8
3019	2
3020	2
3021	8
3022	16
3023	93
3024	8
3025	8
3026	7
3027	8
3028	8
3029	20
3030	8
3031	8
3032	6
3033	2
3034	34
3035	12
3036	8
3037	8
3038	12
3039	8
3040	8
3041	16
3042	34
3043	8
3044	6
3045	8
3046	8
3047	8
3048	2
3049	16
3050	8
3051	8
3052	43
3053	16
3054	8
3055	6
3056	2
3057	8
3058	8
3059	11
3060	14
3061	12
3062	71
3063	8
3064	68
3065	8
3066	34
3067	2
3068	16
3069	5
3070	6
3071	2
3072	43
3073	8
3074	2
3075	38
3076	8
3077	38
3078	12
3079	43
3080	8
3081	71
3082	94
3083	2
3084	2
3085	8
3086	8
3087	2
3088	2
3089	14
3090	8
3091	2
3092	14
3093	2
3094	14
3095	71
3096	8
3097	12
3098	5
3099	8
3100	8
3101	8
3102	2
3103	8
3104	8
3105	43
3106	2
3107	12
3108	71
3109	8
3110	2
3111	43
3112	2
3113	8
3114	14
3115	8
3116	2
3117	68
3118	43
3119	2
3120	8
3121	6
3122	49
3123	34
3124	8
3125	43
3126	8
3127	2
3128	14
3129	8
3130	8
3131	14
3132	2
3133	8
3134	68
3135	8
3136	12
3137	12
3138	8
3139	8
3140	20
3141	8
3142	14
3143	2
3144	8
3145	8
3146	43
3147	16
3148	12
3149	8
3150	2
3151	12
3152	71
3153	43
3154	8
3155	8
3156	8
3157	8
3158	8
3159	8
3160	8
3161	8
3162	8
3163	12
3164	2
3165	8
3166	14
3167	8
3168	8
3169	2
3170	8
3171	2
3172	12
3173	2
3174	8
3175	8
3176	2
3177	2
3178	8
3179	12
3180	2
3181	12
3182	95
3183	14
3184	71
3185	2
3186	43
3187	8
3188	43
3189	8
3190	8
3191	8
3192	12
3193	2
3194	43
3195	8
3196	71
3197	43
3198	2
3199	14
3200	12
3201	2
3202	7
3203	5
3204	12
3205	8
3206	12
3207	2
3208	7
3209	8
3210	2
3211	14
3212	8
3213	12
3214	43
3215	2
3216	12
3217	2
3218	8
3219	8
3220	2
3221	2
3222	8
3223	12
3224	2
3225	8
3226	8
3227	71
3228	71
3229	16
3230	8
3231	2
3232	43
3233	96
3234	97
3235	8
3236	2
3237	8
3238	14
3239	71
3240	8
3241	12
3242	8
3243	8
3244	8
3245	8
3246	12
3247	2
3248	8
3249	12
3250	5
3251	2
3252	2
3253	2
3254	8
3255	8
3256	12
3257	8
3258	8
3259	8
3260	2
3261	43
3262	12
3263	2
3264	8
3265	8
3266	5
3267	8
3268	43
3269	2
3270	8
3271	2
3272	2
3273	8
3274	12
3275	12
3276	2
3277	2
3278	12
3279	2
3280	8
3281	2
3282	43
3283	12
3284	8
3285	2
3286	8
3287	8
3288	8
3289	8
3290	2
3291	8
3292	12
3293	12
3294	8
3295	2
3296	43
3297	8
3298	2
3299	2
3300	12
3301	43
3302	2
3303	8
3304	12
3305	12
3306	2
3307	8
3308	8
3309	2
3310	2
3311	8
3312	14
3313	8
3314	8
3315	8
3316	2
3317	8
3318	12
3319	8
3320	2
3321	12
3322	2
3323	8
3324	43
3325	8
3326	12
3327	8
3328	12
3329	12
3330	98
3331	14
3332	16
3333	8
3334	2
3335	2
3336	8
3337	8
3338	2
3339	2
3340	43
3341	14
3342	12
3343	2
3344	71
3345	12
3346	2
3347	12
3348	12
3349	2
3350	8
3351	12
3352	12
3353	12
3354	43
3355	8
3356	2
3357	2
3358	2
3359	12
3360	14
3361	12
3362	12
3363	14
3364	8
3365	8
3366	2
3367	2
3368	12
3369	2
3370	8
3371	2
3372	12
3373	8
3374	8
3375	2
3376	8
3377	12
3378	14
3379	71
3380	2
3381	5
3382	8
3383	12
3384	8
3385	8
3386	8
3387	5
3388	43
3389	2
3390	2
3391	12
3392	2
3393	2
3394	2
3395	2
3396	2
3397	8
3398	12
3399	2
3400	14
3401	12
3402	12
3403	8
3404	8
3405	14
3406	12
3407	12
3408	2
3409	2
3410	8
3411	12
3412	8
3413	8
3414	2
3415	8
3416	12
3417	8
3418	2
3419	12
3420	2
3421	2
3422	43
3423	8
3424	12
3425	2
3426	8
3427	2
3428	12
3429	12
3430	12
3431	8
3432	8
3433	2
3434	43
3435	8
3436	12
3437	2
3438	12
3439	12
3440	12
3441	2
3442	7
3443	12
3444	2
3445	14
3446	8
3447	43
3448	12
3449	12
3450	2
3451	14
3452	12
3453	12
3454	2
3455	2
3456	8
3457	2
3458	71
3459	2
3460	12
3461	2
3462	12
3463	2
3464	43
3465	12
3466	12
3467	8
3468	12
3469	2
3470	2
3471	2
3472	2
3473	12
3474	12
3475	2
3476	12
3477	8
3478	12
3479	2
3480	2
3481	8
3482	2
3483	2
3484	12
3485	99
3486	2
3487	12
3488	8
3489	2
3490	8
3491	12
3492	12
3493	2
3494	2
3495	12
3496	12
3497	8
3498	2
3499	8
3500	12
3501	8
3502	12
3503	2
3504	12
3505	2
3506	12
3507	2
3508	8
3509	12
3510	8
3511	43
3512	12
3513	12
3514	12
3515	2
3516	12
3517	14
3518	12
3519	8
3520	2
3521	8
3522	14
3523	14
3524	2
3525	14
3526	12
3527	12
3528	2
3529	2
3530	2
3531	12
3532	2
3533	8
3534	2
3535	2
3536	2
3537	12
3538	2
3539	12
3540	2
3541	12
3542	2
3543	12
3544	2
3545	12
3546	12
3547	12
3548	12
3549	12
3550	12
3551	12
3552	8
3553	14
3554	2
3555	12
3556	2
3557	12
3558	8
3559	12
3560	2
3561	12
3562	12
3563	12
3564	12
3565	14
3566	12
3567	8
3568	95
3569	12
3570	12
3571	12
3572	14
3573	14
3574	12
3575	12
3576	12
3577	14
3578	2
3579	8
3580	43
3581	34
3582	8
3583	8
3584	8
3585	38
3586	43
3587	2
3588	8
3589	43
3590	8
3591	12
3592	2
3593	8
3594	8
3595	7
3596	8
3597	8
3598	2
3599	8
3600	12
3601	14
3602	16
3603	8
3604	16
3605	8
3606	14
3607	16
3608	8
3609	8
3610	16
3611	34
3612	2
3613	8
3614	8
3615	14
3616	71
3617	8
3618	16
3619	16
3620	8
3621	8
3622	100
3623	8
3624	43
3625	16
3626	43
3627	8
3628	2
3629	8
3630	2
3631	8
3632	2
3633	16
3634	8
3635	8
3636	12
3637	43
3638	8
3639	8
3640	14
3641	2
3642	43
3643	8
3644	8
3645	43
3646	8
3647	8
3648	43
3649	7
3650	12
3651	12
3652	8
3653	43
3654	7
3655	8
3656	12
3657	8
3658	2
3659	14
3660	12
3661	71
3662	8
3663	2
3664	8
3665	14
3666	43
3667	43
3668	2
3669	43
3670	43
3671	8
3672	14
3673	43
3674	71
3675	14
3676	12
3677	43
3678	71
3679	43
3680	14
3681	14
3682	2
3683	43
3684	43
3685	16
3686	14
3687	2
3688	14
3689	2
3690	7
3691	43
3692	43
3693	14
3694	12
3695	43
3696	14
3697	71
3698	71
3699	2
3700	2
3701	2
3702	8
3703	2
3704	2
3705	8
3706	14
3707	12
3708	43
3709	8
3710	2
3711	12
3712	2
3713	2
3714	2
3715	8
3716	7
3717	2
3718	2
3719	2
3720	8
3721	12
3722	2
3723	2
3724	14
3725	8
3726	2
3727	2
3728	8
3729	2
3730	2
3731	7
3732	2
3733	8
3734	2
3735	8
3736	2
3737	2
3738	8
3739	2
3740	2
3741	2
3742	8
3743	12
3744	2
3745	14
3746	2
3747	8
3748	8
3749	8
3750	2
3751	2
3752	2
3753	2
3754	14
3755	14
3756	2
3757	14
3758	8
3759	12
3760	2
3761	8
3762	8
3763	8
3764	12
3765	8
3766	14
3767	2
3768	14
3769	8
3770	8
3771	12
3772	14
3773	2
3774	2
3775	14
3776	14
3777	8
3778	12
3779	2
3780	12
3781	8
3782	14
3783	14
3784	14
3785	14
3786	14
3787	8
3788	14
3789	2
3790	14
3791	14
3792	2
3793	14
3794	12
3795	8
3796	2
3797	8
3798	12
3799	12
3800	12
3801	2
3802	8
3803	14
3804	14
3805	14
3806	14
3807	12
3808	14
3809	14
3810	14
3811	2
3812	2
3813	14
3814	14
3815	2
3816	14
3817	12
3818	2
3819	12
3820	12
3821	2
3822	12
3823	2
3824	2
3825	14
3826	12
3827	14
3828	8
3829	2
3830	14
3831	12
3832	14
3833	14
3834	12
3835	14
3836	2
3837	2
3838	14
3839	12
3840	12
3841	12
3842	12
3843	14
3844	8
3845	12
3846	8
3847	101
3848	102
3849	25
3850	17
3851	12
3852	13
3853	103
3854	8
3855	43
3856	104
3857	11
3858	38
3859	16
3860	16
3861	14
3862	16
3863	12
3864	8
3865	16
3866	43
3867	2
3868	8
3869	7
3870	17
3871	105
3872	34
3873	12
3874	106
3875	107
3876	108
3877	109
3878	8
3879	110
3880	8
3881	111
3882	6
3883	15
3884	29
3885	67
3886	112
3887	7
3888	8
3889	8
3890	113
3891	114
3892	38
3893	111
3894	115
3895	7
3896	116
3897	8
3898	38
3899	42
3900	13
3901	38
3902	8
3903	8
3904	117
3905	8
3906	118
3907	108
3908	6
3909	17
3910	8
3911	8
3912	2
3913	41
3914	38
3915	38
3916	2
3917	8
3918	119
3919	16
3920	8
3921	16
3922	34
3923	120
3924	121
3925	8
3926	34
3927	20
3928	34
3929	38
3930	8
3931	34
3932	8
3933	37
3934	14
3935	122
3936	123
3937	3
3938	16
3939	8
3940	8
3941	124
3942	38
3943	38
3944	34
3945	114
3946	32
3947	111
3948	38
3949	8
3950	2
3951	12
3952	38
3953	38
3954	34
3955	38
3956	8
3957	38
3958	125
3959	38
3960	8
3961	38
3962	126
3963	127
3964	128
3965	34
3966	29
3967	17
3968	20
3969	8
3970	106
3971	38
3972	8
3973	129
3974	8
3975	8
3976	93
3977	2
3978	34
3979	8
3980	34
3981	34
3982	130
3983	12
3984	38
3985	8
3986	38
3987	115
3988	34
3989	29
3990	115
3991	34
3992	8
3993	38
3994	38
3995	6
3996	14
3997	131
3998	8
3999	132
4000	38
4001	133
4002	7
4003	6
4004	8
4005	134
4006	8
4007	6
4008	2
4009	6
4010	20
4011	29
4012	8
4013	7
4014	135
4015	41
4016	34
4017	8
4018	136
4019	8
4020	58
4021	68
4022	54
4023	12
4024	137
4025	138
4026	2
4027	8
4028	139
4029	34
4030	41
4031	14
4032	14
4033	2
4034	20
4035	114
4036	34
4037	74
4038	8
4039	38
4040	8
4041	34
4042	8
4043	34
4044	6
4045	20
4046	34
4047	8
4048	8
4049	8
4050	5
4051	8
4052	34
4053	8
4054	110
4055	30
4056	34
4057	8
4058	20
4059	2
4060	8
4061	34
4062	115
4063	2
4064	8
4065	2
4066	34
4067	29
4068	2
4069	140
4070	8
4071	14
4072	38
4073	38
4074	17
4075	34
4076	141
4077	8
4078	34
4079	115
4080	2
4081	14
4082	41
4083	8
4084	142
4085	14
4086	34
4087	2
4088	8
4089	34
4090	16
4091	8
4092	8
4093	38
4094	143
4095	68
4096	34
4097	2
4098	57
4099	2
4100	7
4101	12
4102	12
4103	5
4104	38
4105	8
4106	38
4107	8
4108	8
4109	6
4110	2
4111	38
4112	12
4113	8
4114	17
4115	68
4116	8
4117	34
4118	144
4119	8
4120	127
4121	38
4122	9
4123	38
4124	34
4125	38
4126	8
4127	16
4128	8
4129	145
4130	20
4131	41
4132	34
4133	8
4134	2
4135	107
4136	34
4137	8
4138	146
4139	14
4140	47
4141	38
4142	29
4143	38
4144	2
4145	38
4146	38
4147	147
4148	8
4149	8
4150	8
4151	38
4152	115
4153	34
4154	8
4155	148
4156	8
4157	6
4158	17
4159	149
4160	17
4161	2
4162	71
4163	150
4164	34
4165	34
4166	34
4167	151
4168	107
4169	34
4170	8
4171	8
4172	34
4173	8
4174	152
4175	12
4176	103
4177	2
4178	2
4179	2
4180	12
4181	34
4182	2
4183	153
4184	8
4185	12
4186	38
4187	6
4188	34
4189	38
4190	34
4191	2
4192	6
4193	16
4194	154
4195	71
4196	34
4197	2
4198	62
4199	115
4200	8
4201	68
4202	8
4203	155
4204	2
4205	34
4206	8
4207	20
4208	12
4209	14
4210	17
4211	29
4212	34
4213	8
4214	8
4215	34
4216	11
4217	34
4218	11
4219	9
4220	5
4221	152
4222	2
4223	41
4224	8
4225	8
4226	156
4227	9
4228	16
4229	8
4230	114
4231	38
4232	38
4233	34
4234	87
4235	8
4236	108
4237	2
4238	2
4239	16
4240	16
4241	25
4242	38
4243	2
4244	38
4245	2
4246	9
4247	2
4248	157
4249	5
4250	20
4251	34
4252	34
4253	158
4254	152
4255	8
4256	17
4257	38
4258	74
4259	8
4260	8
4261	130
4262	38
4263	6
4264	8
4265	2
4266	12
4267	9
4268	8
4269	38
4270	5
4271	35
4272	34
4273	38
4274	12
4275	8
4276	34
4277	7
4278	34
4279	34
4280	34
4281	38
4282	38
4283	12
4284	108
4285	14
4286	9
4287	32
4288	5
4289	17
4290	87
4291	8
4292	8
4293	7
4294	17
4295	38
4296	159
4297	20
4298	160
4299	38
4300	161
4301	5
4302	8
4303	149
4304	9
4305	34
4306	14
4307	162
4308	34
4309	2
4310	38
4311	163
4312	8
4313	7
4314	17
4315	38
4316	8
4317	34
4318	12
4319	164
4320	8
4321	2
4322	34
4323	8
4324	2
4325	6
4326	76
4327	165
4328	14
4329	2
4330	38
4331	56
4332	2
4333	2
4334	12
4335	38
4336	48
4337	8
4338	8
4339	2
4340	8
4341	8
4342	8
4343	20
4344	34
4345	8
4346	14
4347	12
4348	2
4349	38
4350	166
4351	34
4352	16
4353	34
4354	2
4355	38
4356	38
4357	17
4358	2
4359	5
4360	6
4361	14
4362	38
4363	20
4364	8
4365	38
4366	2
4367	8
4368	8
4369	7
4370	12
4371	8
4372	8
4373	38
4374	34
4375	16
4376	34
4377	8
4378	8
4379	38
4380	8
4381	2
4382	38
4383	7
4384	14
4385	17
4386	149
4387	6
4388	8
4389	38
4390	34
4391	2
4392	38
4393	2
4394	38
4395	8
4396	7
4397	152
4398	38
4399	108
4400	12
4401	2
4402	38
4403	34
4404	7
4405	14
4406	114
4407	2
4408	8
4409	16
4410	38
4411	25
4412	34
4413	17
4414	34
4415	5
4416	167
4417	168
4418	8
4419	17
4420	147
4421	8
4422	38
4423	8
4424	2
4425	12
4426	38
4427	8
4428	8
4429	34
4430	91
4431	169
4432	68
4433	2
4434	38
4435	12
4436	38
4437	34
4438	2
4439	87
4440	2
4441	34
4442	38
4443	38
4444	34
4445	8
4446	16
4447	2
4448	38
4449	170
4450	34
4451	38
4452	171
4453	34
4454	14
4455	25
4456	8
4457	2
4458	8
4459	38
4460	38
4461	2
4462	160
4463	17
4464	38
4465	8
4466	155
4467	172
4468	14
4469	8
4470	149
4471	34
4472	8
4473	34
4474	12
4475	87
4476	2
4477	34
4478	38
4479	17
4480	38
4481	38
4482	34
4483	8
4484	34
4485	2
4486	8
4487	2
4488	2
4489	6
4490	34
4491	2
4492	8
4493	12
4494	2
4495	173
4496	8
4497	8
4498	34
4499	154
4500	6
4501	29
4502	8
4503	164
4504	8
4505	14
4506	14
4507	38
4508	8
4509	8
4510	174
4511	8
4512	38
4513	2
4514	14
4515	14
4516	6
4517	2
4518	7
4519	8
4520	8
4521	150
4522	38
4523	175
4524	17
4525	34
4526	14
4527	14
4528	8
4529	8
4530	14
4531	8
4532	2
4533	38
4534	8
4535	34
4536	176
4537	8
4538	2
4539	14
4540	8
4541	34
4542	2
4543	5
4544	156
4545	14
4546	6
4547	34
4548	152
4549	8
4550	14
4551	111
4552	8
4553	8
4554	2
4555	177
4556	34
4557	16
4558	25
4559	70
4560	8
4561	8
4562	2
4563	2
4564	7
4565	29
4566	56
4567	34
4568	2
4569	2
4570	12
4571	12
4572	34
4573	14
4574	2
4575	6
4576	7
4577	34
4578	56
4579	38
4580	38
4581	2
4582	34
4583	9
4584	8
4585	149
4586	38
4587	7
4588	8
4589	8
4590	34
4591	25
4592	8
4593	149
4594	14
4595	42
4596	8
4597	14
4598	2
4599	8
4600	16
4601	8
4602	38
4603	178
4604	8
4605	8
4606	34
4607	179
4608	152
4609	34
4610	8
4611	74
4612	12
4613	8
4614	8
4615	34
4616	180
4617	34
4618	162
4619	2
4620	8
4621	34
4622	14
4623	8
4624	7
4625	5
4626	38
4627	8
4628	8
4629	7
4630	8
4631	34
4632	8
4633	34
4634	38
4635	2
4636	2
4637	2
4638	34
4639	181
4640	8
4641	38
4642	34
4643	5
4644	34
4645	14
4646	12
4647	2
4648	38
4649	34
4650	8
4651	2
4652	2
4653	34
4654	8
4655	8
4656	8
4657	8
4658	7
4659	2
4660	12
4661	38
4662	182
4663	34
4664	8
4665	34
4666	38
4667	8
4668	2
4669	14
4670	8
4671	8
4672	34
4673	34
4674	14
4675	8
4676	16
4677	14
4678	34
4679	38
4680	7
4681	2
4682	8
4683	8
4684	8
4685	7
4686	38
4687	8
4688	38
4689	8
4690	7
4691	34
4692	56
4693	2
4694	172
4695	9
4696	16
4697	8
4698	14
4699	14
4700	34
4701	35
4702	7
4703	12
4704	2
4705	164
4706	8
4707	34
4708	25
4709	7
4710	2
4711	183
4712	12
4713	14
4714	14
4715	184
4716	38
4717	8
4718	6
4719	12
4720	2
4721	34
4722	2
4723	8
4724	2
4725	2
4726	25
4727	8
4728	8
4729	34
4730	34
4731	12
4732	6
4733	8
4734	2
4735	38
4736	34
4737	34
4738	11
4739	97
4740	42
4741	38
4742	2
4743	2
4744	38
4745	8
4746	34
4747	152
4748	185
4749	14
4750	7
4751	8
4752	20
4753	26
4754	7
4755	14
4756	34
4757	2
4758	8
4759	17
4760	34
4761	34
4762	8
4763	38
4764	7
4765	2
4766	164
4767	34
4768	14
4769	34
4770	9
4771	2
4772	8
4773	7
4774	8
4775	149
4776	34
4777	34
4778	16
4779	7
4780	34
4781	8
4782	87
4783	34
4784	34
4785	34
4786	12
4787	8
4788	38
4789	14
4790	8
4791	91
4792	7
4793	186
4794	38
4795	75
4796	34
4797	38
4798	12
4799	34
4800	17
4801	8
4802	8
4803	38
4804	8
4805	12
4806	14
4807	2
4808	8
4809	9
4810	7
4811	8
4812	8
4813	25
4814	2
4815	87
4816	70
4817	7
4818	8
4819	34
4820	34
4821	5
4822	38
4823	14
4824	8
4825	34
4826	34
4827	187
4828	7
4829	8
4830	25
4831	8
4832	38
4833	8
4834	16
4835	17
4836	16
4837	14
4838	2
4839	8
4840	38
4841	2
4842	11
4843	8
4844	25
4845	56
4846	14
4847	11
4848	12
4849	77
4850	14
4851	2
4852	34
4853	8
4854	14
4855	188
4856	152
4857	77
4858	7
4859	38
4860	5
4861	8
4862	8
4863	34
4864	38
4865	8
4866	11
4867	7
4868	38
4869	12
4870	8
4871	17
4872	38
4873	8
4874	34
4875	8
4876	8
4877	115
4878	16
4879	12
4880	14
4881	68
4882	9
4883	12
4884	8
4885	2
4886	6
4887	12
4888	38
4889	20
4890	38
4891	17
4892	8
4893	68
4894	8
4895	16
4896	43
4897	20
4898	2
4899	2
4900	56
4901	189
4902	16
4903	38
4904	16
4905	2
4906	38
4907	8
4908	188
4909	2
4910	38
4911	80
4912	34
4913	34
4914	189
4915	190
4916	8
4917	34
4918	2
4919	12
4920	8
4921	2
4922	14
4923	16
4924	5
4925	68
4926	7
4927	38
4928	8
4929	7
4930	38
4931	7
4932	191
4933	12
4934	14
4935	16
4936	8
4937	12
4938	14
4939	7
4940	87
4941	34
4942	34
4943	14
4944	14
4945	34
4946	14
4947	7
4948	8
4949	5
4950	34
4951	12
4952	38
4953	8
4954	14
4955	8
4956	8
4957	8
4958	8
4959	2
4960	5
4961	8
4962	2
4963	192
4964	34
4965	7
4966	8
4967	56
4968	12
4969	8
4970	20
4971	2
4972	8
4973	7
4974	188
4975	8
4976	5
4977	34
4978	12
4979	5
4980	2
4981	34
4982	8
4983	34
4984	34
4985	12
4986	9
4987	34
4988	2
4989	5
4990	7
4991	149
4992	11
4993	8
4994	2
4995	2
4996	2
4997	188
4998	8
4999	25
5000	14
5001	2
5002	16
5003	12
5004	14
5005	8
5006	56
5007	7
5008	12
5009	193
5010	38
5011	8
5012	2
5013	2
5014	7
5015	8
5016	87
5017	34
5018	188
5019	34
5020	12
5021	12
5022	8
5023	152
5024	87
5025	8
5026	2
5027	2
5028	11
5029	38
5030	194
5031	14
5032	38
5033	14
5034	6
5035	5
5036	25
5037	195
5038	5
5039	14
5040	2
5041	38
5042	8
5043	7
5044	2
5045	14
5046	16
5047	8
5048	7
5049	2
5050	150
5051	38
5052	38
5053	5
5054	8
5055	14
5056	34
5057	25
5058	38
5059	8
5060	16
5061	14
5062	2
5063	2
5064	6
5065	2
5066	34
5067	34
5068	14
5069	34
5070	38
5071	150
5072	8
5073	2
5074	8
5075	2
5076	34
5077	188
5078	2
5079	2
5080	8
5081	2
5082	2
5083	34
5084	7
5085	8
5086	2
5087	8
5088	12
5089	25
5090	5
5091	14
5092	12
5093	74
5094	38
5095	2
5096	2
5097	8
5098	7
5099	8
5100	14
5101	12
5102	2
5103	12
5104	7
5105	7
5106	34
5107	171
5108	9
5109	25
5110	7
5111	12
5112	8
5113	2
5114	34
5115	38
5116	25
5117	12
5118	8
5119	7
5120	34
5121	8
5122	16
5123	38
5124	12
5125	12
5126	5
5127	14
5128	196
5129	34
5130	7
5131	8
5132	197
5133	163
5134	8
5135	74
5136	14
5137	14
5138	2
5139	2
5140	5
5141	34
5142	2
5143	74
5144	5
5145	14
5146	198
5147	34
5148	189
5149	16
5150	199
5151	2
5152	8
5153	2
5154	5
5155	38
5156	2
5157	2
5158	74
5159	8
5160	7
5161	14
5162	8
5163	14
5164	56
5165	34
5166	8
5167	200
5168	14
5169	12
5170	8
5171	8
5172	14
5173	14
5174	14
5175	9
5176	7
5177	12
5178	34
5179	12
5180	9
5181	34
5182	34
5183	14
5184	8
5185	7
5186	8
5187	14
5188	38
5189	12
5190	2
5191	14
5192	7
5193	25
5194	2
5195	8
5196	7
5197	7
5198	8
5199	2
5200	93
5201	7
5202	2
5203	14
5204	12
5205	7
5206	2
5207	2
5208	34
5209	8
5210	7
5211	8
5212	8
5213	2
5214	8
5215	14
5216	8
5217	8
5218	2
5219	7
5220	8
5221	74
5222	8
5223	7
5224	2
5225	152
5226	12
5227	14
5228	2
5229	12
5230	25
5231	108
5232	8
5233	7
5234	7
5235	56
5236	2
5237	14
5238	14
5239	14
5240	2
5241	8
5242	8
5243	38
5244	34
5245	2
5246	8
5247	38
5248	14
5249	14
5250	14
5251	8
5252	2
5253	7
5254	71
5255	2
5256	12
5257	7
5258	2
5259	14
5260	7
5261	14
5262	7
5263	14
5264	14
5265	7
5266	8
5267	2
5268	2
5269	16
5270	7
5271	14
5272	2
5273	2
5274	8
5275	8
5276	14
5277	2
5278	8
5279	14
5280	2
5281	14
5282	150
5283	16
5284	7
5285	12
5286	7
5287	2
5288	7
5289	8
5290	8
5291	34
5292	2
5293	8
5294	14
5295	12
5296	14
5297	56
5298	25
5299	2
5300	43
5301	2
5302	14
5303	14
5304	12
5305	14
5306	14
5307	8
5308	8
5309	14
5310	2
5311	8
5312	34
5313	14
5314	14
5315	2
5316	12
5317	38
5318	14
5319	12
5320	14
5321	2
5322	7
5323	14
5324	5
5325	2
5326	8
5327	8
5328	8
5329	8
5330	34
5331	201
5332	189
5333	14
5334	34
5335	8
5336	12
5337	2
5338	2
5339	202
5340	8
5341	14
5342	2
5343	16
5344	14
5345	8
5346	38
5347	14
5348	2
5349	7
5350	2
5351	2
5352	2
5353	34
5354	14
5355	8
5356	8
5357	38
5358	8
5359	14
5360	74
5361	7
5362	2
5363	12
5364	7
5365	2
5366	14
5367	2
5368	14
5369	8
5370	14
5371	12
5372	8
5373	25
5374	71
5375	25
5376	14
5377	2
5378	8
5379	5
5380	14
5381	8
5382	7
5383	14
5384	12
5385	7
5386	2
5387	12
5388	8
5389	2
5390	8
5391	8
5392	8
5393	14
5394	14
5395	16
5396	188
5397	34
5398	2
5399	14
5400	2
5401	38
5402	14
5403	43
5404	7
5405	12
5406	8
5407	8
5408	14
5409	7
5410	34
5411	38
5412	203
5413	34
5414	71
5415	7
5416	7
5417	14
5418	2
5419	8
5420	14
5421	14
5422	14
5423	2
5424	2
5425	14
5426	74
5427	12
5428	74
5429	14
5430	8
5431	8
5432	8
5433	8
5434	2
5435	7
5436	8
5437	7
5438	14
5439	2
5440	14
5441	14
5442	150
5443	12
5444	12
5445	8
5446	14
5447	12
5448	34
5449	14
5450	7
5451	74
5452	7
5453	14
5454	8
5455	7
5456	12
5457	7
5458	14
5459	14
5460	7
5461	5
5462	38
5463	14
5464	2
5465	7
5466	71
5467	8
5468	43
5469	8
5470	8
5471	8
5472	8
5473	2
5474	5
5475	2
5476	14
5477	8
5478	14
5479	14
5480	8
5481	2
5482	8
5483	204
5484	6
5485	14
5486	2
5487	8
5488	14
5489	14
5490	14
5491	8
5492	8
5493	14
5494	8
5495	8
5496	34
5497	8
5498	14
5499	8
5500	2
5501	7
5502	2
5503	2
5504	8
5505	2
5506	8
5507	7
5508	14
5509	34
5510	8
5511	8
5512	2
5513	12
5514	2
5515	34
5516	34
5517	205
5518	8
5519	7
5520	74
5521	7
5522	8
5523	7
5524	14
5525	5
5526	14
5527	8
5528	7
5529	14
5530	14
5531	2
5532	11
5533	14
5534	7
5535	8
5536	8
5537	150
5538	7
5539	14
5540	12
5541	16
5542	2
5543	74
5544	2
5545	8
5546	12
5547	43
5548	8
5549	7
5550	2
5551	7
5552	7
5553	34
5554	14
5555	14
5556	14
5557	7
5558	8
5559	12
5560	43
5561	14
5562	2
5563	2
5564	2
5565	71
5566	8
5567	14
5568	12
5569	61
5570	8
5571	14
5572	14
5573	7
5574	14
5575	8
5576	150
5577	12
5578	7
5579	7
5580	2
5581	2
5582	7
5583	14
5584	2
5585	14
5586	34
5587	14
5588	2
5589	7
5590	14
5591	7
5592	14
5593	2
5594	7
5595	7
5596	8
5597	43
5598	7
5599	38
5600	8
5601	14
5602	34
5603	34
5604	12
5605	12
5606	7
5607	7
5608	7
5609	14
5610	14
5611	7
5612	14
5613	12
5614	2
5615	2
5616	14
5617	150
5618	12
5619	14
5620	8
5621	11
5622	2
5623	2
5624	14
5625	8
5626	7
5627	206
5628	2
5629	2
5630	7
5631	14
5632	14
5633	12
5634	14
5635	2
5636	2
5637	8
5638	75
5639	2
5640	14
5641	8
5642	12
5643	2
5644	34
5645	7
5646	8
5647	14
5648	7
5649	64
5650	12
5651	8
5652	7
5653	12
5654	14
5655	14
5656	7
5657	12
5658	12
5659	150
5660	8
5661	14
5662	8
5663	38
5664	2
5665	2
5666	2
5667	14
5668	25
5669	12
5670	8
5671	12
5672	14
5673	14
5674	8
5675	25
5676	7
5677	2
5678	2
5679	8
5680	2
5681	7
5682	14
5683	34
5684	7
5685	8
5686	12
5687	14
5688	2
5689	14
5690	5
5691	7
5692	2
5693	14
5694	8
5695	8
5696	11
5697	14
5698	14
5699	12
5700	75
5701	8
5702	14
5703	7
5704	8
5705	7
5706	8
5707	14
5708	14
5709	71
5710	14
5711	7
5712	12
5713	14
5714	14
5715	8
5716	12
5717	14
5718	61
5719	75
5720	2
5721	7
5722	2
5723	8
5724	14
5725	7
5726	7
5727	14
5728	14
5729	11
5730	14
5731	14
5732	2
5733	14
5734	12
5735	34
5736	14
5737	7
5738	7
5739	12
5740	8
5741	12
5742	8
5743	14
5744	34
5745	14
5746	8
5747	12
5748	14
5749	43
5750	8
5751	12
5752	207
5753	12
5754	14
5755	2
5756	12
5757	8
5758	7
5759	8
5760	8
5761	14
5762	14
5763	12
5764	2
5765	8
5766	8
5767	14
5768	7
5769	14
5770	14
5771	8
5772	7
5773	14
5774	14
5775	208
5776	14
5777	14
5778	14
5779	8
5780	2
5781	14
5782	14
5783	2
5784	14
5785	6
5786	12
5787	2
5788	12
5789	7
5790	12
5791	209
5792	8
5793	14
5794	12
5795	8
5796	14
5797	2
5798	8
5799	8
5800	7
5801	8
5802	14
5803	8
5804	14
5805	14
5806	14
5807	14
5808	12
5809	2
5810	14
5811	14
5812	8
5813	2
5814	7
5815	12
5816	12
5817	14
5818	7
5819	210
5820	7
5821	14
5822	7
5823	7
5824	14
5825	14
5826	8
5827	12
5828	12
5829	12
5830	14
5831	14
5832	5
5833	14
5834	2
5835	211
5836	14
5837	14
5838	14
5839	14
5840	12
5841	14
5842	8
5843	212
5844	14
5845	14
5846	8
5847	12
5848	7
5849	14
5850	14
5851	14
5852	14
5853	2
5854	14
5855	8
5856	14
5857	14
5858	74
5859	8
5860	7
5861	7
5862	7
5863	8
5864	7
5865	12
5866	7
5867	14
5868	34
5869	8
5870	14
5871	8
5872	14
5873	74
5874	7
5875	14
5876	188
5877	14
5878	8
5879	7
5880	8
5881	8
5882	8
5883	14
5884	14
5885	14
5886	14
5887	14
5888	12
5889	14
5890	14
5891	14
5892	2
5893	8
5894	14
5895	25
5896	5
5897	14
5898	7
5899	14
5900	5
5901	8
5902	7
5903	14
5904	12
5905	14
5906	8
5907	8
5908	8
5909	7
5910	2
5911	14
5912	34
5913	14
5914	14
5915	7
5916	8
5917	14
5918	8
5919	25
5920	12
5921	12
5922	7
5923	14
5924	8
5925	2
5926	12
5927	2
5928	2
5929	14
5930	7
5931	12
5932	2
5933	7
5934	14
5935	7
5936	8
5937	7
5938	8
5939	14
5940	7
5941	5
5942	14
5943	14
5944	7
5945	14
5946	2
5947	7
5948	16
5949	14
5950	34
5951	14
5952	14
5953	12
5954	14
5955	74
5956	14
5957	14
5958	7
5959	2
5960	14
5961	14
5962	12
5963	7
5964	12
5965	8
5966	8
5967	8
5968	14
5969	213
5970	8
5971	25
5972	75
5973	7
5974	14
5975	8
5976	93
5977	14
5978	2
5979	14
5980	8
5981	12
5982	7
5983	8
5984	12
5985	7
5986	7
5987	14
5988	2
5989	7
5990	14
5991	74
5992	14
5993	14
5994	7
5995	14
5996	2
5997	12
5998	8
5999	7
6000	2
6001	214
6002	34
6003	7
6004	14
6005	7
6006	93
6007	8
6008	12
6009	12
6010	14
6011	14
6012	7
6013	12
6014	2
6015	14
6016	7
6017	7
6018	14
6019	12
6020	12
6021	14
6022	5
6023	12
6024	2
6025	7
6026	12
6027	8
6028	14
6029	8
6030	7
6031	2
6032	7
6033	14
6034	215
6035	7
6036	8
6037	8
6038	7
6039	12
6040	74
6041	14
6042	7
6043	8
6044	14
6045	14
6046	8
6047	56
6048	71
6049	8
6050	8
6051	2
6052	12
6053	216
6054	2
6055	12
6056	14
6057	7
6058	7
6059	8
6060	14
6061	14
6062	2
6063	14
6064	8
6065	14
6066	8
6067	14
6068	14
6069	14
6070	8
6071	8
6072	7
6073	7
6074	14
6075	8
6076	14
6077	14
6078	14
6079	12
6080	7
6081	74
6082	7
6083	14
6084	14
6085	14
6086	5
6087	14
6088	34
6089	14
6090	14
6091	7
6092	14
6093	8
6094	14
6095	7
6096	7
6097	217
6098	7
6099	14
6100	7
6101	218
6102	34
6103	12
6104	8
6105	14
6106	7
6107	2
6108	219
6109	12
6110	14
6111	8
6112	34
6113	150
6114	2
6115	14
6116	14
6117	2
6118	14
6119	7
6120	12
6121	14
6122	12
6123	8
6124	7
6125	2
6126	8
6127	8
6128	7
6129	2
6130	220
6131	14
6132	14
6133	8
6134	2
6135	7
6136	14
6137	14
6138	14
6139	14
6140	14
6141	7
6142	8
6143	14
6144	2
6145	12
6146	8
6147	14
6148	14
6149	14
6150	8
6151	2
6152	8
6153	8
6154	14
6155	14
6156	12
6157	14
6158	14
6159	7
6160	71
6161	8
6162	8
6163	14
6164	14
6165	221
6166	14
6167	74
6168	14
6169	12
6170	8
6171	12
6172	7
6173	34
6174	8
6175	7
6176	8
6177	34
6178	8
6179	14
6180	7
6181	12
6182	7
6183	14
6184	14
6185	14
6186	7
6187	2
6188	8
6189	14
6190	12
6191	14
6192	14
6193	14
6194	14
6195	14
6196	2
6197	14
6198	14
6199	8
6200	14
6201	2
6202	12
6203	2
6204	14
6205	2
6206	7
6207	8
6208	14
6209	14
6210	7
6211	8
6212	8
6213	14
6214	14
6215	14
6216	2
6217	14
6218	14
6219	14
6220	7
6221	93
6222	14
6223	7
6224	7
6225	7
6226	2
6227	7
6228	14
6229	7
6230	8
6231	8
6232	7
6233	14
6234	8
6235	2
6236	14
6237	14
6238	8
6239	14
6240	14
6241	14
6242	8
6243	14
6244	2
6245	14
6246	14
6247	14
6248	7
6249	8
6250	14
6251	7
6252	12
6253	14
6254	14
6255	7
6256	14
6257	8
6258	14
6259	14
6260	8
6261	14
6262	14
6263	14
6264	14
6265	7
6266	8
6267	7
6268	14
6269	8
6270	7
6271	14
6272	8
6273	12
6274	14
6275	14
6276	8
6277	14
6278	14
6279	7
6280	7
6281	14
6282	14
6283	2
6284	8
6285	14
6286	14
6287	14
6288	8
6289	14
6290	14
6291	222
6292	7
6293	7
6294	14
6295	223
6296	14
6297	8
6298	8
6299	8
6300	14
6301	14
6302	14
6303	14
6304	14
6305	14
6306	2
6307	8
6308	93
6309	8
6310	14
6311	8
6312	32
6313	7
6314	7
6315	14
6316	14
6317	8
6318	8
6319	8
6320	2
6321	224
6322	8
6323	14
6324	150
6325	8
6326	14
6327	8
6328	8
6329	14
6330	8
6331	7
6332	14
6333	7
6334	7
6335	8
6336	2
6337	14
6338	2
6339	14
6340	12
6341	2
6342	7
6343	7
6344	71
6345	14
6346	12
6347	14
6348	14
6349	14
6350	14
6351	14
6352	7
6353	14
6354	14
6355	14
6356	25
6357	225
6358	14
6359	14
6360	14
6361	2
6362	8
6363	14
6364	14
6365	11
6366	14
6367	12
6368	2
6369	14
6370	14
6371	7
6372	12
6373	7
6374	7
6375	8
6376	14
6377	34
6378	34
6379	8
6380	8
6381	8
6382	14
6383	11
6384	14
6385	14
6386	8
6387	8
6388	7
6389	12
6390	14
6391	2
6392	8
6393	12
6394	8
6395	2
6396	12
6397	8
6398	8
6399	14
6400	7
6401	226
6402	12
6403	8
6404	7
6405	14
6406	14
6407	12
6408	8
6409	7
6410	12
6411	12
6412	12
6413	14
6414	8
6415	8
6416	8
6417	14
6418	14
6419	150
6420	14
6421	2
6422	8
6423	8
6424	14
6425	14
6426	14
6427	14
6428	14
6429	7
6430	7
6431	8
6432	14
6433	8
6434	7
6435	12
6436	14
6437	14
6438	14
6439	2
6440	14
6441	8
6442	2
6443	5
6444	14
6445	8
6446	14
6447	7
6448	14
6449	12
6450	14
6451	14
6452	7
6453	14
6454	38
6455	14
6456	7
6457	8
6458	2
6459	7
6460	8
6461	7
6462	14
6463	8
6464	8
6465	8
6466	8
6467	14
6468	14
6469	2
6470	14
6471	8
6472	2
6473	8
6474	12
6475	14
6476	7
6477	14
6478	8
6479	14
6480	12
6481	12
6482	8
6483	7
6484	8
6485	14
6486	2
6487	14
6488	8
6489	8
6490	7
6491	14
6492	14
6493	8
6494	7
6495	12
6496	2
6497	14
6498	14
6499	2
6500	8
6501	2
6502	14
6503	7
6504	14
6505	7
6506	14
6507	8
6508	14
6509	8
6510	2
6511	14
6512	8
6513	14
6514	14
6515	7
6516	14
6517	7
6518	14
6519	14
6520	14
6521	7
6522	2
6523	8
6524	7
6525	14
6526	14
6527	14
6528	2
6529	2
6530	7
6531	14
6532	14
6533	7
6534	7
6535	2
6536	14
6537	14
6538	12
6539	8
6540	7
6541	14
6542	14
6543	14
6544	14
6545	14
6546	7
6547	14
6548	14
6549	14
6550	2
6551	34
6552	14
6553	14
6554	2
6555	14
6556	14
6557	14
6558	2
6559	12
6560	7
6561	14
6562	7
6563	14
6564	14
6565	2
6566	7
6567	14
6568	12
6569	7
6570	8
6571	14
6572	34
6573	14
6574	14
6575	8
6576	14
6577	12
6578	8
6579	14
6580	14
6581	12
6582	14
6583	14
6584	14
6585	2
6586	12
6587	2
6588	7
6589	8
6590	2
6591	14
6592	14
6593	8
6594	14
6595	14
6596	12
6597	14
6598	8
6599	14
6600	7
6601	12
6602	14
6603	8
6604	8
6605	7
6606	14
6607	14
6608	7
6609	7
6610	12
6611	14
6612	14
6613	7
6614	7
6615	14
6616	14
6617	2
6618	12
6619	14
6620	14
6621	14
6622	12
6623	2
6624	8
6625	8
6626	14
6627	14
6628	8
6629	14
6630	12
6631	14
6632	14
6633	14
6634	8
6635	8
6636	7
6637	7
6638	14
6639	14
6640	14
6641	8
6642	14
6643	8
6644	14
6645	14
6646	14
6647	7
6648	8
6649	14
6650	8
6651	8
6652	7
6653	14
6654	7
6655	8
6656	14
6657	7
6658	14
6659	2
6660	14
6661	8
6662	14
6663	14
6664	14
6665	14
6666	14
6667	8
6668	14
6669	8
6670	14
6671	7
6672	8
6673	2
6674	14
6675	14
6676	14
6677	7
6678	8
6679	14
6680	14
6681	14
6682	34
6683	12
6684	14
6685	8
6686	14
6687	14
6688	14
6689	7
6690	7
6691	14
6692	14
6693	8
6694	12
6695	12
6696	12
6697	93
6698	2
6699	7
6700	14
6701	14
6702	14
6703	14
6704	14
6705	14
6706	43
6707	7
6708	14
6709	14
6710	8
6711	14
6712	7
6713	14
6714	8
6715	12
6716	14
6717	8
6718	8
6719	7
6720	14
6721	150
6722	14
6723	14
6724	12
6725	8
6726	14
6727	14
6728	14
6729	14
6730	7
6731	8
6732	14
6733	12
6734	14
6735	7
6736	14
6737	7
6738	14
6739	7
6740	8
6741	14
6742	14
6743	14
6744	8
6745	14
6746	7
6747	14
6748	14
6749	8
6750	14
6751	14
6752	7
6753	14
6754	14
6755	12
6756	227
6757	8
6758	2
6759	8
6760	14
6761	8
6762	14
6763	12
6764	14
6765	14
6766	14
6767	14
6768	8
6769	14
6770	8
6771	14
6772	14
6773	14
6774	2
6775	14
6776	2
6777	14
6778	5
6779	34
6780	12
6781	14
6782	14
6783	14
6784	14
6785	14
6786	14
6787	14
6788	14
6789	7
6790	7
6791	14
6792	14
6793	7
6794	7
6795	7
6796	14
6797	14
6798	8
6799	228
6800	8
6801	14
6802	8
6803	8
6804	14
6805	14
6806	14
6807	7
6808	12
6809	14
6810	8
6811	14
6812	8
6813	2
6814	14
6815	14
6816	14
6817	14
6818	14
6819	14
6820	8
6821	14
6822	14
6823	14
6824	7
6825	14
6826	14
6827	8
6828	14
6829	7
6830	76
6831	7
6832	2
6833	14
6834	8
6835	8
6836	8
6837	12
6838	7
6839	8
6840	14
6841	7
6842	14
6843	14
6844	8
6845	2
6846	14
6847	14
6848	8
6849	8
6850	14
6851	14
6852	8
6853	14
6854	14
6855	14
6856	8
6857	14
6858	14
6859	14
6860	8
6861	2
6862	8
6863	14
6864	14
6865	14
6866	12
6867	7
6868	14
6869	14
6870	14
6871	8
6872	14
6873	7
6874	14
6875	7
6876	8
6877	8
6878	14
6879	14
6880	12
6881	14
6882	7
6883	12
6884	2
6885	7
6886	12
6887	7
6888	7
6889	12
6890	2
6891	14
6892	14
6893	14
6894	14
6895	2
6896	12
6897	12
6898	14
6899	7
6900	2
6901	2
6902	8
6903	7
6904	14
6905	12
6906	14
6907	14
6908	14
6909	8
6910	14
6911	8
6912	7
6913	14
6914	14
6915	14
6916	7
6917	2
6918	8
6919	14
6920	2
6921	14
6922	14
6923	14
6924	14
6925	7
6926	2
6927	14
6928	2
6929	14
6930	14
6931	14
6932	7
6933	14
6934	12
6935	7
6936	2
6937	12
6938	8
6939	7
6940	14
6941	14
6942	7
6943	2
6944	14
6945	8
6946	12
6947	12
6948	14
6949	12
6950	8
6951	14
6952	12
6953	14
6954	14
6955	14
6956	14
6957	7
6958	14
6959	14
6960	2
6961	14
6962	14
6963	8
6964	8
6965	14
6966	14
6967	14
6968	8
6969	7
6970	14
6971	12
6972	14
6973	8
6974	14
6975	8
6976	8
6977	12
6978	14
6979	14
6980	8
6981	14
6982	14
6983	2
6984	12
6985	14
6986	14
6987	14
6988	14
6989	14
6990	14
6991	2
6992	14
6993	14
6994	14
6995	8
6996	14
6997	14
6998	8
6999	14
7000	8
7001	2
7002	2
7003	14
7004	7
7005	2
7006	7
7007	8
7008	14
7009	7
7010	7
7011	14
7012	7
7013	14
7014	14
7015	7
7016	7
7017	14
7018	14
7019	2
7020	14
7021	14
7022	7
7023	12
7024	14
7025	12
7026	12
7027	2
7028	7
7029	14
7030	14
7031	7
7032	14
7033	8
7034	8
7035	7
7036	14
7037	14
7038	12
7039	14
7040	14
7041	7
7042	14
7043	14
7044	7
7045	2
7046	8
7047	14
7048	14
7049	12
7050	14
7051	14
7052	12
7053	14
7054	8
7055	14
7056	14
7057	12
7058	7
7059	14
7060	7
7061	8
7062	8
7063	12
7064	34
7065	14
7066	12
7067	8
7068	14
7069	12
7070	14
7071	14
7072	14
7073	14
7074	7
7075	14
7076	14
7077	14
7078	7
7079	7
7080	8
7081	8
7082	7
7083	14
7084	8
7085	14
7086	14
7087	14
7088	14
7089	7
7090	14
7091	14
7092	14
7093	12
7094	12
7095	7
7096	8
7097	14
7098	14
7099	14
7100	14
7101	14
7102	2
7103	14
7104	14
7105	2
7106	14
7107	14
7108	8
7109	14
7110	12
7111	7
7112	7
7113	14
7114	14
7115	14
7116	14
7117	7
7118	12
7119	7
7120	12
7121	14
7122	14
7123	14
7124	8
7125	8
7126	7
7127	14
7128	8
7129	14
7130	12
7131	14
7132	7
7133	14
7134	12
7135	7
7136	12
7137	14
7138	14
7139	7
7140	14
7141	14
7142	8
7143	8
7144	14
7145	8
7146	14
7147	2
7148	8
7149	14
7150	14
7151	14
7152	12
7153	14
7154	8
7155	14
7156	14
7157	8
7158	14
7159	7
7160	12
7161	7
7162	14
7163	8
7164	14
7165	12
7166	14
7167	14
7168	8
7169	14
7170	14
7171	14
7172	7
7173	150
7174	14
7175	14
7176	14
7177	14
7178	14
7179	14
7180	14
7181	14
7182	14
7183	14
7184	12
7185	14
7186	14
7187	7
7188	14
7189	14
7190	14
7191	14
7192	14
7193	7
7194	14
7195	2
7196	7
7197	7
7198	14
7199	14
7200	14
7201	7
7202	7
7203	14
7204	8
7205	2
7206	14
7207	12
7208	12
7209	8
7210	2
7211	14
7212	14
7213	7
7214	14
7215	14
7216	14
7217	8
7218	7
7219	8
7220	7
7221	14
7222	8
7223	12
7224	8
7225	14
7226	12
7227	14
7228	14
7229	7
7230	8
7231	14
7232	14
7233	14
7234	14
7235	14
7236	8
7237	8
7238	2
7239	14
7240	12
7241	14
7242	14
7243	14
7244	14
7245	14
7246	7
7247	14
7248	14
7249	14
7250	14
7251	14
7252	14
7253	7
7254	14
7255	14
7256	14
7257	14
7258	14
7259	12
7260	14
7261	7
7262	14
7263	12
7264	7
7265	14
7266	14
7267	14
7268	8
7269	14
7270	14
7271	14
7272	14
7273	14
7274	8
7275	14
7276	8
7277	14
7278	7
7279	7
7280	14
7281	14
7282	8
7283	14
7284	14
7285	8
7286	14
7287	93
7288	14
7289	12
7290	8
7291	2
7292	8
7293	14
7294	8
7295	7
7296	14
7297	14
7298	8
7299	8
7300	14
7301	14
7302	2
7303	14
7304	14
7305	7
7306	14
7307	14
7308	7
7309	12
7310	7
7311	7
7312	12
7313	14
7314	14
7315	2
7316	7
7317	7
7318	14
7319	7
7320	14
7321	14
7322	14
7323	7
7324	8
7325	14
7326	14
7327	14
7328	7
7329	7
7330	14
7331	8
7332	14
7333	14
7334	14
7335	12
7336	14
7337	14
7338	14
7339	14
7340	8
7341	2
7342	226
7343	14
7344	14
7345	14
7346	14
7347	14
7348	14
7349	14
7350	14
7351	7
7352	14
7353	2
7354	14
7355	14
7356	14
7357	14
7358	8
7359	14
7360	14
7361	14
7362	14
7363	2
7364	14
7365	2
7366	7
7367	2
7368	14
7369	14
7370	14
7371	14
7372	14
7373	14
7374	12
7375	7
7376	14
7377	12
7378	8
7379	14
7380	14
7381	14
7382	14
7383	7
7384	8
7385	14
7386	14
7387	7
7388	14
7389	14
7390	14
7391	8
7392	14
7393	14
7394	14
7395	14
7396	2
7397	14
7398	14
7399	7
7400	7
7401	14
7402	2
7403	2
7404	14
7405	14
7406	7
7407	14
7408	14
7409	14
7410	14
7411	14
7412	14
7413	14
7414	14
7415	7
7416	14
7417	2
7418	14
7419	8
7420	14
7421	14
7422	8
7423	93
7424	8
7425	12
7426	14
7427	8
7428	8
7429	8
7430	14
7431	8
7432	7
7433	14
7434	14
7435	14
7436	7
7437	12
7438	14
7439	7
7440	8
7441	14
7442	14
7443	7
7444	7
7445	14
7446	14
7447	7
7448	7
7449	12
7450	7
7451	8
7452	7
7453	7
7454	14
7455	7
7456	14
7457	7
7458	8
7459	8
7460	14
7461	14
7462	14
7463	14
7464	14
7465	12
7466	12
7467	14
7468	8
7469	14
7470	14
7471	8
7472	14
7473	14
7474	14
7475	14
7476	12
7477	12
7478	7
7479	8
7480	7
7481	14
7482	14
7483	14
7484	14
7485	14
7486	14
7487	7
7488	14
7489	14
7490	2
7491	12
7492	2
7493	8
7494	7
7495	14
7496	14
7497	14
7498	14
7499	7
7500	14
7501	8
7502	14
7503	14
7504	14
7505	12
7506	2
7507	8
7508	14
7509	7
7510	8
7511	14
7512	14
7513	14
7514	14
7515	14
7516	14
7517	14
7518	12
7519	14
7520	2
7521	14
7522	14
7523	7
7524	12
7525	14
7526	7
7527	14
7528	8
7529	12
7530	14
7531	14
7532	7
7533	12
7534	14
7535	14
7536	14
7537	14
7538	14
7539	14
7540	7
7541	14
7542	12
7543	14
7544	14
7545	14
7546	14
7547	7
7548	8
7549	8
7550	7
7551	12
7552	14
7553	14
7554	8
7555	14
7556	14
7557	14
7558	8
7559	12
7560	14
7561	14
7562	14
7563	7
7564	14
7565	2
7566	14
7567	14
7568	14
7569	8
7570	14
7571	12
7572	14
7573	8
7574	14
7575	7
7576	14
7577	7
7578	14
7579	2
7580	14
7581	14
7582	14
7583	14
7584	14
7585	7
7586	2
7587	14
7588	14
7589	14
7590	8
7591	14
7592	14
7593	8
7594	14
7595	14
7596	14
7597	14
7598	14
7599	14
7600	14
7601	12
7602	12
7603	14
7604	14
7605	14
7606	8
7607	14
7608	14
7609	7
7610	14
7611	14
7612	14
7613	14
7614	7
7615	14
7616	7
7617	14
7618	8
7619	14
7620	14
7621	14
7622	14
7623	14
7624	14
7625	14
7626	7
7627	14
7628	14
7629	12
7630	14
7631	14
7632	14
7633	14
7634	8
7635	14
7636	14
7637	14
7638	14
7639	14
7640	14
7641	14
7642	14
7643	14
7644	14
7645	14
7646	14
7647	14
7648	14
7649	7
7650	14
7651	14
7652	14
7653	14
7654	7
7655	8
7656	2
7657	14
7658	14
7659	14
7660	8
7661	14
7662	14
7663	14
7664	8
7665	14
7666	14
7667	14
7668	14
7669	14
7670	7
7671	12
7672	12
7673	12
7674	14
7675	14
7676	14
7677	14
7678	14
7679	14
7680	7
7681	14
7682	14
7683	14
7684	8
7685	14
7686	7
7687	14
7688	12
7689	14
7690	14
7691	14
7692	14
7693	14
7694	14
7695	14
7696	7
7697	14
7698	14
7699	8
7700	14
7701	14
7702	14
7703	7
7704	14
7705	14
7706	12
7707	14
7708	14
7709	14
7710	7
7711	14
7712	12
7713	14
7714	8
7715	14
7716	14
7717	14
7718	2
7719	14
7720	12
7721	14
7722	14
7723	8
7724	14
7725	8
7726	14
7727	14
7728	2
7729	14
7730	7
7731	14
7732	14
7733	14
7734	14
7735	14
7736	14
7737	14
7738	14
7739	12
7740	7
7741	7
7742	14
7743	8
7744	12
7745	14
7746	14
7747	14
7748	7
7749	12
7750	14
7751	8
7752	14
7753	14
7754	14
7755	14
7756	14
7757	14
7758	12
7759	14
7760	14
7761	14
7762	14
7763	14
7764	14
7765	7
7766	8
7767	14
7768	14
7769	7
7770	8
7771	14
7772	14
7773	14
7774	14
7775	8
7776	12
7777	8
7778	14
7779	14
7780	14
7781	14
7782	14
7783	12
7784	14
7785	7
7786	14
7787	2
7788	14
7789	14
7790	14
7791	2
7792	14
7793	14
7794	14
7795	8
7796	14
7797	14
7798	8
7799	7
7800	14
7801	7
7802	14
7803	8
7804	7
7805	8
7806	14
7807	14
7808	12
7809	14
7810	14
7811	14
7812	7
7813	14
7814	14
7815	14
7816	8
7817	14
7818	12
7819	14
7820	14
7821	14
7822	7
7823	14
7824	14
7825	14
7826	8
7827	14
7828	14
7829	14
7830	14
7831	7
7832	14
7833	14
7834	14
7835	14
7836	7
7837	2
7838	14
7839	12
7840	14
7841	14
7842	14
7843	14
7844	14
7845	14
7846	7
7847	7
7848	7
7849	2
7850	12
7851	14
7852	14
7853	12
7854	14
7855	14
7856	14
7857	14
7858	14
7859	12
7860	12
7861	14
7862	12
7863	14
7864	14
7865	14
7866	14
7867	8
7868	14
7869	14
7870	7
7871	14
7872	12
7873	7
7874	14
7875	14
7876	7
7877	14
7878	14
7879	14
7880	14
7881	14
7882	7
7883	14
7884	14
7885	7
7886	14
7887	8
7888	14
7889	14
7890	14
7891	2
7892	14
7893	8
7894	14
7895	14
7896	7
7897	14
7898	8
7899	8
7900	14
7901	7
7902	14
7903	14
7904	14
7905	12
7906	7
7907	12
7908	14
7909	14
7910	14
7911	7
7912	14
7913	14
7914	14
7915	14
7916	14
7917	14
7918	14
7919	14
7920	12
7921	7
7922	14
7923	14
7924	7
7925	14
7926	14
7927	14
7928	14
7929	14
7930	7
7931	14
7932	14
7933	8
7934	14
7935	14
7936	14
7937	14
7938	14
7939	14
7940	14
7941	14
7942	14
7943	14
7944	14
7945	14
7946	14
7947	7
7948	14
7949	14
7950	14
7951	14
7952	14
7953	14
7954	14
7955	14
7956	14
7957	14
7958	14
7959	14
7960	8
7961	14
7962	8
7963	7
7964	14
7965	14
7966	7
7967	2
7968	14
7969	8
7970	14
7971	14
7972	14
7973	14
7974	14
7975	14
7976	14
7977	14
7978	14
7979	8
7980	12
7981	14
7982	14
7983	7
7984	12
7985	14
7986	14
7987	7
7988	14
7989	14
7990	14
7991	12
7992	12
7993	14
7994	7
7995	14
7996	14
7997	14
7998	14
7999	14
8000	14
8001	14
8002	14
8003	14
8004	12
8005	14
8006	14
8007	14
8008	14
8009	12
8010	14
8011	14
8012	7
8013	7
8014	14
8015	14
8016	7
8017	14
8018	14
8019	14
8020	14
8021	14
8022	8
8023	14
8024	14
8025	14
8026	14
8027	7
8028	14
8029	14
8030	14
8031	14
8032	14
8033	14
8034	7
8035	14
8036	14
8037	14
8038	14
8039	14
8040	14
8041	14
8042	14
8043	7
8044	7
8045	2
8046	14
8047	14
8048	8
8049	14
8050	8
8051	14
8052	14
8053	12
8054	14
8055	14
8056	14
8057	14
8058	14
8059	14
8060	14
8061	8
8062	7
8063	14
8064	14
8065	14
8066	8
8067	8
8068	14
8069	14
8070	14
8071	12
8072	14
8073	14
8074	14
8075	14
8076	7
8077	14
8078	7
8079	14
8080	14
8081	14
8082	14
8083	14
8084	14
8085	14
8086	14
8087	14
8088	14
8089	14
8090	7
8091	12
8092	12
8093	7
8094	14
8095	14
8096	7
8097	14
8098	14
8099	14
8100	14
8101	14
8102	14
8103	14
8104	14
8105	14
8106	14
8107	14
8108	14
8109	14
8110	14
8111	14
8112	14
8113	8
8114	14
8115	14
8116	14
8117	14
8118	14
8119	14
8120	12
8121	14
8122	14
8123	14
8124	14
8125	14
8126	14
8127	14
8128	14
8129	14
8130	14
8131	12
8132	14
8133	14
8134	12
8135	14
8136	12
8137	14
8138	14
8139	14
8140	14
8141	7
8142	14
8143	14
8144	14
8145	14
8146	14
8147	14
8148	14
8149	14
8150	14
8151	14
8152	14
8153	14
8154	14
8155	14
8156	14
8157	14
8158	14
8159	14
8160	14
8161	14
8162	14
8163	12
8164	14
8165	14
8166	14
8167	14
8168	2
8169	14
8170	14
8171	14
8172	7
8173	14
8174	14
8175	14
8176	14
8177	14
8178	14
8179	14
8180	14
8181	7
8182	14
8183	14
8184	14
8185	14
8186	14
8187	14
8188	8
8189	12
8190	14
8191	14
8192	14
8193	14
8194	14
8195	14
8196	14
8197	14
8198	14
8199	14
8200	14
8201	8
8202	14
8203	14
8204	14
8205	12
8206	14
8207	7
8208	14
8209	14
8210	12
8211	14
8212	14
8213	14
8214	14
8215	14
8216	14
8217	14
8218	14
8219	14
8220	14
8221	14
8222	14
8223	14
8224	12
8225	14
8226	14
8227	12
8228	14
8229	14
8230	14
8231	14
8232	14
8233	14
8234	14
8235	14
8236	14
8237	14
8238	14
8239	14
8240	14
8241	12
8242	14
8243	14
8244	14
8245	14
8246	14
8247	14
8248	12
8249	14
8250	14
8251	14
8252	14
8253	14
8254	14
8255	14
8256	14
8257	14
8258	14
8259	14
8260	14
8261	14
8262	7
8263	14
8264	14
8265	8
8266	7
8267	14
8268	14
8269	7
8270	2
8271	12
8272	14
8273	14
8274	14
8275	14
8276	14
8277	14
8278	14
8279	14
8280	14
8281	14
8282	14
8283	14
8284	14
8285	14
8286	14
8287	14
8288	14
8289	14
8290	12
8291	14
8292	7
8293	14
8294	14
8295	7
8296	12
8297	14
8298	14
8299	14
8300	14
8301	14
8302	14
8303	14
8304	14
8305	14
8306	14
8307	14
8308	14
8309	12
8310	14
8311	14
8312	14
8313	14
8314	14
8315	14
8316	14
8317	8
8318	14
8319	14
8320	14
8321	14
8322	14
8323	14
8324	14
8325	14
8326	12
8327	14
8328	14
8329	14
8330	14
8331	14
8332	14
8333	14
8334	14
8335	14
8336	14
8337	14
8338	12
8339	14
8340	14
8341	12
8342	14
8343	14
8344	14
8345	7
8346	14
8347	7
8348	14
8349	7
8350	14
8351	14
8352	14
8353	14
8354	14
8355	14
8356	14
8357	14
8358	14
8359	14
8360	12
8361	14
8362	14
8363	14
8364	14
8365	14
8366	14
8367	14
8368	14
8369	14
8370	2
8371	14
8372	14
8373	14
8374	14
8375	14
8376	14
8377	14
8378	12
8379	14
8380	14
8381	14
8382	12
8383	14
8384	14
8385	14
8386	14
8387	14
8388	12
8389	14
8390	14
8391	14
8392	14
8393	14
8394	14
8395	14
8396	14
8397	14
8398	14
8399	14
8400	14
8401	14
8402	14
8403	14
8404	14
8405	14
8406	14
8407	7
8408	7
8409	14
8410	14
8411	14
8412	14
8413	14
8414	14
8415	14
8416	14
8417	14
8418	229
8419	7
8420	14
8421	14
8422	14
8423	14
8424	14
8425	7
8426	14
8427	14
8428	14
8429	14
8430	14
8431	14
8432	14
8433	14
8434	7
8435	14
8436	14
8437	14
8438	14
8439	14
8440	14
8441	14
8442	14
8443	14
8444	14
8445	14
8446	14
8447	14
8448	14
8449	14
8450	14
8451	14
8452	14
8453	7
8454	14
8455	14
8456	14
8457	14
8458	14
8459	14
8460	14
8461	14
8462	14
8463	14
8464	14
8465	14
8466	14
8467	14
8468	14
8469	14
8470	14
8471	14
8472	14
8473	14
8474	7
8475	14
8476	14
8477	7
8478	14
8479	14
8480	14
8481	14
8482	14
8483	14
8484	14
8485	14
8486	14
8487	14
8488	14
8489	14
8490	14
8491	14
8492	14
8493	8
8494	7
8495	14
8496	14
8497	14
8498	14
8499	14
8500	14
8501	14
8502	14
8503	14
8504	14
8505	14
8506	12
8507	14
8508	14
8509	14
8510	14
8511	14
8512	14
8513	14
8514	14
8515	14
8516	7
8517	14
8518	8
8519	14
8520	14
8521	14
8522	14
8523	12
8524	14
8525	14
8526	14
8527	14
8528	14
8529	14
8530	14
8531	14
8532	14
8533	14
8534	14
8535	14
8536	14
8537	14
8538	14
8539	14
8540	8
8541	14
8542	14
8543	8
8544	14
8545	14
8546	14
8547	14
8548	14
8549	14
8550	14
8551	14
8552	14
8553	14
8554	14
8555	14
8556	14
8557	14
8558	14
8559	14
8560	7
8561	14
8562	14
8563	7
8564	14
8565	14
8566	14
8567	14
8568	14
8569	14
8570	14
8571	14
8572	14
8573	14
8574	14
8575	14
8576	14
8577	14
8578	14
8579	14
8580	14
8581	14
8582	7
8583	14
8584	14
8585	14
8586	14
8587	14
8588	14
8589	12
8590	14
8591	14
8592	14
8593	14
8594	7
8595	14
8596	14
8597	14
8598	14
8599	14
8600	14
8601	14
8602	14
8603	14
8604	14
8605	14
8606	12
8607	14
8608	14
8609	14
8610	14
8611	14
8612	14
8613	14
8614	14
8615	7
8616	14
8617	14
8618	14
8619	14
8620	14
8621	14
8622	14
8623	14
8624	14
8625	7
8626	14
8627	14
8628	14
8629	14
8630	14
8631	14
8632	14
8633	14
8634	14
8635	14
8636	8
8637	14
8638	14
8639	14
8640	14
8641	14
8642	7
8643	14
8644	14
8645	14
8646	14
8647	14
8648	14
8649	14
8650	14
8651	14
8652	14
8653	14
8654	14
8655	14
8656	14
8657	14
8658	14
8659	14
8660	14
8661	14
8662	14
8663	14
8664	14
8665	14
8666	14
8667	14
8668	14
8669	14
8670	14
8671	14
8672	14
8673	14
8674	14
8675	14
8676	14
8677	7
8678	14
8679	14
8680	14
8681	14
8682	14
8683	14
8684	14
8685	14
8686	14
8687	14
8688	14
8689	14
8690	7
8691	14
8692	14
8693	14
8694	14
8695	14
8696	14
8697	14
8698	12
8699	14
8700	12
8701	14
8702	14
8703	14
8704	14
8705	14
8706	14
8707	14
8708	14
8709	14
8710	14
8711	12
8712	14
8713	14
8714	14
8715	14
8716	14
8717	14
8718	14
8719	14
8720	14
8721	14
8722	14
8723	14
8724	14
8725	14
8726	14
8727	14
8728	14
8729	14
8730	14
8731	14
8732	7
8733	12
8734	14
8735	14
8736	14
8737	12
8738	14
8739	14
8740	14
8741	14
8742	14
8743	14
8744	14
8745	8
8746	14
8747	12
8748	14
8749	14
8750	14
8751	14
8752	14
8753	14
8754	14
8755	14
8756	14
8757	14
8758	14
8759	14
8760	14
8761	14
8762	14
8763	14
8764	14
8765	14
8766	14
8767	14
8768	14
8769	14
8770	14
8771	14
8772	14
8773	14
8774	14
8775	14
8776	14
8777	14
8778	14
8779	14
8780	14
8781	14
8782	14
8783	14
8784	14
8785	14
8786	14
8787	14
8788	14
8789	14
8790	14
8791	14
8792	14
8793	14
8794	14
8795	14
8796	14
8797	14
8798	14
8799	14
8800	14
8801	14
8802	14
8803	14
8804	14
8805	8
8806	14
8807	14
8808	14
8809	14
8810	14
8811	14
8812	14
8813	14
8814	14
8815	14
8816	14
8817	14
8818	14
8819	14
8820	14
8821	14
8822	14
8823	14
8824	14
8825	14
8826	14
8827	14
8828	14
8829	14
8830	14
8831	14
8832	14
8833	14
8834	14
8835	14
8836	14
8837	14
8838	14
8839	14
8840	14
8841	8
8842	14
8843	14
8844	14
8845	14
8846	14
8847	14
8848	14
8849	14
8850	14
8851	8
8852	14
8853	14
8854	14
8855	14
8856	14
\.


--
-- Data for Name: animals_countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.animals_countries (animal_id, country_id) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	7
10	9
11	10
12	11
13	7
14	12
15	13
16	14
17	15
18	16
19	17
20	18
21	19
22	7
23	20
24	21
25	22
26	23
27	20
28	24
29	25
30	26
31	27
32	28
33	29
34	30
35	31
36	32
37	33
38	34
39	35
40	7
41	21
42	36
43	37
44	38
45	20
46	39
47	26
48	40
49	41
50	42
51	43
52	44
53	16
54	45
55	46
56	47
57	48
58	49
59	48
60	50
61	51
62	52
63	53
64	54
65	55
66	56
67	57
68	58
69	16
70	59
71	48
72	60
73	61
74	62
75	63
76	20
77	64
78	65
79	66
80	67
81	68
82	20
83	45
84	69
85	70
86	26
87	71
88	72
89	73
90	74
91	75
92	76
93	77
94	20
95	20
96	78
97	79
98	26
99	20
100	80
101	26
102	81
103	82
104	20
105	83
106	84
107	85
108	86
109	87
110	88
111	89
112	90
113	91
114	92
115	73
116	7
117	93
118	20
119	94
120	95
121	96
122	20
123	97
124	98
125	54
126	99
127	100
128	7
129	101
130	102
131	103
132	104
133	105
134	106
135	107
136	108
137	45
138	109
139	26
140	110
141	5
142	111
143	112
144	113
145	114
146	115
147	116
148	20
149	117
150	118
151	119
152	120
153	121
154	122
155	31
156	123
157	124
158	125
159	126
160	127
161	128
162	7
163	129
164	130
165	131
166	132
167	106
168	133
169	134
170	135
171	136
172	137
173	138
174	139
175	5
176	140
177	141
178	142
179	143
180	144
181	145
182	20
183	146
184	147
185	148
186	73
187	149
188	150
189	151
190	116
191	26
192	152
193	56
194	124
195	153
196	154
197	155
198	26
199	106
200	156
201	157
202	158
203	159
204	160
205	161
206	162
207	163
208	7
209	7
210	164
211	165
212	166
213	141
214	57
215	167
216	168
217	48
218	169
219	170
220	171
221	172
222	173
223	174
224	175
225	56
226	176
227	177
228	33
229	178
230	20
231	179
232	180
233	181
234	182
235	183
236	31
237	184
238	110
239	185
240	186
241	7
242	187
243	188
244	189
245	190
246	191
247	192
248	193
249	194
250	195
251	196
252	197
253	198
254	199
255	200
256	201
257	202
258	203
259	204
260	205
261	206
262	110
263	207
264	208
265	209
266	20
267	31
268	210
269	211
270	212
271	20
272	20
273	110
274	213
275	214
276	215
277	216
278	217
279	7
280	218
281	219
282	26
283	31
284	220
285	221
286	222
287	45
288	223
289	224
290	225
291	226
292	227
293	228
294	109
295	229
296	190
297	31
298	230
299	100
300	231
301	20
302	232
303	101
304	233
305	234
306	235
307	236
308	237
309	238
310	239
311	7
312	237
313	240
314	26
315	241
316	242
317	243
318	20
319	244
320	245
321	246
322	247
323	248
324	219
325	20
326	249
327	250
328	251
329	33
330	7
331	252
332	253
333	254
334	255
335	20
336	217
337	256
338	20
339	7
340	257
341	258
342	259
343	260
344	261
345	262
346	174
347	263
348	141
349	264
350	141
351	265
352	266
353	7
354	267
355	268
356	269
357	32
358	26
359	270
360	271
361	106
362	272
363	16
364	5
365	60
366	7
367	100
368	273
369	219
370	31
371	274
372	275
373	45
374	276
375	195
376	277
377	278
378	279
379	280
380	281
381	282
382	56
383	283
384	284
385	185
386	285
387	286
388	287
389	47
390	45
391	64
392	190
393	288
394	48
395	26
396	289
397	290
398	9
399	291
400	16
401	292
402	293
403	294
404	7
405	295
406	296
407	297
408	110
409	298
410	299
411	56
412	255
413	141
414	300
415	301
416	7
417	302
418	303
419	304
420	305
421	306
422	45
423	143
424	7
425	307
426	308
427	7
428	5
429	73
430	106
431	309
432	20
433	73
434	310
435	27
436	26
437	311
438	312
439	313
440	20
441	47
442	259
443	314
444	315
445	315
446	316
447	288
448	174
449	116
450	317
451	7
452	318
453	319
454	320
455	321
456	322
457	232
458	323
459	45
460	324
461	325
462	326
463	20
464	327
465	47
466	328
467	7
468	316
469	16
470	26
471	110
472	5
473	329
474	330
475	331
476	20
477	130
478	7
479	332
480	333
481	334
482	335
483	336
484	56
485	7
486	337
487	338
488	63
489	339
490	340
491	26
492	7
493	45
494	341
495	7
496	7
497	342
498	56
499	343
500	344
501	174
502	73
503	33
504	33
505	141
506	345
507	45
508	105
509	243
510	346
511	330
512	100
513	7
514	347
515	348
516	349
517	45
518	192
519	350
520	351
521	20
522	141
523	352
524	153
525	353
526	7
527	63
528	185
529	340
530	354
531	228
532	294
533	141
534	171
535	100
536	355
537	356
538	57
539	357
540	7
541	358
542	359
543	20
544	20
545	360
546	361
547	327
548	362
549	363
550	364
551	365
552	366
553	7
554	106
555	106
556	367
557	368
558	45
559	369
560	370
561	7
562	371
563	174
564	372
565	371
566	373
567	110
568	7
569	54
570	374
571	369
572	110
573	141
574	45
575	56
576	7
577	375
578	106
579	376
580	174
581	377
582	378
583	45
584	379
585	7
586	380
587	381
588	110
589	382
590	383
591	384
592	7
593	7
594	385
595	5
596	100
597	386
598	387
599	388
600	316
601	389
602	251
603	390
604	251
605	391
606	392
607	393
608	394
609	199
610	110
611	16
612	395
613	20
614	383
615	110
616	261
617	242
618	317
619	396
620	248
621	109
622	360
623	106
624	397
625	398
626	73
627	399
628	141
629	400
630	379
631	141
632	7
633	401
634	402
635	403
636	7
637	404
638	230
639	405
640	406
641	407
642	156
643	106
644	408
645	409
646	410
647	411
648	45
649	412
650	413
651	45
652	370
653	174
654	100
655	414
656	415
657	185
658	416
659	417
660	213
661	418
662	419
663	420
664	421
665	422
666	423
667	424
668	425
669	426
670	427
671	428
672	243
673	429
674	430
675	243
676	431
677	432
678	433
679	64
680	327
681	174
682	7
683	434
684	106
685	435
686	436
687	106
688	437
689	438
690	439
691	440
692	441
693	116
694	174
695	442
696	33
697	5
698	110
699	56
700	20
701	45
702	443
703	444
704	59
705	445
706	427
707	446
708	20
709	370
710	447
711	106
712	353
713	369
714	448
715	449
716	83
717	106
718	106
719	5
720	174
721	219
722	45
723	31
724	45
725	450
726	451
727	452
728	453
729	454
730	455
731	456
732	457
733	45
734	458
735	459
736	358
737	106
738	460
739	110
740	45
741	20
742	461
743	185
744	106
745	73
746	110
747	462
748	327
749	20
750	463
751	369
752	7
753	464
754	7
755	316
756	465
757	466
758	100
759	467
760	468
761	141
762	469
763	470
764	471
765	47
766	33
767	472
768	110
769	45
770	473
771	294
772	474
773	371
774	232
775	110
776	248
777	83
778	352
779	475
780	476
781	232
782	371
783	477
784	45
785	141
786	478
787	100
788	45
789	479
790	480
791	481
792	45
793	482
794	483
795	484
796	485
797	174
798	486
799	154
800	110
801	487
802	7
803	45
804	407
805	488
806	489
807	185
808	490
809	491
810	185
811	492
812	493
813	494
814	156
815	45
816	110
817	219
818	495
819	496
820	497
821	498
822	499
823	242
824	73
825	20
826	56
827	500
828	232
829	501
830	502
831	106
832	110
833	503
834	20
835	504
836	505
837	219
838	506
839	507
840	508
841	509
842	510
843	110
844	511
845	7
846	7
847	20
848	512
849	513
850	514
851	515
852	20
853	516
854	517
855	47
856	518
857	519
858	498
859	520
860	141
861	106
862	7
863	7
864	20
865	73
866	106
867	207
868	513
869	130
870	521
871	56
872	522
873	399
874	523
875	174
876	110
877	524
878	20
879	106
880	174
881	261
882	525
883	526
884	20
885	7
886	527
887	528
888	529
889	530
890	531
891	500
892	532
893	141
894	217
895	533
896	534
897	535
898	7
899	47
900	536
901	537
902	538
903	174
904	539
905	540
906	141
907	541
908	371
909	542
910	543
911	544
912	545
913	371
914	546
915	547
916	548
917	549
918	106
919	33
920	371
921	141
922	550
923	380
924	45
925	174
926	551
927	382
928	494
929	174
930	116
931	242
932	552
933	20
934	553
935	554
936	106
937	130
938	555
939	556
940	173
941	557
942	558
943	559
944	560
945	45
946	141
947	313
948	20
949	7
950	561
951	384
952	562
953	563
954	564
955	565
956	45
957	566
958	515
959	110
960	567
961	45
962	106
963	20
964	45
965	207
966	568
967	569
968	570
969	21
970	571
971	572
972	499
973	185
974	45
975	573
976	505
977	7
978	574
979	110
980	174
981	575
982	185
983	576
984	577
985	578
986	579
987	110
988	45
989	73
990	580
991	581
992	582
993	45
994	583
995	114
996	584
997	45
998	585
999	586
1000	513
1001	587
1002	260
1003	566
1004	588
1005	73
1006	589
1007	590
1008	591
1009	573
1010	592
1011	593
1012	594
1013	73
1014	174
1015	595
1016	371
1017	596
1018	597
1019	106
1020	598
1021	599
1022	600
1023	546
1024	601
1025	602
1026	603
1027	141
1028	370
1029	7
1030	7
1031	313
1032	604
1033	100
1034	605
1035	606
1036	607
1037	199
1038	73
1039	141
1040	109
1041	608
1042	45
1043	609
1044	499
1045	610
1046	611
1047	612
1048	115
1049	45
1050	613
1051	174
1052	614
1053	615
1054	141
1055	616
1056	617
1057	618
1058	174
1059	381
1060	619
1061	620
1062	621
1063	622
1064	623
1065	624
1066	21
1067	370
1068	106
1069	20
1070	613
1071	533
1072	45
1073	625
1074	467
1075	47
1076	377
1077	517
1078	626
1079	45
1080	45
1081	627
1082	628
1083	629
1084	630
1085	631
1086	632
1087	141
1088	633
1089	105
1090	634
1091	5
1092	635
1093	636
1094	106
1095	637
1096	174
1097	638
1098	106
1099	56
1100	20
1101	639
1102	106
1103	640
1104	313
1105	641
1106	642
1107	45
1108	20
1109	347
1110	643
1111	644
1112	645
1113	45
1114	100
1115	106
1116	646
1117	645
1118	647
1119	648
1120	110
1121	649
1122	110
1123	650
1124	370
1125	651
1126	45
1127	110
1128	110
1129	45
1130	382
1131	141
1132	652
1133	653
1134	654
1135	655
1136	656
1137	45
1138	45
1139	153
1140	657
1141	658
1142	659
1143	660
1144	661
1145	662
1146	443
1147	591
1148	663
1149	664
1150	110
1151	621
1152	665
1153	666
1154	667
1155	668
1156	5
1157	47
1158	110
1159	669
1160	670
1161	671
1162	173
1163	106
1164	672
1165	329
1166	56
1167	673
1168	674
1169	174
1170	21
1171	199
1172	474
1173	20
1174	675
1175	676
1176	499
1177	116
1178	141
1179	174
1180	677
1181	678
1182	20
1183	679
1184	680
1185	681
1186	173
1187	294
1188	174
1189	20
1190	682
1191	174
1192	683
1193	45
1194	515
1195	45
1196	109
1197	684
1198	685
1199	110
1200	45
1201	346
1202	686
1203	687
1204	174
1205	255
1206	688
1207	689
1208	109
1209	173
1210	690
1211	691
1212	174
1213	692
1214	116
1215	174
1216	693
1217	694
1218	695
1219	672
1220	370
1221	696
1222	110
1223	697
1224	110
1225	678
1226	73
1227	640
1228	199
1229	698
1230	699
1231	700
1232	174
1233	110
1234	106
1235	202
1236	701
1237	174
1238	702
1239	703
1240	45
1241	704
1242	705
1243	173
1244	106
1245	106
1246	288
1247	706
1248	174
1249	100
1250	707
1251	708
1252	174
1253	45
1254	709
1255	598
1256	110
1257	491
1258	710
1259	106
1260	316
1261	499
1262	174
1263	141
1264	711
1265	712
1266	713
1267	370
1268	714
1269	715
1270	716
1271	45
1272	674
1273	717
1274	718
1275	20
1276	719
1277	56
1278	20
1279	116
1280	720
1281	174
1282	721
1283	106
1284	106
1285	371
1286	443
1287	722
1288	723
1289	724
1290	294
1291	725
1292	5
1293	726
1294	106
1295	110
1296	727
1297	728
1298	45
1299	729
1300	730
1301	731
1302	732
1303	733
1304	734
1305	56
1306	735
1307	736
1308	737
1309	738
1310	106
1311	739
1312	20
1313	20
1314	361
1315	20
1316	106
1317	740
1318	741
1319	742
1320	743
1321	744
1322	45
1323	745
1324	526
1325	633
1326	746
1327	219
1328	106
1329	5
1330	557
1331	747
1332	45
1333	748
1334	749
1335	750
1336	751
1337	752
1338	45
1339	753
1340	754
1341	130
1342	7
1343	755
1344	380
1345	756
1346	21
1347	100
1348	47
1349	47
1350	371
1351	757
1352	382
1353	499
1354	106
1355	106
1356	758
1357	255
1358	45
1359	759
1360	760
1361	202
1362	7
1363	370
1364	45
1365	106
1366	761
1367	110
1368	762
1369	185
1370	100
1371	174
1372	763
1373	764
1374	47
1375	230
1376	355
1377	45
1378	45
1379	765
1380	56
1381	766
1382	767
1383	116
1384	768
1385	73
1386	769
1387	255
1388	770
1389	771
1390	605
1391	5
1392	724
1393	185
1394	772
1395	773
1396	45
1397	230
1398	56
1399	174
1400	759
1401	116
1402	47
1403	371
1404	185
1405	47
1406	20
1407	650
1408	774
1409	20
1410	45
1411	185
1412	45
1413	775
1414	20
1415	185
1416	554
1417	100
1418	685
1419	719
1420	20
1421	371
1422	776
1423	777
1424	370
1425	174
1426	56
1427	377
1428	106
1429	100
1430	199
1431	73
1432	778
1433	779
1434	719
1435	251
1436	780
1437	781
1438	56
1439	782
1440	116
1441	174
1442	783
1443	110
1444	294
1445	784
1446	106
1447	100
1448	174
1449	443
1450	106
1451	174
1452	56
1453	45
1454	533
1455	724
1456	785
1457	174
1458	230
1459	174
1460	370
1461	786
1462	787
1463	100
1464	690
1465	788
1466	586
1467	789
1468	141
1469	116
1470	586
1471	156
1472	790
1473	230
1474	109
1475	649
1476	174
1477	106
1478	346
1479	116
1480	45
1481	407
1482	664
1483	499
1484	20
1485	791
1486	660
1487	697
1488	792
1489	499
1490	793
1491	371
1492	73
1493	474
1494	174
1495	649
1496	513
1497	73
1498	45
1499	699
1500	45
1501	661
1502	106
1503	5
1504	106
1505	45
1506	752
1507	174
1508	174
1509	696
1510	56
1511	515
1512	794
1513	7
1514	795
1515	370
1516	45
1517	796
1518	174
1519	797
1520	798
1521	586
1522	45
1523	174
1524	116
1525	202
1526	116
1527	799
1528	800
1529	106
1530	105
1531	45
1532	801
1533	20
1534	20
1535	802
1536	370
1537	174
1538	803
1539	804
1540	106
1541	805
1542	806
1543	106
1544	100
1545	73
1546	141
1547	807
1548	370
1549	808
1550	5
1551	757
1552	694
1553	251
1554	100
1555	809
1556	45
1557	696
1558	810
1559	811
1560	812
1561	174
1562	813
1563	814
1564	815
1565	174
1566	346
1567	106
1568	816
1569	817
1570	818
1571	100
1572	45
1573	819
1574	45
1575	174
1576	820
1577	110
1578	443
1579	821
1580	5
1581	100
1582	822
1583	823
1584	824
1585	45
1586	174
1587	154
1588	498
1589	474
1590	20
1591	171
1592	5
1593	110
1594	153
1595	109
1596	825
1597	318
1598	255
1599	56
1600	567
1601	826
1602	5
1603	174
1604	827
1605	202
1606	5
1607	106
1608	813
1609	828
1610	47
1611	168
1612	829
1613	370
1614	830
1615	831
1616	377
1617	73
1618	5
1619	346
1620	100
1621	5
1622	697
1623	45
1624	174
1625	45
1626	611
1627	5
1628	832
1629	45
1630	56
1631	106
1632	833
1633	100
1634	174
1635	47
1636	106
1637	45
1638	47
1639	45
1640	56
1641	834
1642	56
1643	174
1644	110
1645	255
1646	646
1647	835
1648	836
1649	20
1650	174
1651	499
1652	47
1653	20
1654	141
1655	837
1656	21
1657	591
1658	557
1659	838
1660	110
1661	839
1662	156
1663	840
1664	841
1665	550
1666	685
1667	56
1668	842
1669	843
1670	57
1671	171
1672	219
1673	5
1674	443
1675	370
1676	230
1677	174
1678	110
1679	174
1680	45
1681	45
1682	141
1683	369
1684	558
1685	105
1686	844
1687	45
1688	255
1689	106
1690	845
1691	5
1692	174
1693	846
1694	847
1695	702
1696	848
1697	45
1698	174
1699	110
1700	849
1701	702
1702	73
1703	850
1704	110
1705	7
1706	106
1707	851
1708	230
1709	728
1710	376
1711	852
1712	370
1713	174
1714	853
1715	854
1716	45
1717	855
1718	856
1719	857
1720	56
1721	858
1722	586
1723	859
1724	860
1725	174
1726	861
1727	862
1728	863
1729	685
1730	110
1731	174
1732	100
1733	864
1734	827
1735	100
1736	865
1737	106
1738	45
1739	866
1740	47
1741	382
1742	230
1743	45
1744	867
1745	868
1746	370
1747	598
1748	185
1749	869
1750	870
1751	109
1752	185
1753	174
1754	45
1755	871
1756	255
1757	45
1758	45
1759	872
1760	255
1761	230
1762	47
1763	225
1764	873
1765	874
1766	849
1767	875
1768	876
1769	877
1770	370
1771	567
1772	878
1773	174
1774	879
1775	880
1776	881
1777	255
1778	56
1779	45
1780	370
1781	73
1782	174
1783	882
1784	174
1785	45
1786	100
1787	605
1788	883
1789	728
1790	884
1791	370
1792	885
1793	105
1794	516
1795	251
1796	886
1797	724
1798	887
1799	712
1800	45
1801	370
1802	888
1803	100
1804	5
1805	45
1806	370
1807	45
1808	106
1809	397
1810	174
1811	849
1812	370
1813	795
1814	807
1815	889
1816	827
1817	109
1818	370
1819	106
1820	20
1821	45
1822	327
1823	174
1824	45
1825	106
1826	890
1827	891
1828	381
1829	5
1830	57
1831	59
1832	879
1833	561
1834	892
1835	370
1836	370
1837	45
1838	893
1839	894
1840	105
1841	232
1842	106
1843	895
1844	45
1845	230
1846	515
1847	896
1848	378
1849	897
1850	898
1851	899
1852	5
1853	106
1854	765
1855	864
1856	141
1857	255
1858	106
1859	106
1860	900
1861	873
1862	56
1863	901
1864	56
1865	327
1866	45
1867	20
1868	370
1869	56
1870	153
1871	902
1872	591
1873	903
1874	45
1875	904
1876	905
1877	106
1878	313
1879	20
1880	45
1881	45
1882	45
1883	561
1884	765
1885	45
1886	45
1887	174
1888	370
1889	498
1890	637
1891	45
1892	906
1893	45
1894	255
1895	907
1896	45
1897	908
1898	724
1899	370
1900	45
1901	909
1902	910
1903	911
1904	47
1905	818
1906	45
1907	174
1908	912
1909	110
1910	171
1911	5
1912	913
1913	45
1914	751
1915	914
1916	45
1917	915
1918	47
1919	916
1920	232
1921	45
1922	917
1923	370
1924	918
1925	45
1926	45
1927	185
1928	919
1929	920
1930	370
1931	921
1932	922
1933	513
1934	45
1935	546
1936	923
1937	110
1938	45
1939	294
1940	57
1941	924
1942	883
1943	505
1944	45
1945	110
1946	174
1947	185
1948	925
1949	47
1950	346
1951	482
1952	45
1953	110
1954	174
1955	382
1956	106
1957	110
1958	404
1959	829
1960	926
1961	377
1962	927
1963	45
1964	928
1965	185
1966	45
1967	346
1968	841
1969	513
1970	929
1971	613
1972	930
1973	106
1974	931
1975	515
1976	443
1977	45
1978	327
1979	174
1980	185
1981	932
1982	933
1983	106
1984	110
1985	56
1986	934
1987	45
1988	106
1989	878
1990	56
1991	106
1992	370
1993	724
1994	45
1995	935
1996	650
1997	829
1998	382
1999	218
2000	660
2001	174
2002	936
2003	45
2004	937
2005	21
2006	938
2007	45
2008	106
2009	829
2010	513
2011	939
2012	370
2013	940
2014	73
2015	382
2016	106
2017	941
2018	185
2019	404
2020	942
2021	45
2022	943
2023	944
2024	73
2025	945
2026	946
2027	370
2028	947
2029	948
2030	702
2031	949
2032	185
2033	45
2034	577
2035	56
2036	586
2037	106
2038	950
2039	951
2040	952
2041	106
2042	953
2043	954
2044	174
2045	174
2046	479
2047	847
2048	57
2049	955
2050	765
2051	956
2052	185
2053	586
2054	663
2055	957
2056	346
2057	21
2058	174
2059	370
2060	958
2061	174
2062	925
2063	959
2064	45
2065	445
2066	242
2067	960
2068	807
2069	327
2070	370
2071	829
2072	633
2073	961
2074	651
2075	962
2076	106
2077	106
2078	45
2079	106
2080	106
2081	185
2082	45
2083	73
2084	382
2085	219
2086	443
2087	963
2088	73
2089	106
2090	964
2091	20
2092	965
2093	966
2094	967
2095	174
2096	553
2097	255
2098	47
2099	968
2100	969
2101	106
2102	970
2103	971
2104	382
2105	972
2106	973
2107	199
2108	106
2109	974
2110	106
2111	45
2112	45
2113	975
2114	377
2115	976
2116	527
2117	977
2118	56
2119	56
2120	56
2121	346
2122	978
2123	979
2124	294
2125	230
2126	980
2127	56
2128	106
2129	981
2130	982
2131	56
2132	983
2133	765
2134	984
2135	20
2136	985
2137	986
2138	987
2139	988
2140	989
2141	106
2142	174
2143	45
2144	611
2145	45
2146	990
2147	546
2148	991
2149	992
2150	171
2151	106
2152	443
2153	993
2154	515
2155	728
2156	829
2157	106
2158	399
2159	994
2160	407
2161	45
2162	605
2163	110
2164	995
2165	996
2166	997
2167	586
2168	485
2169	56
2170	998
2171	879
2172	999
2173	47
2174	1000
2175	1001
2176	1002
2177	1003
2178	1004
2179	106
2180	1005
2181	232
2182	1006
2183	1007
2184	474
2185	550
2186	1008
2187	106
2188	513
2189	1009
2190	1010
2191	1011
2192	106
2193	56
2194	1012
2195	640
2196	1013
2197	1014
2198	1015
2199	443
2200	45
2201	1016
2202	605
2203	1017
2204	1018
2205	499
2206	1019
2207	106
2208	484
2209	1020
2210	106
2211	45
2212	352
2213	925
2214	1021
2215	1022
2216	654
2217	47
2218	1023
2219	370
2220	370
2221	1024
2222	573
2223	106
2224	106
2225	370
2226	893
2227	1025
2228	327
2229	141
2230	1026
2231	45
2232	561
2233	381
2234	106
2235	1027
2236	21
2237	1028
2238	1029
2239	1030
2240	1031
2241	5
2242	174
2243	370
2244	1032
2245	1033
2246	598
2247	45
2248	381
2249	47
2250	1034
2251	1035
2252	1036
2253	1037
2254	1038
2255	1039
2256	106
2257	1040
2258	5
2259	586
2260	1041
2261	45
2262	1042
2263	1043
2264	829
2265	748
2266	56
2267	174
2268	864
2269	1044
2270	106
2271	1045
2272	381
2273	1046
2274	1047
2275	1048
2276	850
2277	1049
2278	443
2279	574
2280	1050
2281	1051
2282	429
2283	1052
2284	633
2285	1053
2286	1054
2287	664
2288	1055
2289	1056
2290	355
2291	21
2292	854
2293	71
2294	1057
2295	744
2296	803
2297	1058
2298	1059
2299	174
2300	1060
2301	1061
2302	174
2303	21
2304	106
2305	106
2306	545
2307	726
2308	1062
2309	1063
2310	1064
2311	495
2312	1065
2313	653
2314	1066
2315	1067
2316	1068
2317	1069
2318	1070
2319	1071
2320	73
2321	455
2322	1072
2323	361
2324	106
2325	56
2326	902
2327	1073
2328	1074
2329	47
2330	1019
2331	1075
2332	573
2333	56
2334	5
2335	110
2336	598
2337	1076
2338	153
2339	1077
2340	1078
2341	106
2342	106
2343	225
2344	561
2345	1079
2346	174
2347	47
2348	1080
2349	1081
2350	633
2351	5
2352	225
2353	969
2354	56
2355	1082
2356	370
2357	47
2358	1083
2359	1084
2360	1085
2361	1017
2362	1086
2363	230
2364	545
2365	1087
2366	1088
2367	355
2368	346
2369	1089
2370	232
2371	605
2372	591
2373	848
2374	106
2375	1090
2376	45
2377	251
2378	1091
2379	1092
2380	1093
2381	561
2382	1094
2383	1095
2384	1096
2385	230
2386	545
2387	56
2388	1097
2389	1098
2390	1043
2391	1099
2392	545
2393	545
2394	1100
2395	56
2396	106
2397	47
2398	479
2399	56
2400	1101
2401	1102
2402	829
2403	407
2404	47
2405	1103
2406	513
2407	1104
2408	21
2409	1006
2410	633
2411	1105
2412	533
2413	1106
2414	5
2415	1107
2416	21
2417	1108
2418	591
2419	1109
2420	1110
2421	106
2422	100
2423	1111
2424	1064
2425	1112
2426	1113
2427	106
2428	1114
2429	109
2430	1115
2431	1116
2432	202
2433	174
2434	1117
2435	1118
2436	145
2437	772
2438	1119
2439	1120
2440	45
2441	47
2442	1121
2443	1122
2444	327
2445	561
2446	1123
2447	1124
2448	1125
2449	527
2450	848
2451	1126
2452	399
2453	106
2454	20
2455	377
2456	591
2457	1127
2458	683
2459	1128
2460	1129
2461	726
2462	347
2463	45
2464	45
2465	47
2466	1130
2467	47
2468	294
2469	558
2470	399
2471	45
2472	106
2473	106
2474	664
2475	948
2476	153
2477	926
2478	171
2479	1131
2480	557
2481	106
2482	47
2483	21
2484	5
2485	545
2486	1132
2487	165
2488	171
2489	21
2490	1133
2491	1134
2492	527
2493	106
2494	1135
2495	45
2496	165
2497	255
2498	807
2499	848
2500	1136
2501	605
2502	1137
2503	1138
2504	173
2505	1040
2506	848
2507	165
2508	605
2509	531
2510	1139
2511	499
2512	683
2513	1140
2514	586
2515	47
2516	1141
2517	702
2518	1142
2519	106
2520	1143
2521	1144
2522	499
2523	1091
2524	887
2525	848
2526	47
2527	21
2528	1145
2529	56
2530	109
2531	1146
2532	1147
2533	1148
2534	1149
2535	1150
2536	370
2537	590
2538	380
2539	47
2540	45
2541	45
2542	1095
2543	1151
2544	1152
2545	251
2546	47
2547	5
2548	901
2549	1122
2550	47
2551	1153
2552	499
2553	499
2554	255
2555	621
2556	1154
2557	1155
2558	381
2559	981
2560	5
2561	1156
2562	109
2563	230
2564	1157
2565	45
2566	1158
2567	5
2568	230
2569	1159
2570	1160
2571	47
2572	1161
2573	230
2574	230
2575	1162
2576	851
2577	1163
2578	1164
2579	1165
2580	702
2581	1064
2582	171
2583	1166
2584	1167
2585	1168
2586	1064
2587	611
2588	1169
2589	47
2590	850
2591	1170
2592	1171
2593	407
2594	986
2595	443
2596	633
2597	106
2598	21
2599	1172
2600	499
2601	1124
2602	1173
2603	1174
2604	479
2605	106
2606	45
2607	202
2608	370
2609	934
2610	696
2611	969
2612	1170
2613	1175
2614	106
2615	21
2616	45
2617	484
2618	1176
2619	1177
2620	1178
2621	1179
2622	346
2623	1180
2624	728
2625	1181
2626	346
2627	474
2628	382
2629	73
2630	1182
2631	401
2632	1183
2633	1184
2634	515
2635	202
2636	174
2637	1185
2638	370
2639	1186
2640	1187
2641	1188
2642	1024
2643	83
2644	106
2645	1189
2646	1190
2647	185
2648	346
2649	5
2650	153
2651	45
2652	474
2653	47
2654	56
2655	499
2656	56
2657	45
2658	1191
2659	1192
2660	1193
2661	1194
2662	47
2663	56
2664	5
2665	106
2666	1195
2667	819
2668	382
2669	994
2670	374
2671	45
2672	1196
2673	1197
2674	56
2675	1024
2676	1144
2677	1198
2678	633
2679	1170
2680	844
2681	557
2682	1199
2683	1200
2684	106
2685	1201
2686	702
2687	381
2688	1202
2689	1203
2690	173
2691	45
2692	116
2693	1204
2694	1205
2695	45
2696	399
2697	45
2698	1206
2699	851
2700	807
2701	45
2702	1207
2703	1208
2704	1033
2705	255
2706	1091
2707	1209
2708	109
2709	771
2710	479
2711	45
2712	47
2713	1210
2714	21
2715	21
2716	1211
2717	1212
2718	683
2719	1031
2720	255
2721	346
2722	106
2723	370
2724	1213
2725	45
2726	1214
2727	346
2728	45
2729	106
2730	106
2731	650
2732	106
2733	130
2734	1215
2735	370
2736	685
2737	313
2738	1216
2739	106
2740	1217
2741	371
2742	109
2743	1218
2744	499
2745	1219
2746	106
2747	803
2748	1220
2749	1011
2750	829
2751	106
2752	45
2753	1221
2754	1222
2755	561
2756	185
2757	1223
2758	109
2759	591
2760	313
2761	106
2762	1224
2763	106
2764	45
2765	1225
2766	852
2767	230
2768	1226
2769	591
2770	803
2771	948
2772	230
2773	106
2774	355
2775	156
2776	1011
2777	573
2778	1227
2779	173
2780	45
2781	1228
2782	1229
2783	370
2784	45
2785	1230
2786	47
2787	803
2788	45
2789	829
2790	106
2791	106
2792	130
2793	474
2794	901
2795	660
2796	1231
2797	346
2798	174
2799	527
2800	106
2801	370
2802	56
2803	352
2804	1122
2805	1232
2806	370
2807	948
2808	399
2809	219
2810	45
2811	230
2812	230
2813	56
2814	106
2815	106
2816	1233
2817	106
2818	1234
2819	106
2820	185
2821	381
2822	106
2823	45
2824	45
2825	1170
2826	474
2827	1235
2828	505
2829	174
2830	1236
2831	1237
2832	1238
2833	185
2834	1189
2835	45
2836	1239
2837	1154
2838	1240
2839	346
2840	1241
2841	1242
2842	45
2843	47
2844	1243
2845	73
2846	370
2847	73
2848	1064
2849	479
2850	45
2851	174
2852	702
2853	173
2854	1244
2855	370
2856	47
2857	370
2858	45
2859	45
2860	1245
2861	1246
2862	45
2863	590
2864	173
2865	1247
2866	174
2867	370
2868	47
2869	370
2870	106
2871	513
2872	1248
2873	592
2874	479
2875	1249
2876	852
2877	765
2878	45
2879	174
2880	1250
2881	219
2882	174
2883	156
2884	141
2885	1251
2886	381
2887	174
2888	633
2889	45
2890	1252
2891	225
2892	106
2893	174
2894	1253
2895	174
2896	174
2897	1228
2898	678
2899	174
2900	174
2901	557
2902	174
2903	174
2904	1254
2905	1255
2906	174
2907	174
2908	174
2909	1256
2910	1257
2911	110
2912	20
2913	141
2914	110
2915	248
2916	1258
2917	1259
2918	1260
2919	110
2920	1261
2921	1262
2922	110
2923	1263
2924	371
2925	1264
2926	1265
2927	1266
2928	26
2929	1267
2930	1268
2931	88
2932	1269
2933	110
2934	20
2935	20
2936	110
2937	141
2938	141
2939	110
2940	1270
2941	7
2942	1271
2943	110
2944	5
2945	1272
2946	251
2947	1273
2948	110
2949	1274
2950	64
2951	1275
2952	1276
2953	202
2954	26
2955	1277
2956	1278
2957	1279
2958	20
2959	1280
2960	379
2961	7
2962	7
2963	141
2964	141
2965	1281
2966	436
2967	1282
2968	1283
2969	7
2970	7
2971	1284
2972	110
2973	1280
2974	1285
2975	141
2976	141
2977	110
2978	346
2979	33
2980	141
2981	7
2982	141
2983	1286
2984	33
2985	141
2986	1287
2987	110
2988	1288
2989	26
2990	1289
2991	141
2992	1290
2993	20
2994	1291
2995	20
2996	1292
2997	141
2998	141
2999	171
3000	110
3001	1293
3002	141
3003	1294
3004	725
3005	1295
3006	26
3007	26
3008	45
3009	56
3010	60
3011	1296
3012	141
3013	1297
3014	33
3015	141
3016	141
3017	1298
3018	26
3019	1299
3020	56
3021	110
3022	1300
3023	1301
3024	20
3025	110
3026	1302
3027	110
3028	141
3029	33
3030	110
3031	141
3032	7
3033	1303
3034	1304
3035	1305
3036	141
3037	664
3038	45
3039	1306
3040	141
3041	422
3042	1307
3043	110
3044	7
3045	1308
3046	20
3047	20
3048	1309
3049	1310
3050	20
3051	740
3052	1311
3053	1312
3054	26
3055	7
3056	100
3057	110
3058	141
3059	1313
3060	251
3061	45
3062	1314
3063	141
3064	1315
3065	1031
3066	1316
3067	1317
3068	1318
3069	1319
3070	7
3071	1320
3072	1321
3073	376
3074	1322
3075	1323
3076	1306
3077	1324
3078	1325
3079	1326
3080	110
3081	1327
3082	1328
3083	115
3084	1329
3085	141
3086	141
3087	1291
3088	370
3089	202
3090	141
3091	1330
3092	369
3093	73
3094	174
3095	1331
3096	1213
3097	171
3098	1332
3099	47
3100	20
3101	141
3102	1333
3103	110
3104	141
3105	1334
3106	56
3107	45
3108	1335
3109	47
3110	56
3111	1336
3112	554
3113	1031
3114	1337
3115	141
3116	56
3117	1338
3118	1339
3119	283
3120	141
3121	7
3122	1340
3123	1341
3124	141
3125	1342
3126	141
3127	1343
3128	202
3129	675
3130	110
3131	174
3132	190
3133	141
3134	1344
3135	20
3136	255
3137	255
3138	379
3139	141
3140	384
3141	252
3142	1345
3143	1346
3144	110
3145	141
3146	751
3147	1347
3148	45
3149	110
3150	382
3151	499
3152	1348
3153	802
3154	141
3155	141
3156	141
3157	110
3158	110
3159	110
3160	47
3161	110
3162	20
3163	577
3164	56
3165	47
3166	174
3167	110
3168	1349
3169	1350
3170	141
3171	73
3172	45
3173	1351
3174	873
3175	110
3176	1352
3177	1353
3178	141
3179	45
3180	242
3181	842
3182	1354
3183	251
3184	1355
3185	1356
3186	649
3187	110
3188	649
3189	110
3190	141
3191	110
3192	577
3193	1357
3194	802
3195	47
3196	1358
3197	751
3198	1359
3199	202
3200	499
3201	1360
3202	1361
3203	1362
3204	1363
3205	47
3206	427
3207	1364
3208	553
3209	110
3210	1365
3211	174
3212	47
3213	45
3214	1366
3215	1367
3216	45
3217	1368
3218	141
3219	141
3220	59
3221	1369
3222	110
3223	1370
3224	1371
3225	110
3226	141
3227	1372
3228	1327
3229	1373
3230	141
3231	1374
3232	105
3233	1375
3234	45
3235	1028
3236	242
3237	47
3238	202
3239	1376
3240	47
3241	1377
3242	47
3243	47
3244	47
3245	110
3246	45
3247	73
3248	527
3249	45
3250	1378
3251	73
3252	834
3253	156
3254	110
3255	527
3256	45
3257	110
3258	110
3259	110
3260	56
3261	105
3262	45
3263	1379
3264	47
3265	141
3266	1380
3267	1381
3268	105
3269	56
3270	1125
3271	1382
3272	1383
3273	141
3274	445
3275	45
3276	5
3277	130
3278	499
3279	1384
3280	1028
3281	1385
3282	1386
3283	45
3284	110
3285	56
3286	1381
3287	110
3288	47
3289	47
3290	988
3291	110
3292	255
3293	1387
3294	527
3295	1088
3296	1388
3297	110
3298	1389
3299	83
3300	1390
3301	652
3302	1391
3303	47
3304	45
3305	45
3306	1392
3307	1393
3308	47
3309	1394
3310	153
3311	141
3312	230
3313	141
3314	47
3315	110
3316	327
3317	47
3318	1395
3319	110
3320	988
3321	45
3322	1396
3323	110
3324	649
3325	47
3326	45
3327	47
3328	1397
3329	45
3330	54
3331	174
3332	1347
3333	47
3334	1398
3335	1399
3336	141
3337	47
3338	327
3339	73
3340	105
3341	407
3342	772
3343	1400
3344	1401
3345	813
3346	73
3347	45
3348	146
3349	109
3350	141
3351	45
3352	1162
3353	1402
3354	649
3355	47
3356	5
3357	56
3358	106
3359	558
3360	685
3361	427
3362	1403
3363	728
3364	1028
3365	110
3366	988
3367	56
3368	772
3369	106
3370	47
3371	64
3372	772
3373	47
3374	47
3375	1404
3376	47
3377	45
3378	803
3379	1405
3380	1374
3381	1406
3382	47
3383	45
3384	47
3385	527
3386	47
3387	1407
3388	649
3389	1408
3390	399
3391	638
3392	1409
3393	1410
3394	73
3395	73
3396	56
3397	1170
3398	772
3399	1133
3400	174
3401	633
3402	255
3403	47
3404	527
3405	202
3406	45
3407	45
3408	127
3409	56
3410	141
3411	45
3412	47
3413	1411
3414	154
3415	47
3416	45
3417	47
3418	106
3419	255
3420	56
3421	56
3422	649
3423	47
3424	45
3425	327
3426	141
3427	73
3428	45
3429	45
3430	146
3431	47
3432	47
3433	56
3434	649
3435	47
3436	1412
3437	207
3438	255
3439	45
3440	255
3441	73
3442	1413
3443	255
3444	381
3445	174
3446	47
3447	1414
3448	45
3449	45
3450	327
3451	174
3452	772
3453	574
3454	56
3455	674
3456	47
3457	83
3458	1415
3459	1416
3460	45
3461	1417
3462	45
3463	1418
3464	649
3465	906
3466	1419
3467	1031
3468	255
3469	1420
3470	56
3471	56
3472	56
3473	1390
3474	45
3475	73
3476	45
3477	110
3478	45
3479	381
3480	5
3481	1031
3482	232
3483	109
3484	795
3485	255
3486	1421
3487	1390
3488	47
3489	1422
3490	1031
3491	772
3492	45
3493	83
3494	73
3495	1423
3496	1390
3497	47
3498	1424
3499	47
3500	45
3501	1031
3502	1425
3503	56
3504	505
3505	1187
3506	1390
3507	106
3508	47
3509	1426
3510	1031
3511	1427
3512	45
3513	404
3514	1428
3515	56
3516	1429
3517	173
3518	772
3519	1213
3520	327
3521	47
3522	407
3523	174
3524	106
3525	316
3526	1390
3527	45
3528	56
3529	1430
3530	83
3531	1390
3532	56
3533	1031
3534	1199
3535	73
3536	327
3537	45
3538	1199
3539	772
3540	327
3541	499
3542	1431
3543	1432
3544	232
3545	772
3546	45
3547	45
3548	45
3549	45
3550	1433
3551	45
3552	1031
3553	174
3554	1434
3555	1011
3556	73
3557	1435
3558	1031
3559	45
3560	73
3561	813
3562	772
3563	700
3564	1436
3565	174
3566	1426
3567	1031
3568	54
3569	848
3570	1437
3571	45
3572	174
3573	586
3574	499
3575	21
3576	772
3577	443
3578	106
3579	47
3580	1438
3581	1439
3582	371
3583	141
3584	110
3585	1440
3586	1441
3587	5
3588	20
3589	1442
3590	20
3591	1443
3592	382
3593	20
3594	20
3595	1047
3596	20
3597	20
3598	73
3599	1444
3600	842
3601	850
3602	494
3603	20
3604	1445
3605	371
3606	1014
3607	1446
3608	725
3609	20
3610	1447
3611	1448
3612	1449
3613	20
3614	20
3615	407
3616	1376
3617	20
3618	1450
3619	1451
3620	110
3621	371
3622	1452
3623	981
3624	1453
3625	1454
3626	1455
3627	20
3628	73
3629	20
3630	863
3631	20
3632	327
3633	1456
3634	110
3635	110
3636	45
3637	751
3638	1457
3639	20
3640	316
3641	1088
3642	1458
3643	141
3644	1459
3645	649
3646	110
3647	20
3648	1460
3649	1461
3650	1462
3651	45
3652	141
3653	1463
3654	1464
3655	141
3656	633
3657	318
3658	1465
3659	557
3660	1466
3661	1348
3662	110
3663	106
3664	1081
3665	174
3666	827
3667	827
3668	56
3669	105
3670	1467
3671	110
3672	1468
3673	1427
3674	1469
3675	202
3676	255
3677	105
3678	1405
3679	751
3680	174
3681	515
3682	73
3683	105
3684	1470
3685	1471
3686	586
3687	1192
3688	443
3689	1044
3690	1029
3691	105
3692	105
3693	685
3694	559
3695	105
3696	316
3697	1415
3698	1415
3699	73
3700	5
3701	1472
3702	1473
3703	327
3704	106
3705	452
3706	397
3707	499
3708	649
3709	1474
3710	73
3711	1475
3712	73
3713	382
3714	1476
3715	47
3716	653
3717	327
3718	64
3719	554
3720	1474
3721	496
3722	73
3723	73
3724	230
3725	1217
3726	73
3727	73
3728	355
3729	73
3730	73
3731	495
3732	327
3733	1125
3734	327
3735	47
3736	106
3737	73
3738	1477
3739	106
3740	327
3741	73
3742	527
3743	499
3744	327
3745	685
3746	327
3747	47
3748	47
3749	1478
3750	106
3751	327
3752	109
3753	327
3754	230
3755	1479
3756	73
3757	202
3758	355
3759	329
3760	73
3761	1028
3762	47
3763	47
3764	848
3765	47
3766	174
3767	381
3768	174
3769	225
3770	527
3771	700
3772	1480
3773	73
3774	381
3775	586
3776	586
3777	47
3778	1481
3779	381
3780	45
3781	225
3782	230
3783	586
3784	202
3785	546
3786	586
3787	47
3788	174
3789	381
3790	586
3791	1482
3792	73
3793	316
3794	21
3795	527
3796	106
3797	47
3798	45
3799	45
3800	21
3801	327
3802	47
3803	173
3804	586
3805	316
3806	174
3807	848
3808	443
3809	586
3810	592
3811	381
3812	73
3813	443
3814	586
3815	242
3816	174
3817	1040
3818	5
3819	45
3820	499
3821	370
3822	1483
3823	327
3824	106
3825	174
3826	45
3827	586
3828	1484
3829	106
3830	1485
3831	45
3832	230
3833	586
3834	1483
3835	443
3836	327
3837	106
3838	230
3839	45
3840	45
3841	45
3842	813
3843	174
3844	1125
3845	45
3846	355
3847	1486
3848	1487
3849	1488
3850	1489
3851	427
3852	1490
3853	1491
3854	272
3855	105
3856	248
3857	1492
3858	1493
3859	1494
3860	1440
3861	407
3862	1495
3863	842
3864	110
3865	1496
3866	1497
3867	1498
3868	110
3869	1228
3870	1499
3871	1500
3872	9
3873	1501
3874	1502
3875	1503
3876	1504
3877	1505
3878	1506
3879	1507
3880	1508
3881	7
3882	7
3883	1509
3884	1510
3885	1511
3886	1512
3887	1513
3888	1514
3889	1306
3890	1515
3891	1516
3892	1517
3893	7
3894	1518
3895	1519
3896	1520
3897	1521
3898	1522
3899	1523
3900	1524
3901	1525
3902	26
3903	1526
3904	1527
3905	141
3906	218
3907	1528
3908	7
3909	1529
3910	1530
3911	26
3912	56
3913	1531
3914	1532
3915	1533
3916	1534
3917	26
3918	1535
3919	1532
3920	1536
3921	1537
3922	1538
3923	1539
3924	1540
3925	20
3926	1541
3927	33
3928	1542
3929	1543
3930	1306
3931	1544
3932	1545
3933	1546
3934	557
3935	1547
3936	1548
3937	1549
3938	1550
3939	1551
3940	20
3941	1552
3942	1553
3943	1554
3944	1555
3945	31
3946	1556
3947	357
3948	1522
3949	1557
3950	1558
3951	1559
3952	1560
3953	1561
3954	1562
3955	1563
3956	1564
3957	1565
3958	218
3959	1566
3960	1567
3961	1568
3962	1569
3963	1570
3964	1571
3965	1572
3966	1573
3967	1574
3968	33
3969	1575
3970	1576
3971	1577
3972	1578
3973	1579
3974	1306
3975	1580
3976	1581
3977	83
3978	1582
3979	1306
3980	1583
3981	1584
3982	1585
3983	1586
3984	1587
3985	1306
3986	1588
3987	1589
3988	1590
3989	1591
3990	1592
3991	1593
3992	20
3993	1594
3994	1595
3995	357
3996	369
3997	1596
3998	1280
3999	1597
4000	1598
4001	1599
4002	1600
4003	7
4004	26
4005	1601
4006	1602
4007	7
4008	1603
4009	7
4010	33
4011	1604
4012	1605
4013	1606
4014	1607
4015	1539
4016	1608
4017	1609
4018	1610
4019	1611
4020	1612
4021	1613
4022	1614
4023	16
4024	33
4025	1615
4026	1616
4027	20
4028	1617
4029	1618
4030	1619
4031	1620
4032	1337
4033	5
4034	1621
4035	1622
4036	1623
4037	1596
4038	57
4039	1624
4040	1625
4041	1626
4042	1627
4043	1628
4044	7
4045	1629
4046	1630
4047	26
4048	1631
4049	26
4050	16
4051	26
4052	1632
4053	110
4054	1633
4055	1634
4056	1635
4057	1636
4058	1637
4059	1638
4060	1545
4061	1639
4062	1640
4063	106
4064	1641
4065	1642
4066	248
4067	1643
4068	1644
4069	1645
4070	110
4071	1646
4072	1647
4073	1440
4074	1648
4075	1649
4076	712
4077	1650
4078	1651
4079	1652
4080	1653
4081	1654
4082	1655
4083	664
4084	1656
4085	202
4086	1657
4087	1658
4088	1659
4089	1660
4090	1456
4091	371
4092	1661
4093	1440
4094	1662
4095	1663
4096	1664
4097	1665
4098	1666
4099	1667
4100	1668
4101	1669
4102	16
4103	1670
4104	1671
4105	1306
4106	1672
4107	1673
4108	371
4109	7
4110	1674
4111	1675
4112	1676
4113	371
4114	1677
4115	1678
4116	141
4117	1679
4118	1680
4119	371
4120	1681
4121	1682
4122	1683
4123	1684
4124	1685
4125	1686
4126	26
4127	1687
4128	1688
4129	1651
4130	33
4131	1689
4132	1690
4133	1691
4134	1692
4135	1693
4136	1694
4137	436
4138	1695
4139	391
4140	1696
4141	1697
4142	1698
4143	1699
4144	1700
4145	1701
4146	1702
4147	1703
4148	26
4149	1704
4150	1705
4151	1675
4152	1706
4153	1707
4154	1708
4155	218
4156	371
4157	7
4158	1709
4159	248
4160	1710
4161	1711
4162	1712
4163	243
4164	1713
4165	1714
4166	1715
4167	1716
4168	1717
4169	1718
4170	26
4171	26
4172	1719
4173	1720
4174	1721
4175	1722
4176	1723
4177	1724
4178	73
4179	327
4180	1725
4181	1726
4182	1727
4183	1728
4184	1729
4185	1730
4186	1731
4187	7
4188	1732
4189	1733
4190	1734
4191	1735
4192	7
4193	1736
4194	1737
4195	1738
4196	1739
4197	1711
4198	1740
4199	1741
4200	20
4201	1283
4202	1742
4203	1743
4204	1744
4205	1745
4206	1746
4207	1747
4208	1748
4209	479
4210	1749
4211	1512
4212	1750
4213	740
4214	1751
4215	1752
4216	1753
4217	1754
4218	1755
4219	1756
4220	1757
4221	1758
4222	1759
4223	1760
4224	1761
4225	371
4226	1762
4227	1763
4228	1764
4229	141
4230	1765
4231	1766
4232	1686
4233	1767
4234	1768
4235	1578
4236	1769
4237	219
4238	1770
4239	1771
4240	1772
4241	1773
4242	1774
4243	1775
4244	1776
4245	1777
4246	1778
4247	829
4248	1779
4249	1780
4250	1781
4251	1782
4252	1783
4253	1784
4254	1785
4255	20
4256	1786
4257	1787
4258	1788
4259	1789
4260	1790
4261	1791
4262	1792
4263	7
4264	1306
4265	1793
4266	1559
4267	1794
4268	371
4269	1795
4270	16
4271	1796
4272	1797
4273	1798
4274	1799
4275	20
4276	1800
4277	369
4278	1801
4279	1673
4280	248
4281	1802
4282	1803
4283	1804
4284	1805
4285	994
4286	1806
4287	1807
4288	1808
4289	1809
4290	248
4291	1751
4292	1810
4293	1811
4294	1812
4295	1813
4296	1814
4297	1815
4298	1816
4299	1817
4300	1818
4301	1819
4302	631
4303	1737
4304	1820
4305	1821
4306	765
4307	1822
4308	1823
4309	1824
4310	1776
4311	1825
4312	631
4313	1826
4314	1827
4315	1675
4316	371
4317	248
4318	1828
4319	248
4320	1829
4321	370
4322	1657
4323	371
4324	1830
4325	272
4326	1831
4327	1832
4328	174
4329	1833
4330	1776
4331	1834
4332	1835
4333	106
4334	1836
4335	1803
4336	1837
4337	1838
4338	110
4339	1839
4340	141
4341	1840
4342	1841
4343	384
4344	1842
4345	20
4346	646
4347	1843
4348	5
4349	1440
4350	1844
4351	1845
4352	1846
4353	1847
4354	1848
4355	1849
4356	1850
4357	1849
4358	1851
4359	1852
4360	7
4361	1853
4362	1675
4363	33
4364	1854
4365	1803
4366	1855
4367	110
4368	664
4369	1856
4370	1780
4371	371
4372	1857
4373	1858
4374	1859
4375	1860
4376	1861
4377	1862
4378	1863
4379	1440
4380	1864
4381	377
4382	1865
4383	1866
4384	1867
4385	1749
4386	1868
4387	7
4388	371
4389	1869
4390	1870
4391	1871
4392	1787
4393	106
4394	1872
4395	141
4396	1873
4397	1776
4398	1874
4399	1875
4400	1876
4401	1877
4402	1803
4403	1878
4404	1879
4405	213
4406	1754
4407	1880
4408	26
4409	1881
4410	1675
4411	1861
4412	1882
4413	1883
4414	248
4415	1884
4416	1885
4417	1886
4418	20
4419	1887
4420	1888
4421	110
4422	566
4423	1889
4424	370
4425	1890
4426	1891
4427	371
4428	1892
4429	1893
4430	684
4431	1894
4432	384
4433	71
4434	1675
4435	1895
4436	1684
4437	1896
4438	964
4439	1897
4440	1898
4441	248
4442	1899
4443	1900
4444	1901
4445	141
4446	1902
4447	73
4448	1903
4449	1904
4450	1905
4451	1906
4452	1376
4453	1907
4454	663
4455	1908
4456	47
4457	1909
4458	141
4459	1910
4460	1911
4461	1912
4462	1913
4463	1914
4464	1686
4465	1915
4466	1651
4467	1861
4468	202
4469	371
4470	1916
4471	1917
4472	371
4473	1918
4474	427
4475	1919
4476	83
4477	1920
4478	1921
4479	1922
4480	1923
4481	1924
4482	1743
4483	110
4484	248
4485	56
4486	1925
4487	1926
4488	382
4489	7
4490	1927
4491	1928
4492	141
4493	1929
4494	1930
4495	1931
4496	1932
4497	371
4498	1933
4499	1934
4500	272
4501	1935
4502	1829
4503	1936
4504	141
4505	369
4506	474
4507	1937
4508	371
4509	26
4510	218
4511	20
4512	1938
4513	1939
4514	251
4515	294
4516	7
4517	1940
4518	724
4519	1941
4520	1942
4521	1943
4522	1675
4523	1944
4524	1945
4525	1946
4526	202
4527	1947
4528	110
4529	1948
4530	251
4531	20
4532	106
4533	1949
4534	371
4535	1797
4536	1950
4537	371
4538	73
4539	407
4540	1951
4541	1952
4542	1953
4543	1748
4544	1954
4545	1955
4546	7
4547	1956
4548	1957
4549	1958
4550	405
4551	7
4552	1941
4553	1959
4554	1960
4555	1961
4556	1962
4557	1963
4558	1964
4559	1965
4560	1966
4561	110
4562	1967
4563	957
4564	1968
4565	1969
4566	1970
4567	1971
4568	1972
4569	1973
4570	491
4571	1974
4572	1975
4573	646
4574	1976
4575	272
4576	1165
4577	1977
4578	1978
4579	1979
4580	1980
4581	5
4582	1981
4583	1982
4584	371
4585	1861
4586	1983
4587	1984
4588	20
4589	20
4590	1657
4591	453
4592	1985
4593	1986
4594	174
4595	106
4596	1987
4597	844
4598	106
4599	318
4600	1988
4601	141
4602	1989
4603	1990
4604	371
4605	1864
4606	1991
4607	1797
4608	1787
4609	1664
4610	20
4611	1992
4612	1993
4613	873
4614	371
4615	1994
4616	1995
4617	1996
4618	1997
4619	73
4620	371
4621	1998
4622	174
4623	1381
4624	1999
4625	2000
4626	1776
4627	141
4628	110
4629	2001
4630	141
4631	248
4632	371
4633	1673
4634	444
4635	2002
4636	2003
4637	73
4638	2004
4639	2005
4640	141
4641	1440
4642	1439
4643	2006
4644	2007
4645	2008
4646	2009
4647	71
4648	2010
4649	2011
4650	371
4651	2012
4652	2013
4653	2014
4654	2015
4655	371
4656	2016
4657	141
4658	2017
4659	2018
4660	2019
4661	1440
4662	1806
4663	2020
4664	371
4665	1719
4666	1903
4667	1829
4668	2021
4669	2022
4670	1170
4671	2023
4672	75
4673	2024
4674	2025
4675	371
4676	2026
4677	2027
4678	2028
4679	2029
4680	2030
4681	2031
4682	725
4683	1829
4684	2032
4685	2033
4686	2034
4687	20
4688	2035
4689	416
4690	2036
4691	2037
4692	2038
4693	2039
4694	2040
4695	2041
4696	2042
4697	631
4698	369
4699	2043
4700	1950
4701	248
4702	2044
4703	2045
4704	2046
4705	248
4706	1506
4707	2047
4708	2048
4709	2049
4710	2050
4711	2051
4712	16
4713	2052
4714	2053
4715	2054
4716	1675
4717	110
4718	2055
4719	1804
4720	71
4721	2056
4722	2057
4723	26
4724	2058
4725	73
4726	2059
4727	2060
4728	2061
4729	2062
4730	2063
4731	1748
4732	272
4733	110
4734	2064
4735	2065
4736	2066
4737	2047
4738	2067
4739	2068
4740	2069
4741	2070
4742	2071
4743	2072
4744	2073
4745	2074
4746	2075
4747	2076
4748	2077
4749	474
4750	1968
4751	20
4752	33
4753	2078
4754	2079
4755	2080
4756	2081
4757	2082
4758	141
4759	2083
4760	2084
4761	1861
4762	2085
4763	2086
4764	2087
4765	2088
4766	2089
4767	2090
4768	765
4769	1797
4770	2091
4771	2092
4772	2093
4773	724
4774	141
4775	248
4776	248
4777	2056
4778	2094
4779	2095
4780	2096
4781	371
4782	2097
4783	2098
4784	2099
4785	248
4786	2100
4787	1863
4788	566
4789	2101
4790	2102
4791	2103
4792	2104
4793	2105
4794	1787
4795	2106
4796	248
4797	2107
4798	2108
4799	2109
4800	2110
4801	20
4802	141
4803	2111
4804	47
4805	2112
4806	346
4807	1855
4808	1751
4809	2113
4810	2114
4811	20
4812	2098
4813	2115
4814	2116
4815	1774
4816	2117
4817	2118
4818	2119
4819	2109
4820	248
4821	2120
4822	1675
4823	407
4824	248
4825	1927
4826	2121
4827	2122
4828	2123
4829	1182
4830	2124
4831	2125
4832	2126
4833	340
4834	2127
4835	2128
4836	2129
4837	2130
4838	2131
4839	371
4840	1675
4841	327
4842	2132
4843	2133
4844	2134
4845	2135
4846	251
4847	2136
4848	2137
4849	2138
4850	513
4851	2139
4852	1861
4853	141
4854	405
4855	2140
4856	1776
4857	2141
4858	2142
4859	2143
4860	2144
4861	110
4862	141
4863	724
4864	2145
4865	371
4866	2146
4867	2147
4868	1675
4869	427
4870	2148
4871	2149
4872	2150
4873	141
4874	2151
4875	2152
4876	26
4877	2153
4878	2154
4879	2155
4880	294
4881	2156
4882	2157
4883	34
4884	141
4885	58
4886	7
4887	2158
4888	2159
4889	356
4890	2160
4891	2161
4892	20
4893	2162
4894	2163
4895	2164
4896	2165
4897	2166
4898	2167
4899	2168
4900	2169
4901	2170
4902	422
4903	2171
4904	2172
4905	2173
4906	2174
4907	110
4908	248
4909	1724
4910	2175
4911	2176
4912	2177
4913	248
4914	2178
4915	54
4916	2179
4917	2180
4918	190
4919	2181
4920	371
4921	2182
4922	663
4923	2183
4924	2184
4925	2185
4926	2186
4927	2187
4928	371
4929	1165
4930	2188
4931	724
4932	2189
4933	2190
4934	861
4935	2191
4936	141
4937	2192
4938	202
4939	2193
4940	2194
4941	1797
4942	2195
4943	202
4944	174
4945	2020
4946	294
4947	2196
4948	141
4949	2197
4950	2198
4951	2199
4952	2200
4953	141
4954	484
4955	2201
4956	2202
4957	2203
4958	416
4959	2204
4960	1748
4961	1031
4962	2205
4963	2206
4964	2207
4965	2208
4966	340
4967	2209
4968	2210
4969	371
4970	33
4971	2211
4972	2212
4973	884
4974	2213
4975	371
4976	2214
4977	2215
4978	842
4979	1804
4980	2216
4981	2047
4982	2217
4983	2218
4984	2047
4985	2219
4986	618
4987	248
4988	2220
4989	16
4990	1056
4991	2221
4992	2222
4993	141
4994	957
4995	1724
4996	2223
4997	2224
4998	141
4999	2225
5000	174
5001	2226
5002	2227
5003	2228
5004	202
5005	141
5006	2229
5007	2230
5008	2231
5009	2232
5010	2233
5011	371
5012	2234
5013	2235
5014	2236
5015	110
5016	1861
5017	1673
5018	2237
5019	2238
5020	398
5021	2239
5022	395
5023	1675
5024	2240
5025	1506
5026	2241
5027	1711
5028	2242
5029	2243
5030	2244
5031	973
5032	2245
5033	2246
5034	357
5035	2247
5036	453
5037	218
5038	2248
5039	2249
5040	1967
5041	2250
5042	517
5043	2251
5044	2252
5045	2253
5046	2254
5047	141
5048	724
5049	1465
5050	407
5051	2255
5052	2256
5053	1780
5054	252
5055	605
5056	2257
5057	2258
5058	2259
5059	371
5060	1899
5061	2260
5062	2261
5063	1465
5064	7
5065	73
5066	2020
5067	2262
5068	925
5069	31
5070	1970
5071	2263
5072	371
5073	100
5074	512
5075	383
5076	2264
5077	2265
5078	2266
5079	2267
5080	631
5081	370
5082	382
5083	2268
5084	2142
5085	2269
5086	73
5087	340
5088	1011
5089	2270
5090	2271
5091	1654
5092	1804
5093	2272
5094	1686
5095	2273
5096	2274
5097	436
5098	2275
5099	1031
5100	479
5101	45
5102	2276
5103	2277
5104	2278
5105	818
5106	1439
5107	2279
5108	2280
5109	2281
5110	2282
5111	255
5112	141
5113	2057
5114	2283
5115	2284
5116	2285
5117	2286
5118	2287
5119	2278
5120	1825
5121	2074
5122	2288
5123	2289
5124	1804
5125	2290
5126	1804
5127	2291
5128	2292
5129	2121
5130	2293
5131	1864
5132	2294
5133	2295
5134	2296
5135	2297
5136	202
5137	407
5138	2298
5139	382
5140	2299
5141	2300
5142	1711
5143	1487
5144	2301
5145	2302
5146	248
5147	1797
5148	2303
5149	2304
5150	2305
5151	1465
5152	2093
5153	232
5154	2306
5155	2307
5156	382
5157	2308
5158	1788
5159	1170
5160	1218
5161	2309
5162	968
5163	1251
5164	2310
5165	1439
5166	141
5167	2311
5168	294
5169	2312
5170	20
5171	141
5172	2313
5173	294
5174	515
5175	2314
5176	2315
5177	2316
5178	2317
5179	2318
5180	2319
5181	2320
5182	2321
5183	2322
5184	371
5185	2323
5186	47
5187	369
5188	2324
5189	2325
5190	2326
5191	646
5192	2327
5193	2328
5194	100
5195	2329
5196	553
5197	650
5198	141
5199	2330
5200	2331
5201	2332
5202	2298
5203	369
5204	2333
5205	724
5206	2334
5207	106
5208	2335
5209	1031
5210	31
5211	141
5212	371
5213	232
5214	379
5215	174
5216	527
5217	47
5218	2336
5219	724
5220	318
5221	1788
5222	1031
5223	2337
5224	2338
5225	2339
5226	2340
5227	515
5228	1912
5229	2341
5230	2342
5231	2256
5232	873
5233	818
5234	2343
5235	2344
5236	2345
5237	607
5238	605
5239	515
5240	2346
5241	141
5242	2347
5243	1798
5244	2348
5245	1199
5246	371
5247	1774
5248	2349
5249	202
5250	202
5251	47
5252	2350
5253	2351
5254	2352
5255	382
5256	45
5257	2353
5258	2354
5259	2355
5260	2356
5261	407
5262	2278
5263	948
5264	407
5265	2357
5266	141
5267	73
5268	56
5269	2358
5270	2359
5271	397
5272	1421
5273	2003
5274	141
5275	2074
5276	513
5277	819
5278	2360
5279	2361
5280	2362
5281	994
5282	407
5283	2363
5284	2364
5285	2365
5286	2366
5287	232
5288	2367
5289	631
5290	631
5291	2368
5292	2369
5293	436
5294	803
5295	2370
5296	2371
5297	2372
5298	618
5299	383
5300	2373
5301	2374
5302	2375
5303	443
5304	2376
5305	663
5306	174
5307	141
5308	2163
5309	2377
5310	73
5311	2378
5312	2379
5313	2380
5314	2381
5315	2382
5316	255
5317	2383
5318	174
5319	2384
5320	2349
5321	431
5322	2385
5323	756
5324	2386
5325	73
5326	821
5327	1031
5328	141
5329	318
5330	1439
5331	2387
5332	2388
5333	591
5334	2389
5335	2390
5336	2391
5337	2392
5338	73
5339	2393
5340	110
5341	407
5342	106
5343	2394
5344	202
5345	141
5346	2395
5347	851
5348	145
5349	2396
5350	2397
5351	56
5352	2398
5353	2399
5354	605
5355	141
5356	2400
5357	2401
5358	47
5359	202
5360	2402
5361	586
5362	2403
5363	2404
5364	2123
5365	2405
5366	2406
5367	2407
5368	230
5369	355
5370	515
5371	2408
5372	611
5373	2225
5374	2409
5375	2410
5376	479
5377	2411
5378	110
5379	2412
5380	202
5381	141
5382	2413
5383	849
5384	842
5385	2414
5386	2415
5387	2416
5388	340
5389	2417
5390	873
5391	873
5392	2418
5393	2419
5394	2420
5395	2421
5396	2422
5397	2423
5398	71
5399	2424
5400	219
5401	2425
5402	2426
5403	2373
5404	2427
5405	2428
5406	2429
5407	371
5408	492
5409	2430
5410	2431
5411	2388
5412	946
5413	2432
5414	2433
5415	2367
5416	2434
5417	474
5418	2435
5419	47
5420	2260
5421	294
5422	2436
5423	73
5424	2437
5425	202
5426	2438
5427	2439
5428	2440
5429	346
5430	2441
5431	2442
5432	725
5433	2443
5434	73
5435	818
5436	2444
5437	911
5438	397
5439	2445
5440	407
5441	316
5442	2446
5443	2447
5444	2448
5445	47
5446	202
5447	301
5448	1439
5449	174
5450	2449
5451	2450
5452	2230
5453	994
5454	2451
5455	2364
5456	2452
5457	653
5458	369
5459	2453
5460	2454
5461	2455
5462	2456
5463	2457
5464	2458
5465	2459
5466	2460
5467	1031
5468	2461
5469	2462
5470	879
5471	355
5472	47
5473	56
5474	2463
5475	73
5476	481
5477	141
5478	251
5479	591
5480	371
5481	2464
5482	141
5483	2465
5484	272
5485	174
5486	232
5487	786
5488	313
5489	346
5490	202
5491	355
5492	2466
5493	202
5494	47
5495	141
5496	2467
5497	141
5498	605
5499	379
5500	232
5501	2449
5502	56
5503	2468
5504	2469
5505	2211
5506	2093
5507	2470
5508	646
5509	925
5510	141
5511	2390
5512	2471
5513	2472
5514	2473
5515	1861
5516	2237
5517	2474
5518	47
5519	2475
5520	2476
5521	2477
5522	318
5523	604
5524	756
5525	2478
5526	174
5527	1182
5528	2479
5529	230
5530	294
5531	2480
5532	2481
5533	607
5534	2230
5535	141
5536	932
5537	2482
5538	2483
5539	407
5540	2484
5541	2485
5542	207
5543	2486
5544	56
5545	2487
5546	2488
5547	2373
5548	2201
5549	2489
5550	2490
5551	653
5552	2491
5553	2492
5554	2493
5555	2494
5556	2495
5557	724
5558	2496
5559	2497
5560	2498
5561	2499
5562	2500
5563	73
5564	56
5565	2501
5566	47
5567	702
5568	2502
5569	2503
5570	1071
5571	174
5572	443
5573	2449
5574	2504
5575	141
5576	2505
5577	842
5578	2506
5579	724
5580	2507
5581	2508
5582	818
5583	251
5584	382
5585	174
5586	2264
5587	515
5588	327
5589	2509
5590	484
5591	2510
5592	515
5593	2511
5594	818
5595	2512
5596	318
5597	649
5598	2513
5599	2514
5600	2515
5601	646
5602	2516
5603	1719
5604	2517
5605	2518
5606	2519
5607	2520
5608	2521
5609	719
5610	1201
5611	2522
5612	443
5613	2523
5614	2524
5615	2525
5616	2080
5617	2526
5618	2527
5619	2528
5620	141
5621	2529
5622	106
5623	73
5624	407
5625	141
5626	650
5627	2530
5628	109
5629	2531
5630	2532
5631	2053
5632	2505
5633	2533
5634	369
5635	2534
5636	2535
5637	873
5638	2536
5639	2537
5640	228
5641	376
5642	2538
5643	2539
5644	1657
5645	2540
5646	1031
5647	923
5648	724
5649	2541
5650	2542
5651	47
5652	2543
5653	2544
5654	2545
5655	959
5656	2546
5657	2547
5658	2548
5659	405
5660	1031
5661	2420
5662	110
5663	2549
5664	56
5665	2550
5666	302
5667	407
5668	2551
5669	666
5670	141
5671	2552
5672	2302
5673	407
5674	2553
5675	2410
5676	2315
5677	5
5678	2554
5679	110
5680	1967
5681	2555
5682	844
5683	2556
5684	724
5685	2557
5686	2558
5687	407
5688	2559
5689	2560
5690	2561
5691	2562
5692	156
5693	948
5694	141
5695	1170
5696	2563
5697	607
5698	2564
5699	813
5700	2565
5701	2566
5702	407
5703	2567
5704	1170
5705	1222
5706	141
5707	479
5708	397
5709	2568
5710	2361
5711	818
5712	2569
5713	2380
5714	2130
5715	1031
5716	2570
5717	777
5718	2571
5719	2536
5720	83
5721	2572
5722	2573
5723	1941
5724	202
5725	724
5726	2574
5727	369
5728	2575
5729	2576
5730	605
5731	851
5732	2577
5733	2482
5734	1097
5735	2578
5736	2579
5737	1143
5738	2449
5739	2580
5740	1182
5741	978
5742	517
5743	316
5744	2581
5745	2582
5746	47
5747	45
5748	2583
5749	649
5750	2584
5751	715
5752	218
5753	2585
5754	407
5755	2586
5756	715
5757	1477
5758	2449
5759	2587
5760	932
5761	230
5762	592
5763	2588
5764	1465
5765	1081
5766	47
5767	546
5768	2589
5769	654
5770	294
5771	1217
5772	2590
5773	803
5774	646
5775	1275
5776	2130
5777	721
5778	646
5779	2591
5780	1967
5781	513
5782	2420
5783	73
5784	2592
5785	7
5786	772
5787	2593
5788	2594
5789	2595
5790	2596
5791	2597
5792	664
5793	316
5794	45
5795	47
5796	557
5797	83
5798	2074
5799	873
5800	724
5801	2598
5802	2599
5803	110
5804	765
5805	2600
5806	479
5807	405
5808	558
5809	2601
5810	2602
5811	771
5812	2603
5813	2604
5814	1183
5815	45
5816	2605
5817	405
5818	2606
5819	2505
5820	2607
5821	294
5822	2608
5823	2609
5824	2381
5825	2610
5826	2611
5827	45
5828	2612
5829	2613
5830	2424
5831	407
5832	2614
5833	2615
5834	1711
5835	137
5836	2616
5837	1654
5838	849
5839	607
5840	2617
5841	202
5842	1182
5843	218
5844	407
5845	173
5846	981
5847	2618
5848	2619
5849	174
5850	948
5851	605
5852	346
5853	232
5854	515
5855	47
5856	702
5857	2620
5858	1788
5859	2093
5860	2621
5861	2491
5862	613
5863	873
5864	724
5865	2622
5866	650
5867	474
5868	2623
5869	2624
5870	316
5871	318
5872	2625
5873	2626
5874	2627
5875	228
5876	2628
5877	174
5878	110
5879	2629
5880	47
5881	1071
5882	2630
5883	2631
5884	174
5885	174
5886	474
5887	719
5888	2632
5889	2633
5890	202
5891	251
5892	73
5893	110
5894	1106
5895	2410
5896	2634
5897	2635
5898	884
5899	515
5900	1780
5901	318
5902	553
5903	515
5904	842
5905	590
5906	47
5907	318
5908	2074
5909	2636
5910	232
5911	230
5912	2637
5913	174
5914	407
5915	613
5916	47
5917	2599
5918	1031
5919	2410
5920	848
5921	2638
5922	1037
5923	369
5924	1031
5925	73
5926	116
5927	381
5928	2639
5929	174
5930	2640
5931	2641
5932	2642
5933	1183
5934	1867
5935	2479
5936	1941
5937	2643
5938	631
5939	2644
5940	2645
5941	2646
5942	251
5943	479
5944	2647
5945	369
5946	5
5947	2648
5948	2649
5949	925
5950	2650
5951	347
5952	2651
5953	2652
5954	479
5955	711
5956	313
5957	2582
5958	2653
5959	602
5960	407
5961	849
5962	2654
5963	911
5964	2655
5965	47
5966	141
5967	2553
5968	2656
5969	2657
5970	2658
5971	2410
5972	2659
5973	2660
5974	702
5975	47
5976	2532
5977	407
5978	2661
5979	607
5980	2662
5981	2663
5982	2664
5983	2665
5984	2666
5985	653
5986	2475
5987	230
5988	327
5989	1143
5990	407
5991	2667
5992	369
5993	202
5994	2668
5995	654
5996	2669
5997	2497
5998	2670
5999	2671
6000	2672
6001	218
6002	2673
6003	553
6004	923
6005	2607
6006	2434
6007	47
6008	2674
6009	2497
6010	948
6011	407
6012	864
6013	577
6014	2675
6015	2676
6016	2677
6017	346
6018	756
6019	2678
6020	2679
6021	654
6022	2680
6023	2681
6024	2003
6025	2682
6026	744
6027	2683
6028	586
6029	2587
6030	2684
6031	106
6032	2685
6033	443
6034	2686
6035	2687
6036	47
6037	318
6038	2688
6039	2689
6040	2402
6041	174
6042	2690
6043	141
6044	346
6045	696
6046	2691
6047	2692
6048	2693
6049	452
6050	2694
6051	2013
6052	2695
6053	2696
6054	554
6055	2697
6056	607
6057	1222
6058	653
6059	318
6060	174
6061	515
6062	56
6063	591
6064	355
6065	397
6066	1006
6067	607
6068	174
6069	174
6070	47
6071	355
6072	2698
6073	2699
6074	202
6075	318
6076	546
6077	515
6078	702
6079	2700
6080	650
6081	2701
6082	2636
6083	174
6084	2702
6085	2703
6086	2704
6087	2361
6088	2705
6089	228
6090	479
6091	2706
6092	803
6093	2707
6094	2631
6095	613
6096	2708
6097	2709
6098	2710
6099	2711
6100	2712
6101	2713
6102	2714
6103	886
6104	873
6105	474
6106	2715
6107	73
6108	2657
6109	2716
6110	513
6111	452
6112	2717
6113	2361
6114	73
6115	479
6116	230
6117	73
6118	756
6119	2718
6120	577
6121	728
6122	2719
6123	318
6124	1047
6125	602
6126	47
6127	1031
6128	2532
6129	2720
6130	137
6131	756
6132	2721
6133	2722
6134	327
6135	2627
6136	592
6137	948
6138	2080
6139	202
6140	474
6141	1866
6142	1557
6143	174
6144	5
6145	288
6146	2093
6147	251
6148	230
6149	646
6150	355
6151	73
6152	2093
6153	1625
6154	2723
6155	2724
6156	2725
6157	557
6158	2726
6159	1165
6160	2727
6161	2093
6162	2728
6163	550
6164	515
6165	2729
6166	646
6167	2730
6168	2731
6169	2732
6170	355
6171	2733
6172	724
6173	2734
6174	527
6175	2688
6176	611
6177	2251
6178	873
6179	397
6180	495
6181	2735
6182	2629
6183	2736
6184	515
6185	1485
6186	2737
6187	106
6188	2738
6189	925
6190	2739
6191	2740
6192	2741
6193	2742
6194	407
6195	2743
6196	2744
6197	550
6198	2745
6199	47
6200	702
6201	2746
6202	2747
6203	106
6204	654
6205	5
6206	1228
6207	2748
6208	948
6209	605
6210	2749
6211	47
6212	1006
6213	591
6214	230
6215	174
6216	2750
6217	202
6218	369
6219	2751
6220	2752
6221	724
6222	513
6223	2753
6224	2754
6225	2755
6226	2756
6227	724
6228	646
6229	2757
6230	1031
6231	355
6232	2758
6233	2759
6234	355
6235	2760
6236	513
6237	702
6238	141
6239	294
6240	347
6241	230
6242	981
6243	2761
6244	232
6245	202
6246	2762
6247	2763
6248	2033
6249	47
6250	407
6251	2230
6252	2764
6253	654
6254	590
6255	1866
6256	702
6257	2765
6258	174
6259	2766
6260	318
6261	2767
6262	994
6263	407
6264	844
6265	2768
6266	2769
6267	2770
6268	294
6269	527
6270	1218
6271	174
6272	2771
6273	2772
6274	719
6275	2426
6276	47
6277	174
6278	174
6279	2773
6280	2774
6281	515
6282	443
6283	327
6284	1484
6285	230
6286	230
6287	174
6288	1381
6289	251
6290	2702
6291	629
6292	2775
6293	2776
6294	174
6295	2777
6296	654
6297	47
6298	318
6299	2778
6300	2375
6301	849
6302	397
6303	484
6304	2779
6305	369
6306	2780
6307	141
6308	818
6309	47
6310	2781
6311	318
6312	2782
6313	818
6314	2783
6315	923
6316	2291
6317	47
6318	2784
6319	47
6320	2785
6321	218
6322	318
6323	443
6324	2786
6325	355
6326	2743
6327	2787
6328	141
6329	346
6330	873
6331	2788
6332	696
6333	1461
6334	613
6335	47
6336	2789
6337	646
6338	106
6339	592
6340	2790
6341	1711
6342	495
6343	1461
6344	2791
6345	2792
6346	2793
6347	1201
6348	702
6349	591
6350	230
6351	948
6352	2794
6353	174
6354	230
6355	663
6356	2795
6357	218
6358	702
6359	346
6360	844
6361	2796
6362	1349
6363	702
6364	646
6365	2797
6366	702
6367	45
6368	73
6369	2482
6370	844
6371	553
6372	2798
6373	2799
6374	2800
6375	2801
6376	515
6377	2449
6378	2802
6379	1170
6380	1006
6381	932
6382	663
6383	2803
6384	1867
6385	2804
6386	47
6387	355
6388	1165
6389	545
6390	346
6391	2805
6392	1941
6393	2806
6394	252
6395	2807
6396	752
6397	2808
6398	141
6399	479
6400	2809
6401	218
6402	45
6403	47
6404	650
6405	2810
6406	592
6407	2811
6408	355
6409	1461
6410	2812
6411	862
6412	2813
6413	2814
6414	2815
6415	1941
6416	47
6417	1014
6418	591
6419	407
6420	1014
6421	106
6422	932
6423	1006
6424	230
6425	2816
6426	174
6427	605
6428	756
6429	2817
6430	1067
6431	1170
6432	474
6433	611
6434	1047
6435	2818
6436	592
6437	605
6438	251
6439	908
6440	2819
6441	2820
6442	567
6443	2821
6444	515
6445	1031
6446	202
6447	2822
6448	407
6449	2823
6450	2381
6451	407
6452	2824
6453	230
6454	2825
6455	948
6456	1361
6457	2826
6458	232
6459	2827
6460	517
6461	2434
6462	443
6463	318
6464	2828
6465	355
6466	355
6467	2406
6468	397
6469	382
6470	702
6471	2829
6472	399
6473	981
6474	795
6475	230
6476	2830
6477	2831
6478	2832
6479	2833
6480	2700
6481	2733
6482	2093
6483	2834
6484	355
6485	407
6486	2835
6487	174
6488	1031
6489	318
6490	2836
6491	515
6492	294
6493	141
6494	2449
6495	2837
6496	2838
6497	2839
6498	2840
6499	2841
6500	2133
6501	370
6502	2842
6503	2843
6504	2844
6505	2773
6506	174
6507	355
6508	474
6509	1031
6510	1207
6511	479
6512	355
6513	484
6514	702
6515	2845
6516	702
6517	2846
6518	2246
6519	2847
6520	2848
6521	2849
6522	185
6523	2598
6524	2850
6525	948
6526	605
6527	479
6528	377
6529	232
6530	1029
6531	923
6532	230
6533	2851
6534	724
6535	2852
6536	835
6537	484
6538	255
6539	47
6540	2853
6541	2854
6542	923
6543	174
6544	407
6545	479
6546	495
6547	586
6548	482
6549	174
6550	5
6551	2855
6552	230
6553	174
6554	2856
6555	2857
6556	557
6557	443
6558	380
6559	171
6560	2858
6561	2052
6562	650
6563	702
6564	803
6565	370
6566	2859
6567	2860
6568	2861
6569	2862
6570	355
6571	407
6572	2863
6573	661
6574	230
6575	1031
6576	2864
6577	499
6578	47
6579	925
6580	2865
6581	427
6582	844
6583	369
6584	474
6585	2866
6586	455
6587	106
6588	2827
6589	355
6590	637
6591	230
6592	1043
6593	47
6594	2867
6595	646
6596	2868
6597	646
6598	1031
6599	474
6600	1047
6601	2869
6602	923
6603	2870
6604	47
6605	2871
6606	702
6607	2872
6608	2873
6609	2753
6610	1377
6611	513
6612	586
6613	2874
6614	495
6615	407
6616	313
6617	383
6618	577
6619	174
6620	230
6621	728
6622	842
6623	106
6624	1006
6625	318
6626	2875
6627	2876
6628	2877
6629	2878
6630	2879
6631	605
6632	2880
6633	1043
6634	141
6635	355
6636	650
6637	2881
6638	2882
6639	369
6640	294
6641	355
6642	2883
6643	2598
6644	443
6645	2884
6646	479
6647	1461
6648	355
6649	174
6650	2630
6651	1031
6652	2757
6653	526
6654	2850
6655	2587
6656	728
6657	2885
6658	369
6659	2886
6660	515
6661	47
6662	2887
6663	605
6664	756
6665	443
6666	605
6667	2888
6668	1251
6669	2877
6670	2889
6671	613
6672	225
6673	573
6674	994
6675	605
6676	663
6677	2890
6678	1006
6679	479
6680	174
6681	230
6682	2891
6683	2286
6684	2499
6685	527
6686	2875
6687	479
6688	719
6689	653
6690	2892
6691	174
6692	202
6693	318
6694	2893
6695	2428
6696	2894
6697	2895
6698	480
6699	2896
6700	887
6701	407
6702	661
6703	2897
6704	728
6705	346
6706	649
6707	2898
6708	174
6709	646
6710	1170
6711	2741
6712	2899
6713	174
6714	47
6715	615
6716	2900
6717	47
6718	47
6719	2901
6720	474
6721	2902
6722	474
6723	346
6724	2903
6725	2904
6726	251
6727	294
6728	607
6729	474
6730	553
6731	1941
6732	2644
6733	1186
6734	492
6735	2905
6736	948
6737	2906
6738	230
6739	2907
6740	1217
6741	728
6742	407
6743	2908
6744	1006
6745	294
6746	2788
6747	474
6748	728
6749	1031
6750	2676
6751	479
6752	2909
6753	443
6754	925
6755	45
6756	2657
6757	355
6758	2910
6759	47
6760	2080
6761	1031
6762	405
6763	2655
6764	2505
6765	294
6766	557
6767	513
6768	873
6769	946
6770	355
6771	515
6772	605
6773	646
6774	2354
6775	474
6776	2911
6777	174
6778	2912
6779	2913
6780	2813
6781	174
6782	756
6783	174
6784	316
6785	479
6786	202
6787	702
6788	2291
6789	495
6790	2366
6791	369
6792	174
6793	2914
6794	650
6795	2788
6796	925
6797	2915
6798	47
6799	218
6800	2801
6801	948
6802	2163
6803	1031
6804	230
6805	346
6806	174
6807	2483
6808	2916
6809	605
6810	1217
6811	251
6812	47
6813	2917
6814	482
6815	586
6816	174
6817	230
6818	756
6819	923
6820	355
6821	202
6822	397
6823	2918
6824	2919
6825	948
6826	369
6827	2920
6828	443
6829	2921
6830	2922
6831	911
6832	185
6833	230
6834	318
6835	318
6836	355
6837	795
6838	2923
6839	611
6840	294
6841	2924
6842	663
6843	251
6844	1006
6845	431
6846	230
6847	346
6848	1217
6849	1006
6850	174
6851	550
6852	452
6853	646
6854	702
6855	2925
6856	2926
6857	174
6858	959
6859	663
6860	821
6861	1254
6862	873
6863	369
6864	174
6865	2927
6866	817
6867	2928
6868	1014
6869	2380
6870	803
6871	1028
6872	663
6873	2929
6874	230
6875	2627
6876	47
6877	1477
6878	702
6879	313
6880	255
6881	756
6882	650
6883	2697
6884	2930
6885	1461
6886	2931
6887	604
6888	2366
6889	2666
6890	106
6891	803
6892	702
6893	702
6894	479
6895	2932
6896	752
6897	2933
6898	844
6899	1029
6900	106
6901	1367
6902	981
6903	2934
6904	479
6905	2935
6906	202
6907	849
6908	849
6909	2936
6910	959
6911	318
6912	1047
6913	173
6914	2361
6915	2937
6916	2938
6917	56
6918	2133
6919	515
6920	71
6921	2939
6922	2940
6923	174
6924	174
6925	2941
6926	56
6927	2942
6928	370
6929	557
6930	174
6931	586
6932	2862
6933	719
6934	2943
6935	653
6936	829
6937	2944
6938	1625
6939	2945
6940	474
6941	591
6942	2946
6943	106
6944	1251
6945	873
6946	2947
6947	2948
6948	728
6949	2949
6950	47
6951	728
6952	2950
6953	474
6954	591
6955	586
6956	605
6957	1029
6958	513
6959	2951
6960	2952
6961	2865
6962	515
6963	2683
6964	47
6965	1480
6966	294
6967	2375
6968	252
6969	2953
6970	515
6971	577
6972	479
6973	2877
6974	586
6975	47
6976	47
6977	255
6978	702
6979	407
6980	47
6981	2954
6982	994
6983	106
6984	45
6985	756
6986	646
6987	346
6988	397
6989	2505
6990	2955
6991	73
6992	443
6993	557
6994	728
6995	2877
6996	474
6997	2908
6998	47
6999	397
7000	2956
7001	1421
7002	56
7003	174
7004	2449
7005	370
7006	2957
7007	47
7008	2633
7009	653
7010	2788
7011	2602
7012	2958
7013	948
7014	765
7015	2491
7016	2959
7017	2702
7018	2960
7019	219
7020	605
7021	948
7022	2768
7023	2961
7024	719
7025	2962
7026	2963
7027	2964
7028	2788
7029	2965
7030	2080
7031	2966
7032	1654
7033	47
7034	47
7035	2033
7036	844
7037	646
7038	726
7039	174
7040	646
7041	2434
7042	719
7043	479
7044	1461
7045	153
7046	2967
7047	728
7048	994
7049	2968
7050	443
7051	1043
7052	577
7053	2969
7054	1941
7055	2260
7056	230
7057	633
7058	2572
7059	702
7060	2970
7061	1941
7062	2971
7063	491
7064	2855
7065	654
7066	886
7067	1182
7068	1043
7069	2542
7070	230
7071	174
7072	702
7073	443
7074	911
7075	474
7076	2651
7077	397
7078	2972
7079	2399
7080	318
7081	2329
7082	2973
7083	728
7084	355
7085	474
7086	2974
7087	174
7088	849
7089	2567
7090	407
7091	515
7092	346
7093	1412
7094	848
7095	1029
7096	873
7097	2424
7098	590
7099	2453
7100	2975
7101	849
7102	682
7103	230
7104	397
7105	383
7106	174
7107	756
7108	611
7109	397
7110	255
7111	2449
7112	2976
7113	347
7114	515
7115	803
7116	2406
7117	2522
7118	505
7119	1067
7120	2977
7121	1251
7122	230
7123	397
7124	821
7125	1031
7126	650
7127	646
7128	873
7129	230
7130	660
7131	474
7132	2607
7133	1867
7134	2733
7135	724
7136	116
7137	756
7138	2564
7139	1218
7140	346
7141	646
7142	47
7143	47
7144	2978
7145	225
7146	174
7147	5
7148	355
7149	1654
7150	844
7151	407
7152	2979
7153	369
7154	873
7155	443
7156	230
7157	47
7158	550
7159	2033
7160	2286
7161	2980
7162	479
7163	355
7164	479
7165	2981
7166	479
7167	513
7168	355
7169	2380
7170	1014
7171	230
7172	2607
7173	397
7174	316
7175	174
7176	479
7177	346
7178	592
7179	479
7180	474
7181	474
7182	550
7183	948
7184	2982
7185	2983
7186	646
7187	2984
7188	2600
7189	844
7190	702
7191	2721
7192	2985
7193	2986
7194	230
7195	106
7196	495
7197	2987
7198	2988
7199	202
7200	765
7201	553
7202	2989
7203	994
7204	527
7205	56
7206	230
7207	255
7208	558
7209	981
7210	185
7211	230
7212	2990
7213	2991
7214	663
7215	474
7216	443
7217	1031
7218	2992
7219	47
7220	2993
7221	515
7222	2994
7223	2995
7224	47
7225	948
7226	255
7227	719
7228	591
7229	2522
7230	873
7231	369
7232	948
7233	479
7234	405
7235	2996
7236	527
7237	1170
7238	154
7239	2997
7240	2998
7241	174
7242	479
7243	407
7244	397
7245	407
7246	2999
7247	3000
7248	443
7249	646
7250	586
7251	702
7252	174
7253	3001
7254	346
7255	3002
7256	294
7257	174
7258	702
7259	2950
7260	728
7261	3003
7262	346
7263	3004
7264	3005
7265	2406
7266	590
7267	654
7268	47
7269	174
7270	1479
7271	663
7272	719
7273	174
7274	355
7275	230
7276	452
7277	3006
7278	3007
7279	495
7280	230
7281	756
7282	355
7283	586
7284	948
7285	1031
7286	515
7287	3008
7288	3009
7289	2497
7290	355
7291	3010
7292	47
7293	803
7294	47
7295	3011
7296	2080
7297	2883
7298	47
7299	47
7300	586
7301	174
7302	106
7303	2592
7304	2875
7305	3012
7306	230
7307	756
7308	613
7309	3013
7310	864
7311	2366
7312	558
7313	474
7314	346
7315	56
7316	2845
7317	3014
7318	474
7319	2033
7320	174
7321	591
7322	230
7323	495
7324	664
7325	479
7326	407
7327	346
7328	656
7329	3015
7330	346
7331	355
7332	369
7333	474
7334	702
7335	3016
7336	443
7337	728
7338	2867
7339	313
7340	873
7341	106
7342	218
7343	3017
7344	474
7345	479
7346	474
7347	719
7348	994
7349	702
7350	702
7351	2543
7352	479
7353	109
7354	663
7355	407
7356	407
7357	925
7358	355
7359	646
7360	230
7361	3018
7362	2875
7363	383
7364	2865
7365	64
7366	3019
7367	3020
7368	474
7369	174
7370	174
7371	3021
7372	2424
7373	592
7374	455
7375	2607
7376	479
7377	2697
7378	873
7379	513
7380	3022
7381	948
7382	946
7383	1029
7384	47
7385	851
7386	294
7387	2367
7388	2291
7389	702
7390	474
7391	1170
7392	313
7393	605
7394	513
7395	313
7396	130
7397	702
7398	550
7399	3023
7400	2671
7401	646
7402	573
7403	602
7404	592
7405	3024
7406	653
7407	808
7408	591
7409	2875
7410	702
7411	591
7412	230
7413	202
7414	479
7415	650
7416	646
7417	370
7418	702
7419	1217
7420	174
7421	702
7422	1170
7423	2366
7424	1031
7425	3025
7426	3026
7427	3027
7428	355
7429	1031
7430	397
7431	1941
7432	2788
7433	3028
7434	550
7435	174
7436	3029
7437	3030
7438	719
7439	2491
7440	355
7441	174
7442	479
7443	3031
7444	613
7445	3032
7446	174
7447	3033
7448	3034
7449	1040
7450	1866
7451	664
7452	2434
7453	2491
7454	174
7455	3035
7456	702
7457	2567
7458	355
7459	821
7460	2008
7461	2883
7462	948
7463	3036
7464	174
7465	3037
7466	2542
7467	592
7468	981
7469	174
7470	591
7471	527
7472	663
7473	174
7474	803
7475	557
7476	2542
7477	2798
7478	724
7479	873
7480	3038
7481	728
7482	313
7483	443
7484	443
7485	646
7486	294
7487	495
7488	3039
7489	550
7490	106
7491	795
7492	370
7493	981
7494	1461
7495	685
7496	851
7497	443
7498	849
7499	650
7500	346
7501	1941
7502	728
7503	803
7504	702
7505	3040
7506	361
7507	47
7508	590
7509	2434
7510	355
7511	702
7512	994
7513	2883
7514	851
7515	397
7516	251
7517	369
7518	398
7519	443
7520	1192
7521	479
7522	443
7523	650
7524	558
7525	443
7526	3041
7527	948
7528	47
7529	3042
7530	443
7531	2080
7532	2532
7533	2962
7534	765
7535	592
7536	369
7537	3043
7538	603
7539	1043
7540	3044
7541	479
7542	3045
7543	251
7544	550
7545	2842
7546	605
7547	3046
7548	873
7549	821
7550	3047
7551	3048
7552	174
7553	443
7554	355
7555	728
7556	346
7557	316
7558	527
7559	3049
7560	479
7561	765
7562	443
7563	3023
7564	482
7565	5
7566	316
7567	765
7568	174
7569	873
7570	1251
7571	3050
7572	543
7573	318
7574	756
7575	2607
7576	835
7577	495
7578	369
7579	370
7580	728
7581	230
7582	346
7583	474
7584	728
7585	2491
7586	1254
7587	605
7588	513
7589	3051
7590	1941
7591	702
7592	513
7593	1484
7594	2633
7595	557
7596	756
7597	174
7598	1867
7599	2880
7600	756
7601	2733
7602	3052
7603	3053
7604	230
7605	474
7606	47
7607	474
7608	1166
7609	2491
7610	174
7611	546
7612	849
7613	174
7614	1165
7615	474
7616	3054
7617	646
7618	1031
7619	591
7620	728
7621	550
7622	2900
7623	646
7624	443
7625	346
7626	3055
7627	174
7628	346
7629	3056
7630	719
7631	3057
7632	174
7633	482
7634	355
7635	174
7636	2291
7637	346
7638	443
7639	230
7640	174
7641	728
7642	586
7643	479
7644	557
7645	346
7646	479
7647	294
7648	443
7649	3058
7650	663
7651	948
7652	702
7653	346
7654	2555
7655	355
7656	106
7657	230
7658	346
7659	443
7660	47
7661	174
7662	2446
7663	546
7664	1217
7665	3059
7666	3060
7667	313
7668	850
7669	946
7670	3061
7671	3062
7672	116
7673	45
7674	174
7675	479
7676	3063
7677	513
7678	230
7679	482
7680	3064
7681	346
7682	484
7683	2406
7684	355
7685	2951
7686	613
7687	174
7688	3065
7689	174
7690	592
7691	230
7692	803
7693	407
7694	3066
7695	479
7696	3067
7697	347
7698	202
7699	981
7700	513
7701	294
7702	352
7703	3068
7704	728
7705	719
7706	3069
7707	174
7708	352
7709	719
7710	495
7711	3070
7712	842
7713	443
7714	355
7715	369
7716	230
7717	3071
7718	399
7719	948
7720	558
7721	728
7722	728
7723	47
7724	513
7725	47
7726	479
7727	251
7728	56
7729	443
7730	2885
7731	347
7732	174
7733	728
7734	605
7735	849
7736	397
7737	474
7738	515
7739	3072
7740	3073
7741	613
7742	591
7743	873
7744	3056
7745	513
7746	946
7747	407
7748	1968
7749	3074
7750	719
7751	527
7752	479
7753	174
7754	948
7755	174
7756	3075
7757	2052
7758	3076
7759	685
7760	3077
7761	174
7762	605
7763	646
7764	230
7765	1242
7766	3078
7767	3079
7768	443
7769	1218
7770	873
7771	719
7772	605
7773	3080
7774	702
7775	355
7776	3081
7777	2093
7778	443
7779	174
7780	3082
7781	1106
7782	346
7783	966
7784	174
7785	2768
7786	756
7787	370
7788	174
7789	346
7790	696
7791	106
7792	2867
7793	728
7794	948
7795	355
7796	592
7797	174
7798	47
7799	3083
7800	174
7801	3084
7802	479
7803	355
7804	1047
7805	1941
7806	702
7807	346
7808	45
7809	397
7810	443
7811	2939
7812	1222
7813	174
7814	3085
7815	728
7816	1031
7817	515
7818	3086
7819	948
7820	407
7821	756
7822	653
7823	646
7824	474
7825	2651
7826	873
7827	605
7828	550
7829	702
7830	994
7831	3087
7832	479
7833	174
7834	173
7835	174
7836	3088
7837	219
7838	294
7839	906
7840	346
7841	369
7842	543
7843	174
7844	251
7845	369
7846	2851
7847	833
7848	3089
7849	554
7850	3050
7851	174
7852	1057
7853	329
7854	174
7855	515
7856	849
7857	994
7858	948
7859	1052
7860	2818
7861	474
7862	3090
7863	481
7864	2865
7865	251
7866	605
7867	47
7868	592
7869	3091
7870	650
7871	2080
7872	574
7873	2491
7874	474
7875	646
7876	3092
7877	174
7878	515
7879	550
7880	728
7881	948
7882	3093
7883	174
7884	591
7885	3094
7886	2375
7887	2203
7888	513
7889	546
7890	174
7891	109
7892	173
7893	664
7894	1251
7895	513
7896	495
7897	230
7898	47
7899	1006
7900	2493
7901	495
7902	174
7903	443
7904	230
7905	3095
7906	3096
7907	3097
7908	925
7909	443
7910	515
7911	2434
7912	474
7913	443
7914	3098
7915	515
7916	2875
7917	557
7918	586
7919	474
7920	3099
7921	2540
7922	397
7923	443
7924	3100
7925	661
7926	174
7927	3101
7928	883
7929	346
7930	3102
7931	756
7932	546
7933	873
7934	174
7935	230
7936	803
7937	174
7938	407
7939	3103
7940	2291
7941	685
7942	702
7943	479
7944	174
7945	443
7946	3104
7947	3105
7948	405
7949	174
7950	230
7951	482
7952	173
7953	407
7954	646
7955	443
7956	230
7957	777
7958	515
7959	3021
7960	355
7961	994
7962	225
7963	2607
7964	202
7965	546
7966	495
7967	829
7968	1220
7969	1217
7970	474
7971	443
7972	474
7973	661
7974	2380
7975	2969
7976	586
7977	513
7978	702
7979	355
7980	398
7981	294
7982	443
7983	1183
7984	2818
7985	230
7986	2291
7987	3106
7988	230
7989	948
7990	346
7991	2542
7992	148
7993	3107
7994	3108
7995	174
7996	3109
7997	550
7998	2644
7999	230
8000	586
8001	482
8002	479
8003	3110
8004	3111
8005	646
8006	663
8007	474
8008	756
8009	505
8010	2053
8011	3112
8012	2434
8013	3113
8014	474
8015	174
8016	3114
8017	557
8018	174
8019	1480
8020	346
8021	174
8022	452
8023	443
8024	443
8025	474
8026	994
8027	2906
8028	765
8029	607
8030	346
8031	586
8032	174
8033	2564
8034	1461
8035	294
8036	484
8037	230
8038	479
8039	482
8040	230
8041	3115
8042	756
8043	2491
8044	553
8045	370
8046	728
8047	230
8048	225
8049	948
8050	355
8051	513
8052	346
8053	660
8054	479
8055	2743
8056	592
8057	605
8058	765
8059	174
8060	397
8061	2133
8062	495
8063	721
8064	174
8065	557
8066	2683
8067	252
8068	948
8069	443
8070	1212
8071	3116
8072	474
8073	515
8074	513
8075	803
8076	3117
8077	3118
8078	3119
8079	515
8080	479
8081	230
8082	728
8083	646
8084	174
8085	844
8086	479
8087	513
8088	228
8089	3120
8090	3121
8091	3122
8092	3123
8093	495
8094	546
8095	663
8096	3108
8097	479
8098	3110
8099	605
8100	346
8101	174
8102	948
8103	702
8104	513
8105	948
8106	994
8107	174
8108	479
8109	844
8110	294
8111	346
8112	369
8113	452
8114	443
8115	592
8116	2875
8117	479
8118	591
8119	513
8120	3124
8121	230
8122	174
8123	719
8124	482
8125	777
8126	443
8127	397
8128	443
8129	174
8130	479
8131	3125
8132	803
8133	346
8134	3126
8135	174
8136	329
8137	174
8138	346
8139	803
8140	174
8141	2033
8142	513
8143	515
8144	2865
8145	479
8146	479
8147	948
8148	2380
8149	513
8150	515
8151	702
8152	174
8153	702
8154	646
8155	397
8156	484
8157	251
8158	851
8159	3127
8160	443
8161	474
8162	685
8163	975
8164	515
8165	2080
8166	174
8167	3128
8168	370
8169	550
8170	2865
8171	479
8172	653
8173	803
8174	550
8175	474
8176	369
8177	484
8178	407
8179	3059
8180	479
8181	3129
8182	174
8183	294
8184	592
8185	663
8186	515
8187	407
8188	3130
8189	3131
8190	513
8191	174
8192	3132
8193	174
8194	515
8195	654
8196	2426
8197	803
8198	474
8199	3103
8200	546
8201	47
8202	1014
8203	605
8204	663
8205	3133
8206	2302
8207	2788
8208	443
8209	479
8210	842
8211	702
8212	702
8213	174
8214	605
8215	3134
8216	756
8217	550
8218	765
8219	702
8220	719
8221	550
8222	479
8223	591
8224	3135
8225	474
8226	592
8227	2982
8228	719
8229	546
8230	294
8231	174
8232	294
8233	369
8234	474
8235	397
8236	174
8237	590
8238	230
8239	484
8240	369
8241	3136
8242	2951
8243	663
8244	174
8245	605
8246	251
8247	851
8248	45
8249	849
8250	661
8251	719
8252	592
8253	591
8254	702
8255	407
8256	482
8257	513
8258	369
8259	861
8260	474
8261	174
8262	650
8263	251
8264	174
8265	3137
8266	495
8267	994
8268	474
8269	495
8270	106
8271	2818
8272	1106
8273	663
8274	251
8275	646
8276	174
8277	515
8278	515
8279	474
8280	803
8281	550
8282	174
8283	515
8284	443
8285	605
8286	702
8287	443
8288	173
8289	369
8290	1040
8291	474
8292	2033
8293	174
8294	994
8295	3138
8296	2733
8297	3139
8298	719
8299	513
8300	479
8301	2080
8302	174
8303	513
8304	174
8305	346
8306	591
8307	756
8308	586
8309	3140
8310	948
8311	515
8312	479
8313	702
8314	605
8315	173
8316	174
8317	355
8318	849
8319	586
8320	174
8321	230
8322	173
8323	346
8324	849
8325	605
8326	45
8327	369
8328	443
8329	443
8330	294
8331	294
8332	605
8333	397
8334	474
8335	407
8336	407
8337	173
8338	3141
8339	765
8340	474
8341	533
8342	663
8343	702
8344	3142
8345	3143
8346	515
8347	495
8348	2743
8349	3144
8350	3145
8351	849
8352	443
8353	484
8354	173
8355	685
8356	2969
8357	474
8358	803
8359	228
8360	3146
8361	474
8362	696
8363	515
8364	557
8365	174
8366	586
8367	2291
8368	586
8369	174
8370	370
8371	592
8372	443
8373	513
8374	346
8375	646
8376	174
8377	397
8378	505
8379	513
8380	646
8381	479
8382	165
8383	702
8384	646
8385	443
8386	174
8387	174
8388	3147
8389	515
8390	849
8391	550
8392	443
8393	174
8394	702
8395	844
8396	1251
8397	515
8398	702
8399	719
8400	702
8401	590
8402	702
8403	2969
8404	2875
8405	174
8406	228
8407	2809
8408	2607
8409	765
8410	663
8411	2651
8412	678
8413	728
8414	948
8415	728
8416	849
8417	550
8418	218
8419	3148
8420	550
8421	3149
8422	756
8423	728
8424	443
8425	650
8426	756
8427	474
8428	515
8429	230
8430	2291
8431	443
8432	443
8433	474
8434	495
8435	605
8436	369
8437	230
8438	592
8439	251
8440	3150
8441	484
8442	702
8443	443
8444	803
8445	605
8446	605
8447	369
8448	515
8449	474
8450	663
8451	515
8452	2457
8453	495
8454	3151
8455	515
8456	174
8457	591
8458	346
8459	397
8460	728
8461	557
8462	728
8463	397
8464	346
8465	702
8466	586
8467	586
8468	948
8469	3152
8470	443
8471	808
8472	591
8473	948
8474	495
8475	515
8476	474
8477	1029
8478	474
8479	346
8480	702
8481	513
8482	174
8483	174
8484	3153
8485	2080
8486	3154
8487	3155
8488	397
8489	443
8490	844
8491	443
8492	174
8493	1081
8494	650
8495	728
8496	948
8497	174
8498	174
8499	3156
8500	756
8501	586
8502	719
8503	728
8504	174
8505	2875
8506	657
8507	443
8508	849
8509	3157
8510	678
8511	352
8512	251
8513	230
8514	513
8515	3158
8516	3159
8517	586
8518	47
8519	515
8520	479
8521	474
8522	174
8523	3160
8524	479
8525	685
8526	174
8527	728
8528	728
8529	948
8530	756
8531	313
8532	605
8533	948
8534	228
8535	586
8536	646
8537	443
8538	230
8539	592
8540	355
8541	443
8542	663
8543	355
8544	2453
8545	591
8546	661
8547	803
8548	605
8549	3161
8550	803
8551	174
8552	702
8553	3098
8554	443
8555	3109
8556	849
8557	443
8558	443
8559	1166
8560	650
8561	2969
8562	3162
8563	2282
8564	3142
8565	546
8566	592
8567	347
8568	3163
8569	849
8570	765
8571	605
8572	3164
8573	474
8574	803
8575	702
8576	479
8577	765
8578	313
8579	959
8580	174
8581	1251
8582	1029
8583	803
8584	586
8585	443
8586	443
8587	728
8588	174
8589	906
8590	174
8591	1251
8592	546
8593	605
8594	2845
8595	607
8596	474
8597	346
8598	2875
8599	728
8600	443
8601	959
8602	728
8603	756
8604	948
8605	2426
8606	21
8607	515
8608	728
8609	591
8610	2592
8611	661
8612	482
8613	474
8614	369
8615	613
8616	230
8617	849
8618	654
8619	174
8620	1166
8621	174
8622	844
8623	474
8624	702
8625	495
8626	347
8627	586
8628	654
8629	2291
8630	174
8631	513
8632	174
8633	474
8634	294
8635	1106
8636	47
8637	352
8638	586
8639	728
8640	586
8641	474
8642	2607
8643	765
8644	2426
8645	678
8646	479
8647	586
8648	397
8649	443
8650	590
8651	474
8652	174
8653	586
8654	2743
8655	2302
8656	586
8657	479
8658	474
8659	513
8660	174
8661	948
8662	728
8663	605
8664	646
8665	765
8666	557
8667	1014
8668	646
8669	443
8670	3165
8671	474
8672	174
8673	1251
8674	443
8675	654
8676	2080
8677	495
8678	702
8679	696
8680	173
8681	482
8682	592
8683	228
8684	346
8685	605
8686	994
8687	3057
8688	443
8689	646
8690	650
8691	756
8692	1106
8693	1106
8694	173
8695	174
8696	803
8697	513
8698	3166
8699	443
8700	505
8701	948
8702	346
8703	721
8704	550
8705	230
8706	948
8707	443
8708	605
8709	484
8710	550
8711	645
8712	397
8713	443
8714	728
8715	397
8716	202
8717	1251
8718	646
8719	443
8720	443
8721	605
8722	443
8723	728
8724	174
8725	728
8726	515
8727	2875
8728	646
8729	443
8730	948
8731	443
8732	3167
8733	3168
8734	607
8735	513
8736	346
8737	3169
8738	607
8739	174
8740	3170
8741	728
8742	605
8743	251
8744	346
8745	225
8746	174
8747	660
8748	443
8749	474
8750	294
8751	605
8752	728
8753	702
8754	661
8755	443
8756	474
8757	702
8758	2291
8759	1867
8760	3171
8761	592
8762	474
8763	230
8764	702
8765	728
8766	654
8767	803
8768	948
8769	474
8770	728
8771	803
8772	474
8773	474
8774	397
8775	443
8776	728
8777	1220
8778	550
8779	369
8780	592
8781	948
8782	474
8783	765
8784	803
8785	1251
8786	586
8787	948
8788	443
8789	728
8790	174
8791	230
8792	586
8793	765
8794	550
8795	484
8796	230
8797	586
8798	443
8799	174
8800	1251
8801	474
8802	591
8803	849
8804	948
8805	47
8806	230
8807	803
8808	369
8809	443
8810	443
8811	443
8812	550
8813	803
8814	586
8815	474
8816	397
8817	586
8818	515
8819	479
8820	174
8821	550
8822	728
8823	474
8824	728
8825	728
8826	515
8827	550
8828	474
8829	590
8830	443
8831	443
8832	443
8833	959
8834	923
8835	484
8836	346
8837	474
8838	728
8839	474
8840	702
8841	225
8842	586
8843	443
8844	513
8845	702
8846	479
8847	515
8848	443
8849	294
8850	719
8851	2829
8852	173
8853	479
8854	851
8855	294
8856	443
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.authors (id, surname, given_name, birth_year, death_year) FROM stdin;
0	Willis	Connie	1945	\N
1	Christie	Agatha	1890	1976
2	Morrison	Toni	1931	\N
3	Conger	Kate	1989	\N
4	Mac	Ryan	\N	\N
5	Lewis	Sinclair	1885	1951
6	Austen	Jane	1775	1817
7	Brontë	Charlotte	1816	1855
8	Wodehouse	P.G.	1881	1975
9	Márquez	Gabriel García	1927	2014
10	Kritzer	Naomi	1973	\N
11	Bujold	Lois McMaster	1949	\N
12	Melville	Herman	1819	1891
13	Sterne	Laurence	1713	1768
14	Osman	Richard	1970	\N
15	Brontë	Ann	1820	1849
16	Brontë	Emily	1818	1848
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.books (id, title, publication_year) FROM stdin;
0	All Clear	2010
1	And Then There Were None	1939
2	Beloved	1987
3	Blackout	2010
4	Character Limit	2024
5	Elmer Gantry	1927
6	Emma	1815
7	Jane Eyre	1847
8	Leave it to Psmith	1923
9	Love in the Time of Cholera	1985
10	Catfishing on Catnet	2019
11	Main Street	1920
12	Mirror Dance	1994
13	Moby Dick	1851
14	Murder on the Orient Express	1934
15	Omoo	1847
16	One Hundred Years of Solitude	1967
17	Pride and Prejudice	1813
18	Right Ho, Jeeves	1934
19	Liberty's Daughter	2023
20	Sense and Sensibility	1813
21	Shards of Honor	1986
22	Sula	1973
23	The Code of the Woosters	1938
24	The Life and Opinions of Tristram Shandy, Gentleman	1759
25	The Thursday Murder Club	2020
26	The Tenant of Wildfell Hall	1848
27	To Say Nothing of the Dog	1997
28	Villette	1853
29	The Man Who Died Twice	2021
30	Wuthering Heights	1847
\.


--
-- Data for Name: books_authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.books_authors (book_id, author_id) FROM stdin;
0	0
1	1
2	2
3	0
4	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	5
12	11
13	12
14	1
15	12
16	9
17	6
18	8
19	10
20	6
21	11
22	2
23	8
24	13
25	14
26	15
27	0
28	7
29	14
30	16
\.


--
-- Data for Name: continents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.continents (id, continent_name) FROM stdin;
1	Asia, Europe, North America, Africa
2	Asia
3	Asia, Europe, North America
4	Africa, South America, Oceania, North America, Asia, Europe, Antarctica
5	Africa, Asia
6	Oceania
7	South America, North America
8	North America
9	Europe, North America, Asia
10	North America  Canada, Mexico, United States
11	Asia, Africa
12	Africa
13	North America, Asia, Europe
14	South America
15	Asia, Europe, Africa, North America, Oceania
16	Europe, Asia
17	North America, Europe, Asia
18	Asia, North America, Europe
19	South America, Asia, North America, Europe
20	Oceania, Asia
21	Oceania, Africa, North America, South America, Asia, Europe, Antarctica
22	North America, Europe, South America, Asia
23	Asia, Europe, North America, Oceania
24	North America,  South America, Europe, Oceania
25	North America, Asia
26	Oceania, Asia, Africa
27	Africa, Asia, Europe, North America
28	Asia, Europe, Africa, South America, Oceania, North America
29	North America, Europe
30	Asia, Europe, Africa, Oceania, North America
31	North America, Europe, Africa
32	Asia, Europe
33	Asia, South America, North America
34	North America, South America
35	North America,  South America
36	Asia, Africa  South Asia, North Africa, Sub-Saharan Africa, Western Asia, Central Asia
37	Europe, Asia, North America
38	Europe, Asia, Africa
39	Africa, Antarctica, South America, Oceania,   Europe, North America, Asia
40	Asia, Europe, North America, Africa, Oceania
41	Asia, Europe, Africa
42	Asia, North America
43	Europe
44	North America, South America, Europe, Asia
45	Europe, Africa, North America
46	Asia, Africa, Oceania
47	Asia, Oceania, Africa, North America
48	North America  Canada, United States
49	Africa, North America
50	Africa, Europe
51	Asia  South Asia, East Asia, Southeast Asia
52	Europe, North America,  Asia
53	Africa, South America, Oceania, North America, Europe, Antarctica, Asia
54	Antarctica, South America, Oceania, Africa
55	North America, Asia, Antarctica, South America, Oceania, Africa
56	Europe, Africa, Asia
57	Africa  Sub-Saharan Africa
58	Africa, Asia, Europe
59	South America  Argentina, Chile
60	Oceania  Australia
61	Europe, North America, South America, Asia, Africa
62	North America, South America, Africa
63	Oceania, Antarctica, South America,  Africa, North America, Europe, Asia
64	South America, North America, Africa
65	Antarctica, Africa,  South America, Oceania
66	Asia, Oceania, North America
67	Africa, Oceania
68	Asia, Oceania
69	Asia, Africa, Europe
70	Europe,  Asia
71	Europe, Africa
72	Europe, Asia  Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Estonia, Greece, Hungary, Italy, Latvia,
73	Africa, South America, Oceania, Antarctica
74	Antarctica, South America, Africa
75	South America, Africa
76	North America, South America, Asia
77	Europe, North America, South America, Africa
78	Africa  DR Congo, South Sudan, Sudan, Uganda
79	North America, Asia, Africa
80	Antarctica, South America, Asia, Africa
81	South America  Ecuador, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Venezuela
82	Africa  Madagascar
83	Asia  Papua New Guinea, Indonesia
84	Africa  Burundi, DR Congo, Rwanda, Uganda
85	South America  Ecuador, Bolivia, Brazil, Colombia, Peru, Venezuela
86	Africa  DR Congo
87	Europe, North America, Asia, South America, Africa
88	Oceania, Africa, North America, Asia, South America
89	Oceania, North America, Asia, South America, Africa
90	South America, North America, Asia
91	Europe, Asia,  Africa
92	North America, Asia, Africa, South America, Oceania
93	South America,  North America
94	North America  Bahamas, Cuba, Honduras
95	Asia  India, Sri Lanka
96	Africa  Benin, Burkina Faso, Cameroon, Gambia, Ghana, Guinea, Guinea-Bissau, Mali, Niger, Nigeria,
97	North America, Africa
98	Asia  Philippines
99	Africa  South Africa
100	Europe, Asia  Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Denmark, Germany, Greece, Hungary, Latvia, Lithuania,
101	Europe,  North America, Asia, Africa
102	Antarctica, South America,  Africa
103	Asia,  Africa
104	Europe, North America, South America, Africa, Asia
105	North America, Europe, Asia, Africa, South America, Oceania
106	Asia, Europe, Africa, North America
107	Europe, Asia, Africa, North America, South America
108	North America, Europe, Asia, Africa
109	Europe, Asia, Africa, North America, South America, Oceania
110	Asia, Europe, Africa, North America, South America, Oceania
111	Oceania, North America
112	North America, Oceania, South America
113	Europe, Asia, Oceania,  Africa
114	North America, South America, Europe
115	Europe, Asia, Africa, North America
116	Europe, Asia, Africa, Oceania,  North America, South America
117	North America, South America, Oceania,  Africa, Europe
118	South America  Argentina, Bolivia, Chile, Colombia, Ecuador, Peru, Brazil, Paraguay, Venezuela
119	Europe, Asia, Africa, Oceania, North America, South America
120	Asia, Europe, Africa, Oceania,  North America, South America
121	Africa, Asia, North America
122	Antarctica, South America, Oceania, Africa, Europe, Asia, North America
123	Asia, Africa, Oceania, North America
124	Asia  South Asia, Southeast Asia
125	South America, North America  Central America
126	Asia,  Europe, Africa
127	North America, Europe, Africa, Asia
128	Oceania, South America
129	North America, South America, Oceania, Europe
130	North America, Europe, Asia, Africa, South America
131	South America, Antarctica, Africa
132	Europe, Asia, Africa, Oceania
133	Asia, Africa, Europe, Oceania
134	Africa, Antarctica, South America, Oceania, Europe, North America, Asia
135	Africa, North America, South America, Asia, Oceania, Europe
136	North America, Asia, Europe, Oceania
137	Oceania, Asia, North America
138	Europe, Asia, Oceania, Africa
139	North America, South America, Oceania
140	Africa, North America, South America, Oceania, Asia, Europe
141	North America  Caribbean Islands, Central America
142	Europe, Asia, Africa, Oceania, North America
143	Asia, Europe,  Africa
144	South America, North America  Central America, Caribbean Islands
145	North America, South America, Oceania, Europe, Africa
146	Africa, Asia  Equatorial Guinea, South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad,
147	North America, South America, Europe, Asia, Africa
148	South America  Chile, Peru
149	North America, South America, Asia, Africa
150	Antarctica, South America
151	Europe, Asia,  North America
152	Europe, North America, Asia, Africa
153	North America, South America, Europe, Asia, Africa, Oceania
154	North America, Asia, South America, Africa
155	North America, South America, Europe, Africa
156	North America, Europe, Asia, Africa, Oceania
157	Europe, Asia, North America, Africa
158	North America, South America  Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Grenada, Guadeloupe, Jamaica, Saint Kitts and Nevis,
159	Europe, Africa, Asia, North America
160	Europe, Asia, Africa, North America, South America, Oceania, Antarctica
161	Europe, Asia, Africa,  Oceania
162	North America, Asia, Oceania
163	North America, Antarctica, South America
164	North America, Europe, Asia, South America, Africa
165	Europe, North America, Asia,  Africa
166	Antarctica, Asia, Africa, Oceania, North America, South America
167	Oceania, Antarctica
168	North America, Europe, Asia, Africa   Bahamas, China, Japan, North Korea, South Korea, Spain, Portugal, France, United Kingdom, Austria,
169	Antarctica, Europe, North America, South America, Africa
170	Africa, Antarctica, South America, Oceania, Europe
171	Europe,  Africa
172	North America, Antarctica, Europe, Asia, South America, Africa
173	Antarctica, South America, Africa, Oceania
174	South America  Argentina, Bolivia, Chile, Peru, Brazil
175	Oceania, Asia, South America, Africa, North America, Antarctica
176	Europe, South America, North America, Asia, Africa
177	Antarctica, Europe, North America, Asia, South America
178	Antarctica, North America, Asia
179	Antarctica, Europe, North America, Asia, South America, Africa
180	North America, South America, Europe,  Asia, Africa
181	Antarctica, South America, North America, Africa
182	Europe,  North America, Asia
183	South America, North America  Antigua and Barbuda, Dominica, Grenada, Guadeloupe, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Belize, El Salvador, Guatemala,
184	North America, South America  Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines,
185	Africa, North America, South America
186	Europe, Africa, North America, South America, Asia
187	Europe, Asia  China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, Finland, Estonia, Russia,
188	North America, Asia, South America
189	Europe,  Asia, Africa
190	Asia  India, Bangladesh, Brunei, Indonesia, Malaysia, Myanmar, Philippines, Singapore, Thailand
191	South America, North America, Asia, Africa
192	Antarctica, Europe, North America, South America, Africa, Asia
193	North America, South America, Asia,  Africa
194	Europe, North America
195	South America  Bolivia, Brazil, Peru
196	Europe,  Africa, Asia
197	Europe, North America, Asia, South America
198	North America,  South America, Asia, Africa
199	North America  Bahamas, Cuba, Jamaica, Belize, Guatemala, Honduras, Mexico, United States
200	Europe  Spain, Portugal, France, Finland, United Kingdom, Belgium, Denmark, Faroe Islands, Germany, Greece,
201	Antarctica, Europe, South America, North America, Asia, Africa
202	Europe, Asia  China, Japan, North Korea, South Korea, Mongolia, Finland, Estonia, Latvia, Norway, Sweden,
203	South America, North America  Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia,
204	Africa  South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, DR Congo,
205	Antarctica, North America, Asia, Africa
206	Antarctica, Africa
207	South America, North America  Costa Rica, Nicaragua, Panama, Ecuador, Colombia
208	Asia  China, India, Bangladesh, Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Philippines,
209	Africa  South Africa, Angola, Botswana, Malawi, Mozambique, Namibia, Zambia, Zimbabwe
210	Antarctica,  South America
211	North America  Mexico
212	South America  Chile, Argentina, Bolivia, Peru
213	North America  Belize, Costa Rica,  El Salvador, Guatemala, Honduras, Mexico, Nicaragua
214	South America  Chile, Argentina, Bolivia, Brazil, Paraguay, Peru, Uruguay
215	South America,  Africa
216	South America, North America  Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia,
217	Antarctica, South America, North America
218	South America, North America  Trinidad and Tobago, Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia,
219	North America  Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States
220	North America  Mexico, United States
221	Antarctica, North America
222	South America  Ecuador, Bolivia,  Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
223	Europe, Asia  Greece, Russia, Georgia, Turkey
224	South America  Brazil, Paraguay
225	South America, North America  Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Brazil, Colombia, Peru, Venezuela
226	South America, North America  Costa Rica, Panama, Ecuador, Bolivia, Colombia, Peru, Venezuela
227	South America, North America  Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia
228	South America  Argentina, Bolivia, Brazil, Peru
229	South America  Ecuador, Brazil, Colombia, Guyana, Peru, Venezuela
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countries (id, country_name) FROM stdin;
1	Albania, Armenia, Azerbaijan, Belarus, Bhutan, Bosnia and Herzegovina, Bulgaria, Canada, China, Croatia,
2	Bangladesh, Bhutan, China,   India, Indonesia, Laos, Malaysia, Myanmar, Nepal, Russia,
3	Albania, Armenia, Austria, Azerbaijan, Belarus, Bosnia and Herzegovina, Bulgaria, Canada, China, Croatia,
4	Angola, Argentina, Australia, Bahamas, Bangladesh, Benin, Brazil, Cameroon, Canada, Cape Verde,
5	China
6	Angola, Benin, Botswana, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Ethiopia, India,
7	Australia
8	Argentina, Belize, Bolivia, Brazil, Canada, Chile, Colombia, Costa Rica, Ecuador,  El Salvador,
9	Argentina, Belize, Bolivia, Brazil, Colombia, Costa Rica, Ecuador, Guatemala, Guyana, Honduras,
10	Belize, Canada, Costa Rica, El Salvador,  Guatemala, Honduras, Mexico, Nicaragua, Panama, United States
11	Algeria, Angola, Benin, Botswana, Burkina Faso, Central African Republic, Chad, Ethiopia, Iran, Kenya,
12	Belize, Canada, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States
13	Belarus, Canada, China, Croatia, Czech Republic, Estonia, Finland, Germany, Hungary, Kazakhstan,
14	Alberta, British Columbia, Manitoba, New Brunswick, Nova Scotia, Ontario, Québec, Saskatchewan, Alabama, Arizona,
15	Angola, Armenia, Azerbaijan, Bangladesh, Benin, Bhutan, Botswana, Burkina Faso, Burundi, Cambodia,
16	Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo,
17	Canada, China, Finland, Mongolia, Norway, Russia, Sweden, United States, Estonia
18	Bhutan, China,  India, Myanmar, Nepal
19	Argentina, Bolivia, Brazil, Colombia, Ecuador, Guyana, Paraguay, Peru, Uruguay, Venezuela
20	Canada, United States
21	DR Congo
22	Algeria, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo,
23	Albania, Algeria, Andorra, Armenia, Austria, Azerbaijan, Bangladesh, Belgium, Bhutan, Bosnia and Herzegovina,
24	Bhutan, China, India,  Kazakhstan, Kyrgyzstan, Mongolia, Nepal, Pakistan, Russia, Tajikistan,
25	China, Japan, South Korea, North Korea, Russia, Viet Nam
26	Canada, Mexico, United States
27	Angola, Botswana, Namibia, South Africa
28	Angola, Benin, Botswana, Burkina Faso, Central African Republic, Chad, Ethiopia, Kenya, Malawi, Mozambique,
29	Canada, Finland, Mongolia, Norway, Russia, United States
30	Bhutan, Canada, China, Kazakhstan, Kyrgyzstan, Mongolia, Russia, United States
31	Argentina, Belize, Bolivia, Brazil, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala, Guyana,
32	Argentina, Bolivia, Brazil, Chile, Paraguay, Uruguay
33	Australia, Indonesia, Papua New Guinea
34	Angola, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Equatorial Guinea, Gabon, Ghana,
35	Tunisia, South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad,
36	Angola, Antigua and Barbuda, Argentina, Australia, Bahamas, Bangladesh, Barbados, Benin, Brazil, Cameroon,
37	Canada, Finland, Iceland, Norway, Russia, Sweden, United States
38	Algeria, Chad, Egypt, Libya, Mali, Mauritania,  Morocco, Niger, Sudan, Tunisia,
39	Albania, Andorra, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Canada,  China,
40	Belize, Brazil, Canada, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala, Guyana, Honduras,
41	Canada, Japan, Mexico,  Russia, United States
42	India, China
43	China, Japan, Kazakhstan, North Korea, Mongolia, Russia
44	Cameroon, Congo,  Equatorial Guinea, Gabon
45	Madagascar
46	South Africa, DR Congo, South Sudan, Sudan, Botswana, Kenya, Mozambique, Namibia, Swaziland, Uganda,
47	Mexico
48	Bangladesh, Bhutan, Cambodia, China, India, Indonesia, Laos, Malaysia, Myanmar, Nepal,
49	Bhutan, Cambodia, China, India, Laos, Malaysia, Myanmar, Nepal, Thailand, Viet Nam,
50	Australia, Bahrain, Brunei, Cambodia, China, Comoros, Djibouti, Egypt, Eritrea, India,
51	Bangladesh, Bhutan, Brunei, Cambodia, China, India, Indonesia,  Laos, Malaysia, Myanmar,
52	Djibouti, Ethiopia, Kenya, Somalia
53	Algeria, Armenia, Austria,  Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, Denmark,
54	Indomalayan
55	Albania, Algeria, Andorra, Armenia, Austria, Azerbaijan, Bahrain, Belarus, Belgium, Bosnia and Herzegovina,
56	Philippines
57	Canada
58	China, Japan, Russia
59	India, Nepal, Sri Lanka
60	Bangladesh, Bhutan, Cambodia, China, India, Laos, Malaysia, Myanmar, Nepal, Thailand,
61	Bangladesh, Brunei, Cambodia, India, Indonesia, Laos, Malaysia, Myanmar, Thailand, Viet Nam,
62	Azerbaijan, Bhutan, China,  Iran, Kazakhstan, Kyrgyzstan, Mongolia, Nepal, Pakistan, Armenia,
63	Angola, Benin, Botswana, Burkina Faso, Cameroon, Central African Republic, Chad, Congo, DR Congo, Cote d'Ivoire,
64	India, Nepal
65	Angola, Kenya, Mozambique, Namibia, South Africa, Tanzania, Zimbabwe, Ethiopia, Botswana, Malawi,
66	Afghanistan, India, Pakistan, Tajikistan, Turkmenistan, Uzbekistan
67	Albania, Armenia, Austria, Azerbaijan, Belarus, Bosnia and Herzegovina, Bulgaria, China, Croatia, Czech Republic,
68	Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon,  Central African Republic, Chad, DR Congo, Cote d'Ivoire,
69	Angola, Botswana, Kenya,  Malawi, Mozambique, Namibia, Rwanda, South Africa, Swaziland, Tanzania,
70	Albania, Armenia, Austria, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, Denmark,
71	India, Nepal, Pakistan
72	Argentina, Bolivia,  Chile, Peru
73	India
74	Belarus, Lithuania, Poland, Romania, Russia, Slovakia, Ukraine, Kyrgyzstan
75	Belize, Bolivia, Brazil, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala, Guyana, Honduras,
232	India, Sri Lanka
76	Bolivia, Brazil, Colombia,  Ecuador, Peru, Venezuela
77	Albania, Austria, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, China,  Croatia, Czech Republic, Denmark,
78	Belize, Canada, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, United States
79	Botswana, Namibia, South Africa
80	Argentina, Belize, Bolivia, Brazil, Colombia, Costa Rica,  Ecuador, El Salvador, Guatemala, Guyana,
81	Bolivia, Colombia, Ecuador, Peru, Venezuela
82	Argentina, Bolivia, Chile, Paraguay, Peru
83	India, Pakistan
84	Egypt, Ethiopia, Georgia, Iran, Iraq, Israel, Jordan, Kenya, Lebanon, Libya, Mali, Mauritania, Morocco, Niger, Nigeria, Oman, Pakistan, Saudi Arabia,  Senegal, Syria, Tajikistan, Tanzania, Tunisia, Turkey, Turkmenistan, Uganda, Uzbekistan, Western Sahara, Yemen, Benin, Central African Republic, Eritrea, Guinea, Kuwait, Qatar, Somalia, Sudan, United Arab Emirates
85	Bangladesh, Bhutan, Cambodia, China, India, Iran, Japan, North Korea, South Korea, Laos,
86	China, Mongolia  Palearctic
87	Albania, Austria, Azerbaijan, Bosnia and Herzegovina, Bulgaria, Federated States of Micronesia, France, Georgia, Germany, Greece,
88	Albania, Andorra, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia,
89	Angola, Botswana,  Namibia, South Africa
90	Indonesia,  Malaysia, Myanmar
91	Kazakhstan,  Mongolia, Russia, Uzbekistan, Turkmenistan
92	Angola, Botswana, Egypt, Eritrea, Swaziland, Ethiopia, Kenya, Mozambique, Namibia, Somalia,
93	Belize, Canada, Colombia, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,
94	Albania,  Armenia, Austria, Azerbaijan, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, Denmark,
95	Algeria, Angola, Argentina, Australia, Belgium, Brazil, Canada, Cape Verde, Chile, China,
96	Albania, Andorra, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Canada,
97	Bangladesh, Bhutan, Brunei, Cambodia, China, Hong Kong, India, Indonesia, Japan,  North Korea,
98	Albania, Algeria, Andorra, Angola, Armenia, Austria, Azerbaijan, Belarus, Belgium, Benin,
99	Bolivia, Brazil, Colombia, Ecuador,  Guyana, Paraguay, Peru, Suriname, Venezuela
100	Japan
101	Albania, Andorra, Austria, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, Denmark,
102	Albania, Austria, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, Denmark, Estonia,
103	Canada, Mexico, Russia, United States, China, Japan, North Korea, South Korea
104	China, Japan, Russia, North Korea, Viet Nam, Taiwan
105	Spain, Portugal
106	Indonesia
107	Italy, Austria, France, Germany, Switzerland
108	Albania, Algeria, Bahrain, Bhutan, Bosnia and Herzegovina, Bulgaria, Central African Republic, Croatia, Djibouti, Egypt,
109	Indonesia, Malaysia
110	United States
111	Argentina, Bolivia, Brazil, Colombia, Costa Rica, Ecuador, Guyana, Honduras, Nicaragua, Panama,
112	France, Portugal, Spain
113	Armenia, Azerbaijan, Bangladesh, Bhutan, Cambodia, China, Egypt, Georgia, India, Iran,
114	Cote d'Ivoire, Guinea, Liberia, Sierra Leone
115	China, North Korea, South Korea
116	Ethiopia
117	Bangladesh, Cambodia, India,  Myanmar, Nepal, Pakistan, Sri Lanka, Thailand
118	Algeria, Angola, Benin, Botswana, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire,
119	Botswana, Burundi, Ethiopia, Kenya, Malawi, Mozambique, Rwanda, Somalia, South Africa, Swaziland,
120	Egypt, Iraq, Jordan, Kuwait, Syria, United Arab Emirates,  Yemen
121	Bhutan, Cambodia, India,  Myanmar, Nepal, Thailand, Viet Nam
122	Bangladesh, India, Nepal, Pakistan, Bhutan
123	Angola, Botswana, DR Congo, Ethiopia, Kenya, Malawi, Mozambique, Namibia, Rwanda, South Africa,
124	Bangladesh, Brunei, Cambodia, India, Indonesia, Laos, Malaysia, Myanmar, Philippines, Singapore,
125	Bangladesh,  Bhutan, Brunei, Cambodia, China, India, Indonesia, Laos, Malaysia, Myanmar,
126	Angola, Cameroon, Central African Republic, Congo, Equatorial Guinea, Gabon, Nigeria
127	Syria, Turkey
128	Argentina, Belize, Bolivia, Brazil, Colombia, Costa Rica, Ecuador, El Salvador, Grenada, Guatemala,
129	China, India, Iran, Mongolia, Turkmenistan, Israel, Kazakhstan, Uzbekistan
130	Laos, Viet Nam
131	Canada, Mexico, United States  Nearctic
132	Bolivia, Brazil, Colombia, Ecuador, Guyana, Panama, Paraguay, Peru,  Suriname, Venezuela
133	China, Mongolia
134	Angola, Botswana, DR Congo, Ethiopia, Kenya, Lesotho, Malawi, Mozambique, Namibia, Rwanda,
135	Rwanda, Uganda, DR Congo
136	Brunei, China, Indonesia, Malaysia, Myanmar, Philippines, Singapore, Thailand, Timor-Leste, Viet Nam
137	Nearctic
138	India   Karnataka, Kerala, Tamil Nadu
139	Angola, Botswana, Central African Republic, Chad, DR Congo, Eritrea, Swaziland, Ethiopia, Kenya, Malawi,
140	Canada, Iceland,  Norway, Russia, Denmark, Faroe Islands, Finland, France, Germany, Spain,
141	Mexico, United States
142	Bahamas, Belize, Brazil, Colombia, Costa Rica, Cuba, Dominican Republic, Guatemala, Guyana, Honduras,
143	Bolivia, Brazil, Colombia, Ecuador, Peru
144	Botswana, Namibia, South Africa, Zimbabwe, Angola
145	Indonesia, Malaysia, Myanmar, Thailand
146	Algeria, Morocco
147	Belize,  Bolivia, Brazil, Canada, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala, Honduras,
148	Eritrea, Ethiopia
149	Palearctic, Indomalayan
150	Bangladesh, Bhutan, China, India, Maldives,  Myanmar, Nepal, Pakistan, Sri Lanka
151	Angola, Botswana, Mozambique, Namibia, South Africa, Swaziland, Tanzania, Zambia, Zimbabwe
152	Canada, Mexico, United States, Costa Rica, El Salvador, Guatemala, Honduras
153	Russia
154	China, India
155	Austria, Belgium, Croatia, Czech Republic, Denmark, Estonia, Finland, France, Germany, Ireland,
156	Indonesia, Malaysia, Thailand
157	India, Nepal, Pakistan, Sri Lanka, Bangladesh
158	Argentina, Belize, Bolivia, Brazil, Chile, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala,
159	Albania, Algeria, Andorra, Armenia, Austria, Azerbaijan, Bangladesh, Belarus, Belgium, Bhutan,
160	Antigua and Barbuda, Argentina, Barbados, Bolivia, Brazil, Chile, Colombia, Costa Rica, Cuba, Dominica,
161	Angola, Botswana, Djibouti, Eritrea, Ethiopia, Kenya, Lesotho, Mozambique, Namibia, Somalia,
162	Belgium, Canada, Denmark, Estonia, Faroe Islands, Finland, France, Germany, Iceland, Ireland,
163	Cambodia, Indonesia, Malaysia, Myanmar, Thailand, Viet Nam
164	Belarus, China, France, Germany, Kazakhstan, Luxembourg, Mongolia, Norway, Russia, Austria,
165	Ethiopia, Kenya
166	Angola, Argentina, Australia, Bahamas, Brazil, Canada, Cape Verde, Chile,  Congo, DR Congo,
167	Angola, Botswana, Namibia, South Africa, Zimbabwe
168	Myanmar, Thailand
169	Argentina, Australia, Brazil, Chile, Gabon, Madagascar, Mauritius, Mozambique, Namibia, New Zealand,
170	Argentina, Bolivia, Brazil, Colombia, Ecuador, Guyana, Paraguay, Peru, Suriname, Venezuela
171	Kenya, Tanzania
172	Chad, Niger
173	Argentina
174	Brazil
175	Angola, Botswana, Cameroon, Central African Republic,  Chad, DR Congo, Ethiopia, Kenya, Mozambique, Namibia,
176	Canada, Mexico, United States, Japan, Argentina, Australia, Chile, New Zealand
177	Angola, Botswana, DR Congo, Kenya, Malawi, Mozambique, Namibia, South Africa,  Tanzania, Zambia,
178	Djibouti, Eritrea, Ethiopia, Saudi Arabia, Somalia, Sudan, Yemen
179	Belize, Colombia, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States
180	Angola, Botswana, Lesotho, Mozambique, Namibia, South Africa, Swaziland, Zambia, Zimbabwe
181	Angola, Botswana, Ethiopia, Kenya, Mozambique, Namibia, Somalia, South Africa, South Sudan, Tanzania,
182	Croatia, Cyprus, Greece, Mauritania,  Portugal, Turkey, Western Sahara, Albania, Egypt, France,
183	Bangladesh, Cambodia, Indonesia, Malaysia, Myanmar, Thailand, Viet Nam
184	Argentina, Bolivia, Brazil, Colombia, Ecuador,  Guyana, Paraguay, Peru, Suriname, Uruguay,
185	Brunei, Indonesia, Malaysia
186	Malawi, Mozambique, South Africa, Zimbabwe
187	Canada, Japan, Russia, United States, China, North Korea, South Korea
188	Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Equatorial Guinea, Gabon, Ghana, Guinea, Guinea-Bissau,
189	Canada, United States  Alberta, British Columbia, Labrador, Manitoba, New Brunswick, Newfoundland, Northwest Territories, Nova Scotia, Ontario, Québec,
190	Bangladesh, Bhutan, Brunei, Cambodia, China, India, Indonesia, Laos, Malaysia, Myanmar,
191	France, Romania, Russia, Spain,  Ukraine, Estonia
192	Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad,  Congo, DR Congo,
193	Algeria, Chad, Egypt, Libya, Mali, Mauritania, Morocco, Niger, Sudan, Tunisia
194	Armenia, Azerbaijan, Georgia, Iran, Iraq, Pakistan, Russia, Turkey, Turkmenistan, Afghanistan
195	Angola, Benin, Botswana, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire, Ethiopia,
196	Albania, Algeria, Andorra, Austria, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic,
197	Cote d'Ivoire, Guinea, Guinea-Bissau, Liberia, Senegal, Sierra Leone
198	China, India, Nepal, Bhutan
199	Afrotropical
200	Albania, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bhutan, Bosnia and Herzegovina, Bulgaria, China,
201	Angola, Benin, Botswana, Burkina Faso, Burundi, Central African Republic, Chad, Congo, DR Congo, Cote d'Ivoire,
202	Ecuador
203	Angola, Botswana, Central African Republic,  DR Congo, Djibouti, Eritrea, Swaziland, Ethiopia, Kenya, Malawi,
204	Cameroon, Central African Republic, Chad, Guinea, Mali, Senegal, South Sudan
205	Bahrain, Bangladesh, Bhutan, India, Iran, Kuwait, Nepal, Pakistan, Saudi Arabia, Sri Lanka,
206	Argentina, Bolivia, Brazil,  Colombia, Ecuador, Guyana, Paraguay, Peru, Suriname, Venezuela
207	China, India, Nepal
208	Afghanistan, India, Iran, Pakistan
209	Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Ethiopia, Gabon, Ghana, Guinea, Kenya,
210	Algeria, Angola, Benin, Botswana, Burkina Faso, Cameroon, Central African Republic, Chad, Cote d'Ivoire, Djibouti,
211	China, India, Kazakhstan, Kyrgyzstan, Mongolia, Nepal, Pakistan, Russia, Tajikistan, Uzbekistan,
212	Namibia, South Africa
213	Argentina, Bolivia, Chile, Peru
214	Afghanistan, Albania, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, China,
215	Benin, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo, Cote d'Ivoire, Eritrea,
216	Egypt, Israel, Jordan, Oman, Saudi Arabia, Sudan, Yemen, Ethiopia, Eritrea
217	Brazil, Colombia, Ecuador, Peru
218	Neotropical
219	Brunei, Indonesia, Malaysia, Thailand
220	Canada, Guatemala, Honduras, Mexico, United States
221	Bolivia, Brazil, Colombia, Costa Rica, Ecuador, Guyana,  Panama, Peru, Suriname, Venezuela
222	Bhutan, China, Hong Kong, India, Laos, Myanmar, Nepal, Taiwan, Thailand, Viet Nam
223	Afghanistan, Bangladesh, Bhutan, Brunei, Cambodia, China, India, Indonesia, South Korea, North Korea,
224	Colombia, Ecuador
225	Panama
226	Argentina, Bolivia, Brazil, Colombia, Ecuador, Guyana, Panama, Paraguay, Suriname, Uruguay,
227	Armenia, Azerbaijan, India, Iran, Kazakhstan, Oman, Pakistan, Tajikistan, Turkey, Turkmenistan,
228	Bolivia, Brazil, Colombia, Peru
229	Benin, Burkina Faso, Cote d'Ivoire, Gambia, Ghana, Guinea, Guinea-Bissau, Liberia, Mali, Senegal,
230	Colombia
231	China, Japan, South Korea, Taiwan
233	Indonesia, Laos,  Malaysia, Myanmar, Thailand, China
234	Botswana, Central African Republic, Chad, Kenya, Malawi, Mozambique, Namibia, Rwanda, South Africa, South Sudan,
235	Bangladesh, Bhutan, Brunei, Cambodia, China, India, Indonesia, Iraq, Laos, Malaysia,
236	Australasian
237	China, Kazakhstan, Mongolia, Russia
238	Austria,  Belarus, China, Estonia, Finland, France, Germany, Ireland, Italy, Japan,
239	Angola, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Equatorial Guinea, Gabon, Ghana, Guinea,
240	Benin, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Equatorial Guinea, Gabon, Ghana, Guinea,
241	Benin, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire, Eritrea, Ethiopia, Gambia,
242	Viet Nam
243	Argentina, Chile
244	China, Kazakhstan, North Korea, South Korea, Mongolia, Russia
245	Austria, Germany, Italy, Liechtenstein, Poland, Slovakia, Slovenia, Switzerland, Romania
246	Albania, Andorra, Australia, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, Denmark,
247	Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, China, Croatia, Czech Republic,
248	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Grenada, Guadeloupe, Jamaica, Saint Kitts and Nevis,
249	Cameroon, Equatorial Guinea, Nigeria
250	China, India, Nepal, Pakistan, Bhutan
251	Argentina, Bolivia, Brazil, Paraguay
252	Costa Rica, Honduras, Nicaragua, Panama
253	Andorra, Armenia,  Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, China, Croatia,
254	Argentina, Bolivia, Chile, Colombia, Ecuador, Peru
255	South Africa
256	Angola, Botswana, Burundi, Ethiopia, Kenya, Malawi, Mozambique, Namibia, Rwanda, Somalia,
257	Angola, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo, Cote d'Ivoire,
258	Honduras, Nicaragua, Costa Rica, Panama
259	Argentina, Chile, Peru
260	China, Taiwan
261	Cambodia, Laos, Viet Nam
262	Angola, Botswana, DR Congo, Namibia, Zambia
263	Barbados, Belize, Canada, Comoros, Costa Rica,  Cuba, Dominica, Dominican Republic, Guatemala, Honduras,
264	Benin, Burkina Faso, Cameroon, Central African Republic, Chad, Cote d'Ivoire, Djibouti, Eritrea, Ethiopia, Gambia,
265	Bhutan, China, India, South Korea, North Korea, Mongolia, Myanmar, Nepal, Pakistan, Russia,
266	Antigua and Barbuda, Argentina, Australia, Bahamas, Bangladesh, Belgium, Brazil, Canada, Cape Verde, Chile,
267	Argentina, Bolivia, Brazil, Chile, Ecuador, Paraguay, Peru, Uruguay
268	Ecuador, Colombia, Costa Rica
269	Angola, Benin, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Equatorial Guinea, Gabon, Ghana,
270	Armenia, Azerbaijan, China, Georgia, India, Iran, Iraq, Israel, Jordan, Kazakhstan,
271	Mexico, United States  Nebraska, Kansas, Wyoming, Nevada, North Dakota, Texas, California, New Mexico, South Dakota, Oklahoma,
272	New Zealand
273	Brunei, Cambodia, Indonesia,  Laos, Malaysia, Myanmar, Singapore, Thailand, Viet Nam
274	Austria, Belarus, Belgium, Bulgaria, China, Croatia, Czech Republic, France, Georgia, Germany,
275	Bhutan, India
276	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Grenada, Jamaica, Saint Kitts and Nevis, Saint Vincent and the Grenadines,
277	Colombia, Ecuador, Peru
278	Angola, Benin, Botswana, Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo, Equatorial Guinea,
279	Afghanistan, Bangladesh, Bhutan, Brunei, Cambodia, China, India, Indonesia, Laos, Malaysia,
280	Algeria, Chad, Djibouti, Egypt, Eritrea, Ethiopia, Israel, Jordan, Libya, Mali,
281	China, Japan, Kazakhstan, North Korea, South Korea, Mongolia, Russia
282	Angola, Burundi, Cameroon, Congo, DR Congo, Cote d'Ivoire, Cyprus, Egypt, Equatorial Guinea, Eritrea,
283	Bangladesh, India, Nepal, Pakistan
284	Argentina, Bolivia, Brazil, Colombia, Costa Rica, Ecuador, Guyana, Panama, Paraguay, Peru,
285	Canada, Japan, North Korea, South Korea, Mexico, Russia, United States, China, Taiwan
286	Belize, Colombia, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama
287	South Africa, Argentina, Australia, Brazil, Chile
288	Ethiopia, Kenya, Somalia, South Sudan, Tanzania, Uganda
289	Afghanistan, China, India, Kazakhstan, Kyrgyzstan, Mongolia, Pakistan, Russia, Tajikistan, Uzbekistan
290	Angola, Benin, Botswana, Burkina Faso, Cameroon, Chad, DR Congo, Cote d'Ivoire, Eritrea, Ethiopia,
291	Algeria,  Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo,
292	Afghanistan, Albania, Algeria, Andorra, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina,
293	Angola, Benin,  Botswana, Burkina Faso, Cameroon, Central African Republic, Chad, Congo, Cote d'Ivoire, Eritrea,
294	Brazil, Guyana, Suriname, Venezuela
295	Bangladesh, Bhutan, Cambodia, India, Nepal, Pakistan, China, Laos, Myanmar, Viet Nam,
296	Argentina, Brazil, Chile, Peru, Uruguay, Colombia, Ecuador
297	Finland, Norway, Russia, Sweden
298	Angola, Kenya, Namibia, Somalia, Tanzania, Uganda
299	Angola, Burundi, DR Congo, Ethiopia, Kenya, Malawi, Mozambique, Rwanda, Somalia, South Africa,
300	Ethiopia, Kenya, Malawi, Mozambique, Somalia, Tanzania, Zambia
301	Benin, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire, Ethiopia, Gambia, Ghana,
302	Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Singapore, Thailand, Viet Nam
303	Angola, Botswana, DR Congo, Malawi, Tanzania, Zambia, Namibia, Zimbabwe
304	Angola, Botswana, Kenya, Mozambique, Namibia, South Africa, Swaziland,  Tanzania, Zambia, Zimbabwe
305	Japan  Pacific Ocean
306	Philippines, Malaysia
307	Afghanistan, Armenia, Azerbaijan, Bulgaria, China, Egypt, Georgia, Greece, Iran, Iraq,
308	Belize, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,
309	Afghanistan, Egypt, Iran, Israel, Jordan, Oman, Pakistan, Palestine, Saudi Arabia, Turkmenistan,
310	Afghanistan, Azerbaijan, China, Iran, Kazakhstan, Kyrgyzstan, Mongolia, Pakistan, Tajikistan, Turkmenistan,
311	Austria, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, Denmark, Estonia, Finland,
312	Afghanistan, Albania, Algeria, Andorra, Armenia, Austria, Azerbaijan, Bangladesh, Bhutan, Bosnia and Herzegovina,
313	Argentina, Bolivia, Paraguay
314	China, Kazakhstan, North Korea, South Korea, Mongolia, Russia, Kyrgyzstan, Myanmar
315	Angola, Australia, Namibia, South Africa, Gabon
316	Chile
317	Angola, Botswana, Namibia, South Africa, Zimbabwe, Lesotho
318	Cuba
319	Bangladesh, Bhutan, Cambodia, China, India, Indonesia, Malaysia, Myanmar, Nepal, Thailand,
320	Cambodia, China, India, Laos, Myanmar, Thailand, Viet Nam
321	Bangladesh, Cambodia, India, Laos, Myanmar, Thailand, Viet Nam, China, Malaysia
322	Angola, Burundi, DR Congo,  Ethiopia, Kenya, Malawi, Mozambique, Rwanda, Somalia, South Africa,
323	Benin, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire, Ethiopia, Ghana, Guinea,
324	Ethiopia, Kenya, South Sudan, Tanzania
325	Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Equatorial Guinea, Gabon, Ghana, Guinea, Liberia,
326	Lesotho, South Africa, Swaziland
327	Sri Lanka
328	Indonesia, Australia
329	Ethiopia, Kenya, Somalia
330	Belize, Bolivia, Brazil, Colombia, Costa Rica, Ecuador, Guatemala, Guyana, Honduras, Mexico,
331	Algeria, Bahrain, Botswana, Burkina Faso, Chad, Cyprus, Egypt, Eritrea, Ethiopia, India,
332	Bhutan, India, Nepal, Bangladesh
333	Brazil, Peru, Colombia
334	Argentina, Bolivia, Chile, Paraguay
335	Chad, Mali, Niger, Algeria, Morocco
336	Botswana, Namibia, South Africa, Zambia, Zimbabwe, Angola
337	Cote d'Ivoire, Gambia, Guinea, Guinea-Bissau, Liberia, Senegal, Sierra Leone
338	Gambia, Guinea, Guinea-Bissau, Mali, Mauritania, Senegal
339	Austria, Bulgaria, China, Czech Republic,  Georgia, Hungary, Kazakhstan, Kyrgyzstan, Moldova, Mongolia,
340	El Salvador, Guatemala, Honduras, Mexico, Nicaragua, United States
341	Belize, Bolivia,  Brazil, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala, Honduras, Mexico,
342	DR Congo, Burundi, Uganda
343	Colombia, Costa Rica, Ecuador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Peru
344	Lesotho, South Africa
345	Malaysia, Myanmar, Thailand
346	Colombia, Venezuela
347	Argentina, Bolivia, Brazil, Paraguay, Peru
348	Cameroon, Central African Republic, Chad, Congo, DR Congo, Equatorial Guinea, Ethiopia, Gabon, Kenya, Nigeria,
349	Dominican Republic  Neotropical
350	Cambodia, China, India, Malaysia, Myanmar, Thailand, Viet Nam, Laos
351	Israel, Jordan, Turkey  Palearctic
352	Brazil, Guyana, Suriname
353	Colombia, Ecuador, Panama
354	Argentina, Belize, Bolivia, Brazil, Colombia, Costa Rica, Ecuador, Guatemala, Guyana,  Honduras,
355	Costa Rica, Panama
356	Papua New Guinea
357	Australia, New Zealand
358	Cote d'Ivoire, Guinea,  Liberia, Sierra Leone
359	Equatorial Guinea, Angola, Cameroon, Central African Republic, Chad, Congo, DR Congo, Gabon, Kenya, Nigeria,
360	Russia, Ukraine, Kazakhstan
361	China, India, Bhutan, Nepal
362	Spain, Portugal,  France, Finland, United Kingdom, Albania, Andorra, Austria, Belgium, Bosnia and Herzegovina,
363	Albania, Armenia, Austria, Belarus, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, Denmark, Estonia,
364	Botswana, Lesotho, Namibia, South Africa
365	Andorra, Austria, Belarus, Belgium, Bosnia and Herzegovina, China, Croatia, Czech Republic, Denmark, Estonia,
366	Cambodia, Laos, Viet Nam, China
367	China, North Korea, Mongolia, Spain, France, Finland, United Kingdom, Albania, Austria, Belgium,
368	Egypt, South Africa, Angola, Benin, Botswana, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo,
369	Argentina, Bolivia, Brazil, Paraguay, Uruguay
370	Papua New Guinea, Indonesia
371	Mexico, Canada, United States
372	Angola, Botswana, DR Congo, Ethiopia, Kenya, Malawi, Mozambique, Namibia, Somalia, South Africa,
373	Algeria,  Bahrain, Chad, Djibouti, Egypt, Eritrea, Ethiopia, Iran, Iraq, Israel,
374	Kenya, Somalia
375	Spain, Malta, Algeria, Libya, Morocco, Tunisia
376	Canada,  United States
377	China, Myanmar
378	Indonesia, Malaysia, Philippines
379	Mexico,  United States
380	China, Mongolia, Russia
381	Malaysia
382	Australia, Papua New Guinea, Indonesia
383	Brunei, Indonesia, Malaysia, Myanmar, Thailand
384	Indonesia, Papua New Guinea
385	Cote d'Ivoire, Liberia
386	China, India, Bangladesh, Cambodia, Laos, Myanmar, Thailand, Viet Nam
387	China, Hong Kong,  Taiwan, India, Bangladesh, Brunei, Cambodia, Indonesia, Malaysia, Myanmar,
388	Andorra, France, Portugal, Spain
389	Ecuador, Mexico
390	China, India, Bangladesh, Bhutan, Cambodia, Laos, Myanmar, Thailand, Viet Nam
391	Argentina, Brazil, Chile, Peru, Uruguay
392	India, Bangladesh, Indonesia, Nepal, Sri Lanka, Pakistan
393	Austria, Bulgaria, Czech Republic, Greece, Hungary, Macedonia, Moldova, Romania, Serbia, Slovakia,
394	Spain, Portugal, France, Finland, United Kingdom, Albania, Andorra, Austria, Belgium,  Bosnia and Herzegovina,
395	Belize, Guatemala, Honduras, Mexico, Canada, United States
562	Australia  Australasian
396	Botswana, Cameroon, Ethiopia, Kenya, Lesotho, Mozambique, Nigeria,  South Africa, South Sudan, Swaziland,
397	Chile, Argentina, Bolivia, Peru
398	Cote d'Ivoire, Ghana, Guinea, Liberia, Sierra Leone
399	Taiwan
400	Spain, Portugal, France, Finland, Andorra, Austria, Belgium, Bosnia and Herzegovina, Croatia, Estonia,
401	Chile, Argentina, Bolivia, Brazil, Paraguay, Peru
402	Argentina, Bolivia, Brazil,  Paraguay
403	Angola, Benin, Burkina Faso, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Equatorial Guinea,
404	Egypt
405	Chile, Argentina, Bolivia, Brazil, Paraguay, Peru, Uruguay
406	Angola, Burundi, Congo,  Central African Republic, Kenya, Rwanda, South Sudan, Tanzania, Uganda, Zambia
407	Chile, Argentina
408	Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon,  Central African Republic, Chad, Congo, DR Congo,
409	Antigua and Barbuda, Bahamas, Barbados, Dominica, Grenada, Jamaica, Saint Vincent and the Grenadines, Belize, Honduras, Mexico,
410	China, India, Bhutan, Nepal, Afghanistan, Kazakhstan, Kyrgyzstan, Pakistan, Tajikistan
411	Bangladesh, China, India, Indonesia, Laos, Malaysia, Myanmar, Nepal, Thailand, Viet Nam
412	China, India, Bhutan, Cambodia, Laos,  Myanmar, Nepal, Thailand, Viet Nam
413	Benin, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Ethiopia, Gambia, Ghana, Guinea,
414	China, Spain, France, Finland, United Kingdom, Albania, Andorra, Austria, Belgium, Bosnia and Herzegovina,
415	Cameroon, Congo, DR Congo
416	Cuba, Mexico, Canada, United States
417	India, Bangladesh, Myanmar
418	Lithuania, Montenegro, Poland, Romania, Serbia, Slovakia, Slovenia, Belarus, Moldova, Russia, Ukraine, Georgia, Turkey, Czech Republic, Macedonia
419	Ethiopia, Kenya, Somalia, South Sudan, Uganda
420	Cote d'Ivoire, Ghana, Guinea, Guinea-Bissau, Liberia, Nigeria, Senegal, Sierra Leone
421	China, India, Laos, Myanmar, Taiwan, Viet Nam, Bhutan
422	Albania, Andorra, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, China,
423	Andorra, France, Italy, Spain
424	Oman, United Arab Emirates
425	Djibouti, Eritrea, Ethiopia, South Sudan, Sudan
426	Cambodia, Indonesia, Malaysia, Thailand, Viet Nam, Brunei, Laos
427	Mauritius
428	Indonesia, Malaysia, Singapore, Thailand
429	Congo
430	United Kingdom, Spain, Italy, France, Germany, Ukraine, Poland, Turkey, Russia, Georgia,
431	Brunei, Indonesia, Malaysia, Myanmar, Singapore, Thailand
432	Benin, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon, Ghana, Guinea, Kenya,
433	Belize, Colombia, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua,  Panama
434	Bangladesh,  Bhutan, Cambodia, China, Hong Kong, India, Indonesia, Laos, Malaysia, Myanmar,
435	Angola, Cameroon, Central African Republic, Congo, DR Congo, Equatorial Guinea, Gabon, Kenya, Malawi, Mozambique,
436	United States, Canada
437	China, Estonia, Finland, Japan, North Korea, South Korea, Latvia, Mongolia, Russia, Belarus  Palearctic
438	Kenya, Malawi, Mozambique, South Africa, Tanzania, Zimbabwe, Swaziland
439	Bhutan, China, India, Kazakhstan, Kyrgyzstan, Mongolia, Nepal, Pakistan, Russia, Tajikistan,
440	Bhutan, China, India, Nepal,  Pakistan, Myanmar
441	Botswana, Burundi, Congo, DR Congo, Swaziland, Kenya, Lesotho, Malawi, Mozambique, Namibia,
442	Albania, Andorra, Austria, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Cyprus, Czech Republic,
443	Peru
444	China, Spain, Portugal, France, United Kingdom, Albania, Andorra, Austria, Belgium, Bosnia and Herzegovina,
445	Algeria, Morocco, Tunisia, Western Sahara
446	Argentina, Brazil,  Uruguay
447	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Kenya, Rwanda, Sudan, Tanzania,
448	Benin, Cameroon, Ghana, Nigeria, Togo
449	Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Trinidad and Tobago, Venezuela
450	China, South Korea, North Korea, Russia
451	Bangladesh, Bhutan, India, Myanmar
452	Costa Rica, Nicaragua, Panama
453	Japan, Mexico, Canada, United States, Russia
454	Japan, Philippines, Taiwan
455	Ethiopia, Somalia
456	South Africa, Angola, Botswana, Burundi, Congo, DR Congo, Kenya, Lesotho, Malawi, Mozambique,
457	South Africa, Angola, Botswana, DR Congo, Gabon, Malawi, Mozambique, Namibia, Tanzania, Zambia,
458	Afghanistan, Brunei, Cambodia, China, India, Indonesia, Malaysia, Myanmar, Nepal, Thailand
459	Australia, South Africa, Angola, Argentina, Brazil, Chile, Comoros, Madagascar, Mauritius, Mozambique,
460	Spain, Portugal, France, Bulgaria, Croatia, Germany, Greece, Hungary, Italy, Monaco,
461	Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara, Burkina Faso, Chad, Eritrea, Mali,
462	Somalia, Ethiopia
463	China, India, Bangladesh, Bhutan, Laos, Myanmar, Nepal, Thailand, Viet Nam
464	South Africa, Angola, Botswana, DR Congo, Mozambique, Namibia, Zambia, Zimbabwe
465	Ethiopia, South Sudan
466	Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara, Burkina Faso, Eritrea, Mali, Mauritania,
467	Brazil, Colombia, Ecuador, Peru, Venezuela
468	Belarus, Russia, Ukraine, Armenia, Azerbaijan, Georgia, Iran, Israel, Lebanon, Syria,
469	Angola, Burundi, DR Congo, Kenya, Malawi, Mozambique, Rwanda, Tanzania, Uganda, Zambia
470	Indonesia  Jawa
471	China, Taiwan, India, Bangladesh, Cambodia, Laos, Myanmar, Sri Lanka, Thailand, Viet Nam
472	China, North Korea, South Korea,  Russia
473	Belize, Costa Rica, Honduras, Mexico, Nicaragua, Panama, Ecuador, Brazil,  Colombia, Peru,
474	Ecuador, Peru
475	South Africa, Angola, Burundi, DR Congo, Kenya, Malawi, Mozambique, Rwanda, Tanzania, Zambia,
476	Australia, New Zealand, Chile, Argentina, Brazil, Uruguay, South Africa, Namibia
477	China, North Korea, Mongolia, Taiwan, Spain, France, United Kingdom, Albania, Andorra, Austria,
478	Turkmenistan, Kazakhstan, Mongolia, China, Pakistan, Afghanistan, Iran, Kyrgyzstan, Tajikistan, Uzbekistan
479	Ecuador, Colombia
480	China, India, Bangladesh, Laos, Myanmar, Thailand, Viet Nam
481	Argentina, Bolivia, Brazil, Paraguay, Suriname, Uruguay
482	Ecuador, Bolivia, Brazil, Peru
483	China, India, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Singapore, Sri Lanka, Thailand,
484	Chile, Peru
485	China, North Korea, South Korea, Russia
486	Bosnia and Herzegovina, Bulgaria, Greece,  Hungary, Montenegro, Romania,  Serbia, Moldova, Ukraine, Turkey,
487	Argentina, Brazil, Paraguay, Bolivia
488	Cambodia, Laos, Thailand
489	South Africa, Angola, Burundi, DR Congo,  Kenya, Malawi, Mozambique, Rwanda, Tanzania, Uganda,
490	China, India, Bhutan, Cambodia, Laos, Myanmar, Nepal, Thailand, Viet Nam
491	South Africa, Botswana, Namibia
492	Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Uruguay, Venezuela
493	Lesotho, Namibia, South Africa, Swaziland, Zimbabwe
494	France, Finland, United Kingdom, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Denmark,
495	Panama, Colombia
496	Cote d'Ivoire, Ghana
497	China, Japan,  North Korea, South Korea, Mongolia, France, Finland,  Austria, Belgium, Bulgaria,
498	Brunei, Indonesia, Malaysia, Singapore, Thailand
499	Tanzania
500	Djibouti, Eritrea, Ethiopia,  Somalia, Sudan
501	India,  Sri Lanka
502	China, India, Myanmar, Thailand, Viet Nam
503	Spain, Portugal, France, United Kingdom, Austria, Bosnia and Herzegovina, Croatia, Denmark, Estonia, Germany,
504	Cambodia,  Laos, Malaysia, Myanmar, Thailand
505	Comoros
506	Burundi, DR Congo, Rwanda,  Uganda
507	China, India,   Bangladesh, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Nepal, Sri Lanka,
508	Australia,  New Zealand, Chile, Argentina, South Africa
509	China, Taiwan, India, Bangladesh, Cambodia,  Laos, Malaysia, Myanmar, Thailand, Viet Nam
510	Algeria, Morocco, Western Sahara
511	China, Japan, Mongolia, Russia
512	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,  Nicaragua
513	Bolivia, Brazil, Peru
514	Brunei, Cambodia, Indonesia, Laos, Malaysia, Philippines, Singapore, Thailand, Timor-Leste, Viet Nam
515	Argentina, Brazil, Paraguay
516	China, India, Laos, Myanmar, Thailand, Viet Nam
517	El Salvador, Guatemala, Honduras, Mexico, United States
518	Dominica, Guadeloupe, Saint Vincent and the Grenadines, China, Japan, Taiwan, Spain, Costa Rica, Panama, United States,
519	Algeria, Egypt, Israel, Jordan, Libya, Mauritania, Morocco, Saudi Arabia, Sudan, Syria,
520	China, India, Bhutan, Nepal, Pakistan
521	Costa Rica, El Salvador, Guatemala, Honduras, Mexico,  Nicaragua, Panama
522	Cameroon, Equatorial Guinea, Gabon, Nigeria
523	Egypt, Equatorial Guinea, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad,
524	Djibouti, Somalia
525	China, Mongolia, Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Germany, Greece, Hungary,
526	Brazil, Uruguay
527	Guatemala, Mexico
528	Equatorial Guinea, South Africa, Angola, Botswana, Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo,
529	China, India, Bangladesh, Cambodia, Laos, Malaysia, Myanmar, Nepal, Sri Lanka,  Thailand,
530	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon, Liberia, Nigeria
531	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia,
532	Armenia, Austria, Azerbaijan, Belarus, Bosnia and Herzegovina, Bulgaria, China, Croatia, Czech Republic, Denmark,
533	Cameroon, Nigeria
534	Equatorial Guinea, Burundi, Cameroon, Central African Republic, Congo,  DR Congo, Gabon, Rwanda, Tanzania, Uganda
535	Kenya, Mozambique, Somalia, Tanzania
536	Belize, Guatemala,  Mexico
537	Algeria, Egypt, Morocco, India, Myanmar, Burkina Faso, Chad, DR Congo, Djibouti, Eritrea,
538	Greece, Armenia, Azerbaijan, Georgia, Iran, Iraq, Israel, Jordan,  Lebanon, Syria,
539	Equatorial Guinea, Cameroon, Congo, Gabon
540	Ecuador,  Bolivia, Brazil, Colombia, Peru
541	Seychelles, Comoros, Tanzania
542	South Africa, Malawi, Mozambique, Tanzania, Zambia
543	Ecuador,  Colombia
544	Equatorial Guinea, Benin, Cameroon, Congo, DR Congo, Cote d'Ivoire, Gabon, Gambia, Ghana, Guinea,
545	Burundi, DR Congo, Rwanda, Uganda
546	Argentina, Brazil
547	Chile, Argentina, Brazil, Peru, Uruguay
548	China, India, Myanmar
549	Cote d'Ivoire, Guinea, Guinea-Bissau, Liberia, Sierra Leone
550	Brazil, Guyana, Venezuela
551	Colombia, Costa Rica, Ecuador, Panama, Trinidad and Tobago, Venezuela
552	Egypt, India, Sri Lanka, South Africa, Djibouti, Eritrea, Kenya, Madagascar, Mozambique, Somalia,
553	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia
554	Cambodia, Laos, Myanmar, Thailand, Viet Nam
555	Indonesia, Malaysia, Myanmar, Singapore, Thailand
556	Equatorial Guinea, Seychelles, Mauritius, South Africa, Angola,  Benin, Botswana, Cameroon, Central African Republic, Chad,
557	Bolivia, Brazil, Paraguay
558	Somalia
559	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon, Ghana, Guinea, Liberia,
560	Trinidad and Tobago, Costa Rica, Honduras, Nicaragua, Panama, Brazil, Colombia,  Guyana, Suriname, Venezuela
561	China, Viet Nam
563	Burkina Faso, Cote d'Ivoire, Gambia, Ghana, Guinea, Guinea-Bissau, Liberia, Mali, Senegal, Sierra Leone
564	South Sudan
565	Benin, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Ghana, Niger, Nigeria, South Sudan,
566	Spain, Portugal, France, United Kingdom, Albania, Andorra, Austria, Belgium, Bosnia and Herzegovina, Bulgaria,
567	Laos
568	Mongolia, Finland, Austria, Estonia, Germany, Hungary, Lithuania, Netherlands, Norway, Poland,
569	China, India, Bangladesh, Laos, Malaysia, Myanmar, Thailand, Viet Nam
570	Cameroon, Equatorial Guinea, Angola, Botswana, Burundi, Congo, DR Congo, Gabon, Kenya, Malawi,
571	China, Mongolia, India, Afghanistan, Kyrgyzstan, Pakistan, Tajikistan
572	DR Congo, Cote d'Ivoire, Ghana
573	Myanmar
574	Comoros, Madagascar
575	Benin, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire, Gambia,   Ghana, Guinea,
576	Botswana, DR Congo, Malawi, Mozambique, South Africa, Swaziland, Tanzania, Zambia, Zimbabwe
577	Angola, Namibia
578	Spain, Portugal, France, Austria, Belgium, Germany, Liechtenstein, Luxembourg, Netherlands, Switzerland,
579	Djibouti, Egypt, Eritrea, Ethiopia, Libya, Mauritania, Morocco, Sudan, Western Sahara
580	Burundi, Ethiopia, Kenya, Lesotho, Malawi, Mozambique, Rwanda, South Africa, Tanzania, Uganda,
581	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States, Colombia
582	Japan, Taiwan, United States, Federated States of Micronesia, Ecuador
583	Papua New Guinea, Solomon Islands, Indonesia, Timor-Leste
584	Spain, Portugal, France, United Kingdom, Ireland, Canada, United States, Australia, Brazil, South Africa,
585	China, Spain, Portugal, France, United Kingdom, Albania, Andorra, Austria, Belgium,  Bosnia and Herzegovina,
586	Venezuela
587	Costa Rica, Mexico, Nicaragua, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana,
588	China, Spain, Portugal, France, Finland, United Kingdom, Andorra,  Austria, Belgium, Bosnia and Herzegovina,
589	DR Congo, Kenya, Malawi, Mozambique, Tanzania, Zambia, Zimbabwe
590	Ecuador, Brazil, Colombia, Peru, Venezuela
591	Argentina, Brazil, Paraguay, Uruguay
592	Ecuador, Bolivia, Colombia, Peru
593	China, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Thailand, Viet Nam
594	Trinidad and Tobago,  Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
595	Tanzania, Uganda
596	South Africa, Angola, Namibia
597	China, Spain, France, United Kingdom, Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Germany,
598	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo, Gabon
599	Gambia, Ghana, Guinea, Guinea-Bissau, Kenya, Mali, Mauritania, Morocco, Niger, Nigeria, Senegal, Sierra Leone, Sudan, Togo, Uganda
600	India, Bangladesh, Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Philippines,  Singapore,
601	Cote d'Ivoire, Ghana, Guinea, Liberia, Nigeria,  Sierra Leone, Togo
602	China, India, Bhutan, Myanmar, Nepal
603	Chile, Argentina, Bolivia, Paraguay
604	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,  Nicaragua, Panama, Ecuador,
605	Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
606	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Nigeria, Uganda
607	Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Venezuela
608	China, Japan, Taiwan, Mexico, United States, Australia, Indonesia, Malaysia, Maldives, Myanmar,
609	Belarus, Moldova, Poland, Russia, Ukraine
610	Australia, New Zealand,  Maldives, Chile, Argentina, Brazil, Peru, Uruguay, South Africa, Namibia
611	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama
612	Cote d'Ivoire, Ghana, Guinea, Guinea-Bissau, Liberia, Senegal, Sierra Leone, Togo
613	Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Colombia
614	Angola, Congo, DR Congo, Namibia, Zambia
615	Angola, DR Congo, Malawi, Mozambique, Tanzania, Zambia
616	Brunei, Indonesia,  Malaysia, Philippines
617	Benin, Burkina Faso, Cameroon, Gambia, Ghana, Guinea-Bissau, Mali, Niger, Nigeria, Senegal,
618	Canada, United States, Russia
619	Trinidad and Tobago, Belize, El Salvador, Guatemala, Honduras, Mexico, United States, Ecuador, Colombia, Peru,
620	Cambodia, Viet Nam
621	DR Congo, Rwanda
622	Cambodia, Indonesia, Laos, Malaysia, Viet Nam
623	Spain, Portugal, France, United Kingdom, Andorra, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Denmark,
624	Benin, Burkina Faso, Gambia, Ghana, Guinea, Guinea-Bissau, Liberia, Nigeria, Senegal, Sierra Leone,
625	Cambodia, China, Thailand, Viet Nam
626	Brazil, Colombia,  Guyana, Suriname, Venezuela
627	Equatorial Guinea, Congo, Ghana, Liberia,
628	Spain, France, Bulgaria, Germany, Greece,  Hungary, Montenegro, Romania, Serbia, Slovakia,
629	French Guiana
630	Western Sahara, Angola, Benin, Cameroon, Congo, Gabon, Gambia, Guinea, Guinea-Bissau, Mauritania,
631	Guatemala, Mexico, Canada, United States
632	China, Japan, North Korea, Mongolia, Finland, Norway, Sweden, Canada, United States, Russia,
633	Kenya
634	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,  Nicaragua, Panama, Ecuador, Argentina,
635	China, Japan, North Korea, Mongolia, France, Finland, United Kingdom, Albania, Austria, Belgium,
636	Trinidad and Tobago, Costa Rica, Guatemala, Honduras, Nicaragua, Panama, Bolivia, Brazil, Colombia, Guyana,
637	China, Taiwan, Viet Nam
638	Kenya,  Tanzania
639	Panama, Ecuador,  Colombia
640	Angola, DR Congo
641	South Africa, DR Congo, Malawi, Mozambique, Tanzania, Zambia, Zimbabwe
642	China, India, Nepal, Pakistan
643	China, Japan, North Korea, South Korea, Mongolia, Finland, Estonia,  Latvia, Lithuania, Norway,
644	Ecuador, Brazil, Colombia, Peru  Amazonas
645	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Nigeria
646	Ecuador, Bolivia, Colombia, Peru, Venezuela
647	Brazil, Colombia, Ecuador, Guyana, Suriname, Venezuela
648	Saint Kitts and Nevis, Trinidad and Tobago, Belize, Costa Rica,  El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,
649	Spain
650	Panama, Ecuador, Colombia
651	Algeria, Libya, Morocco, Tunisia, Western Sahara
652	France, Italy
653	Trinidad and Tobago, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
654	Ecuador, Colombia, Venezuela
655	Belize, Costa Rica, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua, Panama, Colombia
656	Panama, Ecuador, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
657	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo, DR Congo, Gabon
658	Costa Rica, Panama, Ecuador, Colombia, Venezuela
659	Liberia,
660	Equatorial Guinea, Cameroon, Nigeria
661	Brazil, Colombia, Venezuela
662	Angola, Cameroon, Congo, Equatorial Guinea, Gabon
663	Bolivia, Brazil
664	Belize, Guatemala, Mexico
665	Equatorial Guinea, Angola, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Kenya, Nigeria,
666	Eritrea, Ethiopia, Sudan
667	Mexico, United States, Ecuador, Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru
668	Equatorial Guinea,  Angola, Benin, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Ghana, Nigeria,
669	Gambia, Guinea, Guinea-Bissau, Liberia, Senegal, Sierra Leone
670	India, Indonesia
671	China, Mongolia, Russia, Afghanistan, Iran, Kazakhstan, Kyrgyzstan, Tajikistan, Turkmenistan, Uzbekistan
672	Kenya, Tanzania, Uganda
673	Trinidad and Tobago, Belize,  Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Canada,
674	India, Bhutan, Nepal
675	United States  Nearctic
676	Benin, Gambia, Ghana, Guinea, Guinea-Bissau, Nigeria, Senegal, Sierra Leone, Togo,
677	Benin, Ghana, Togo,
678	Brazil, Colombia, Peru
679	Algeria, Libya,  Morocco, Tunisia
680	Benin, Nigeria, Togo
681	Djibouti, Eritrea, Ethiopia, Somalia, Sudan
682	China, North Korea, Russia
683	Guinea, Liberia, Sierra Leone,
684	Spain, Portugal, France, Albania, Andorra, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Germany,
685	Brazil, Peru
686	China, India, Laos, Myanmar, Nepal, Thailand, Viet Nam
687	Ecuador,  Brazil, Colombia, Peru, Venezuela
688	Japan, South Korea, Canada, United States, Russia
689	Spain,  Portugal, France, Albania, Andorra, Bosnia and Herzegovina, Bulgaria, Croatia, Greece, Italy,
690	Ethiopia, Kenya, Somalia  Afrotropical
691	Central African Republic, DR Congo, South Sudan, Uganda
692	Central African Republic, Congo, DR Congo, Uganda
693	Equatorial Guinea, Cameroon, Congo, Gabon, Ghana, Liberia, Nigeria, Sierra Leone,
694	Argentina, Bolivia, Brazil, Peru
695	Ghana, Guinea, Liberia, Senegal, Sierra Leone,
696	Brazil, Venezuela
697	Indonesia  Indomalayan
698	Benin, Ghana, Guinea, Liberia, Nigeria, Sierra Leone, Togo,
699	China, India, Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Philippines, Singapore,
700	Gabon
701	Colombia, Venezuela  Neotropical
702	Ecuador, Colombia, Peru
703	Australia, Brunei, Cambodia, Indonesia, Malaysia, Papua New Guinea, Philippines, Singapore, Solomon Islands, Thailand,
704	China, France, Finland, Belgium, Bulgaria, Denmark, Estonia, Germany, Hungary, Latvia,
705	Algeria,  Egypt, Libya, Morocco, Tunisia, Western Sahara, Chad, Mali, Mauritania, Niger,
706	Afghanistan, Iran, Pakistan, Turkmenistan
707	Spain, Portugal, France, Albania, Andorra, Austria, Belgium,  Bosnia and Herzegovina, Bulgaria, Croatia,
708	Equatorial Guinea, Angola, Cameroon,  Central African Republic, Congo, DR Congo, Gabon
709	Australia, New Zealand, Argentina, Uruguay
710	Papua New Guinea, Solomon Islands, India, Indonesia, Malaysia, Maldives, Myanmar, Philippines, Thailand, Viet Nam
711	Australia, New Zealand, Chile, Argentina, Brazil, South Africa
712	Nicaragua
713	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, United States
714	Equatorial Guinea,  Cameroon, Nigeria
715	Djibouti, Eritrea, Ethiopia, Kenya, Somalia, South Sudan, Sudan, Tanzania, Uganda
716	China, Kazakhstan, Kyrgyzstan, Tajikistan, Uzbekistan
717	Canada, United States  British Columbia
718	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Colombia,
719	Ecuador, Brazil, Colombia, Peru
720	Indonesia  Sulawesi
721	Bolivia, Brazil, Colombia, Peru, Venezuela
722	Equatorial Guinea, Benin, Cameroon, Central African Republic, Congo, Gabon, Nigeria
723	Egypt, India, Benin, Botswana, Burkina Faso, DR Congo, Djibouti, Ethiopia, Gambia, Ghana,
724	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador,
725	Mexico, United States  Nearctic
726	Equatorial Guinea
727	South Africa, Angola, Botswana, DR Congo,  Malawi, Mozambique, Namibia, Tanzania, Zambia, Zimbabwe
728	Bolivia, Peru
729	Guinea, Liberia,
730	Spain, Portugal, France,  Algeria, Libya, Morocco, Tunisia
731	Japan, Canada, United States  Pacific Ocean
732	France, Albania, Bosnia and Herzegovina, Bulgaria, Greece, Italy,  Monaco, Montenegro, San Marino, Serbia,
733	Spain, Portugal, France, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Germany,
734	Australasian, Indomalayan
735	Burundi, Chad, Congo, DR Congo, Eritrea, Ethiopia, Kenya, Malawi, Nigeria, Rwanda,
736	Benin, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo, Eritrea, Ethiopia,
737	China, Russia
738	Equatorial Guinea, Angola, Burkina Faso, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Guinea,
739	Spain, France, Albania,  Andorra, Bosnia and Herzegovina, Bulgaria, Croatia, Greece, Italy, Montenegro,
740	United States, Mexico
741	China, India, Bhutan, Myanmar, Nepal, Thailand, Viet Nam
742	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Mexico, Nicaragua, Panama, United States,  Ecuador, Argentina,
743	China, Papua New Guinea, Solomon Islands, Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Philippines,
744	Nigeria
745	Mongolia, Finland, Austria, Denmark, Estonia, Germany, Latvia, Lithuania, Norway, Poland,
746	China, India, Bangladesh,  Bhutan, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Nepal,
747	Cambodia,  Laos, Myanmar, Thailand, Viet Nam
748	Cameroon, Central African Republic, Congo, DR Congo, Gabon
749	China, Japan, North Korea, South Korea
750	Grenada, Jamaica, Trinidad and Tobago, Belize, Costa Rica, El Salvador,  Honduras, Mexico, Nicaragua, Panama,
751	Spain, Portugal, France
752	South Africa, Angola, Botswana, Namibia
753	Burundi, Central African Republic, DR Congo, Kenya, Rwanda, South Sudan, Tanzania, Uganda
754	Belize, Costa Rica,  El Salvador, Guatemala, Honduras,  Mexico, Nicaragua
755	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States, Ecuador, Colombia,
756	Ecuador, Bolivia, Brazil, Colombia, Peru, Venezuela
757	China,  Myanmar
758	South Africa, DR Congo, Kenya, Malawi, Mozambique, Rwanda, Tanzania, Zambia, Zimbabwe
759	Equatorial Guinea, Cameroon, Central African Republic, Congo, Gabon
760	Papua New Guinea,  Indonesia
761	Argentina,  Paraguay
762	France, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Germany, Greece, Hungary,
763	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo, Gabon
764	Grenada, Trinidad and Tobago, Belize, El Salvador, Guatemala, Honduras, Panama, Ecuador, Colombia, Peru,
765	Bolivia
766	Australia,  Papua New Guinea, Indonesia
767	China, Mongolia, Spain, Portugal,  France, Albania, Andorra, Austria, Bosnia and Herzegovina, Bulgaria,
768	China, Japan, North Korea, Mongolia, Finland, Norway, Sweden, Russia
769	Egypt, Libya
770	South Africa, Angola, Botswana, DR Congo, Kenya, Malawi,  Mozambique, Namibia, Tanzania, Uganda,
771	Brazil, Guyana, Peru
772	Seychelles
773	France, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Estonia, Germany, Greece,
774	China, Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Thailand, Viet Nam
775	DR Congo, Malawi, Mozambique, Tanzania, Uganda, Zambia
776	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Rwanda, Uganda
777	Ecuador, Brazil, Peru
778	South Africa, Angola, Central African Republic, DR Congo, Ghana, Kenya, Malawi, Rwanda, Tanzania, Uganda,
779	Cuba,  Dominican Republic, Jamaica, Mexico, Canada, United States, Ecuador, Argentina, Brazil, Colombia,
780	Costa Rica, Brazil, Colombia,  Guyana, Suriname, Venezuela
781	Cuba, Dominican Republic, Jamaica, Saint Vincent and the Grenadines
782	China, India, Bhutan, Indonesia, Laos, Malaysia, Myanmar, Nepal, Thailand, Viet Nam
783	Mongolia, Russia
784	Central African Republic, DR Congo, Uganda
785	South Africa, Angola, Botswana, Mozambique, Namibia, Zambia,  Zimbabwe
786	Belize, El Salvador, Guatemala, Honduras, Mexico, United States
787	France, Albania, Austria, Bosnia and Herzegovina, Croatia, Germany, Hungary, Italy, Liechtenstein, Montenegro,
788	South Africa, Botswana, Mozambique, Zimbabwe
789	India, Bangladesh, Bhutan, Cambodia, Nepal, Thailand, Pakistan
790	Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara, India, Bangladesh, Nepal, Thailand,
791	Bolivia, Brazil, Colombia, Paraguay, Peru, Uruguay
792	Canada, United States  Alberta, Saskatchewan, Newfoundland I, British Columbia, Labrador
793	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Rwanda, South Sudan, Uganda
794	Angola, Burundi, Central African Republic, DR Congo, Kenya, Malawi, Rwanda, Sudan, Tanzania, Uganda,
795	South Africa, Lesotho
796	Eritrea, Ethiopia, Saudi Arabia
797	Equatorial Guinea, Angola, Benin, Burkina Faso, Cameroon, Central African Republic, Chad, Congo, DR Congo, Ethiopia,
798	Trinidad and Tobago, Belize,  Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States,
799	China, India, Bhutan, Malaysia, Nepal
800	Bahamas, Cuba, Jamaica
801	Algeria, Egypt, Morocco, Western Sahara, India, Bangladesh, Indonesia, Myanmar, Benin, Burkina Faso,
802	Greece
803	Ecuador, Bolivia, Brazil, Colombia, Peru
804	Burundi, Cameroon, Central African Republic,  Congo, DR Congo, Ethiopia, Kenya, Rwanda, Tanzania, Uganda
805	Bolivia, Brazil, Peru  Neotropical
806	Equatorial Guinea, Cameroon, Congo, DR Congo, Gabon, Ghana, Liberia, Sierra Leone, Tanzania,
807	Indonesia, Philippines
808	Brazil, Colombia
809	Cameroon, Chad, DR Congo, Ethiopia, Kenya, Malawi, Sudan, Tanzania, Uganda, Zambia,
810	Equatorial Guinea, Cameroon, Nigeria  Bioko
811	China, Japan, Mongolia, Finland, Estonia, Norway,  Sweden, Russia
812	Equatorial Guinea, Benin, Cameroon, Congo,  DR Congo, Gabon, Ghana, Kenya, Nigeria, Rwanda,
813	Madagascar  Afrotropical
814	South Africa, Malawi, Mozambique, Tanzania, Zimbabwe
815	Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Mexico, Panama, Ecuador, Bolivia, Brazil,
816	Ethiopia, Nigeria
817	Namibia
818	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Argentina,
819	China, Japan, North Korea, South Korea, Russia
820	China, Mongolia, Canada, United States,  Russia
821	Antigua and Barbuda, Barbados, Dominica, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines
822	Barbados, Grenada, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras,
823	China, India, Bangladesh, Myanmar
824	Spain, Portugal, Bosnia and Herzegovina, Bulgaria, Greece, Italy, Montenegro,  Romania, Serbia, Slovenia,
825	Angola, Botswana,  DR Congo, Malawi, Mozambique, Namibia, Tanzania, Zambia, Zimbabwe
826	China, India, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Thailand, Viet Nam
827	Italy
828	Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Greece, Montenegro, Serbia, Algeria, Libya,
829	Indonesia, Timor-Leste
830	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,  Panama, Brazil,
831	Equatorial Guinea, Cameroon, Congo, Gabon,  Ghana, Liberia, Sierra Leone,
832	China, Taiwan, India,  Nepal, Viet Nam, Afghanistan, Pakistan
833	Costa Rica, Nicaragua, Panama, Ecuador, Colombia, Peru, Venezuela
834	Brunei, Indonesia, Malaysia, Singapore
835	Brazil  Neotropical
836	Angola, Cameroon, DR Congo, Kenya, Rwanda, Tanzania, Uganda
837	Algeria, Egypt, Libya, Morocco, Tunisia, Mali,  Niger, Sudan
838	China, Taiwan, India, Cambodia, Laos, Malaysia, Myanmar, Philippines, Thailand, Viet Nam
839	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Ghana, Guinea, Liberia, Nigeria,
840	China, Hong Kong, Taiwan, India, Cambodia, Laos, Malaysia,  Myanmar, Nepal, Thailand,
841	China, Myanmar, Viet Nam
842	South Africa, Namibia
843	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Panama, United States, Ecuador,  Bolivia, Colombia,
844	Brazil, Colombia, Guyana, Suriname, Venezuela
845	Algeria, Libya, Morocco
846	Russia, Armenia, Georgia, Turkey
847	Peru  Neotropical
848	Cameroon
849	Argentina, Bolivia
850	Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
851	Argentina, Brazil, Uruguay
852	Cambodia, Laos, Thailand, Viet Nam
853	China, Taiwan, India, Laos, Myanmar, Nepal, Viet Nam
854	South Africa, Mozambique, Zimbabwe
855	Iran, Turkey
856	Mongolia, Russia, Kazakhstan
857	Costa Rica, Nicaragua, Panama, Colombia
858	Albania, Greece, Montenegro, Serbia, Macedonia
859	Bosnia and Herzegovina, Croatia, Montenegro, Serbia, Macedonia
860	Equatorial Guinea, Angola, Cameroon,  Central African Republic, Congo, DR Congo,  Gabon, Ghana, Kenya, Liberia,
861	Ecuador,  Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
862	South Africa, Angola, Botswana, Malawi, Mozambique, Namibia, Zambia, Zimbabwe
863	Israel
864	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,  Panama, Ecuador,
865	Bulgaria, Greece, Turkey
866	Japan, South Korea, Russia
867	Trinidad and Tobago, Panama, Brazil, Colombia, Guyana, Suriname, Venezuela
868	Belize, Costa Rica, Guatemala,  Honduras, Nicaragua, Panama, Colombia
869	Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Uruguay, Venezuela
870	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo
871	DR Congo, South Sudan, Uganda
872	Malawi, Mozambique, Zambia
873	Jamaica
874	Australia, Papua New Guinea, India, Indonesia, Malaysia, Myanmar, Philippines, Sri Lanka, Thailand
875	Australia, Papua New Guinea, Solomon Islands, India, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Philippines,
876	DR Congo, Ethiopia, Kenya,  Malawi, Rwanda, South Sudan, Tanzania, Uganda
877	Bulgaria, Russia, Armenia, Azerbaijan, Georgia, Iran, Turkey
878	Grenada, Trinidad and Tobago, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador,
879	Cuba, Dominican Republic
880	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Ghana, Guinea, Guinea-Bissau,
881	Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara, Burkina Faso, Chad, Djibouti, Eritrea,
882	Togo
883	Ecuador, Bolivia, Brazil,  Colombia, Peru
884	Belize, Costa Rica, El Salvador, Guatemala, Honduras,  Mexico, Nicaragua, Panama, Ecuador, Argentina,
885	Belize, Costa Rica, Guatemala, Honduras, Mexico, Panama, Ecuador, Bolivia, Brazil, Colombia,
886	Ethiopia, Kenya, Somalia, Tanzania, Uganda
887	Brazil, Colombia, Guyana, Peru, Suriname
888	North Korea, Mongolia, Finland, Norway, Sweden, Belarus,  Russia, Kazakhstan
889	Trinidad and Tobago, Costa Rica, Guatemala, Mexico, Panama, Ecuador, Argentina, Brazil, Colombia,  Paraguay,
890	Spain, Portugal, France, Andorra, Austria, Croatia, Germany,  Hungary, Poland, Romania,
891	Belize, Costa Rica, El Salvador, Guatemala, Honduras,  Mexico, Nicaragua, Panama, Ecuador, Bolivia,
892	China, Hong Kong, Laos, Viet Nam
893	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua  Neotropical, Nearctic
894	Djibouti, Eritrea, Ethiopia, Somalia
895	Costa Rica, El Salvador,  Guatemala, Honduras,  Mexico, Nicaragua
896	China, India, Bangladesh, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Thailand, Viet Nam
897	Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru,  Suriname, Venezuela
898	Antigua and Barbuda, Dominica, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines
899	Equatorial Guinea, Angola, Cameroon, Congo, DR Congo, Gabon, Gambia, Ghana, Guinea, Guinea-Bissau,
900	Trinidad and Tobago, Panama, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
901	China, Laos, Malaysia, Myanmar, Thailand, Viet Nam
902	Russia, Armenia, Azerbaijan, Georgia, Iran, Turkey
903	Spain, France, Andorra, Austria, Belgium, Germany, Liechtenstein, Netherlands, Switzerland
904	China, Spain, Portugal, France, Albania, Bosnia and Herzegovina, Bulgaria, Croatia, Greece, Italy,
905	China, India, Cambodia, Laos, Malaysia,  Myanmar, Thailand, Viet Nam
906	Mozambique, Zimbabwe
907	Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Venezuela
908	Australia, Indonesia, Timor-Leste
909	China, India, Bangladesh, Cambodia, Indonesia, Malaysia, Myanmar, Nepal, Thailand, Viet Nam,
910	China, Hong Kong, Myanmar, Thailand, Viet Nam
911	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia,
912	Russia, Kazakhstan
913	India, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Sri Lanka, Thailand
914	Mali, Sudan
915	Brunei, Indonesia, Malaysia, Myanmar, Philippines, Thailand
916	Bahamas,  Cuba, Dominican Republic, Jamaica,  Belize, Guatemala, Mexico
917	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Liberia, Uganda
918	Australia, Papua New Guinea, Brunei, Indonesia, Malaysia, Philippines
919	Russia, Kazakhstan, Turkmenistan, Uzbekistan
920	Panama, Brazil
921	Australia, Papua New Guinea, Solomon Islands, India, Bangladesh,  Brunei, Cambodia, Indonesia,  Malaysia, Myanmar,
922	Antigua and Barbuda, Barbados, Dominica, Guadeloupe,  Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines
923	Ecuador, Chile, Peru
924	South Africa, Botswana, Mozambique, Namibia, Zimbabwe
925	Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Venezuela
926	Ecuador, Brazil, Peru, Venezuela
927	Equatorial Guinea, Angola, Burkina Faso, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Ethiopia, Gambia,
928	China, India, Cambodia, Laos, Thailand, Viet Nam
929	China, India, Bangladesh, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Nepal, Singapore,
930	Brazil,  Paraguay
931	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Brazil,
932	Guatemala, Mexico, United States
933	Angola,  Benin, Central African Republic, DR Congo,  Djibouti, Eritrea, Ethiopia, Ghana, Guinea, Guinea-Bissau,
934	Yemen, Oman
935	China, India, Myanmar, Nepal
936	Greece, Serbia, Georgia, Iraq,  Israel, Jordan, Lebanon, Palestine, Syria, Turkey
937	Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Argentina,  Bolivia, Brazil, Colombia,
938	Benin, Cameroon,  Central African Republic, Ghana, Guinea, Liberia, Nigeria, Sierra Leone, Togo,
939	China, India, Bhutan,  Myanmar, Nepal, Thailand, Viet Nam
940	Bolivia,  Brazil, Peru
941	Angola, Cameroon, Central African Republic, DR Congo, Ethiopia, Ghana, Guinea, Liberia, Malawi, Mozambique,
942	Taiwan, Australia, Papua New Guinea, Indonesia, Malaysia, Singapore
943	Trinidad and Tobago, Costa Rica, Nicaragua, Panama, Ecuador, Brazil, Colombia, Guyana, Peru, Suriname,
944	Malaysia, Singapore, Thailand
945	Algeria, Egypt, Libya, South Africa, Angola, Burundi,  Cameroon, Chad, DR Congo, Djibouti,
946	Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
947	Australia, Papua New Guinea, Indonesia, Malaysia, Philippines, Timor-Leste
948	Ecuador, Colombia, Peru, Venezuela
949	China, Mongolia, Russia, Kazakhstan, Kyrgyzstan
950	Jamaica, Trinidad and Tobago, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador,
951	Libya
952	Dominica, Grenada, Guadeloupe, Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,
953	South Africa, Angola, Botswana, Ethiopia, Ghana, Kenya, Lesotho,  Mozambique, Namibia, Nigeria,
954	El Salvador, Honduras, Nicaragua
955	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,  Bolivia, Brazil,
956	China, Japan, North Korea, South Korea, Mongolia, Russia, Kazakhstan
957	China, Japan, North Korea, South Korea, Mongolia, Russia
958	India, Bhutan
959	Brazil, Paraguay
960	India, Cambodia, Laos, Thailand, Viet Nam
961	China, India, Bangladesh, Sri Lanka, Afghanistan, Pakistan
962	Algeria, Chad, Mali, Niger
963	China, Taiwan, India, Bangladesh, Indonesia, Laos, Malaysia, Myanmar, Thailand, Viet Nam
964	India, Bangladesh, Myanmar, Sri Lanka
965	China, Taiwan, Cambodia, Laos, Malaysia, Thailand, Viet Nam
966	Kenya, Mozambique, Tanzania, Zimbabwe
967	Trinidad and Tobago, Belize, Costa Rica, Guatemala,  Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia,
968	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,  Nicaragua, Panama
969	China, Japan, North Korea, Russia
970	Morocco, Western Sahara, Eritrea, Ethiopia, Mali,  Mauritania, Niger,  Nigeria, Senegal
971	Central African Republic, Congo,  DR Congo
972	Mali, Mauritania
973	Ecuador, Chile, Argentina, Bolivia, Colombia, Peru, Venezuela
974	Azerbaijan, Iran
975	Kenya, Mozambique, Tanzania
976	Cameroon, DR Congo, Nigeria
977	Trinidad and Tobago, Colombia, Venezuela  Neotropical
978	South Africa, Angola, Botswana, Lesotho, Mozambique, Namibia, Zambia, Zimbabwe
979	Ethiopia, Kenya, Mali, Nigeria, Sudan
980	Spain, Portugal, Algeria,  Libya, Morocco, Tunisia  Gibraltar
981	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua
982	China, Mongolia, Russia, Kazakhstan
983	Cambodia, Indonesia, Laos, Malaysia, Myanmar, Philippines,  Thailand, Viet Nam
984	Cameroon, Congo, Ghana, Liberia,
985	India, Indonesia, Laos, Malaysia, Myanmar, Thailand, Viet Nam, Pakistan
986	Brazil, Guyana, Peru, Suriname, Venezuela
987	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Ghana, Guinea, Liberia,
988	Turkey
989	South Africa, Angola, Benin, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo,
990	Colombia, Guyana, Suriname, Venezuela
991	Argentina, Brazil, Paraguay, Uruguay, Venezuela
992	Papua New Guinea, Indonesia, Malaysia, Philippines
993	Angola, Cameroon, Central African Republic, Congo, Djibouti, Ethiopia, Kenya, Malawi,  Mozambique, Somalia,
994	Ecuador, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
995	Spain, Italy
996	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Panama
997	China, India, Indonesia, Malaysia, Myanmar, Singapore, Thailand
998	Brunei, Indonesia, Malaysia, Philippines, Thailand
999	Morocco, Western Sahara, Mauritania
1000	Equatorial Guinea, South Africa, Angola, Benin, Burkina Faso, Burundi, Cameroon, Central African Republic,  Congo, DR Congo,
1001	Armenia, Azerbaijan
1002	DR Congo, Ethiopia, Kenya, Malawi, Mozambique, Rwanda, Somalia, South Sudan, Tanzania, Uganda,
1003	Brunei, Indonesia, Malaysia, Philippines, Singapore, Thailand, Timor-Leste
1004	Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Paraguay,
1005	Benin, Ghana, Guinea, Liberia, Nigeria,
1006	El Salvador, Guatemala, Honduras, Mexico
1007	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,  Ecuador, Brazil,
1008	China, India, Bangladesh, Indonesia, Laos, Malaysia, Myanmar, Nepal, Thailand,  Viet Nam,
1009	China, Japan, North Korea, Taiwan, Russia
1010	South Africa, Lesotho, Mozambique
1011	Zambia
1012	South Africa, Angola, Botswana, DR Congo, Malawi, Mozambique, Tanzania, Zambia, Zimbabwe
1013	Equatorial Guinea, Benin, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Gambia, Ghana,  Guinea,
1014	Brazil, Colombia, Guyana, Venezuela
1015	Equatorial Guinea, Angola, Benin, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo,
1016	Trinidad and Tobago, Belize,  Costa Rica, Guatemala, Mexico, Nicaragua, Panama, Ecuador, Brazil, Colombia,
1017	China, Hong Kong, Taiwan
1018	China, India, Cambodia, Indonesia, Malaysia, Myanmar, Nepal, Thailand, Viet Nam
1019	Guinea
1020	Angola, Burundi, DR Congo, Ethiopia, Kenya, Malawi, Sudan, Tanzania, Uganda, Zambia
1021	Ethiopia, Kenya, Mali, Nigeria, Somalia, Sudan
1022	China, Mongolia, Afghanistan, Iran, Kazakhstan, Pakistan, Turkmenistan, Uzbekistan
1023	Equatorial Guinea, South Africa, Angola, Benin, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo,
1024	Papua New Guinea, Solomon Islands, Indonesia
1025	France, Italy, Switzerland
1026	El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia, Brazil, Colombia,
1027	Equatorial Guinea, Angola, Burundi, Cameroon, Central African Republic, Congo, DR Congo,  Gabon, Kenya, Malawi,
1028	Honduras
1029	Costa Rica, Nicaragua, Panama, Ecuador, Colombia
1030	India, Bangladesh, Brunei, Cambodia, Indonesia, Laos, Malaysia, Sri Lanka, Thailand, Viet Nam
1031	Dominican Republic
1032	China, India, Laos, Thailand, Viet Nam
1033	Brunei, Indonesia, Malaysia, Philippines
1034	Cameroon, Central African Republic, DR Congo, Uganda
1035	Ghana, Guinea, Liberia, Nigeria,
1036	Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama,  Ecuador, Bolivia,
1037	Costa Rica, Nicaragua, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname,
1038	India, Cambodia, Myanmar, Thailand, Viet Nam
1039	Cuba, Jamaica, Belize, Costa Rica, Guatemala, Honduras,  Mexico, Nicaragua, Panama
1040	Angola
1041	Cameroon, DR Congo, Gabon, Guinea, Sierra Leone, Uganda
1042	Trinidad and Tobago, Costa Rica, Nicaragua, Panama, Ecuador, Bolivia, Brazil, Colombia,  Guyana, Peru,
1043	Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru,  Suriname, Venezuela
1044	North Korea, South Korea
1045	Cuba, Trinidad and Tobago, Belize,  El Salvador, Guatemala, Honduras, Mexico, Panama, Ecuador, Argentina,
1046	Belize, Guatemala, Mexico  Neotropical, Nearctic
1047	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Colombia
1048	Ecuador, Bolivia, Brazil, Colombia, Paraguay, Suriname, Uruguay, Venezuela
1049	China, India, Bangladesh, Bhutan, Laos, Malaysia, Myanmar, Nepal, Thailand,  Viet Nam
1050	Rwanda
1051	South Africa, DR Congo, Ethiopia, Kenya, Liberia, Malawi, Mozambique, Rwanda, Tanzania,  Uganda,
1052	Malawi
1053	South Africa, Cameroon, Central African Republic, Kenya
1054	Afghanistan, Iran, Oman, Pakistan
1055	China, India, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Nepal, Thailand,  Viet Nam
1056	Trinidad and Tobago, Belize,  Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador,
1057	Guyana, Suriname, Venezuela
1058	China, Japan, North Korea,  South Korea, Mongolia, Russia
1059	Kyrgyzstan, Tajikistan, Uzbekistan
1060	Trinidad and Tobago, Ecuador, Brazil, Guyana, Peru, Suriname,  Venezuela
1061	China, Hong Kong
1062	Trinidad and Tobago, Guatemala,  Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
1063	South Africa, Angola, Botswana, DR Congo, Malawi, Mozambique,  Tanzania, Zambia, Zimbabwe
1064	Malaysia, Thailand
1065	France, Italy, Malta, Algeria, Libya, Morocco, Tunisia
1066	Equatorial Guinea, South Africa, Burundi, Cameroon, DR Congo, Eritrea, Ethiopia, Kenya, Liberia, Madagascar,
1067	Trinidad and Tobago, Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana,
1068	Pakistan
1069	Equatorial Guinea, Cameroon, Ghana, Guinea, Liberia, Nigeria, Sierra Leone,
1070	Bolivia, Paraguay
1071	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, United States
1072	Cameroon, Gabon
1073	Costa Rica, Honduras, Nicaragua, Panama, Ecuador,  Colombia, Guyana, Peru, Venezuela
1074	Angola, Congo
1075	Morocco, Western Sahara, Burkina Faso, Cameroon, Central African Republic, Chad, Ethiopia, Gambia, Ghana, Guinea,
1076	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Rwanda, Tanzania, Uganda
1077	Kenya, Sudan, Tanzania, Uganda
1078	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia, Colombia,
1079	Trinidad and Tobago, Ecuador, Argentina, Bolivia,  Brazil, Colombia, Guyana, Paraguay, Peru, Suriname,
1080	South Africa, Botswana, DR Congo, Kenya, Mozambique, Tanzania, Zambia, Zimbabwe
1081	Belize, El Salvador, Guatemala, Honduras, Mexico
1082	China, India, Pakistan
1083	Costa Rica, Nicaragua, Panama, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname
1084	Angola, DR Congo, Malawi, Zambia
1085	South Africa, DR Congo, Lesotho, Malawi, Mozambique, Nigeria, Tanzania, Zambia, Zimbabwe
1086	Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama,  Ecuador, Brazil,
1087	China, India, Myanmar, Viet Nam
1088	Iran
1089	Gambia, Mali, Mauritania, Niger, Senegal
1090	South Africa, Angola, DR Congo, Madagascar, Zambia, Zimbabwe
1091	China, Laos, Thailand, Viet Nam
1092	Laos, Malaysia, Myanmar, Thailand
1093	Equatorial Guinea, Angola, Benin, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Gambia, Ghana,
1094	Trinidad and Tobago, Belize, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Ecuador, Argentina, Bolivia,
1095	Central African Republic, Congo, Gabon
1096	Cambodia, Indonesia, Laos, Malaysia, Myanmar, Philippines, Thailand, Viet Nam
1097	Equatorial Guinea, Cameroon, Central African Republic, Congo, Gabon, Nigeria
1098	Costa Rica, El Salvador, Honduras, Nicaragua
1099	Trinidad and Tobago, Costa Rica, Honduras, Panama, Ecuador, Bolivia, Brazil, Colombia,  Guyana, Peru,
1100	China, India, Myanmar, Nepal, Viet Nam
1101	Chile, Argentina, Paraguay
1102	Trinidad and Tobago, Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Brazil, Colombia, Guyana, Peru,
1103	Burkina Faso, Chad, Ghana, Guinea, Mali, Nigeria, Senegal, Sudan,
1104	Grenada, Saint Vincent and the Grenadines, Trinidad and Tobago, Brazil, Colombia, Guyana, Venezuela
1105	Equatorial Guinea, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Gabon  Afrotropical
1106	Brazil, Suriname
1107	South Africa, Angola,  Botswana, Central African Republic, Ethiopia, Kenya, Malawi, Mozambique, Namibia, Nigeria,
1108	Grenada, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
1109	Trinidad and Tobago, Costa Rica,  Nicaragua, Panama, Ecuador, Bolivia, Brazil,  Colombia, Guyana, Suriname,
1110	Burundi, Gabon, Kenya, Rwanda, Uganda
1111	Russia, Armenia, Azerbaijan, Georgia, Turkey
1112	Burkina Faso, Cameroon, Gambia, Ghana, Guinea, Liberia, Nigeria, Senegal, Sierra Leone, Togo,
1113	Angola, Cameroon, Central African Republic, DR Congo, Kenya, Nigeria, Sudan,  Tanzania, Uganda, Zambia
1114	Timor-Leste
1115	South Africa, Botswana, Cameroon, Ethiopia, Guinea, Kenya, Liberia, Malawi, Mozambique, Nigeria,
1116	Cameroon, Ghana, Guinea, Nigeria,
1117	South Africa, Angola, Burundi, DR Congo, Ethiopia,  Guinea, Kenya, Malawi, Mozambique, Rwanda,
1118	Russia, Armenia, Azerbaijan, Georgia, Turkey  Palearctic
1119	Angola, DR Congo, Kenya, Malawi, Mozambique,  Rwanda, Tanzania, Uganda, Zambia, Zimbabwe
1120	Angola, Cameroon, Central African Republic, DR Congo, Rwanda, Tanzania, Uganda
1121	DR Congo, Kenya, Rwanda, Tanzania, Uganda
1122	DR Congo, Uganda
1123	South Africa, Angola,  Botswana, Burkina Faso, Congo, Ghana, Guinea, Guinea-Bissau, Mali, Namibia,
1124	Ghana, Guinea, Liberia, Sierra Leone,
1125	Guatemala
1126	Cameroon, Ethiopia, Kenya, Nigeria, Somalia, Sudan
1127	China, Laos, Myanmar, Viet Nam
1128	Brunei, Cambodia, Indonesia, Laos, Malaysia, Thailand, Viet Nam
1129	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador,  Bolivia, Colombia,
1130	Indonesia, Malaysia, Philippines, Thailand
1131	South Africa, DR Congo, Mozambique, Tanzania, Zambia,  Zimbabwe
1132	Cameroon, Central African Republic
1133	Afghanistan, Iran, Pakistan
1134	China, Myanmar, Nepal
1135	Equatorial Guinea, Cameroon, Central African Republic, Gabon
1136	Trinidad and Tobago, Costa Rica, Honduras, Mexico, Nicaragua, Panama, Ecuador, Brazil, Colombia, Guyana,
1137	Chile,  Peru
1138	South Africa, Botswana, Burundi, DR Congo, Ethiopia, Kenya, Malawi,  Mozambique, Rwanda, Sudan,
1139	Burundi, DR Congo, Rwanda
1140	Iran, Oman
1141	Trinidad and Tobago, Belize, Costa Rica, Guatemala, Mexico, Nicaragua, Panama, Ecuador,  Bolivia, Brazil,
1142	Brunei, Malaysia, Singapore
1143	Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname,
1144	Ethiopia, Mali, Sudan
1145	Azerbaijan, Kazakhstan, Tajikistan, Turkmenistan
1146	Guinea, Liberia, Senegal, Sierra Leone,
1147	Cameroon, Central African Republic, Congo, DR Congo, Kenya, Uganda
1148	Djibouti, Eritrea, Ethiopia, Kenya, Yemen
1149	South Africa, Kenya, Madagascar, Mozambique, Tanzania, Zambia, Zimbabwe
1150	Ethiopia, Senegal
1151	Equatorial Guinea, Angola, Cameroon, Congo, DR Congo,  Gabon, Ghana, Guinea,  Kenya, Liberia,
1152	Nepal, Thailand
1153	China, Hong Kong, India, Brunei,  Cambodia, Indonesia, Laos,  Malaysia, Myanmar, Philippines,
1154	DR Congo, Rwanda, Uganda
1155	Western Australia
1156	Argentina, Brazil, Colombia, Guyana, Suriname, Venezuela
1157	Malaysia, Philippines
1158	Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela  French Guiana
1159	Chad, Kenya, Somalia, South Sudan, Sudan, Tanzania, Uganda
1160	Guatemala, Honduras, Mexico, Nicaragua, Brazil, Venezuela
1161	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Colombia, Guyana,  Suriname, Venezuela
1162	Seychelles, Madagascar
1163	Ethiopia, Kenya, Sudan, Uganda
1164	Equatorial Guinea, Cameroon, Congo, DR Congo, Ghana, Guinea, Liberia, Nigeria, Senegal, Sierra Leone,
1165	Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
1166	Chile, Bolivia, Peru
1167	Central African Republic, Congo
1168	South Africa, Zimbabwe
1169	Trinidad and Tobago, Belize, Costa Rica, El Salvador,  Guatemala, Honduras, Mexico,  Nicaragua, Panama, Colombia,
1170	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua
1171	Uganda
1172	India, Laos, Myanmar, Thailand, Viet Nam
1173	Nigeria, Uganda
1174	Ecuador, Argentina, Bolivia, Colombia, Peru, Venezuela  Neotropical
1175	China, India, Thailand, Viet Nam
1176	Trinidad and Tobago, Costa Rica, El Salvador, Honduras, Nicaragua, Panama, Ecuador, Argentina, Bolivia, Brazil,
1177	Burundi, DR Congo, Rwanda, Tanzania, Uganda  Afrotropical
1178	Guinea,
1179	Ecuador, Bolivia, Brazil,  Guyana, Peru, Suriname,  Venezuela
1180	South Africa, Angola, Botswana, Burundi, DR Congo, Kenya, Malawi, Mozambique, Namibia, Tanzania,
1181	Brazil, Colombia, Guyana,  Venezuela
1182	Bahamas, Cuba
1183	Costa Rica, Panama, Colombia, Venezuela
1184	Papua New Guinea, Solomon Islands, Vanuatu, Indonesia
1185	Gambia, Kenya, Mali, Mauritania, Senegal, Sierra Leone, Tanzania, Uganda
1186	DR Congo, Kenya, Tanzania, Uganda
1187	Laos, Thailand
1188	Palestine
1189	China, Myanmar, Thailand, Viet Nam
1190	China, India, Myanmar, Thailand
1191	Cambodia, Laos, Malaysia, Myanmar, Thailand, Viet Nam
1192	Australia, Indonesia
1193	Barbados, Dominica, Guadeloupe
1194	Costa Rica, Nicaragua, Panama, Ecuador, Bolivia, Brazil, Colombia, Peru, Suriname, Venezuela
1195	South Africa, Angola, Botswana, Namibia  Afrotropical
1196	Mexico, Bolivia, Brazil, Guyana, Peru, Venezuela
1197	China, Taiwan, Cambodia, Laos, Myanmar, Thailand, Viet Nam
1198	Afghanistan, Iran, Kazakhstan, Kyrgyzstan,  Tajikistan, Turkmenistan, Uzbekistan
1199	Thailand
1200	Equatorial Guinea, Cameroon, Congo, DR Congo, Gabon, Ghana, Guinea, Liberia, Nigeria, Sierra Leone,
1201	Ecuador, Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru
1202	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Bolivia, Brazil,
1203	China, Kazakhstan, Kyrgyzstan
1204	Costa Rica, Mexico, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Peru,
1205	Trinidad and Tobago, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
1206	China, India, Bangladesh, Myanmar, Nepal
1207	China, Laos, Myanmar, Thailand, Viet Nam
1208	China, Nepal
1209	Cambodia, Laos, Myanmar, Viet Nam
1210	DR Congo, Ethiopia
1211	Trinidad and Tobago, Ecuador, Argentina, Bolivia, Brazil, Guyana, Paraguay, Peru, Suriname, Venezuela
1212	Brazil, Guyana
1213	Dominica, Guadeloupe
1214	Central African Republic, DR Congo
1215	Belize, Honduras, Mexico,  Nicaragua, Panama, Colombia, Guyana, Peru,  Venezuela
1216	China, Taiwan, India, Nepal, Viet Nam,  Afghanistan, Pakistan  Indomalayan, Palearctic
1217	Belize, Guatemala, Honduras, Mexico
1218	Costa Rica, Panama, Ecuador, Bolivia, Colombia, Peru, Venezuela
1219	Indonesia, Malaysia, Thailand, Viet Nam
1220	Brazil, Suriname, Venezuela
1221	Burkina Faso, Ghana, Guinea, Liberia, Mali, Nigeria, Sierra Leone,
1222	Costa Rica, Panama, Ecuador, Colombia, Peru
1223	DR Congo, Kenya, Rwanda, Somalia, South Sudan, Tanzania, Uganda
1224	China, India, Nepal, Afghanistan, Armenia, Azerbaijan, Georgia, Iran, Kazakhstan, Kyrgyzstan,
1225	Guatemala, Honduras
1226	Honduras, Mexico, Ecuador, Bolivia, Brazil, Colombia, Peru, Venezuela
1227	Laos, Malaysia
1228	Trinidad and Tobago, Venezuela
1229	Argentina, Bolivia, Brazil, Colombia, Paraguay, Venezuela
1230	Guinea, Liberia, Sierra Leone
1231	Laos, Myanmar, Thailand, Viet Nam
1232	Cameroon, DR Congo, Gabon, Ghana, Guinea, Liberia, Nigeria, Sierra Leone, Uganda,  Afrotropical
1233	India, Myanmar, Nepal, Viet Nam
1234	Malaysia, Philippines, Thailand
1235	Djibouti, Eritrea, Ethiopia, Kenya, Saudi Arabia
1236	Costa Rica, Mexico, Nicaragua, Panama, Brazil, Colombia, Guyana, Venezuela
1237	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Brazil,  Colombia,
1238	Congo, Gabon
1239	Ecuador, Bolivia, Brazil, Colombia, Guyana,  Peru, Venezuela
1240	Colombia, Guyana, Peru, Venezuela
1241	Costa Rica, Honduras, Mexico, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru,
1242	Costa Rica, Panama, Ecuador, Bolivia, Colombia,  Peru, Venezuela
1243	Indonesia, Laos, Malaysia, Myanmar, Philippines, Thailand, Viet Nam
1244	Cameroon, DR Congo, Kenya
1245	India, Myanmar
1246	China, Malaysia, Myanmar, Thailand, Viet Nam
1247	Ecuador, Guyana, Peru, Suriname, Venezuela
1248	Indonesia, Malaysia, Philippines, Timor-Leste
1249	Cameroon, Congo, Nigeria
1250	Bolivia, Venezuela
1251	Argentina, Bolivia, Peru
1252	Trinidad and Tobago, Ecuador, Brazil, Colombia, Guyana, Suriname, Venezuela
1253	China, India, Viet Nam
1254	China, Cambodia, Laos, Myanmar, Thailand, Viet Nam
1255	Cameroon, Guinea, Liberia, Nigeria
1256	Angola, Botswana, Central African Republic, DR Congo, Eritrea, Ethiopia, Kenya, Malawi, Mozambique,  Namibia,
1257	Bangladesh,  Bhutan, Brunei, Cambodia, China, Hong Kong, India, Indonesia, Laos, Malaysia,
1258	India, Iran, Nepal, Pakistan, Sri Lanka
1259	Belize, Colombia, Costa Rica, Cuba, Dominican Republic, Ecuador, El Salvador, Guatemala, Honduras, Jamaica,
1260	Cote d'Ivoire, Egypt, Equatorial Guinea, Eritrea, Ethiopia, Gabon, Gambia, Ghana, Guinea, Guinea-Bissau, Kenya, Liberia, Madagascar, Malawi, Mali, Mauritania, Mozambique, Namibia, Niger, Nigeria, Rwanda, Senegal, Sierra Leone,   Somalia, South Africa, South Sudan, Sudan, Swaziland, Tanzania, Togo, Uganda, Zambia,  Zimbabwe
1261	Albania, Austria, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, China, Croatia, Czech Republic, Denmark,
1262	Mexico, United States  Arizona, California, Nevada, Utah, New Mexico
1263	Bangladesh, Cambodia, China, Hong Kong, India, Indonesia, Laos, Myanmar, Nepal, Thailand,
1264	Canada, United States, Mexico  Germany, Indonesia, Philippines, Spain
1265	Canada, United States, Mexico, Ecuador, Venezuela
1266	Bangladesh, Bhutan, Cambodia, China, Hong Kong, India, Indonesia, Japan, Malaysia, Myanmar,
1267	Angola, Antigua and Barbuda, Australia, Bahrain, Bangladesh, Barbados, Belize, Brazil, China, Colombia,
1268	Bahamas, Barbados, Cuba, Dominican Republic, Grenada, Guadeloupe, Jamaica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines,
1269	Australia, Papua New Guinea
1270	Antigua and Barbuda, Australia, Bahamas, Bahrain, Barbados, Belize, Brazil,  Cambodia, China, Colombia,
1271	Canada, United States   Nearctic
1272	Belize, Canada, United States, Guatemala, Mexico
1273	Afghanistan, Bangladesh, Cambodia, China, India, Indonesia, Iran, Laos, Malaysia, Myanmar,
1274	Canada, Guatemala, Honduras, Mexico, United States, El Salvador
1275	Singapore, Thailand, Viet Nam
1276	Cuba, Bahamas
1277	Albania, Algeria, Bosnia and Herzegovina, Croatia, Cyprus, Egypt, Greece, Israel, Italy, Lebanon,
1278	Algeria, Burkina Faso, Cameroon, Chad, Djibouti, Egypt, Eritrea, Ethiopia, Kenya, Libya,
1279	India, Sri Lanka, Bangladesh, Myanmar, Thailand, Cambodia, Viet Nam
1280	Canada, Mexico,  United States
1281	Albania, Bosnia and Herzegovina, Bulgaria, Croatia, France, Greece, Italy, Montenegro, Romania, Serbia,
1282	Albania, Austria, Bosnia and Herzegovina, Bulgaria,  Croatia, Georgia, Greece, Italy, Montenegro, Macedonia,
1283	Australia, Indonesia, Papua New Guinea, Solomon Islands
1284	India, Pakistan, Sri Lanka
1285	Bolivia, Brazil, Colombia,  Ecuador, Guyana, Paraguay, Peru, Suriname, Trinidad and Tobago, Venezuela
1286	Samoa, Australia, Bahrain, Bangladesh, Cambodia, China, Colombia, Costa Rica, Djibouti, Ecuador,
1287	Lesotho, South Africa, Zimbabwe
1288	China, Laos, Myanmar, Taiwan, Thailand, Viet Nam
1289	Saudi Arabia, Yemen
1290	Cambodia, China, Laos, Thailand, Viet Nam
1291	Japan, Russia
1292	Cambodia, China, Fiji, India, Indonesia, Japan,  Malaysia, Federated States of Micronesia, Myanmar, Palau,
1293	France, Germany, Italy, Slovenia, Spain, Switzerland
1294	Brazil, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala, Guyana, Honduras, Mexico, Nicaragua,
1295	Colombia, Costa Rica, Nicaragua, Panama, Venezuela
1296	Cambodia, Indonesia, Laos, Thailand
1297	Mexico, Guatemala
1298	Madagascar, Seychelles
1299	Cambodia, China, India, Laos, Myanmar, Taiwan, Viet Nam
1300	Afghanistan, Albania, Armenia, Azerbaijan, Bosnia and Herzegovina, Bulgaria, Croatia, Georgia, Greece, Iran,
1301	Argentina, Belize, Brazil, Colombia, Costa Rica, Ecuador, Guatemala, Guyana, Honduras, Mexico,
1302	Belize, Colombia, Costa Rica,  Ecuador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Peru,
1303	Iran, Kuwait, Oman, Saudi Arabia, Yemen, Iraq
1304	Belize, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama
1305	Benin, Gambia, Guinea, Guinea-Bissau, Senegal, Sierra Leone, Togo
1306	Canada, United States, Mexico
1307	United States, Venezuela
1308	Canada, United States,  Mexico
1309	Cambodia, China, Hong Kong, Indonesia, Laos, Macao, Malaysia, Myanmar, Thailand,  Viet Nam
1310	Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, France, Germany, Greece,
1311	Bosnia and Herzegovina, Croatia, France, Italy, Montenegro, Slovenia, Switzerland
1312	Albania, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic,
1313	Egypt, Israel,  Jordan, Saudi Arabia, Syria
1314	Algeria, Croatia, Egypt, France, Greece, Italy, Libya, Morocco,  Portugal, Slovenia,
1315	Brunei, Cambodia, China, India, Indonesia, Laos, Malaysia, Singapore, Thailand, Viet Nam,
1316	Argentina, Belize, Bolivia, Brazil, Costa Rica, Ecuador, Guatemala, Guyana, Honduras, Mexico,
1317	China, Hong Kong, Laos,  Macao, Taiwan, Viet Nam
1318	Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, Germany, Greece, Hungary, Italy,
1319	Afghanistan, Armenia, Azerbaijan, Cyprus, India, Iran, Iraq, Jordan, Kazakhstan, Kyrgyzstan,
1320	India, Bangladesh, Sri Lanka, Myanmar, Thailand, Malaysia,  Laos, Cambodia, Viet Nam, China,
1321	Andorra, Croatia, France, Italy, Malta, Slovenia, Spain, Switzerland, Greece, Luxembourg
1322	Bangladesh, India, Myanmar
1323	Algeria, Cyprus, Egypt, Greece,  Iraq, Israel, Jordan, Lebanon, Libya, Malta,
1324	Afghanistan, Albania, Armenia, Austria, Azerbaijan,  Bosnia and Herzegovina, Bulgaria, China, Croatia, Czech Republic,
1325	Cote d'Ivoire, Ghana, Nigeria, Cameroon, Central African Republic,  Gabon, Congo, DR Congo, Angola, Uganda,
1326	Albania, Bosnia and Herzegovina, Croatia, France, Greece, Hungary, Italy, Montenegro, Macedonia, Romania,
1327	Spain, Portugal, Algeria, Morocco
1328	Honduras, United States
1329	Indonesia, Malaysia, Singapore, Thailand, Viet Nam
1330	China, India, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Philippines, Singapore, Thailand,
1331	Algeria, France, Italy, Libya, Morocco, Portugal, Spain, Switzerland, Tunisia
1332	Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara, Chad, Mali, Mauritania, Niger,
1333	Indonesia, Malaysia, Singapore
1334	Spain, Portugal, France, Italy
1335	Spain, Portugal, Algeria, Morocco, Tunisia
1336	Spain, France, United Kingdom, Andorra, Austria, Croatia, Germany, Italy, Monaco, Slovenia,
1337	Bolivia, Brazil, Colombia, Ecuador, Guyana, Peru, Suriname, Venezuela
1338	Bangladesh, Cambodia, China, India, Indonesia, Laos, Malaysia, Myanmar, Papua New Guinea, Philippines,
1339	France, Portugal, Spain, Italy
1340	Angola, Benin, Burundi, Cameroon, Central African Republic, DR Congo, Cote d'Ivoire,  Gabon, Ghana, Guinea,
1341	Belize, Costa Rica, Guatemala, Mexico, Nicaragua, Panama, United States, El Salvador, Honduras
1342	Albania, Greece
1343	Brunei, Cambodia, India, Indonesia, Laos, Malaysia, Myanmar, Philippines, Singapore, Thailand,
1344	Australia, Bahrain, Bangladesh, Cambodia,  China, India, Indonesia, Iran, Iraq, Kuwait,
1345	Bolivia, Brazil, Colombia, Ecuador, Guyana, Peru, Suriname, Venezuela  Neotropical
1346	Bangladesh, India, Indonesia, Malaysia, Myanmar, Thailand, Brunei
1347	Greece, Turkey
1348	Spain, Portugal, France, Italy, Monaco, Algeria, Morocco, Tunisia
1349	Antigua and Barbuda
1350	India, Bangladesh, Nepal, Sri Lanka, Afghanistan, Iran, Pakistan, Tajikistan, Turkmenistan, Uzbekistan
1351	India, Sri Lanka, Pakistan
1352	Yemen, Iran, Iraq, Israel, Jordan, Kuwait, Oman, Qatar, Saudi Arabia, United Arab Emirates
1353	China, Hong Kong, Taiwan, India, Bangladesh, Laos, Myanmar, Viet Nam
1354	Kerala, Karnataka
1355	Spain, Portugal, France, Algeria, Libya, Morocco, Tunisia
1356	China, Hong Kong, Taiwan,  India, Bangladesh, Indonesia, Laos, Malaysia, Myanmar, Nepal,
1357	China, Taiwan, India, Laos, Myanmar, Viet Nam
1358	Spain, Italy, Algeria, Morocco, Tunisia
1359	Indonesia, Malaysia, Myanmar,  Singapore, Thailand
1360	India, Bangladesh, Nepal
1361	Trinidad and Tobago, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname,
1362	Egypt, India, Ethiopia, Sudan, Yemen, Afghanistan, Iraq, Israel, Jordan, Kuwait,
1363	Benin, Ghana, Guinea, Liberia, Sierra Leone, Togo,
1364	Armenia, Azerbaijan, Iran,  Iraq, Turkey
1365	Brunei, Indonesia, Malaysia, Philippines, Singapore, Thailand
1366	Italy, Malta
1367	China, India, Bhutan, Myanmar, Nepal, Viet Nam
1368	India, Bangladesh, Maldives, Nepal, Sri Lanka
1369	Indonesia, Philippines, Thailand
1370	Algeria, Libya, Tunisia, Chad, Mali, Mauritania, Niger, Sudan
1371	China, Japan, Taiwan
1372	Italy, Algeria, Libya, Tunisia
1373	Albania, Bulgaria, Croatia, Greece,  Hungary, Romania, Serbia, Slovakia, Turkey, Macedonia
1374	Lebanon, Syria
1375	Senegal, Togo,
1376	Spain, Portugal, Morocco
1377	South Africa, Lesotho, Mozambique, Zimbabwe
1378	Egypt, Iraq, Jordan, Saudi Arabia, Syria  Palearctic, Afrotropical
1379	Cyprus, Lebanon, Syria, Turkey
1380	Egypt, Israel, Palestine
1381	Dominica
1382	India, Sri Lanka, Afghanistan, Iran, Pakistan, Turkmenistan
1383	Armenia, Turkey
1384	Russia, Azerbaijan, Georgia
1385	China, India, Cambodia,  Laos, Malaysia, Myanmar, Thailand, Viet Nam
1386	Spain,  Portugal
1387	Equatorial Guinea, Cameroon, Gabon, Nigeria
1388	Spain,  Portugal, France
1389	India, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Singapore,  Thailand, Viet Nam
1390	Morocco
1391	Israel, Lebanon, Syria, Turkey
1392	Iraq, Israel, Jordan, Lebanon, Syria, Turkey
1393	Guatemala, Honduras, Mexico
1394	Brunei,  Indonesia, Malaysia,  Philippines, Singapore, Thailand, Viet Nam
1395	South Africa, Botswana, Burundi, DR Congo, Kenya, Lesotho, Malawi, Mozambique, Rwanda, Tanzania,
1396	China, Japan, Taiwan, India, Cambodia, Laos, Malaysia, Myanmar, Thailand, Viet Nam
1397	Algeria, Libya
1398	Israel, Jordan, Lebanon, Syria, Turkey  Palearctic
1399	Indonesia, Malaysia, Singapore, Thailand,  Viet Nam
1400	Russia, Georgia
1401	Spain, Algeria, Morocco  Palearctic
1402	Egypt, Libya, Djibouti, Eritrea, Ethiopia, Kenya, Somalia, South Sudan, Sudan, Uganda
1403	South Africa, Botswana, Lesotho, Malawi, Zambia, Zimbabwe  Eswatini
1404	Iraq, Jordan, Syria, Turkey
1405	Spain, Algeria, Morocco, Tunisia
1406	Egypt, Israel, Jordan, Palestine
1407	Algeria, Egypt, Libya, Tunisia, Cyprus, Israel,  Jordan, Lebanon, Syria, Turkey
1408	Israel, Jordan, Palestine, Syria
1409	Japan, South Korea
1410	India, Cambodia, Laos, Malaysia, Myanmar, Thailand, Viet Nam
1411	El Salvador, Guatemala, Honduras, Mexico,  Nicaragua
1412	South Africa, Mozambique
1413	Saint Lucia, Trinidad and Tobago, Brazil,  Colombia, Guyana, Suriname, Venezuela
1414	Spain, France
1415	Spain, Morocco
1416	Armenia, Syria, Turkey
1417	Israel, Jordan, Lebanon, Palestine, Syria  Palearctic
1418	Afghanistan, Pakistan
1419	Algeria, Egypt, Libya, Tunisia,  Western Sahara, Chad, Mali, Mauritania, Niger
1420	China, Kazakhstan, Kyrgyzstan, Tajikistan, Turkmenistan, Uzbekistan
1421	China, Hong Kong, Viet Nam
1422	India, Bangladesh, Pakistan
1423	Mauritius,   Comoros, Madagascar
1424	Armenia, Azerbaijan, Iran, Turkey
1425	Angola, Botswana, Mozambique, Namibia, Zambia, Zimbabwe
1426	Algeria, Tunisia
1427	Spain, France, Andorra
1428	Algeria, Morocco, Tunisia
1429	Angola, Namibia, Zambia
1430	Myanmar  Indomalayan
1431	Yemen, Oman, United Arab Emirates
1432	Angola, Botswana, Namibia
1433	Gambia, Guinea-Bissau, Senegal
1434	India, Brunei, Indonesia, Malaysia, Myanmar, Thailand
1435	Equatorial Guinea, Cameroon, Gabon
1436	Morocco, Western Sahara
1437	Senegal
1438	Bosnia and Herzegovina, Croatia, Italy, Slovenia
1439	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States,
1440	Spain, Portugal, France, Finland, United Kingdom, Albania, Andorra, Austria, Belgium, Bosnia and Herzegovina,
1441	Spain, Portugal, France, Albania, Andorra, Austria, Belgium, Bosnia and Herzegovina,  Bulgaria, Croatia,
1442	Spain, France, Finland, United Kingdom, Albania, Andorra, Austria, Belgium, Bulgaria, Croatia,
1443	Equatorial Guinea, Cameroon
1444	Panama, Canada, United States
1445	France, United Kingdom, Austria, Belgium, Denmark, Estonia, Germany, Hungary, Latvia, Liechtenstein,
1446	Spain, Portugal, France, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Denmark,
1447	Spain, Portugal, France, United Kingdom, Austria, Belgium, Denmark, Estonia, Germany, Ireland,
1448	Costa Rica, Nicaragua, Panama, United States, Colombia
1449	China, Hong Kong, Macao, India, Bangladesh, Cambodia, Indonesia, Laos, Malaysia, Myanmar,
1450	France, Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Estonia, Germany, Greece, Hungary,
1451	China, France, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Denmark, Germany, Greece, Hungary,
1452	Poland, Romania, Serbia, Slovakia, Slovenia, Sweden, Belarus, Moldova, Russia, Ukraine, Kazakhstan, Turkey, Czech Republic
1453	Spain, Portugal, France, United Kingdom, Belgium, Germany, Luxembourg, Netherlands, Switzerland, Czech Republic
1454	China, France, Finland, Austria, Belgium, Croatia, Denmark, Estonia, Germany, Hungary,
1455	France, Albania, Austria, Bosnia and Herzegovina, Croatia, Germany, Italy, Liechtenstein, Montenegro, Serbia,
1456	Spain, France, United Kingdom, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Denmark,
1457	Belize,  Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, United States
1458	Spain, Portugal, France, Belgium, Germany, Luxembourg, Netherlands, Switzerland
1459	Canada, United States  New Brunswick, Nova Scotia, Ontario, Québec
1460	Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Hungary, Romania, Serbia, Slovakia, Moldova, Ukraine,
1461	Trinidad and Tobago, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname,
1462	South Africa, Malawi, Mozambique, Zimbabwe
1463	Albania, Austria, Bosnia and Herzegovina, Croatia, Greece, Hungary, Italy, Montenegro, Serbia, Slovenia,
1464	Costa Rica,  Panama, Ecuador, Colombia
1465	Australia, Papua New Guinea, Indonesia, Timor-Leste
1466	South Africa, Angola, Botswana, DR Congo, Kenya, Malawi, Mozambique, Namibia, Tanzania, Zambia,
1467	Poland, Romania, Slovakia, Ukraine, Czech Republic
1468	Paraguay
1469	Spain, Algeria, Morocco
1470	Spain, France, Italy
1471	Bulgaria, Greece, Serbia, Russia, Ukraine, Azerbaijan, Georgia, Iran, Turkey, Macedonia
1472	Cambodia, Laos, Myanmar,  Thailand, Viet Nam
1473	Costa Rica, Honduras,  Nicaragua
1474	Costa Rica, El Salvador, Guatemala, Honduras, Mexico,  Nicaragua
1475	Cameroon, Congo, DR Congo, Gabon, Nigeria  Afrotropical
1476	Indonesia, Singapore
1477	El Salvador, Guatemala, Mexico
1478	El Salvador, Honduras
1479	Guyana, Venezuela
1480	Brazil, Colombia, Peru, Venezuela
1481	Mozambique
1482	Bolivia, Brazil, Guyana, Peru, Suriname, Venezuela  French Guiana
1483	Central African Republic
1484	Costa Rica
1485	Argentina, Uruguay
1486	Japan, Spain, Ireland, Norway, Canada, United States, Australia, New Zealand, South Africa, Namibia
1487	Australia, Chile, Argentina, South Africa
1488	Japan, North Korea, South Korea, Mexico, Canada, United States, Russia
1489	Spain, Portugal, France, Finland, United Kingdom, Austria, Belgium, Denmark, Estonia, Germany,
1490	Russia, Ukraine, Azerbaijan, Iran, Kazakhstan, Turkmenistan
1491	China, Hong Kong, Japan, North Korea, South Korea, Macao, Taiwan, Egypt, Russia, Australia,
1492	China, Hong Kong, Japan, North Korea, South Korea, Taiwan, Egypt, Australia, Papua New Guinea, India,
1493	Spain, Portugal, France, Finland, United Kingdom, Albania, Andorra,  Austria, Belgium, Bosnia and Herzegovina,
1494	China, Spain, Portugal, France, Finland,  United Kingdom, Austria, Belgium, Bosnia and Herzegovina, Bulgaria,
1495	Spain, Portugal, France, Finland, United Kingdom,  Albania, Andorra, Austria, Belgium, Bosnia and Herzegovina,
1496	Spain, Portugal, France, Finland, United Kingdom, Andorra, Austria, Belgium, Bosnia and Herzegovina, Bulgaria,
1497	Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Germany, Greece, Hungary, Italy, Poland,
1498	India, Indonesia, Sri Lanka
1499	Canada, Mexico, United States,  Belize, Ireland, Russia
1500	Albania, Australia, Bosnia and Herzegovina, China,  Congo, Georgia, Hong Kong, Indonesia, Israel, Japan,
1501	Central African Republic, DR Congo, Rwanda, South Sudan, Sudan, Tanzania, Uganda, Zambia, Ethiopia
1502	Albania, Algeria, Andorra, Armenia, Austria, Azerbaijan, Belarus, Bhutan, Bosnia and Herzegovina, Bulgaria,
1503	Algeria, Andorra, Austria, Azerbaijan, Bahrain, Belarus, Belgium, Bulgaria, Cambodia, Croatia,
1504	Afghanistan, Algeria, Andorra, Austria, Azerbaijan, Belarus, Belgium, Bulgaria, Canada, Croatia,
1505	Algeria, Angola, Antigua and Barbuda, Argentina,  Austria, Azerbaijan, Bahamas, Bahrain, Bangladesh, Barbados,
1506	Mexico, United States, Canada
1507	Albania, Algeria, Armenia, Austria,  Azerbaijan, Bahamas, Bahrain, Bangladesh, Belarus, Belgium,
1508	United States, Canada, Bahamas, Cuba, Mexico, Jamaica, Austria, Belgium, Czech Republic, Denmark,
1509	Albania, Algeria,  Andorra, Armenia, Austria,  Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria,
1510	Bahamas, Canada, Cuba, Mexico, United States, Australia, Belarus, Bulgaria, Iceland, Jamaica,
1511	Algeria, Angola, Botswana, Burkina Faso, Cameroon, Central African Republic, Chad, Djibouti, Egypt, Eritrea,
1512	Antigua and Barbuda, Bahamas, Barbados, Belize, Canada, Costa Rica, Cuba, Dominica, Dominican Republic, El Salvador,
1513	Argentina, Belize, Bolivia, Brazil, Canada, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala,
1514	Belize, Canada, Guatemala, Mexico, United States,  Honduras
1515	Afghanistan, Albania, Algeria,  Andorra, Armenia, Austria, Azerbaijan, Bangladesh, Belarus, Belgium,
1516	Bahamas, Belize, Canada, Colombia, Costa Rica, Cuba, Dominican Republic, El Salvador, Guatemala, Honduras,
1517	Algeria, Andorra, Austria, Azerbaijan, Belarus, Belgium, Bulgaria, China, Croatia, Czech Republic,
1518	Algeria, Austria, Azerbaijan, Belarus, Belgium, Bulgaria, Croatia, Czech Republic, Denmark, Egypt,
1519	Argentina, Bahamas, Belize, Bolivia, Brazil, Canada, Chile, Colombia, Costa Rica, Cuba,
1520	Algeria, Andorra, Angola, Antigua and Barbuda, Argentina, Austria, Bahamas, Bahrain, Barbados, Belarus,
1521	Cuba, United States, Mexico, Canada, Denmark
1522	Albania, Andorra, Armenia,  Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia,
1523	Bangladesh, Bhutan, India, Nepal, Pakistan, Sri Lanka
1524	Canada, China, Cuba, Japan, South Korea, Mexico,  Russia, United States, Faroe Islands, Ireland,
1525	Algeria, Bulgaria, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire, Egypt, Ethiopia,
1526	Bahamas, Belize, Canada, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, United States,
1527	Antigua and Barbuda, Bahamas, Barbados, Belize, Canada, Colombia, Costa Rica, Cuba, Dominica, Dominican Republic,
1528	Albania, Armenia, Bosnia and Herzegovina, Georgia, Israel, Liechtenstein, Mongolia, Montenegro, Norway, Poland,
1529	China, Iceland, Japan, Kazakhstan, Latvia, United Kingdom,  Canada, Faroe Islands, Finland, Norway,
1530	Bahamas, Canada, Cuba, Dominican Republic, Mexico, Jamaica,  United States, Netherlands, United Kingdom
1531	Albania, Algeria, Andorra, Angola, Armenia, Austria, Azerbaijan, Bahrain, Bangladesh, Belarus,
1532	Afghanistan, Albania, Andorra, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bhutan, Bosnia and Herzegovina,
1533	Afghanistan, Algeria, Andorra, Azerbaijan, Egypt, Eritrea, Ethiopia, France, Greece, Iran,
1534	Bhutan, Timor-Leste, Bangladesh, Cambodia, China, India, Indonesia, Laos, Malaysia, Myanmar,
1535	Algeria, Angola, Antigua and Barbuda, Argentina, Australia,  Bahamas, Bahrain, Bangladesh, Barbados, Belize,
1536	Bahamas, Canada, Mexico, United States
1537	Afghanistan, Albania, Andorra, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria,
1538	Chile, Colombia, Ecuador, El Salvador, Honduras, Mexico, Nicaragua, Panama, Peru, United States,
1539	Albania, Algeria, Andorra, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bhutan, Bosnia and Herzegovina,
1540	Afghanistan, Bangladesh, Benin, Bhutan, Burkina Faso, Cameroon, Central African Republic, Chad, China, Cote d'Ivoire,
1541	United States, Costa Rica, Nicaragua, Canada, Antigua and Barbuda, Bahamas, Barbados, Belize, Colombia, Cuba,
1542	United States, Belize, Canada, Colombia, Guatemala, Honduras, Mexico, Nicaragua, Costa Rica, El Salvador,
1543	Algeria, Andorra, Azerbaijan, Belarus, Belgium, Bulgaria, Croatia, Cyprus, Czech Republic, Denmark,
1544	Antigua and Barbuda, Bahamas, Barbados, Canada,  Chile, Colombia, Cuba, Dominica, Dominican Republic, Ecuador,
1545	United States, Canada, Mexico, Bahamas
1546	Afghanistan, Armenia, Azerbaijan,  China, Georgia, Iran, Kazakhstan, South Korea, North Korea, Laos,
1547	Argentina, Australia, Brazil, Chile, Madagascar, Mozambique, Namibia, New Zealand, South Africa, Uruguay,
1548	Afghanistan, Bangladesh, Bhutan, Cambodia, China, India, Iran, Laos, Malaysia, Myanmar,
1549	Albania, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina,  Bulgaria, China, Croatia,
1550	Kazakhstan, Mongolia, Russia, Turkmenistan, Belarus, Denmark, Finland, Germany, Greece, Latvia,
1551	Canada,  Mexico, United States
1552	Nepal, Pakistan, Singapore,  Sri Lanka, Thailand, Viet Nam, Bhutan, Philippines, Oman, Iran, United Arab Emirates, Yemen, Palau
1553	Algeria, Andorra, Austria, Azerbaijan,  Belarus, Belgium, Bulgaria, Croatia, Czech Republic, Denmark,
1554	Austria, Belgium, Bulgaria, Croatia, Czech Republic, Denmark, France, Germany, Hungary, Italy,
1555	Antigua and Barbuda, Bahamas,  Barbados, Canada, Colombia, Cuba, Dominica, Dominican Republic, Ecuador, El Salvador,
1556	China, Japan, North Korea, South Korea,  Russia, Taiwan, Belarus, Hong Kong, India, Mongolia,
1557	Cuba, United States
1558	Russia, China, Japan, North Korea, South Korea, United States, Taiwan
1559	Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire,
1560	Algeria, Andorra, Austria, Azerbaijan, Belgium, Bulgaria,  Croatia, Czech Republic, Denmark, Djibouti,
1561	Afghanistan, Algeria, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Cyprus,
1562	United States, Belize, Costa Rica, Nicaragua, Canada, Antigua and Barbuda, Bahamas, Barbados, Colombia, Cuba,
1563	Albania, Algeria, Angola, Azerbaijan, Benin, Bulgaria, Burkina Faso, Chad, Comoros, DR Congo,
1564	Canada, Costa Rica, Cuba, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Belize,
1565	Algeria, Andorra, Azerbaijan, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Cyprus, Czech Republic, Denmark,
1566	Albania, Algeria, Austria, Belgium, Bulgaria, Burkina Faso, Burundi, DR Congo, Croatia, Czech Republic,
1567	Canada, United States, Mexico, Bahamas
1568	Algeria, Andorra, Austria, Azerbaijan, Bahrain, Bangladesh, Belarus, Belgium, Bulgaria, Croatia,
1569	Albania, Algeria, Angola, Armenia, Austria, Azerbaijan, Bahrain, Bangladesh, Belarus, Belgium,
1570	Algeria, Canada, Denmark, Faroe Islands, France, Iceland, Ireland, Morocco, Tunisia, Norway,
1571	Australia, New Zealand, Chile
1572	Belize, Bolivia, Brazil,  Colombia, Costa Rica, Ecuador, Guatemala, Guyana, Honduras, Mexico,
1573	Canada, Cuba, Mexico, United States, Antigua and Barbuda, Bahamas, Barbados, Denmark, Dominica, Iceland,
1574	United States,  Russia, Finland, Iceland, Norway, Sweden, Canada, China, France, Japan,
1575	Belize, Canada, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, United States, Cuba
1576	Albania, Austria, Azerbaijan, Bahrain, Bangladesh, Belarus, Belgium, Bhutan, Bosnia and Herzegovina, Bulgaria,
1577	Algeria, Andorra, Angola, Armenia, Austria, Azerbaijan, Bahrain, Bangladesh, Belgium, Benin,
1578	Canada, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, United States
1579	Bahamas, Barbados, Belize, Canada, Colombia, Costa Rica, Cuba, Dominican Republic, Guatemala,  Honduras,
1580	Canada, United States, Bahamas, Cuba, Mexico, Germany, United Kingdom
1581	Argentina, Belize, Bolivia, Brazil, Canada, Chile, Colombia, Costa Rica, Ecuador, El Salvador,
1582	Antigua and Barbuda, Argentina, Bahamas, Barbados, Bolivia, Brazil, Canada, Chile, Colombia, Cuba,
1583	Canada, Suriname, United States, Uruguay, Argentina, Bahamas, Belize, Bolivia, Brazil, Chile,
1584	United States, Costa Rica, Nicaragua, Argentina, Bahamas, Belize, Bolivia, Brazil, Canada, Colombia,
1585	Albania, Algeria, Antigua and Barbuda, Azerbaijan, Bahamas, Barbados, Belgium, Brazil, Bulgaria, Canada,
1586	Angola, Mozambique, Namibia, South Africa
1587	Afghanistan, Albania, Armenia, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria,  China, Croatia,
1588	Afghanistan, Andorra, Austria, Azerbaijan, Belarus, Belgium, Bulgaria, Cyprus, Czech Republic, Denmark,
1589	Afghanistan, Algeria, Andorra, Austria, Azerbaijan, Belarus, Belgium, Bulgaria, Croatia, Cyprus,
1590	Argentina, Belize, Bolivia, Brazil, Chile, Colombia, Costa Rica, Dominica, Ecuador, El Salvador,
1591	Bahamas, Canada, Cuba, Mexico, United States, Belize, United Kingdom
1592	Afghanistan, Azerbaijan, Bulgaria, Cyprus, Egypt, Greece, Iran, Iraq, Israel, Jordan,
1593	Canada, United States, Costa Rica, Guadeloupe,  Nicaragua, Antigua and Barbuda, Bahamas, Barbados, Belize, Bolivia,
1594	Albania, Austria, Azerbaijan, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, Denmark, Finland,
1595	Algeria, Andorra, Austria, Azerbaijan, Belgium, Bulgaria, Croatia, Czech Republic, Denmark, Egypt,
1596	Argentina, Chile, South Africa
1597	Angola, Armenia, Australia, Azerbaijan, Bangladesh, Benin, Bhutan, Botswana, Brunei, Bulgaria,
1598	Afghanistan, Albania, Algeria, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria,
1599	Algeria, Angola, Armenia, Azerbaijan, Bahrain, Bangladesh, Botswana, Burundi, Cambodia, Cape Verde,
1600	Bolivia, Brazil, Colombia, Ecuador, Guyana, Panama,  Paraguay, Peru, Suriname, Venezuela
1601	Angola, Argentina, Australia, Austria, Belgium, Benin, Bolivia, Brazil, Cameroon, Canada,
1602	Bahamas, Canada, United States, Mexico
1603	Bhutan, Cambodia, China, India, Indonesia, Laos, Malaysia, Myanmar, Nepal, Thailand,
1604	Belgium, Cuba, Faroe Islands, Ireland, Netherlands, Portugal, United Kingdom, Canada, France, Iceland,
1605	Bahamas, Canada, Cuba, Dominican Republic, El Salvador, Guatemala, Honduras, Mexico, Panama, United States,
1606	Argentina, Belize, Bolivia, Brazil, Colombia, Costa Rica, Cuba, Ecuador, El Salvador, Guatemala,
1607	Algeria, Angola, Antigua and Barbuda, Argentina, Armenia, Australia, Azerbaijan, Bahamas, Bahrain, Bangladesh,
1608	Argentina, Bahamas, Bolivia, Brazil, Canada, Colombia, Cuba, Dominican Republic, Ecuador, El Salvador,
1609	Canada, United States, Bahamas, Dominican Republic, Norway, United Kingdom
1610	Canada, China, India, Japan, South Korea, Mexico,  Russia, United States, Bahamas, Barbados,
1611	Bahamas, Belize, Costa Rica, Cuba, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,
1612	Angola, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo, Djibouti,
1613	India, Indonesia, Malaysia, Myanmar, Palau,  Papua New Guinea, Philippines, Solomon Islands, Thailand, Viet Nam,
1614	Argentina, Australia, Chile, South Africa
1615	Algeria, Austria, Bangladesh, Belarus, Belgium, Bhutan, Bosnia and Herzegovina, China, Czech Republic, Denmark,
1616	China, Japan, North Korea, South Korea, Mongolia, Russia, Taiwan
1617	Antigua and Barbuda, Bahamas, Barbados, Belize, Canada, Costa Rica, Cuba, Dominica, Dominican Republic, Ecuador,
1618	Argentina, Bolivia, Brazil, Chile, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala, Mexico,
1619	Albania, Algeria, Armenia, Austria, Azerbaijan, Bhutan, Bosnia and Herzegovina, Bulgaria, China, Croatia,
1620	Paraguay, Argentina, Bolivia, Brazil
1621	Australia, Cambodia, China, India, Laos, Myanmar, Nepal, Pakistan, Viet Nam, Bangladesh
1684	China, Japan, North Korea, South Korea, Mongolia, Spain, Portugal, France, Finland, United Kingdom,
1622	Antigua and Barbuda, Bahamas, Barbados, Belize, Bolivia, Canada, Colombia, Costa Rica, Cuba, Dominica,
1623	United States, Uruguay, Argentina, Bahamas, Belize, Bolivia, Brazil, Canada, Chile, Colombia,
1624	Afghanistan, Algeria, Andorra, Austria, Azerbaijan, Belarus, Belgium, Bulgaria, Chad,  Croatia,
1625	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama
1626	Bahamas, Brazil, Colombia, Cuba, Dominican Republic, Ecuador, Guyana, Jamaica, Mexico, Suriname,
1627	Canada, Cuba, Guatemala, Mexico, United States
1628	Antigua and Barbuda, Bahamas, Barbados, Belize, Brazil, Canada, Chile, Colombia, Costa Rica, Cuba,
1629	Australia, Timor-Leste
1630	United States, Brazil, Costa Rica, Belize, Canada, El Salvador, Bahamas, Chile, Colombia, Cuba,
1631	Costa Rica, Guatemala, United States, Canada, Mexico
1632	Canada, United States, Belize, Costa Rica, Antigua and Barbuda, Bahamas, Barbados, Colombia, Cuba, Dominica,
1633	Albania, Algeria, Angola, Antigua and Barbuda, Argentina, Armenia, Austria, Azerbaijan, Bahamas, Bahrain,
1634	Albania, Algeria, Angola, Armenia, Australia, Austria, Azerbaijan, Bahrain, Bangladesh, Belarus,
1635	United States, Uruguay, Venezuela, Antigua and Barbuda, Argentina, Bahamas, Barbados, Belize, Bolivia,  Brazil,
1636	Bahamas, Canada, Costa Rica, Cuba, Dominican Republic, El Salvador, Guatemala, Mexico, Nicaragua, United States
1637	Australia, Papua New Guinea, Solomon Islands, Indonesia, New Zealand
1638	Bangladesh, Bhutan, China, Hong Kong, India, Maldives, Myanmar, Nepal, Pakistan, Qatar,
1639	Belize, United States, Costa Rica, Antigua and Barbuda, Barbados, Dominica, Dominican Republic, El Salvador, Grenada, Guadeloupe,
1640	Algeria, Andorra, Austria, Azerbaijan, Belarus, Belgium, Bulgaria, Canada, Croatia, Cyprus,
1641	United States, Bahamas, Canada, Cuba, Mexico, United Kingdom
1642	China, India, Bangladesh, Bhutan, Myanmar, Nepal, Sri Lanka, Viet Nam, Afghanistan, Pakistan
1643	Antigua and Barbuda, Bahamas, Barbados, Belize, Canada, Cuba, Dominica, Dominican Republic, Guadeloupe, Mexico,
1644	Cambodia, China, Indonesia, Laos, Myanmar, Thailand,   Viet Nam
1645	Angola, Argentina, Australia, Bahamas, Bangladesh, Belize, Benin, Bhutan, Bolivia, Botswana,
1646	Argentina, Bolivia, Brazil, Guyana, Paraguay, Peru, Suriname, Uruguay
1647	China, Spain, France, Albania, Andorra, Austria, Bosnia and Herzegovina, Bulgaria, Croatia,  Germany,
1648	Faroe Islands, Denmark, Estonia, Finland, France, Germany, Iceland, Latvia, Norway, Russia,
1649	Antigua and Barbuda, Barbados, Bolivia, Brazil, Canada, Colombia, Cuba, Dominica, Dominican Republic, Ecuador,
1650	Canada, Mexico, United States,  Guatemala
1651	Antigua and Barbuda, Argentina, Bahamas, Barbados, Belize, Bolivia, Brazil, Canada, Colombia, Costa Rica,
1652	Afghanistan, Algeria, Andorra, Austria, Azerbaijan, Bahrain, Bangladesh, Belgium, Bhutan, Bulgaria,
1653	Azerbaijan, China, Iran, Kazakhstan, Mongolia, Russia, Uzbekistan, India, Pakistan, Turkmenistan,
1654	Chile, Argentina, Brazil, Paraguay, Uruguay
1655	Armenia, Austria, Bulgaria, China, Croatia, Czech Republic, Georgia, Germany, Greece, Hungary,
1656	Australia, Austria, Belgium, Bosnia and Herzegovina, China, Czech Republic, Guinea-Bissau, Hong Kong,  Kazakhstan, South Korea,
1657	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Canada, United States,
1658	China, India, Bangladesh, Bhutan, Cambodia, Laos, Malaysia, Myanmar, Nepal, Thailand,
1659	United States, Bahamas, Canada, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama
1660	United States, Belize, Costa Rica, Guadeloupe, Jamaica, Nicaragua, Canada, Bahamas, Colombia, Cuba,
1661	United States, Antigua and Barbuda, Bahamas, Barbados, Belize, Canada, Cuba, Dominica, Guadeloupe, Mexico,
1662	Albania, Algeria, Andorra, Angola, Armenia, Azerbaijan, Benin, Bulgaria, Burkina Faso, Cameroon,
1663	Australia, Bangladesh, Brunei, Cambodia, China, Hong Kong, India, Indonesia, Laos, Malaysia,
1664	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Belize,
1665	Afghanistan, Bangladesh, Bhutan, India, Iran, Iraq, Nepal, Oman, Pakistan, Sri Lanka,
1666	Tanzania, Uganda, Zambia, Zimbabwe, Lesotho, Swaziland
1667	Bhutan, China, India, Myanmar, Nepal, Pakistan, Afghanistan
1668	Argentina, Brazil, Colombia, Guyana, Suriname, Trinidad and Tobago, Venezuela, Belize, Cuba, Dominica,
1669	Angola, Benin, Botswana, Burkina Faso,  Burundi, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire,
1670	Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Comoros, Congo,
1671	China, North Korea, South Korea, Mongolia, Spain, Portugal, France, Bulgaria, Croatia, Greece,
1672	China, Hong Kong, North Korea, South Korea, Mongolia, Spain, Portugal, France, Albania, Andorra,
1673	Bahamas, Cuba, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,
1674	Afghanistan, Kyrgyzstan, Mongolia, Russia, Tajikistan, Bhutan, China, India, Kazakhstan, Nepal,
1675	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, Spain, Portugal, France,
1676	Algeria,  Benin, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Cote d'Ivoire, Djibouti,  Eritrea,
1677	Bahamas, Cuba, Spain, Portugal, France,  United Kingdom, Belgium, Denmark, Faroe Islands, Germany,
1678	Australia, Bangladesh, Brunei, Cambodia, China, India, Indonesia, Laos, Malaysia, Myanmar,
1679	Belize, Bolivia, Brazil, Colombia, Costa Rica, Cuba, Ecuador, El Salvador, Guatemala, Guyana,
1680	Honduras, Mexico, Nicaragua, Panama, Paraguay, Peru, Suriname, Trinidad and Tobago, Uruguay, Venezuela
1681	Greece, Israel, Italy, Lebanon, Malta, Netherlands, Macedonia, Palestine, Portugal, Spain,
1682	China, Hong Kong, Japan, North Korea, South Korea, Macao, Mongolia, Taiwan, Austria, Bosnia and Herzegovina,
1683	Antigua and Barbuda, Barbados, Cuba, Dominica, Dominican Republic, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Spain,
2815	El Salvador,  Guatemala, Honduras, Mexico, Nicaragua
1685	Uruguay, Argentina, Bolivia, Brazil, Colombia, Ecuador, Mexico, Paraguay, Peru, United States,
1686	China, Spain, Portugal, France, Finland, United Kingdom, Albania, Austria, Belgium, Bosnia and Herzegovina,
1687	Albania, Andorra,  Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, China,
1688	Canada, Mexico, United States, Bahamas, Guatemala
1689	Albania, Armenia, Azerbaijan, Bulgaria, China, Egypt, Georgia, Greece, Hong Kong, India,
1690	Antigua and Barbuda, Argentina, Bahamas, Barbados, Bolivia, Brazil, Chile, Colombia, Cuba, Dominica,
1691	Bahamas, Belize, Canada, Cuba, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua, Panama,
1692	China, Japan, North Korea, Mongolia, Myanmar, Russia, Thailand, Bhutan, India,  South Korea,
1693	Albania, Algeria, Argentina, Austria, Azerbaijan, Bahrain, Bangladesh, Belarus, Belgium, Bolivia,
1694	Antigua and Barbuda, Bahamas,  Barbados, Cuba, Dominica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Belize,
1695	Comoros, Congo, DR Congo, Cote d'Ivoire, Djibouti, Eritrea, Ethiopia, Gabon, Gambia, Ghana, Guinea, Guinea-Bissau, Kenya, Lesotho, Malawi, Mali, Mauritania, Mozambique, Namibia, Niger, Nigeria, Rwanda, Senegal,  Sierra Leone, Somalia, South Sudan, Sudan, Tanzania, Togo, Uganda, Zambia, Zimbabwe, Yemen, Iran, Iraq
1696	Bangladesh, Brunei, Cambodia, China, India, Indonesia, Laos, Malaysia, Maldives, Myanmar,
1697	China, South Korea, Mongolia, Taiwan, Spain, Portugal, France, Finland, United Kingdom,  Albania,
1698	Canada, United States, Mexico, Bahamas, Denmark, Ireland, Morocco, Norway, Portugal,  Spain,
1699	Afghanistan, Algeria, Andorra, Austria, Azerbaijan, Belgium, Bulgaria, Croatia, Czech Republic, Denmark,
1700	China, India, Bhutan, Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Nepal,
1701	China, Spain, Portugal, France, Finland, United Kingdom, Albania, Andorra, Austria, Belgium,
1702	Albania, Andorra, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, China, Croatia,
1703	Belgium, Bhutan, Bulgaria, Burkina Faso, Burundi, Cambodia, Cameroon, Canada, Central African Republic, Chad,
1704	United States, Bahamas, Cuba, Guadeloupe, Jamaica, Mexico, Saint Kitts and Nevis, Nicaragua, Barbados, Canada,
1705	United States, Bahamas, Canada, Cuba, Mexico, Panama, Russia, Belize, Jamaica, Japan,
1706	Albania, Algeria, Angola, Austria, Azerbaijan, Bahrain, Bangladesh, Belarus, Belgium, Benin,
1707	Jamaica, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,  Panama, United States,
1708	Guatemala, Mexico, United States, Canada
1709	Belarus, Czech Republic, Estonia, Finland, Ireland,  Latvia, Lithuania, Russia, Sweden, United Kingdom,
1710	Mongolia, Norway, Russia, United States, Canada, Latvia, China, Estonia, Finland, Kazakhstan,
1711	China, India, Bangladesh, Bhutan, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Nepal,
1712	Spain, Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara, Mauritania, Sudan
1713	Bahamas, Cuba, Dominican Republic, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,
1714	Bahamas, Cuba, Saint Kitts and Nevis, Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Mexico, Panama,
1715	Belize, Colombia, Costa Rica, El Salvador, Guatemala, Honduras,  Mexico, Nicaragua, Panama, United States,
1716	Armenia, Canada, China, Estonia, Faroe Islands, Finland, Georgia, Greece, Ireland, Japan,
1717	Albania, Antigua and Barbuda, Austria,  Azerbaijan, Bahamas, Bangladesh, Barbados, Belgium, Bhutan, Bosnia and Herzegovina,
1718	Antigua and Barbuda, Barbados, Cuba, Dominica, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Belize,
1719	Bahamas, Cuba, Dominican Republic, Jamaica, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,
1720	United States, El Salvador, Guatemala, Canada, Honduras, Mexico, Bahamas, Cuba, Germany, Iceland,
1721	Bahamas, Cuba, China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, Spain,
1722	Angola, Botswana, Ethiopia, Kenya, Mozambique, Namibia,  Somalia, South Africa, South Sudan, Sudan,
1723	China, India, Bangladesh, Myanmar, Nepal, Sri Lanka, South Africa, Angola, Benin, Botswana,
1724	China, Taiwan, India, Bangladesh, Bhutan, Cambodia, Indonesia, Laos, Malaysia, Myanmar,
1725	Angola, Botswana,  Burundi, Congo, DR Congo, Ethiopia, Kenya, Lesotho, Malawi, Mozambique,
1726	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Belize,
1727	India, Nepal, Sri Lanka, Iran, Pakistan
1728	Angola, Albania, Antigua and Barbuda, Azerbaijan, Bahamas, Bangladesh, Barbados, Benin, Botswana, Bulgaria,
1729	Antigua and Barbuda, Bahamas, Barbados, Belize, Canada, Costa Rica, Cuba, Dominica, El Salvador, Guatemala,
1730	Djibouti,  Ethiopia, Kenya, Somalia
1731	Afghanistan, Armenia, China, Kazakhstan, Kyrgyzstan, Mongolia, Montenegro, Russia, Tajikistan, Uzbekistan,
1732	Argentina, Bahamas, Belize, Bolivia, Brazil,   Chile, Colombia, Cuba, Ecuador, El Salvador,
1733	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Spain, Portugal,  France, Finland,
1734	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,  Panama, Canada, United States,
1735	Bangladesh, Bhutan, China, India, Kazakhstan, Kyrgyzstan, Malaysia, Mongolia, Myanmar, Nepal,
1736	China, Mongolia, Spain, France, Finland, United Kingdom, Albania, Austria, Belgium, Estonia,
1737	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Grenada, Jamaica, Saint Kitts and Nevis, Saint Lucia,
1738	Spain, Portugal, France, United Kingdom, Denmark, Faroe Islands, Germany, Greece, Iceland, Ireland,
1739	Argentina, Belize, Bolivia, Brazil, Colombia, Ecuador, El Salvador, Guatemala, Honduras, Mexico,
1740	Antigua and Barbuda, Bahamas, Barbados, Belize, Brazil, Colombia,  Costa Rica, Cuba, Dominica, Dominican Republic,
1741	Algeria, Bangladesh, Belgium, Bhutan, Bosnia and Herzegovina, Bulgaria,  Cambodia, Croatia, Cyprus, Denmark,
1742	Canada, Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Jamaica, Saint Kitts and Nevis, Saint Lucia,
1743	Antigua and Barbuda, Argentina, Bahamas, Barbados, Belize, Bolivia, Brazil, Canada, Chile, Colombia,
1744	China, Taiwan, India, Bangladesh, Bhutan, Brunei, Cambodia, Indonesia, Laos, Malaysia,
1745	United States, Uruguay, Argentina, Belize, Bolivia, Brazil, Canada, Chile, Colombia, Costa Rica,
1746	Costa Rica, Mexico, Canada, United States
1747	Australia, Indonesia, Papua New Guinea, Timor-Leste
1748	South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, DR Congo,
1749	China, Japan, North Korea, South Korea, Mongolia, Taiwan, Spain, France,  Finland, United Kingdom,
1750	Belize, Colombia, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Venezuela
1751	Bahamas, Cuba, Guatemala, Mexico, Canada, United States
1752	Antigua and Barbuda, Bahamas, Barbados, Belize, Bolivia, Canada, Colombia, Cuba, Dominica, Dominican Republic,
1753	China, Hong Kong, Macao, Egypt, India, Bangladesh, Bhutan, Cambodia, Indonesia, Laos,
1754	Antigua and Barbuda, Bahamas, Barbados, Belize, Brazil, Canada, Colombia, Costa Rica, Cuba, Dominica,
1755	China, North Korea, South Korea, Mongolia, Russia, India, Bangladesh, Bhutan, Laos, Maldives,
1756	Japan, North Korea, South Korea,  Spain, Portugal, France, Finland, United Kingdom, Belgium, Denmark,
1757	Egypt, India, Bangladesh, Myanmar, Sri Lanka, South Africa, Angola, Benin, Botswana, Burkina Faso,
1758	Spain, Portugal, France, Finland, United Kingdom, Belgium, Denmark, Estonia, Faroe Islands, Germany,
1759	China, India, Nepal, Kazakhstan, Kyrgyzstan, Pakistan, Tajikistan, Turkmenistan, Uzbekistan
1760	China,  Japan, North Korea, South Korea, Mongolia, Russia, Kazakhstan, Taiwan
1761	Cuba, Guatemala, Honduras, Mexico, Canada, United States
1762	Algeria, Angola, Armenia, Australia, Austria, Azerbaijan, Bahrain, Bangladesh, Botswana, Brunei,
1763	China, Japan, Mongolia, Finland, Latvia, Norway, Slovakia, Sweden, Canada, United States,
1764	China, Mongolia, Finland, Norway, Sweden, Russia, Kazakhstan
1765	Antigua and Barbuda, Argentina, Bahamas, Barbados,  Belize, Bolivia, Brazil, Canada, Chile, Colombia,
1766	China, Japan, North Korea, South Korea, Macao, Taiwan, Spain, Portugal, France, Finland,
1767	Antigua and Barbuda, Bahamas, Barbados,  Cuba, Dominica, Dominican Republic, Guadeloupe, Jamaica, Saint Kitts and Nevis, Saint Lucia,
1768	Antigua and Barbuda, Barbados, Dominica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Spain, Portugal, France, United Kingdom,
1769	Cuba, China, Japan, North Korea, South Korea, Taiwan, Spain, France, Finland, United Kingdom,
1770	China, Japan, North Korea, South Korea, Mongolia, Russia, Australia, New Zealand, India, Bhutan,
1771	Japan, North Korea, South Korea, Mongolia, Spain, France, Finland, United Kingdom, Albania, Andorra,
1772	China, Mongolia, Spain, France, Finland, United Kingdom, Albania, Austria, Belgium, Bulgaria,
1773	Canada,  Japan, Russia, United States, South Korea, North Korea
1774	China, Mongolia, Spain, Portugal, France, Finland, United Kingdom, Albania, Austria, Belgium,
1775	Kazakhstan, Mongolia, Russia, Japan, South Korea, North Korea, China, Turkmenistan, Laos, Uzbekistan,
1776	China, Mongolia, Spain, Portugal, France, Finland, United Kingdom, Albania, Andorra, Austria,
1777	India, Bangladesh, Bhutan, Nepal, Pakistan
1778	China,  Japan, North Korea, South Korea, Taiwan, France, Finland, United Kingdom, Belgium, Denmark,
1779	Bosnia and Herzegovina, Kazakhstan, Liechtenstein, Mongolia, Russia, Albania, Bahrain, Bangladesh, Canada, Cyprus,
1780	South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo,
1781	Australia, Indonesia, Papua New Guinea, Solomon Islands, Timor-Leste
1782	United States, Belize, Costa Rica, Guadeloupe, Jamaica, Nicaragua, Canada, Antigua and Barbuda, Bahamas, Barbados,
1783	Dominican Republic, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Canada,
1784	Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Canada, United States, Ecuador, Chile, Argentina, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
1785	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan,  Spain, Portugal, France,
1786	Canada, United States, Mexico, China, Japan, South Korea, North Korea, Russia, Iceland,  Austria,
1787	Spain, Portugal, France, Finland, United Kingdom, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria,
1788	Australia, New Zealand, Chile, Argentina, Brazil, Uruguay, South Africa
1789	Costa Rica, Guatemala, Honduras, Mexico, Canada, United States
1790	El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Canada, United States
1791	Afghanistan, Azerbaijan, Bulgaria, Canada, Colombia, Croatia, Finland, Greece, Iran, Iraq,
1792	China, South Korea, Mongolia, Spain, Albania, Bulgaria, Denmark, Greece, Italy, Romania,
1793	India, Bangladesh, Nepal, Sri Lanka, Pakistan
1794	Antigua and Barbuda, Bahamas, Cuba, China, Japan, North Korea, South Korea, Taiwan, Spain, Portugal,
1795	Albania,  Austria, Belgium, China, Croatia, Denmark, France, Germany, Hungary, Iceland,
1796	United States, Belize, Costa Rica, Dominican Republic, Jamaica, Nicaragua, Antigua and Barbuda, Bahamas, Barbados, Canada,
1797	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Guadeloupe, Jamaica, Saint Kitts and Nevis, Saint Lucia,
1798	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, Spain, Portugal,  France,
1799	Eritrea, Ethiopia, Somalia, Sudan
1800	Canada, Jamaica, United States, Uruguay,  Antigua and Barbuda, Argentina, Bahamas, Barbados, Bolivia, Brazil,
1801	Belize, Costa Rica, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua, Ecuador, Argentina, Bolivia,
1802	Algeria, Austria, Azerbaijan, Bahrain,  Bangladesh, Belgium, Bhutan, Brunei, Bulgaria, Cambodia,
1803	China, Japan, North Korea, South Korea, Mongolia, Taiwan, Spain, Portugal, France, Finland,
1804	Equatorial Guinea, South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad,
1805	Bahamas, Cuba, China, Japan, North Korea, South Korea, Taiwan, Spain,  Portugal, France,
1806	China, Japan, North Korea, South Korea, Mongolia, Spain, France, Finland, United Kingdom, Austria,
1807	Bangladesh, Cambodia, China, India, Iran, Laos, Myanmar, Nepal, Pakistan, Sri Lanka,
1808	Angola, Botswana, Burundi, Cameroon, DR Congo, Djibouti, Eritrea, Ethiopia, Gabon, Gambia,
1809	Japan, Finland, Denmark, Iceland, Norway, Sweden, Canada, United States, Russia
1810	Canada, Mexico, United States, Bahamas,  Barbados, Costa Rica, Cuba, Iceland, Panama
1811	Argentina, Bolivia, Brazil, Colombia, Ecuador, Guyana,  Panama, Paraguay, Peru, Suriname,
1812	Andorra, Austria, Azerbaijan, Belarus, Belgium, Bulgaria, Canada, Croatia, Czech Republic, Denmark,
1813	China, Mongolia, Spain, Portugal, France, Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia,
1814	Albania, Algeria, Andorra, Armenia, Austria, Azerbaijan, Belarus, Belgium, Belize, Bhutan,
1815	Australia, Indonesia, Papua New Guinea, New Zealand
1816	Algeria, Angola,  Antigua and Barbuda, Argentina, Austria, Bahamas, Bangladesh, Barbados, Benin, Bolivia,
1817	China, Spain, Portugal, France, Finland, United Kingdom,  Albania, Andorra, Austria, Belgium,
1818	Macao, Georgia, Hong Kong, Israel, Kazakhstan, North Korea, Kyrgyzstan, Papua New Guinea, Russia, Senegal,
1819	Angola, Benin, Botswana,  Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire, Djibouti,
1820	Austria, Bahamas, Belarus, Belgium, Bulgaria, Canada, China, Czech Republic, Denmark, Estonia,
1821	Bahamas, Cuba, Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,
1822	Canada, Japan,  Marshall Islands, Mexico, Federated States of Micronesia, Russia, United States, New Zealand, China, South Korea,
1823	Bahamas, Canada, Colombia, Cuba, Ecuador, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,
1824	China, India, Brunei, Cambodia, Indonesia, Malaysia, Myanmar, Philippines, Singapore, Thailand,
1825	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,  Panama, United States,
1826	Argentina, Bolivia, Colombia, Ecuador, Mexico,  Peru, Venezuela
1827	Austria, Azerbaijan, Belgium, Bulgaria, Czech Republic, Faroe Islands, France, Greece, Hungary, Iran,
1828	Angola, Botswana, Burundi, DR Congo, Kenya, Lesotho, Malawi, Mozambique, Namibia, Rwanda,
1829	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Canada, United States
1830	India, Bangladesh, Bhutan, Cambodia, Myanmar, Nepal, Afghanistan, Iran, Pakistan
1831	Antigua and Barbuda, Bahamas, Barbados, Canada, Colombia, Cuba, Dominica, Dominican Republic, El Salvador, Guatemala,
1832	China, Hong Kong, Japan, Mongolia, Spain, Portugal, France, Finland, United Kingdom, Albania,
1833	Bhutan, India, Nepal, Cambodia, Laos, Myanmar, Pakistan, Sri Lanka, Thailand, Bangladesh,
1834	Albania, Algeria, Angola, Azerbaijan, Benin, Bosnia and Herzegovina, Botswana, Burkina Faso, Burundi, Cameroon,
1835	China, Hong Kong, Japan, South Korea, Macao, Taiwan,   India, Bangladesh, Bhutan, Brunei,
1836	Namibia,  South Africa, Botswana, Lesotho, Swaziland, Zimbabwe
1837	Saint Pierre and Miquelon
1838	Belize, Mexico, Canada, United States
1839	China, Japan, North Korea, South Korea, Taiwan, Russia, India, Bhutan, Cambodia, Indonesia,
1840	Bahamas, Cuba, Belize, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Canada, United States
1841	Cuba, Jamaica, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Canada, United States
1842	Antigua and Barbuda,  Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago,
1843	Benin, Burkina Faso, Cameroon, Central African Republic, Chad, Cote d'Ivoire, Gambia, Ghana, Guinea, Guinea-Bissau,
1844	Antigua and Barbuda, Argentina, Barbados, Brazil, Canada, Chile, Dominica, Guadeloupe, Japan, Maldives,
1845	Canada, United States, Belize, Costa Rica, Guadeloupe,  Jamaica, Nicaragua, Antigua and Barbuda, Bahamas, Barbados,
1846	China, Japan, North Korea, South Korea, Mongolia, Spain, France, Finland, Albania, Andorra,
1847	Bahamas, Cuba, Dominican Republic, Jamaica, Trinidad and Tobago, Belize,  Costa Rica, El Salvador, Guatemala, Honduras,
1848	Australia, Papua New Guinea, Indonesia  Australasian, Indomalayan
1849	China, Japan, North Korea, South Korea, Taiwan, Spain, Portugal, France, Finland, United Kingdom,
1850	China, Mongolia, Spain, Portugal, France, United Kingdom, Albania,  Andorra, Greece, Ireland,
1851	India, Bangladesh, Cambodia, Nepal, Thailand, Viet Nam
1852	Egypt, South Africa, Angola,  Botswana, Central African Republic, Chad, Djibouti, Eritrea, Ethiopia, Kenya,
1853	Argentina, Bolivia, Brazil,  Chile, Ecuador, Paraguay, Peru, Uruguay
1854	United States, Canada, Mexico, Cuba
1855	India, Bangladesh, Bhutan, Nepal, Sri Lanka, Pakistan
1856	Trinidad and Tobago, Costa Rica, Nicaragua, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana,
1857	Mexico, Canada,  United States
1858	Finland, Austria, Bulgaria, Denmark, Estonia, Germany, Greece, Hungary, Italy, Latvia,
1859	Antigua and Barbuda, Bahamas, Barbados, Belize, Canada, Costa Rica, Cuba, Dominica, Ecuador, El Salvador,
1860	China, Mongolia, Albania, Austria, Bulgaria, Croatia, Denmark, Greece, Italy, Montenegro,
1861	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines,
1862	Canada, United States, Mexico, Belize, Costa Rica, Cuba, El Salvador, Guatemala, Honduras, Dominican Republic,
1863	Bahamas, Guatemala, Mexico, Canada, United States
1864	United States, Canada, Mexico
1865	China, Japan, North Korea, Mongolia, Spain, Portugal, France, Finland, United Kingdom, Albania,
1866	Trinidad and Tobago, Brazil, Guyana, Suriname, Venezuela
1867	Ecuador, Chile, Argentina, Bolivia, Colombia, Peru
1868	Antigua and Barbuda, Bahamas, Barbados, Cuba,  Dominica, Dominican Republic, Guadeloupe, Jamaica, Saint Kitts and Nevis, Saint Lucia,
1869	China, Hong Kong, Japan, North Korea, South Korea, Taiwan, Spain, Portugal, France, Albania,
1870	Belize, Brazil, Colombia, Costa Rica, Cuba, El Salvador, Guatemala, Guyana, Honduras, Mexico,
1871	India, Nepal, Sri Lanka, Afghanistan, Kazakhstan, Kyrgyzstan, Tajikistan, Turkmenistan, Uzbekistan
1872	China, Hong Kong, North Korea, Macao, Mongolia, Taiwan, France, Finland, Albania, Austria,
1873	Trinidad and Tobago, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Venezuela
1874	Afghanistan, Albania, Armenia, Austria, Azerbaijan, Belarus, Bosnia and Herzegovina, China, Croatia, Czech Republic,
1875	China, Hong Kong, Japan, North Korea, South Korea, Taiwan, Spain, Portugal, France, Finland,
1876	South Africa, Angola, Botswana, DR Congo, Ethiopia, Kenya, Namibia, Somalia, South Sudan, Sudan,
1877	Cambodia, Indonesia, Malaysia, Myanmar, Philippines, Singapore, Thailand, Viet Nam
1878	Antigua and Barbuda, Bahamas, Barbados, Canada, Colombia, Cuba, Dominica, Dominican Republic, Grenada, Guatemala,
1879	Costa Rica, Ecuador, Honduras, Nicaragua, Panama
1880	China, India, Bangladesh, Cambodia, Laos, Myanmar, Nepal, Viet Nam
1881	Albania,  Austria, Belarus, Bulgaria, China, Croatia, Czech Republic, Estonia, Finland, Hungary,
1882	Barbados, Jamaica, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,
1883	Japan, Russia, Canada, United States
1884	Morocco, Eritrea, Yemen, Jordan, Saudi Arabia, Syria, Turkey
1885	Australia,  Argentina
1886	Belgium, Denmark, Faroe Islands, Germany, Greece, Iceland, Ireland, Italy, Lithuania, Netherlands, Norway, Poland, Slovakia, Slovenia, Sweden, Switzerland, Mexico, Algeria, Morocco, Tunisia, Western Sahara, Canada, United States,  Russia, Mauritania, Turkey, Cape Verde
1887	China, Denmark, France, Japan, Mexico, Sweden, Faroe Islands, Germany,  Iceland, Ireland,
1888	Afghanistan, Albania, Algeria, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, China,
1889	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Canada, United States
1890	South Africa, Burundi, DR Congo, Kenya, Lesotho, Malawi, Mozambique, Namibia, Rwanda, Tanzania,
1891	Spain, France, Finland, United Kingdom, Albania, Andorra, Austria, Belgium, Bosnia and Herzegovina, Bulgaria,
1892	Bahamas, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Canada, United States
1893	Antigua and Barbuda, Argentina, Bahamas, Barbados, Belize, Brazil, Chile, Colombia, Cuba, Dominica,
1894	Guadeloupe, Trinidad and Tobago, Spain, Portugal, France, United Kingdom, Denmark, Faroe Islands, Iceland, Ireland,
1895	Angola, Benin, Botswana, Burkina Faso, Burundi,  Cameroon, Central African Republic, Chad,  DR Congo, Cote d'Ivoire,
1896	Bahamas, Cuba, Dominican Republic, Guadeloupe, Belize, Costa Rica, Honduras, Mexico, Canada, United States,
1897	Antigua and Barbuda, Barbados, Dominica, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Mongolia, Spain,
1898	China, India, Bhutan
1899	China, Japan, North Korea, South Korea, Mongolia, Taiwan, Spain, France, Finland, United Kingdom,
1900	Mongolia, Spain, Portugal, France, Finland, United Kingdom, Albania, Andorra, Austria, Belgium,
1901	Argentina, Bahamas, Barbados, Bolivia, Brazil, Canada, Chile, Colombia, Cuba, Ecuador,
1902	China, Japan, North Korea, South Korea, Mongolia, Spain, France, United Kingdom, Albania, Andorra,
1903	China, Hong Kong, Japan, North Korea, South Korea, Macao, Mongolia, Taiwan, Spain, Portugal,
1904	Angola, Argentina, Australia, Brazil, Chile, Namibia, New Zealand, Peru, South Africa, Uruguay,
1905	United States, Uruguay, Belize, Costa Rica, Antigua and Barbuda, Argentina, Bahamas, Barbados, Bolivia, Brazil,
1906	China, Mongolia, Spain, France, Finland, United Kingdom, Albania, Austria, Belgium, Bosnia and Herzegovina,
1907	Bahamas, Cuba, Guadeloupe, Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Canada,
1908	China, Japan, Mongolia, Canada, United States, Russia, Kazakhstan
1909	Australia, Papua New Guinea, India, Bhutan, Cambodia, Indonesia, Laos, Myanmar, Nepal, Sri Lanka
1910	China, Mongolia, Spain, Portugal, France, Albania, Andorra, Austria, Bulgaria, Croatia,
1911	China, Mongolia, Spain, Portugal, France, Albania, Bosnia and Herzegovina, Bulgaria, Croatia, Greece,
1912	Australia, Papua New Guinea, Solomon Islands, Indonesia, Timor-Leste
1913	Albania, Algeria, Angola, Antigua and Barbuda, Argentina, Armenia, Australia, Austria, Azerbaijan, Bahamas,
1914	China, Japan, North Korea, South Korea, Taiwan, Spain, France, Finland, United Kingdom, Albania,
1915	Mexico  Puerto Rico, United States
1916	China, Japan, Taiwan, Costa Rica, Mexico, United States, Australia, Fiji, Marshall Islands, Federated States of Micronesia,
1917	Antigua and Barbuda, Bahamas, Barbados, Belize, Brazil, Canada, Colombia, Cuba, Dominica, Dominican Republic,
1918	Bahamas, Cuba, Dominican Republic,  Jamaica, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,
1919	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago,
1920	United States, Belize, Costa Rica, Antigua and Barbuda,  Bahamas, Barbados, Canada, Colombia, Cuba, Dominica,
1921	Spain, Portugal, France, United Kingdom, Albania, Belgium,  Bulgaria, Croatia, Faroe Islands, Germany,
1922	China, Japan, North Korea, South Korea, Mongolia, Taiwan, Spain,  France, Finland, United Kingdom,
1923	China, Hong Kong, Japan, North Korea, South Korea,  Mongolia, Spain, Portugal, France, Finland,
1924	China, Mongolia, Spain, Portugal, France, Finland, United Kingdom,   Albania, Andorra, Austria,
1925	Guatemala, Honduras, Nicaragua, United States, Canada, Mexico
1926	Papua New Guinea, Indonesia  Australasian, Indomalayan
1927	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Canada, United States, Colombia
1928	India, Bangladesh, Cambodia, Myanmar, Nepal
1929	South Africa, Angola, Botswana, DR Congo, Djibouti, Eritrea, Ethiopia, Kenya, Malawi, Mozambique,
1930	Australia, Papua New Guinea, New Zealand, Fiji, Tonga, Vanuatu, Indonesia
1931	Argentina, Australia, Chile, South Africa, Brazil, Madagascar, Mozambique, Namibia, New Zealand, Uruguay,
1932	Canada, United States, Mexico, Ecuador
1933	Bahamas, Chile,  Cuba, Dominica, Dominican Republic, Ecuador, Honduras, Mexico, Peru, Saint Kitts and Nevis,
1934	Bahamas, Cuba, Dominica, Dominican Republic, Grenada, Guadeloupe, Jamaica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines,
1935	Belgium, Czech Republic, France, Ireland, Netherlands, Romania, United Kingdom, Denmark, Germany, Sweden,
1936	Bahamas, Barbados, Cuba, Dominican Republic, Jamaica, Trinidad and Tobago, China, Hong Kong, Japan, Mongolia,
1937	Spain, Portugal, France, Finland, United Kingdom, Albania, Austria, Belgium, Bosnia and Herzegovina,  Bulgaria,
1938	Albania, Algeria, Armenia,  Benin, Botswana, Bulgaria, Burkina Faso, Burundi, Cameroon, Chad,
1939	Cambodia, China, Myanmar, Thailand, Viet Nam, Laos, Argentina
1940	India, Bangladesh, Cambodia, Laos, Myanmar, Nepal, Sri Lanka, Thailand, Viet Nam, Pakistan
1941	El Salvador, Guatemala, Honduras, Mexico, Nicaragua
1942	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Belize
1943	Argentina, Chile, Australia, New Zealand
1944	Australia, Bangladesh, Brazil, Chile, China, Colombia, Comoros, Costa Rica, Fiji, India,
1945	Japan, Faroe Islands, Iceland, Norway, Canada, United States, Russia
1946	Antigua and Barbuda, Barbados, Dominica, Dominican Republic, Grenada, Guadeloupe, Jamaica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines,
1947	Chile,  Argentina, Brazil, Paraguay, Uruguay
1948	United States, Belize, Costa Rica, Bahamas, Canada, Cuba, El Salvador, Guatemala, Honduras, Mexico,
1949	China, Mongolia,  Spain, Portugal, France, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria,
1950	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Grenada, Guadeloupe, Saint Kitts and Nevis, Saint Lucia,
1951	Costa Rica, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua, United States, Belize, Canada
1952	Canada, Guatemala,  Mexico, United States
1953	India,  Bangladesh, Bhutan, Maldives, Myanmar, Nepal, Sri Lanka, Iran, Oman, Pakistan,
1954	Russia, United States, Iran, Marshall Islands, Federated States of Micronesia, Palau, Philippines, Saudi Arabia, Sudan, Yemen,
1955	Argentina, Brazil, Chile, Uruguay
1956	Antigua and Barbuda,  Bahamas, Barbados, Cuba, Dominica, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago,
1957	China, Japan, North Korea, South Korea, Mongolia, Taiwan, Spain, Portugal, France, United Kingdom,
1958	Bahamas, Cuba, Canada, United States
1959	Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Canada, United States
1960	China, Hong Kong, Japan, North Korea, South Korea, Taiwan, Russia, India, Bangladesh, Malaysia,
1961	Guadeloupe, Spain, Portugal, France, United Kingdom, Denmark, Ireland, Costa Rica, Mexico, Panama,
1962	Antigua and Barbuda, Barbados, Cuba, Dominica, Dominican Republic,  Grenada, Guadeloupe, Jamaica, Saint Kitts and Nevis, Saint Lucia,
1963	China, Japan, North Korea, South Korea, Mongolia, Spain, France, Finland, Albania, Austria,
1964	China, Japan, North Korea, South Korea, Mexico, Canada, United States, Russia
1965	China, Hong Kong, Japan, North Korea, Mongolia, France, Finland, United Kingdom, Austria, Belgium,
1966	Costa Rica, El Salvador, Guatemala, Mexico, Honduras, Nicaragua
1967	China, India, Bangladesh, Bhutan, Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar,
1968	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Argentina, Bolivia,
1969	Iceland, Canada, United States
1970	Spain, Portugal, France, United Kingdom, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia,
1971	United States, Uruguay, Argentina, Belize, Bolivia, Brazil, Colombia, Costa Rica, Cuba, Ecuador,
1972	China, Japan, South Korea, Taiwan, Federated States of Micronesia, Palau, India, Bangladesh, Bhutan, Brunei,
1973	India, Bangladesh, Bhutan, Cambodia, Laos, Myanmar, Nepal, Thailand, Viet Nam, Iran,
1974	Cameroon, Chad, Ethiopia, Gambia, Guinea, Guinea-Bissau, Kenya, Mali, Mauritania, Niger,
1975	Canada, United States, Bahamas, Colombia, Cuba, Ecuador, Guatemala, Mexico, Peru
1976	China, North Korea, South Korea, Russia, India, Bangladesh, Bhutan, Brunei, Cambodia, Indonesia,
1977	Canada, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, United States, Venezuela, Antigua and Barbuda, Barbados,
1978	Spain, Portugal, France, Bulgaria, Croatia, Greece, Italy, Malta, Montenegro, Serbia,
1979	Spain, Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Estonia, Germany, Greece, Hungary,
1980	China, Spain, Portugal, France, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia,
1981	Antigua and Barbuda, Barbados, Cuba, Dominica, Dominican Republic, Grenada, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines,
1982	Finland, United Kingdom, Denmark, Estonia, Faroe Islands, Germany, Iceland, Ireland, Latvia, Norway,
1983	China, Hong Kong, Taiwan, Spain, Portugal, France, Finland, United Kingdom, Albania, Austria,
1984	Trinidad and Tobago, Costa Rica, Nicaragua, Panama, Ecuador, Chile, Argentina, Bolivia, Brazil, Colombia,
1985	Bahamas, Cuba, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Canada,
1986	China, Japan, Taiwan, Mexico, Canada, United States, Australia, New Zealand, Marshall Islands, Federated States of Micronesia,
1987	Bahamas, Belize, Costa Rica, El Salvador, Guatemala, Mexico, Canada, United States
1988	Spain, Portugal, France, Finland, United Kingdom, Albania, Andorra, Austria,  Belgium, Bosnia and Herzegovina,
1989	China, Mongolia, Spain, Portugal, France, Finland, Albania, Austria, Belgium, Bosnia and Herzegovina,
1990	Japan, South Korea, Costa Rica, Mexico, Canada, United States, Russia, Australia, New Zealand, Fiji,
1991	Dominican Republic, Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,
1992	Australia, New Zealand, Chile, Argentina, Brazil,  Uruguay, South Africa, Namibia
1993	Angola, Burundi, DR Congo, Eritrea, Ethiopia, Kenya, Malawi, Mozambique, Namibia, Rwanda,
1994	Canada, Jamaica, United States,  Costa Rica, Nicaragua, Bahamas, Belize, Colombia, Cuba, Dominican Republic,
1995	Angola, Colombia,  DR Congo, Ecuador, Namibia, Peru, South Africa, Brazil, Canada, Congo,
1996	Antigua and Barbuda, Argentina, Bahamas, Barbados, Belize, Brazil, Canada,  Colombia, Costa Rica, Cuba,
1997	Canada, China, Japan, South Korea, Mexico, Russia, Taiwan, United States, Philippines
1998	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Canada, United States, Chile, Argentina,
1999	Costa Rica, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia, Colombia,
2000	Angola, Botswana, Burundi, Congo, DR Congo, Gabon, Kenya, Lesotho, Malawi,  Mozambique,
2001	Bolivia, Brazil, Colombia, Costa Rica, Ecuador, Guyana,  Panama, Peru, Suriname, Trinidad and Tobago,
2002	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, Russia, India,  Bangladesh,
2003	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, Russia, India, Bangladesh,
2004	Bahamas, Cuba, Dominican Republic, Guadeloupe, Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras,
2005	Barbados, Mexico, Australia, New Zealand, Ecuador, Chile, Argentina, Brazil, Peru, Uruguay,
2006	Egypt, Morocco, Western Sahara, India, Sri Lanka, Equatorial Guinea, Benin, Burkina Faso, Cameroon, Comoros,
2007	Bahamas, Barbados, Cuba, Jamaica, Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua,
2008	Ecuador, Brazil, Colombia,  Guyana, Peru, Suriname,  Venezuela
2009	South Africa, Angola, Botswana, Lesotho, Malawi, Mozambique, Namibia, Zambia, Zimbabwe
2010	China,  France, Finland, Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Denmark, Estonia,
2011	Mexico, Canada, United States, Argentina, Peru
2012	India, Bangladesh, Cambodia, Laos, Myanmar, Nepal
2013	China, India, Nepal, Afghanistan, Kazakhstan, Kyrgyzstan, Pakistan, Tajikistan, Turkmenistan, Uzbekistan
2014	Argentina, Belize, Bolivia, Brazil, Chile, Colombia,  Ecuador, Guatemala, Guyana, Honduras,
2015	Bahamas, Cuba, Belize, El Salvador, Guatemala, Honduras, Mexico, Canada, United States
2016	Canada, United States, Guatemala, Mexico
2017	Trinidad and Tobago, Costa Rica, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname,
2018	Bangladesh, Bhutan, Cambodia, India, Indonesia, Laos, Malaysia, Myanmar, Nepal, Pakistan,
2019	South Africa, DR Congo, Kenya, Lesotho, Malawi, Mozambique, Namibia, Rwanda, South Sudan, Sudan,
2020	Cuba, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Canada,
2021	China, Hong Kong, India, Bangladesh, Cambodia, Laos, Myanmar, Nepal, Sri Lanka, Thailand,
2022	Ecuador, Chile, Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru, Uruguay,  Venezuela
2023	Costa Rica,  El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Canada, United States
2024	Belize, Bolivia, Colombia, Ecuador, Guatemala, Honduras, Mexico, Nicaragua, Peru, Venezuela,
2025	Chile, Colombia, Ecuador,  Peru
2026	China,  Japan, North Korea, South Korea, Mongolia, Spain, France, Finland, Albania, Austria,
2027	Ecuador, Bolivia, Brazil, Colombia, Guyana,  Paraguay, Peru, Suriname, Venezuela
2028	United States, Belize, Costa Rica, Guadeloupe, Jamaica, Uruguay,  Antigua and Barbuda, Argentina, Bahamas, Barbados,
2029	China, Hong Kong, Japan, North Korea, South Korea, Macao, Taiwan, Spain, Portugal, France,
2030	Belize, Costa Rica,  El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Argentina,
2031	China, India, Bangladesh, Bhutan, Cambodia, Indonesia, Laos, Myanmar, Nepal, Thailand,
2032	El Salvador, Guatemala, Honduras, Mexico, Canada, United States
2033	Trinidad and Tobago, Colombia, Venezuela
2034	China, Mongolia, Albania, Austria, Bulgaria, Croatia, Greece, Hungary, Italy, Malta,
2035	China, Hong Kong, South Korea, Mongolia, Taiwan, Spain, Portugal, France, Finland, United Kingdom,
2036	Trinidad and Tobago, Panama, Ecuador, Chile, Argentina,  Bolivia, Brazil, Colombia, Guyana, Paraguay,
2037	Canada, United States, Costa Rica, Jamaica, Nicaragua, Antigua and Barbuda, Bahamas, Barbados, Belize, Bolivia,
2038	Spain, Portugal, France, Albania, Bulgaria, Croatia, Greece, Italy, Malta, Montenegro,
2039	India, Afghanistan, Iran, Iraq, Kuwait, Pakistan, Saudi Arabia
2040	Antigua and Barbuda, Barbados, Cuba, Dominica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Japan, France, Finland,
2041	China, Japan, North Korea, South Korea, Spain, France, Finland, United Kingdom, Belgium, Denmark,
2042	Austria,  Bulgaria, Croatia, Greece, Montenegro, Romania, Serbia, Moldova, Russia, Ukraine,
2043	Chile, Colombia, Ecuador, Peru, Panama
2044	El Salvador, Mexico, Ecuador, Colombia, Peru
2045	South Africa, Angola, Botswana, Lesotho, Namibia, Zimbabwe
2046	India, Bangladesh, Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Nepal, Philippines,
2047	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Jamaica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines,
2048	China, Japan, South Korea, Taiwan, Mexico, Canada, United States, Russia, Marshall Islands, Federated States of Micronesia
2049	Nicaragua, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
2050	India, Bhutan, Myanmar
2051	Honduras, Mexico, Nicaragua, Ecuador, Brazil, Colombia, Guyana, Suriname, Venezuela
2052	Ecuador, Chile, Colombia, Peru
2053	Chile, Argentina, Uruguay
2054	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Canada, United States, Colombia, Venezuela
2055	New Zealand, Australia, Argentina
2056	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Canada,
2057	China, Japan, North Korea, South Korea, Mongolia, Taiwan, Russia
2058	China, India, Bangladesh, Cambodia, Laos, Myanmar, Nepal, Thailand, Viet Nam
2059	China, Japan, North Korea, South Korea, Mexico, Canada, United States,  Russia
2060	Antigua and Barbuda, Bahamas, Barbados, Belize, Cuba, Dominica,  Dominican Republic, Guadeloupe, Mexico, Panama,
2061	Bahamas, Mexico, Canada, United States
2062	Bahamas, Colombia, Cuba, Ecuador, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,
2063	Belize, Colombia, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,  United States
2064	China, Japan, Taiwan, India, Bangladesh, Cambodia, Indonesia, Laos, Malaysia, Myanmar,
2065	China, Mongolia, Spain, Bulgaria, Greece, Romania, Algeria, Morocco, Tunisia, Russia,
2066	Cuba, Dominican Republic, Jamaica, Belize,  Costa Rica, Honduras, Mexico, Panama, United States, Chile,
2067	China, India, Bangladesh, Cambodia, Laos, Myanmar, Nepal, Thailand, Viet Nam, South Africa,
2068	Equatorial Guinea, South Africa, Angola, Botswana, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire,
2069	Russia, United States, Canada, Japan
2070	China, Spain, Portugal, France, United Kingdom, Albania, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia,
2071	China, Taiwan, Papua New Guinea, India, Bangladesh, Bhutan, Cambodia, Indonesia, Laos, Malaysia,
2072	Bangladesh, Cambodia, India, Indonesia, Laos, Myanmar, Thailand,  Viet Nam, Malaysia
2073	China, Mongolia, Portugal, France, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia,
2074	Belize, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, United States
2075	Belize, Colombia, Costa Rica, Guatemala,  Honduras, Mexico, Nicaragua, Panama, Venezuela
2076	Barbados, China, Hong Kong, Japan, South Korea, Mongolia, Taiwan, Spain,  Portugal, France,
2077	Angola, Antigua and Barbuda, Argentina, Bahamas, Barbados, Benin, Brazil, Cameroon, Canada, Colombia,
2078	Australia, Bangladesh, Brunei, Cambodia, Eritrea, Fiji, India, Indonesia,  Laos, Malaysia,
2079	Trinidad and Tobago, Ecuador, Bolivia, Brazil, Colombia,  Guyana, Peru, Suriname, Venezuela
2080	Argentina, Bolivia, Brazil, Paraguay, Peru, Uruguay
2081	Belize, Costa Rica, El Salvador,  Guatemala, Honduras, Mexico, Nicaragua, Panama, Canada, United States,
2082	China, Taiwan, India, Bangladesh, Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar,
2083	China, Japan, North Korea, South Korea, Finland, Belgium, Denmark, Norway, Sweden, Mexico,
2084	Grenada, Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,
2085	Bahamas,  Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Canada,
2086	Spain, France, Finland, United Kingdom, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia,
2087	Belize, Costa Rica, El Salvador,  Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia
2088	China, Taiwan, India, Bhutan, Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar,
2089	China, Hong Kong, Japan, North Korea, South Korea, Taiwan, Spain, France, Finland, United Kingdom,
2090	United States, Belize, Costa Rica, Uruguay, Guadeloupe, Antigua and Barbuda, Argentina, Bahamas, Barbados,  Bolivia,
2091	China, Mongolia, Finland, Norway, Sweden, Canada, United States, Russia, Kazakhstan
2092	China, Japan, North Korea, South Korea, Mongolia, Russia, Kazakhstan, Taiwan
2093	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama
2094	China, Mongolia, Spain, France, Albania, Andorra, Austria, Bosnia and Herzegovina, Bulgaria, Croatia,
2095	Bolivia, Brazil, Colombia, Ecuador, Guyana, Peru, Suriname, Trinidad and Tobago,  Venezuela
2096	Bahamas, Cuba, Dominican Republic, Jamaica, Belize, El Salvador, Mexico, Panama, Canada, United States,
2097	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Grenada, Guadeloupe,  Jamaica, Saint Kitts and Nevis,
2098	Cuba, Dominican Republic, Jamaica, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,
2099	Bahamas, Cuba, Dominican Republic, Guadeloupe, Jamaica, Belize, Costa Rica, Guatemala,  Honduras, Mexico,
2100	South Africa, Angola, Botswana, Burundi, Cameroon,  Central African Republic, Chad, DR Congo, Eritrea, Ethiopia,
2101	Argentina, Brazil, Paraguay  Neotropical
2102	Bahamas, Cuba, Dominican Republic, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Canada,
2103	China, Japan, Mongolia, Spain, Portugal, France, Finland, United Kingdom, Albania, Austria,
2104	Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Chile,
2105	Albania, Algeria, Angola, Antigua and Barbuda, Argentina, Armenia, Austria,  Azerbaijan, Bahamas, Barbados,
2106	Argentina, Brazil, Uruguay, South Africa, Angola, Mozambique, Namibia
2107	China, Spain, Portugal, France, Croatia, Italy, Morocco, Tunisia, Russia, Ukraine,
2108	Equatorial Guinea, South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic,  Chad,
2109	Bahamas, Cuba, Dominican Republic, Guadeloupe, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,
2110	Spain, Portugal, France, Finland, United Kingdom, Belgium,  Denmark, Estonia, Faroe Islands, Germany,
2111	China, North Korea, South Korea, Mongolia, Spain, Portugal, France, Albania,  Austria, Belgium,
2112	South Africa, Angola,  Botswana, Eritrea, Ethiopia, Kenya, Lesotho, Namibia, Somalia, South Sudan,
2113	Japan, Finland, Estonia, Latvia, Lithuania, Norway, Poland, Sweden, United States, Russia
2114	Bolivia, Brazil, Costa Rica, Ecuador, Guyana, Panama, Peru, Suriname, Trinidad and Tobago, Venezuela
2115	Bahamas, China, Japan, South Korea, Taiwan, El Salvador, Guatemala, Honduras, Mexico, Canada,
2116	India, Bangladesh, Bhutan, Cambodia, Myanmar, Sri Lanka, Thailand, Viet Nam, Pakistan
2117	China, Japan, North Korea, South Korea, Mongolia, Finland, Bosnia and Herzegovina, Bulgaria, Croatia, Estonia,
2118	Argentina, Belize, Bolivia,  Brazil, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala, Guyana,
2119	Bahamas, Cuba, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Canada, United States
2120	Algeria,  Egypt, Libya, Morocco, Tunisia, Western Sahara, Chad, Eritrea, Mali, Mauritania,
2121	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago,
2122	India, Bhutan, Laos, Myanmar, Nepal, Thailand, Viet Nam, Kazakhstan, Pakistan
2123	Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia, Brazil, Colombia,
2124	China, Hong Kong, Japan, North Korea, South Korea, Taiwan, Mexico, Canada, United States,  Russia
2125	Belize, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua   Neotropical, Nearctic
2126	Spain, Portugal, France, Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Germany, Greece,
2127	Spain, France, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Estonia, Germany,
2128	Russia, Canada, United States, Belgium, Czech Republic, Denmark, Faroe Islands, Finland, France, Germany,
2129	China, Mongolia, Spain, France, Finland, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Estonia,
2130	Argentina, Bolivia, Brazil, Colombia, Paraguay, Uruguay, Venezuela
2131	China, Japan, North Korea, South Korea, Taiwan, Russia, Philippines
2132	Russia, India, Sri Lanka, Sudan, Afghanistan, Armenia, Azerbaijan, Georgia, Iran, Iraq,
2133	Belize, El Salvador, Guatemala, Honduras, Mexico, Nicaragua
2134	Japan, Mexico, Canada,  United States, Russia
2135	Spain, Portugal, France, United Kingdom, Albania, Andorra, Austria, Bosnia and Herzegovina, Bulgaria, Croatia,
2136	China, Mongolia, Egypt, India, Yemen, Afghanistan, Bahrain, Iran, Iraq, Israel,
2137	South Africa, Botswana, DR Congo, Eritrea, Ethiopia, Kenya, Lesotho, Malawi, Mozambique, South Sudan,
2138	Spain, Portugal, France, United Kingdom, Ireland, Mexico, United States, Chile, Brazil, Guyana
2139	China, Hong Kong, Japan, North Korea, South Korea, Taiwan, Russia
2140	Antigua and Barbuda, Barbados, Cuba, Japan, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,
2141	Antigua and Barbuda, Bahamas, Spain, Portugal, France, Mexico, Algeria, Morocco, Western Sahara, Canada,
2142	Trinidad and Tobago, Brazil, Colombia, Guyana, Suriname, Venezuela
2143	China, Spain, Portugal, Albania, Bosnia and Herzegovina, Bulgaria, Croatia, Greece, Italy, Malta,
2144	Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara, Burkina Faso, Chad,  Djibouti, Eritrea,
2145	China, Albania, Bosnia and Herzegovina, Bulgaria, Romania,  Egypt, Russia, Ukraine, India, Djibouti,
2146	Papua New Guinea, Brunei, Indonesia, Malaysia, Myanmar, Thailand, Equatorial Guinea, South Africa, Angola, Benin,
2147	Trinidad and Tobago, Costa Rica, Nicaragua, Panama, Ecuador, Argentina,  Bolivia, Brazil, Colombia, Guyana,
2148	Canada, Guatemala, United States, Mexico, United Kingdom
2149	Andorra, Austria, Canada, China, Finland, France, Germany, Iceland, Italy, Japan,
2150	Algeria, Andorra, Austria, Azerbaijan, Belarus, Belgium, Bulgaria, Croatia, Cyprus, Czech Republic,
2151	Bahamas, Belize, Canada, Colombia, Costa Rica, Cuba, Dominican Republic, Ecuador, El Salvador, Guatemala,
2152	Canada, Belize, Costa Rica, Cuba, Nicaragua, Panama, El Salvador, Guatemala, Honduras, Mexico,
2153	Algeria, Austria, Azerbaijan, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, Denmark, Egypt,
2154	Andorra, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Cyprus, Czech Republic,
2155	Angola, Botswana, DR Congo, Swaziland, Kenya, Lesotho, South Africa, Zambia
2156	Cambodia, Indonesia, Laos, Myanmar, Thailand, Viet Nam
2157	Belarus, Belgium, China, Denmark, Estonia, Faroe Islands, Finland, France, Germany, Iceland,
2158	Angola, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Equatorial Guinea, Ethiopia, Gabon,
2159	Algeria,  Bhutan, Croatia, Cyprus, Egypt, Eritrea, Ethiopia, France, Greece, India,
2160	Algeria, Andorra, Austria, Azerbaijan,  Belarus, Belgium, Bulgaria, Croatia, Cyprus, Czech Republic,
2161	Finland, Russia, Ukraine, Belarus, China, Kazakhstan, Lithuania, Mongolia, Norway, Sweden,
2162	Bhutan, China, Hong Kong, India, Japan, Kazakhstan, South Korea, North Korea, Mongolia, Myanmar,
2163	Dominican Republic, Jamaica
2164	Andorra, Austria, Belarus, Bulgaria, China, Croatia, Czech Republic, Estonia, Finland, France,
2165	Portugal, Spain
2166	Solomon Islands, Australia, Papua New Guinea, Indonesia
2167	Bangladesh, Brunei, Cambodia, China, India, Indonesia, Laos, Malaysia,  Myanmar, Nepal,
2168	Afghanistan, Bangladesh, Bhutan, Cambodia, India, Laos, Myanmar, Nepal, Pakistan, Sri Lanka,
2169	Algeria, Denmark, Egypt, Finland, France, Germany, Greece, Iran, Iraq, Kuwait,
2170	Albania, Algeria, Armenia, Azerbaijan, Bangladesh, Belarus, Bhutan, Bosnia and Herzegovina, Bulgaria, China,
2171	Afghanistan, Andorra, Austria, Azerbaijan, Belarus, Belgium,  Bulgaria, Croatia, Cyprus, Czech Republic,
2172	Andorra, Austria, Azerbaijan, Belarus, Belgium, Bulgaria, Croatia, Czech Republic, Denmark, Estonia,
2173	India, Pakistan, Nepal, Afghanistan
2174	Afghanistan, Albania, Andorra, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bosnia and Herzegovina, China,
2175	Afghanistan, Albania, Algeria, Andorra, Armenia, Austria, Azerbaijan, Belarus, Belgium, Bhutan,
2176	Australia, New Zealand, Maldives, Sri Lanka, Argentina, Uruguay, Seychelles, South Africa
2177	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Belize,
2178	China, Hong Kong, Japan, South Korea, Mongolia, Taiwan, Spain, Portugal, France, Finland,
2179	United States, Canada, Cuba, Mexico, Jamaica, Bahamas, Finland, France, Iceland, Japan,
2180	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua, Panama, United States,
2181	Angola, Benin, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Equatorial Guinea, Gabon,
2182	China, Taiwan, India, Laos, Myanmar, Thailand, Viet Nam
2183	Mongolia, Finland, Estonia, Latvia, Lithuania, Sweden, Belarus, Russia,  India, Bangladesh,
2184	Egypt, South Africa, Angola, Benin, Botswana, Burundi, Cameroon, Central African Republic, Chad, Congo,
2185	Indonesia,  Papua New Guinea
2186	Dominican Republic, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Panama, Ecuador, Chile, Argentina,
2187	Spain,  France, Finland, United Kingdom, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia,
2188	Albania, Bulgaria,  Croatia, Greece, Hungary, Italy, Montenegro, Romania, Serbia, Algeria,
2189	Antigua and Barbuda, Barbados, Dominica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Japan, Belize, Costa Rica, Mexico,
2190	South Africa, Angola, Botswana, Malawi,  Mozambique, Namibia, Zambia, Zimbabwe
2191	China, Japan, North Korea, South Korea, Mongolia,  Taiwan, Spain, France, Finland, Albania,
2192	Angola, Botswana, DR Congo, Ethiopia, Malawi, Mozambique, Namibia, South Africa, Tanzania, Zambia,
2193	Antigua and Barbuda, Barbados, Dominica, Grenada, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Ecuador,
2194	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Guadeloupe, Jamaica, Trinidad and Tobago, China,
2195	Antigua and Barbuda, Bahamas, Cuba, Dominican Republic, Guadeloupe, Jamaica, Belize, Guatemala, Honduras, Mexico,
2196	Cuba, Dominican Republic, Belize, Guatemala, Honduras, Mexico, Nicaragua, Ecuador, Argentina, Bolivia,
2197	Algeria, Egypt, Western Sahara, South Africa, Angola, Benin, Botswana, Burkina Faso, Cameroon, Central African Republic,
2198	Antigua and Barbuda, Bahamas, Barbados,  Cuba, Dominica, Dominican Republic, Grenada, Jamaica, Saint Kitts and Nevis, Saint Lucia,
2199	South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi,  Cameroon, Central African Republic, Chad, Congo,
2200	China, Spain, Portugal, France, United Kingdom, Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia,
2201	Cuba, Dominican Republic, Jamaica
2202	Belize, Costa Rica, Guatemala, Honduras,  Mexico, Nicaragua, United States
2203	Grenada
2204	India, Bangladesh, Bhutan, Myanmar, Nepal, Sri Lanka, Pakistan
2205	China, India, Bhutan, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Nepal, Thailand,
2206	Bahamas, Barbados, Cuba, Dominican Republic, Grenada, Guadeloupe, Saint Vincent and the Grenadines, Trinidad and Tobago, Spain, Portugal,
2207	Antigua and Barbuda, Bahamas,  Barbados, Cuba, Dominica, Dominican Republic, Grenada, Guadeloupe, Jamaica, Saint Kitts and Nevis,
2208	Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Colombia, Peru, Venezuela
2209	Spain, Portugal, Albania, Bosnia and Herzegovina, Bulgaria, Greece, Italy, Malta, Montenegro, Serbia,
2210	Mozambique, South Africa, Swaziland
2211	China, India, Bangladesh, Bhutan, Cambodia, Laos, Myanmar, Nepal, Thailand, Viet Nam,
2212	Dominican Republic, Jamaica, Belize, Costa Rica, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua
2213	Cuba, Dominica, Jamaica, Saint Lucia, Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Mexico,
2214	Egypt, Central African Republic,  Chad, Djibouti, Eritrea, Ethiopia, Kenya, Mali, Niger, Nigeria,
2215	Antigua and Barbuda, Barbados, Costa Rica, Mexico, Canada, United States, Ecuador, Chile, Argentina, Bolivia,
2216	China, Hong Kong, Japan, North Korea, South Korea, Macao, Taiwan, Russia, Australia, Papua New Guinea,
2217	Belize, Mexico
2218	Dominica, Guadeloupe, Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,
2219	South Africa, Angola, Botswana, Gabon, Lesotho, Mozambique, Namibia,  Zambia, Zimbabwe
2220	India, Bangladesh, Nepal, Pakistan  Indomalayan
2221	China, Japan, South Korea, Taiwan, United States, Australia, Kiribati, Fiji, Marshall Islands, Federated States of Micronesia,
2222	China, Japan, Taiwan, Egypt, Australia, Kiribati, Papua New Guinea, Fiji, Marshall Islands, Federated States of Micronesia,
2223	India, Bhutan, Nepal, Afghanistan, Pakistan
2224	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Grenada, Guadeloupe, Saint Kitts and Nevis,  Saint Lucia,
2225	Japan, United States, Russia
2226	China, Hong Kong, Japan, North Korea, Mongolia, Taiwan, Russia, India, Bangladesh, Laos,
2227	China, Japan, North Korea, South Korea, Mongolia, Taiwan, Spain, France, Finland, Albania,
2228	South Africa, Angola, Mozambique,  Namibia
2229	Spain, Algeria, Egypt, Libya,  Morocco, Tunisia, India, Sri Lanka, Timor-Leste, Equatorial Guinea,
2230	Trinidad and Tobago, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru,
2231	Djibouti, Eritrea, Ethiopia, Kenya, Somalia, Sudan
2232	China, Japan, Taiwan, Guatemala, Honduras, Mexico, Nicaragua, United States, Australia, Kiribati,
2233	Spain, Albania, Bosnia and Herzegovina, Bulgaria, Croatia, Greece, Hungary, Montenegro, Romania, Serbia,
2234	China, Hong Kong, Japan, North Korea, South Korea, Taiwan, Russia, Brunei, Indonesia, Malaysia,
2235	China, Hong Kong, Japan,  North Korea, South Korea, Mongolia, Taiwan, Russia, Viet Nam
2236	Grenada, Saint Vincent and the Grenadines, Trinidad and Tobago, Colombia, Venezuela
2237	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Grenada,  Guadeloupe, Jamaica, Saint Kitts and Nevis,
2238	Bahamas, Cuba, Dominican Republic, Belize, Costa Rica, El Salvador,  Guatemala, Honduras, Mexico, Canada,
2239	South Africa, Angola, Botswana, Burundi, DR Congo, Kenya, Malawi, Mozambique, Namibia, Rwanda,
2240	Cuba, China, Japan, Taiwan, Spain, Portugal, France, United Kingdom, Austria, Belgium,
2241	China, India, Bangladesh, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Nepal, Thailand,
2242	China, Hong Kong, Japan, Taiwan, Egypt, India, Bangladesh, Brunei, Cambodia, Indonesia,
2243	China, Mongolia, Spain, Portugal, France, Finland, United Kingdom, Austria, Belgium, Bosnia and Herzegovina,
2244	United Kingdom, Denmark, Faroe Islands, Iceland, Ireland, Netherlands, Canada, United States
2245	China, Mongolia, Finland, Austria, Estonia, Germany, Latvia, Lithuania, Poland, Slovakia,
2246	Argentina, Bolivia,  Brazil, Paraguay, Uruguay
2247	Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo, Cote d'Ivoire, Djibouti, Eritrea, Ethiopia, Gabon, Gambia, Kenya, Lesotho, Liberia, Madagascar, Malawi, Mali, Mauritania, Mozambique, Namibia, Niger, Nigeria, Rwanda, Senegal, Sierra Leone, Somalia, Sudan, Uganda, Zimbabwe, Oman, Ghana
2248	Egypt, Yemen, Israel, Jordan, Lebanon, Oman, Palestine, Saudi Arabia, Syria, Turkey,
2249	Ecuador   Neotropical
2250	Spain, Portugal, France, Albania, Bosnia and Herzegovina, Bulgaria, Croatia, Estonia, Greece, Hungary,
2251	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Colombia, Venezuela
2252	Japan, Australia, Papua New Guinea, New Zealand, Palau, Solomon Islands, Vanuatu, Indonesia, Timor-Leste
2253	Ecuador,  Chile, Peru
2254	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, United Kingdom, Denmark, Germany,
2255	Belarus, Estonia, Finland, Kazakhstan, Latvia, Lithuania, Russia, Angola, Benin, Botswana,
2256	China, Hong Kong,  Japan, North Korea, South Korea, Mongolia, Taiwan, Spain, Portugal, France,
2257	Antigua and Barbuda, Bahamas, Barbados,  Cuba, Dominica, Dominican Republic, Grenada, Guadeloupe, Jamaica, Saint Kitts and Nevis,
2258	China, Hong Kong, Mongolia, Taiwan, Canada, United States, Russia, Australia, Federated States of Micronesia, Palau,
2259	France, Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Denmark, Germany, Greece, Hungary,
2260	Colombia, Guyana, Venezuela
2261	China, Hong Kong, Australia, Papua New Guinea, India, Bangladesh, Cambodia, Indonesia, Laos, Malaysia,
2262	Antigua and Barbuda, Bahamas,  Barbados, Cuba, Dominica, Dominican Republic, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago,
2263	Australia, Chile, Argentina
2264	Antigua and Barbuda,  Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Grenada, Guadeloupe, Jamaica, Saint Kitts and Nevis,
2265	Antigua and Barbuda,  Barbados, Grenada, Guadeloupe, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Belize, Costa Rica, El Salvador,
2266	China, Japan, North Korea, India, Bangladesh, Bhutan, Laos, Myanmar, Nepal, Thailand,
2267	Cambodia, Indonesia, Malaysia, Thailand, Viet Nam
2268	Bahamas, Dominican Republic, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,
2269	El Salvador, Guatemala, Honduras, Mexico,  Nicaragua, Canada, United States
2270	Canada, China, Japan, North Korea, South Korea, Mexico, Russia, Taiwan, United States
2271	Eritrea, Somalia, Yemen, Bahrain, Iran, Kuwait, Oman, Qatar, Saudi Arabia, United Arab Emirates
2272	Australia, Argentina, Brazil, Uruguay, South Africa
2273	China, India, Bangladesh, Bhutan, Myanmar, Nepal,  Sri Lanka, Pakistan
2274	China, Japan, North Korea, South Korea, Taiwan, Russia, India, Bhutan, Laos, Myanmar,
2275	Antigua and Barbuda, Barbados, Dominica, Grenada, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Brazil,
2276	South Korea, Russia
2277	Angola, Botswana, DR Congo, Kenya, Lesotho, Malawi, Mozambique, Namibia, South Africa, Tanzania,
2278	Costa Rica, Ecuador, Chile, Colombia, Peru
2279	Spain, Algeria, Libya, Morocco, Tunisia
2280	China, Japan, North Korea, Mongolia, France, Finland, Albania, Austria, Bosnia and Herzegovina, Bulgaria,
2281	China, Hong Kong, Japan, North Korea, South Korea, Taiwan, United States, Russia, Australia, Papua New Guinea,
2282	Panama, Ecuador, Bolivia, Colombia, Peru, Venezuela
2283	Argentina, Belize, Bolivia, Brazil, Colombia, Costa Rica, Ecuador, El Salvador, Guatemala,  Guyana,
2284	China, Japan, North Korea, South Korea, Mongolia, Spain, Portugal, France, Albania, Austria,
2285	United States, Russia, Norway
2286	Equatorial Guinea, Angola, Benin, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon, Gambia,
2287	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States
2288	Spain, France, Finland, United Kingdom, Austria, Belgium, Bulgaria, Croatia, Denmark, Estonia,
2289	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, Spain, France, Albania,
2290	South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad,  Congo,
2291	Ecuador, Argentina, Bolivia, Colombia, Peru, Venezuela
2292	Bulgaria, Greece, Montenegro, Serbia, Egypt, Central African Republic, Chad, Djibouti, Eritrea, Ethiopia,
2293	Cuba, Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,
2294	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Panama, Canada, United States, Russia,
2295	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Guadeloupe, Jamaica, Saint Kitts and Nevis,  Saint Lucia,
2296	Costa Rica, El Salvador, Guatemala, Honduras, Nicaragua
2297	Australia, New Zealand, Fiji, Ecuador, Chile, Argentina, Brazil, Colombia, Peru, Uruguay,
2298	India, Bangladesh, Bhutan, Myanmar, Nepal, Sri Lanka
2299	Bangladesh, Comoros, Djibouti, Egypt, Eritrea, India, Iran, Iraq, Kenya, Kuwait,
2300	Bahamas, Cuba, Dominican Republic, Jamaica, Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras,
2301	Egypt, Libya, Mauritius,  South Africa, Chad, Djibouti, Eritrea, Kenya, Madagascar, Malawi,
2302	Argentina, Bolivia, Brazil, Paraguay, Uruguay  Neotropical
2303	United Kingdom, Albania, Bosnia and Herzegovina, Bulgaria, Croatia, Greece, Italy, Montenegro, Romania, Serbia,
2304	Spain, Portugal, France, Finland, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia,
2305	Cayman Islands, Haiti
2306	South Africa, Angola, Burundi, DR Congo, Ethiopia, Kenya, Malawi, Mozambique, Rwanda, Somalia,
2307	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, Spain, France, Finland,
2308	India, Bangladesh, Bhutan, Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Nepal,
2309	Argentina,  Bolivia, Brazil, Paraguay
2310	Spain, Portugal, France, United Kingdom, Albania, Andorra, Austria, Bosnia and Herzegovina, Bulgaria,  Croatia,
2311	Iceland, Ireland, Netherlands, Norway, Poland, Sweden
2312	Eritrea, Ethiopia,  Kenya, Somalia, South Sudan, Sudan, Tanzania, Uganda
2313	Uruguay, Argentina, Bolivia, Brazil, Paraguay
2314	China, Japan, South Korea, Mongolia, Finland, Denmark, Estonia, Latvia, Lithuania, Norway,
2315	Trinidad and Tobago, Chile, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Suriname, Uruguay,
2316	South Africa, Kenya, Malawi, Mozambique, Somalia, Tanzania, Zambia, Zimbabwe
2317	Antigua and Barbuda, Bahamas, Barbados, Dominica, Dominican Republic, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Belize,
2318	Eritrea, Ethiopia, South Sudan,  Sudan
2319	China, Hong Kong, Mongolia, Taiwan, Finland, Norway, Sweden, United States, Russia, Brunei,
2320	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Canada, United States, Colombia
2321	United States, Kiribati, New Zealand, Fiji, Marshall Islands, Federated States of Micronesia, Nauru, Samoa, Solomon Islands, Tonga,
2322	Ecuador, Bolivia, Brazil, Colombia, Guyana,  Peru
2323	Trinidad and Tobago, Brazil, Guyana, Suriname, Venezuela  French Guiana
2324	Spain, Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Greece, Hungary,  Montenegro, Poland,
2325	South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Chad, DR Congo, Cote d'Ivoire,
2326	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, Russia, India, Bhutan,
2327	Antigua and Barbuda, Barbados, Dominica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Belize, Costa Rica, Guatemala,
2328	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, United States, Russia, Australia,
2329	Saint Vincent and the Grenadines
2330	China, Taiwan, India, Bangladesh, Bhutan, Cambodia, Indonesia, Laos, Myanmar, Nepal,
2331	Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia,
2332	Barbados, Cuba, Dominican Republic, Grenada, Jamaica, Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala,
2333	Algeria, South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad,
2334	China, North Korea, South Korea, Mongolia, Russia
2335	Bahamas, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States,
2336	China, Japan, Taiwan,  India, Bangladesh, Brunei, Cambodia, Indonesia, Laos, Malaysia,
2337	Costa Rica, Nicaragua, Panama, Ecuador, Argentina,  Bolivia, Brazil, Colombia, Guyana, Paraguay,
2338	China, Japan, South Korea, Taiwan, India, Bangladesh, Brunei, Cambodia, Indonesia, Laos,
2339	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, Finland, Austria, Estonia,
2340	South Africa, Angola, Botswana, Burkina Faso, Cameroon, Chad, DR Congo, Eritrea, Ethiopia, Gambia,
2341	South Africa, Angola,  Botswana, Burundi, DR Congo, Kenya, Lesotho, Mozambique, Namibia, Rwanda,
2342	China, Japan, North Korea, South Korea, Taiwan, Canada, United States,  Russia
2343	Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Uruguay,
2344	Spain, Greece, Hungary, Ireland, Malta, Algeria, Egypt, Libya, Morocco, Tunisia,
2345	China, Japan, North Korea, South Korea, Taiwan, Russia, India, Brunei, Cambodia, Indonesia,
2346	China, Japan, North Korea, South Korea, Taiwan, Russia
2347	Belize, Guatemala, Honduras, Mexico, United States
2348	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominica, Dominican Republic, Grenada, Guadeloupe, Jamaica,  Saint Kitts and Nevis,
2349	Australia, New Zealand, Chile, Peru
2350	China, Mongolia, Russia, Kazakhstan,  Kyrgyzstan, Tajikistan, Turkmenistan, Uzbekistan
2351	Panama, Argentina, Bolivia, Brazil, Colombia, Paraguay, Uruguay, Venezuela
2352	Spain, Algeria, Morocco, Tunisia, Western Sahara
2353	Trinidad and Tobago, Costa Rica, Panama, Colombia, Guyana, Suriname, Venezuela
2354	India, Iran, Pakistan
2355	Ecuador, Bolivia, Brazil, Colombia, Peru, Suriname  United States
2356	Trinidad and Tobago, Nicaragua, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay,
2357	Trinidad and Tobago, Belize, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Argentina, Bolivia,
2358	China, Mongolia, Spain, France,  Albania, Andorra, Austria, Bosnia and Herzegovina, Germany, Greece,
2359	Trinidad and Tobago, Panama, Ecuador, Chile, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay,
2360	Guatemala, Mexico, United States  Neotropical, Nearctic
2361	Chile, Argentina, Bolivia, Brazil, Paraguay, Uruguay
2362	China, India, Bangladesh, Myanmar, Nepal, Iran, Pakistan
2363	Spain, France, Finland, Albania, Austria, Belgium, Bosnia and Herzegovina, Bulgaria, Croatia, Estonia,
2364	Costa Rica, Panama, Brazil, Colombia, Guyana, Suriname, Venezuela
2365	South Africa, Angola, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire,
2366	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia, Brazil,
2367	Trinidad and Tobago, Costa Rica, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay,
2368	Costa Rica, El Salvador, Mexico, Nicaragua, Panama,  United States, Ecuador, Chile, Colombia, Peru
2369	India, Singapore, Sri Lanka
2370	Ethiopia, Kenya, Somalia, Tanzania
2371	Ecuador, Chile, Argentina, Bolivia, Brazil, Colombia, Guyana, Peru, Venezuela
2372	Spain, Portugal, France, Albania, Bosnia and Herzegovina, Croatia, Greece, Italy, Malta, Monaco,
2373	Portugal
2374	China, India, Bhutan, Myanmar, Nepal, Afghanistan, Kazakhstan, Kyrgyzstan, Pakistan, Tajikistan,
2375	Ecuador, Argentina, Bolivia, Brazil, Paraguay, Peru
2376	South Africa, Angola, Botswana, Eritrea, Ethiopia, Kenya, Mozambique, Namibia, Somalia, Tanzania,
2377	Chile, Argentina, Bolivia,  Peru
2378	Belize, Guatemala, Mexico, Canada, United States
2379	Antigua and Barbuda, Barbados, Dominica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Belize, Costa Rica, El Salvador,
2380	Chile, Argentina, Bolivia
2381	Ecuador, Bolivia, Brazil,  Colombia, Guyana, Peru, Suriname, Venezuela
2382	China, Hong Kong, North Korea, South Korea, Mongolia, Russia, Laos, Thailand, Viet Nam
2383	Spain, Portugal, France, Albania,  Bosnia and Herzegovina, Bulgaria, Croatia, Greece, Italy, Montenegro,
2384	South Africa, Angola, Benin, Botswana, Burkina Faso, Cameroon, Central African Republic, Chad, Eritrea, Ethiopia,
2385	Antigua and Barbuda, Barbados, Dominica, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Belize, Costa Rica,
2386	Algeria,  Egypt, Libya, Morocco, Tunisia, Western Sahara, India, Chad, Djibouti, Eritrea,
2387	Spain, Portugal, Costa Rica, Australia, New Zealand, Indonesia, Ecuador, Chile, Peru, Uruguay,
2388	China, Mongolia, Spain, Portugal, France, Albania, Andorra, Austria, Bosnia and Herzegovina, Bulgaria,
2389	Antigua and Barbuda, Barbados, Cuba,  Dominica, Dominican Republic, Grenada, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines,
2390	Antigua and Barbuda, Barbados, Dominica, Grenada, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines
2391	South Africa, Botswana, Mozambique, Namibia, Zambia, Zimbabwe
2392	China, Hong Kong, Japan, North Korea,  South Korea, Macao, Taiwan, Russia
2393	Russia, Iran, Kazakhstan
2394	China, Hong Kong, Japan, South Korea, Mongolia, Taiwan, Finland, Norway, Sweden, Russia,
2395	China,  Spain, Portugal, France, Finland, United Kingdom, Albania, Austria, Belgium, Bosnia and Herzegovina,
2396	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,  Nicaragua, Panama, Colombia, Peru
2397	Australia, Papua New Guinea, Fiji, Solomon Islands,  Vanuatu, Indonesia
2398	China, India, Bangladesh, Bhutan, Indonesia, Laos, Malaysia, Myanmar, Nepal, Thailand,
2399	Belize, Costa Rica, El Salvador, Guatemala, Honduras,  Mexico, Nicaragua, Panama, Ecuador, Colombia,
2400	Dominica, Dominican Republic, Costa Rica, Panama, United States
2401	China, Spain, France, Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Estonia, Germany,
2402	Australia, New Zealand, Chile, Argentina, South Africa
2403	Australia, Papua New Guinea, Solomon Islands, Indonesia
2404	Benin, Burkina Faso, Cameroon, Central African Republic, DR Congo, Cote d'Ivoire, Gambia, Ghana, Guinea, Guinea-Bissau,
2405	Australia, Papua New Guinea, New Zealand, Solomon Islands, Vanuatu, Indonesia, Timor-Leste
2406	Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Uruguay,
2407	China, Hong Kong, Japan, South Korea, Taiwan, Philippines
2408	Equatorial Guinea, Angola, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon, Ghana,
2409	Spain, Portugal, France, United Kingdom, Belgium, Bulgaria, Croatia, Germany, Italy, Latvia,
2410	Japan, Canada, United States, Russia
2411	China, Taiwan, India, Bangladesh, Bhutan, Cambodia, Laos, Myanmar, Nepal, Philippines,
2412	Egypt, Benin, Burkina Faso, Cameroon, Central African Republic, Chad, Djibouti, Eritrea, Ethiopia, Gambia,
2413	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador,  Colombia,
2414	Belize, Costa Rica, El Salvador,  Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia,
2415	China, India, Bangladesh, Bhutan, Cambodia, Laos, Myanmar, Nepal,  Thailand, Viet Nam
2416	South Africa, Angola, Burundi, DR Congo, Ethiopia, Kenya, Malawi, Mozambique, Namibia, Rwanda,
2417	China, Brunei, Cambodia, Indonesia, Laos, Malaysia, Singapore, Thailand, Viet Nam
2418	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States
2419	Australia, New Zealand, Peru
2420	Chile, Argentina, Peru
2421	China, Mongolia,  Finland, Russia, India, Bangladesh, Nepal, Sri Lanka, Afghanistan, Azerbaijan,
2422	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Canada, United States, Russia, Australia, Kiribati,
2423	United States, Argentina, Bolivia, Brazil, Paraguay, Uruguay
2424	Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname,  Venezuela
2425	China, Mongolia, Finland, United Kingdom, Albania, Austria, Bosnia and Herzegovina, Bulgaria, Croatia, Denmark,
2426	Ecuador, Chile, Argentina, Bolivia, Peru
2427	Antigua and Barbuda, Cuba, Dominica, Dominican Republic, Grenada, Guadeloupe, Jamaica, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago,
2428	Equatorial Guinea, South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Congo,
2429	Antigua and Barbuda, Bahamas, Barbados, Cuba, Dominican Republic, Grenada,  Guadeloupe, Jamaica, Saint Kitts and Nevis, Saint Lucia,
2430	Trinidad and Tobago, Bolivia, Brazil, Colombia, Guyana, Paraguay, Suriname, Venezuela
2431	Belize, Guatemala, Honduras, Mexico, Nicaragua, United States, Ecuador, Bolivia, Colombia, Peru,
2432	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Panama, Canada, United States, Ecuador, Chile,
2433	Spain, Portugal, France, Andorra, Austria, Belgium, Germany, Italy, Liechtenstein, Malta,
2434	Panama, Colombia, Venezuela
2435	Brunei, Indonesia, Malaysia, Myanmar, Thailand, Singapore
2436	Ecuador, Chile, Argentina, Bolivia, Colombia, Paraguay, Peru, Uruguay
2437	Brunei, Indonesia, Malaysia, Myanmar, Singapore
2438	Australia,  New Zealand, Ecuador, Chile, Argentina, Brazil, Peru, Uruguay, South Africa, Angola,
2439	Equatorial Guinea,  South Africa, Angola, Botswana, Burkina Faso, Cameroon, Chad, Congo, DR Congo, Cote d'Ivoire,
2440	Australia, New Zealand,  Ecuador, Chile, Argentina, Brazil, Peru, Uruguay, South Africa, Madagascar,
2441	Costa Rica, El Salvador, Honduras, Mexico, Nicaragua, United States
2442	Bahamas, Cuba, Jamaica, United States
2443	Belize, Guatemala, Mexico, United States
2444	Belize,  Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama
2445	China, India, Bangladesh, Bhutan, Cambodia, Laos, Myanmar, Nepal, Thailand, Viet Nam
2446	Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Suriname, Uruguay, Venezuela
2447	South Africa, Angola, Congo, Mozambique, Namibia
2448	South Africa, Angola, Botswana, Lesotho, Mozambique, Namibia, Zimbabwe
2449	Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Argentina,
2450	Australia, New Zealand, Chile, Peru, South Africa, Namibia
2451	Antigua and Barbuda, Bahamas, Cuba, Dominican Republic, Guadeloupe, Jamaica, Saint Kitts and Nevis
2452	Angola, Botswana, DR Congo, Kenya, Malawi, Mozambique, Namibia, Tanzania, Zambia,  Zimbabwe
2453	Ecuador, Bolivia, Brazil, Colombia, Guyana,  Peru, Suriname, Venezuela
2454	Trinidad and Tobago, Panama, Ecuador, Argentina, Bolivia, Brazil,  Colombia, Guyana, Paraguay, Peru,
2455	Egypt, Armenia, Cyprus, Georgia, Iran, Iraq, Israel, Jordan, Palestine, Syria,
2456	China, Mongolia, Italy, Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara, Russia,
2457	Bolivia,  Peru
2458	Australia, Papua New Guinea, Federated States of Micronesia, Solomon Islands, Indonesia, Timor-Leste
2459	Trinidad and Tobago, Brazil, Colombia, Peru, Venezuela
2460	Spain, Portugal, France, United Kingdom, Andorra, Austria, Belgium, Croatia, Germany, Italy,
2461	France
2462	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States
2463	Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara, India, Burkina Faso, Chad, Djibouti,
2464	China, India, Bangladesh, Bhutan, Cambodia, Laos, Myanmar, Nepal, Sri Lanka, Thailand,
2465	Cote d'Ivoire, Eritrea, Ethiopia, Gambia, Ghana, Guinea, Guinea-Bissau, Kenya, Lesotho, Malawi, Mali, Mauritania, Mozambique, Namibia, Niger, Nigeria, Rwanda, Senegal, Sierra Leone, Somalia, South Sudan, Sudan, Tanzania,  Togo, Uganda, Zambia, Zimbabwe
2466	Bahamas, Belize, Guatemala, Mexico, Canada, United States
2467	Bahamas, Dominican Republic, Trinidad and Tobago, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,  Nicaragua, United States,
2468	China, Japan,  North Korea, South Korea, Taiwan, Russia, India, Bangladesh, Bhutan, Laos,
2469	Dominica  Neotropical
2470	Panama, Brazil, Colombia, Guyana, Suriname,  Venezuela
2471	China, Mongolia, Iran, Kazakhstan, Kyrgyzstan, Tajikistan, Turkmenistan, Uzbekistan
2472	DR Congo, Malawi, Mozambique, South Africa, Tanzania, Zambia, Zimbabwe, Kenya, Uganda
2473	China,  Hong Kong, Japan, South Korea, Taiwan, Russia, Indonesia, Malaysia, Philippines
2474	Japan, South Korea, Mexico, Canada, United States, Russia, Australia, New Zealand, Fiji, Marshall Islands,
2475	Trinidad and Tobago, Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia,
2476	Australia, New Zealand, Vanuatu, Chile, Argentina, Brazil, Peru, Uruguay, South Africa, Angola,
2477	Antigua and Barbuda, Bahamas, Dominica, Dominican Republic, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Venezuela
2478	Algeria, Egypt, Libya,  Morocco, Tunisia, Western Sahara,  Mauritania, Iraq, Israel, Jordan,
2479	Antigua and Barbuda, Barbados, Dominica, Grenada, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Belize, Costa Rica,
2480	India, Bangladesh, Cambodia, Laos, Myanmar, Nepal, Sri Lanka, Thailand, Viet Nam, Pakistan  Indomalayan
2481	China, Mongolia, Egypt, Russia, India,  Nepal, Cameroon,  Chad, DR Congo, Djibouti,
2482	Ecuador, Chile, Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru, Uruguay
2483	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Colombia, Venezuela
2484	Equatorial Guinea, Mauritius, South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic,
2485	Albania, Bosnia and Herzegovina, Bulgaria, Croatia,  Greece, Montenegro, Romania, Serbia, Slovenia, Azerbaijan,
2486	Australia, New Zealand, Argentina, South Africa
2487	Belize,  Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, United States
2488	South Africa, Angola, Benin, Burundi, Cameroon, Central African Republic, DR Congo, Cote d'Ivoire, Eritrea, Ethiopia,
2489	Trinidad and Tobago, Costa Rica, Guatemala, Honduras, Nicaragua, Panama, Ecuador, Argentina, Bolivia, Brazil,
2490	China, India, Laos, Malaysia, Myanmar, Nepal, Thailand, Viet Nam, Pakistan
2491	Costa Rica, Panama, Colombia
2492	Cuba, Dominican Republic, Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Mexico, Panama, United States,
2493	Argentina, Bolivia, Brazil, Paraguay, Peru, Suriname
2494	Ecuador, Argentina, Bolivia, Brazil, Colombia,  Guyana, Paraguay, Peru,  Venezuela
2495	Chile, Argentina, Bolivia,  Brazil, Paraguay, Uruguay
2496	El Salvador, Guatemala, Honduras, Mexico,  Nicaragua, United States
2497	South Africa, Lesotho, Namibia
2498	Spain, Portugal, France, Andorra
2499	Chile, Argentina, Brazil, Uruguay
2500	India, Bangladesh, Bhutan, Cambodia, Laos, Myanmar, Nepal, Thailand, Viet Nam, Pakistan
2501	Spain, Portugal, Algeria, Morocco,  Tunisia, Western Sahara, Guinea-Bissau, Mali, Mauritania
2502	South Africa, Angola,  Botswana, Burundi, Congo,  DR Congo, Kenya, Malawi, Mozambique, Namibia,
2503	China, Japan, Taiwan, Spain, Portugal, Morocco, United States, Kiribati, Marshall Islands, Federated States of Micronesia,
2504	Argentina, Bolivia, Brazil, Paraguay  Neotropical
2505	Chile,  Argentina
2506	Trinidad and Tobago, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana,  Paraguay, Peru,
2507	China, Taiwan, India, Bangladesh,  Brunei, Cambodia, Indonesia, Laos, Malaysia, Myanmar,
2508	India  Indomalayan
2509	Trinidad and Tobago, Belize, Costa Rica,   El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador,
2510	Belize, Costa Rica, Guatemala, Honduras,  Mexico, Nicaragua, Panama, Colombia, Venezuela
2511	India, Bangladesh, Nepal, Sri Lanka, Pakistan  Indomalayan
2512	Trinidad and Tobago, Costa Rica, Panama, Ecuador, Chile, Argentina, Bolivia, Brazil, Colombia, Guyana,
2513	Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Nicaragua, Panama, Ecuador, Bolivia, Brazil,
2514	China, Japan, South Korea, Mongolia, Bulgaria, Greece, Montenegro, Romania, Serbia, Egypt,
2515	Belize, Costa Rica,  El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama
2516	Belize, Costa Rica, El Salvador, Guatemala, Mexico, Nicaragua, Panama, Canada, United States, Ecuador,
2517	South Africa, Angola, Botswana, Mozambique, Namibia, Zambia, Zimbabwe
2518	Benin, Burkina Faso, Cameroon, Cote d'Ivoire, Gambia, Ghana, Guinea, Guinea-Bissau, Mali,  Niger,
2519	Trinidad and Tobago, Mexico, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname,
2520	Trinidad and Tobago, Belize, Guatemala, Honduras, Nicaragua, Panama, Ecuador, Argentina, Bolivia, Brazil,
2521	Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua,  Panama, Ecuador, Bolivia,
2522	Trinidad and Tobago, Ecuador, Brazil, Colombia, Guyana, Peru, Suriname,  Venezuela
2523	South Africa, Angola,  Botswana, DR Congo, Malawi, Mozambique, Namibia, Tanzania, Zambia, Zimbabwe
2524	Australia, Papua New Guinea, Solomon Islands, Vanuatu, India, Brunei, Indonesia, Malaysia, Myanmar, Philippines,
2525	China, Russia, India, Sri Lanka, Afghanistan, Iran, Kazakhstan, Kuwait, Kyrgyzstan, Oman,
2526	Chile, Argentina, Brazil, Paraguay, Peru, Uruguay
2527	South Africa, Angola, Botswana, DR Congo, Lesotho, Malawi, Mozambique, Namibia, Zambia, Zimbabwe
2528	Ecuador, Chile, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Uruguay,
2529	China, Egypt, India, Bangladesh, Laos, Myanmar, Nepal, Sri Lanka, Thailand, Viet Nam,
2530	Australia, South Africa, Mozambique, Namibia
2531	China, India, Bangladesh, Cambodia, Laos, Myanmar, Nepal, Sri Lanka, Thailand, Viet Nam,
2532	Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana,
2533	Angola,  Burundi, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon, Ghana, Guinea,
2534	Cambodia, Indonesia, Laos
2535	China, Japan, North Korea, South Korea, Taiwan, Russia, India, Bangladesh, Bhutan, Cambodia,
2536	Argentina, Brazil, Uruguay, South Africa, Namibia
2537	China,  India, Bhutan, Laos, Myanmar, Thailand, Viet Nam
2538	Angola, Central African Republic, Congo, DR Congo, Gabon
2539	Australia,  Indonesia
2540	Trinidad and Tobago, Costa Rica, Panama, Ecuador, Colombia, Peru, Venezuela
2541	Trinidad and Tobago, Ecuador, Chile, Argentina, Bolivia,  Brazil, Colombia, Peru, Venezuela, South Africa,
2542	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon, Ghana, Guinea,
2543	Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Bolivia, Brazil, Colombia, Peru
2544	South Africa,  Angola, Botswana, Lesotho, Mozambique, Namibia, Zambia, Zimbabwe
2545	Argentina,  Bolivia, Brazil, Paraguay, Peru, Suriname
2546	Antigua and Barbuda, Barbados, Dominica, Grenada, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines,  Trinidad and Tobago, Panama, Ecuador,
2547	Equatorial Guinea, Angola, Cameroon, Central African Republic,  Congo, DR Congo, Cote d'Ivoire, Gabon, Ghana, Guinea,
2548	South Africa, Angola, Burundi, Congo, DR Congo, Gabon, Kenya, Malawi, Mozambique,  Namibia,
2549	Finland, Austria, Bosnia and Herzegovina, Bulgaria,  Croatia, Denmark, Estonia, Germany, Greece, Hungary,
2550	China, India, Bangladesh, Laos, Viet Nam
2551	Japan,  United States, Russia
2552	South Africa, Angola, Botswana, DR Congo, Eritrea, Ethiopia, Kenya,  Lesotho, Namibia, Rwanda,
2553	Trinidad and Tobago
2554	China, Mongolia, Russia, India, Bangladesh, Bhutan,  Laos, Myanmar, Nepal, Thailand,
2555	Trinidad and Tobago, Brazil, Colombia, Guyana, Venezuela
2556	Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama,  United States, Ecuador,
2557	Bahamas, Cuba, Dominican Republic, Mexico, United States
2558	Equatorial Guinea, South Africa, Angola, Burundi,  Cameroon, Central African Republic, Congo, DR Congo, Eritrea, Ethiopia,
2559	China, Japan, North Korea, South Korea, Mongolia,  Taiwan, Russia, India, Bangladesh, Brunei,
2560	Brazil, Colombia, Guyana, Suriname, Venezuela  French Guiana
2561	Egypt, Djibouti, Eritrea, Somalia, Sudan, Yemen, Israel, Jordan, Saudi Arabia
2562	Belize, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Colombia, Venezuela
2563	China, Egypt, India, Eritrea, Ethiopia, Sudan, Afghanistan, Armenia, Azerbaijan, Bahrain,
2564	Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru, Uruguay, Venezuela
2565	Morocco, Western Sahara, Ecuador, Argentina, Brazil, Paraguay,  Peru, South Africa, Angola, Benin,
2566	Bahamas, United States
2567	Costa Rica, Honduras, Nicaragua, Panama, Colombia
2568	Spain, Portugal, France, Algeria, Morocco, Tunisia, Burkina Faso,  Ghana, Mali, Senegal
2569	South Africa, Angola, Botswana, Lesotho, Namibia, Zambia, Zimbabwe
2570	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Nigeria, South Sudan, Sudan,
2571	Japan, Spain, Portugal, Costa Rica, Mexico, Morocco, United States, Kiribati, Marshall Islands, Ecuador,
2572	Trinidad and Tobago, Argentina, Brazil, Guyana, Paraguay, Suriname, Venezuela
2573	Brunei,  Indonesia, Malaysia, Myanmar, Thailand
2574	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Mexico, Ecuador, Argentina, Bolivia, Brazil,
2575	Brazil, Guyana, Suriname, Venezuela  French Guiana
2576	China, Hong Kong, Australia,  Papua New Guinea, India, Cambodia, Indonesia, Laos, Myanmar, Nepal,
2577	Australia, Papua New Guinea,  Solomon Islands, Indonesia, Philippines, Timor-Leste
2578	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Argentina, Bolivia, Colombia,
2579	Ecuador, Chile, Argentina, Bolivia,  Colombia, Peru, Venezuela
2580	Cameroon, Congo, DR Congo, Cote d'Ivoire, Gabon, Ghana, Kenya, Liberia, Sierra Leone, Tanzania
2581	Mexico, United States, Kiribati, Marshall Islands, Federated States of Micronesia, Chile  French Polynesia, U.S. Minor Outlying Islands, Northern Mariana Islands, Pitcairn
2582	Ecuador, Brazil, Colombia, Peru,  Venezuela
2583	Ecuador, Argentina, Bolivia, Brazil, Colombia,  Guyana, Paraguay, Suriname, Uruguay, Venezuela
2584	El Salvador,  Guatemala, Honduras, Mexico
2585	South Africa, Angola, Botswana,  Burundi, DR Congo, Kenya, Malawi, Mozambique, Namibia, Rwanda,
2586	China, Mongolia,  Russia, India, Nepal, Afghanistan, Armenia, Azerbaijan, Iran, Kazakhstan,
2587	Bahamas
2588	Mauritius, Madagascar, Malawi, Mozambique, Tanzania
2589	Costa Rica, Nicaragua, Panama,  Ecuador, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru,
2590	Trinidad and Tobago, Colombia, Guyana, Suriname, Venezuela  French Guiana
2591	Barbados
2592	Ecuador, Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru, Venezuela
2593	China, Japan, North Korea, Mongolia, Russia, Cambodia, Laos, Myanmar, Thailand, Viet Nam
2594	South Africa, Botswana, Mozambique, Zambia, Zimbabwe
2595	Jamaica, Belize, Honduras, Mexico, Colombia
2596	Kenya, Somalia, Tanzania
2597	Eswatini
2598	Antigua and Barbuda, Dominica, Grenada, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines
2599	Chile, Argentina,  Bolivia, Brazil, Paraguay, Peru, Uruguay
2600	Ecuador, Bolivia, Brazil, Colombia,  Guyana, Peru, Suriname, Venezuela
2601	Australia, Papua New Guinea,  Federated States of Micronesia, Palau, Solomon Islands, Vanuatu, Indonesia
2602	Argentina, Bolivia, Brazil, Paraguay, Peru, Suriname, Uruguay
2603	Bahamas, Cuba, Dominican Republic, United States
2604	India, Bangladesh, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Nepal, Singapore, Sri Lanka,
2605	South Africa, Botswana, Lesotho, Namibia
2606	Belize, Costa Rica, Guatemala,  Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia, Peru,
2607	Costa Rica, Panama, Ecuador, Colombia, Peru, Venezuela
2608	Panama, Ecuador, Bolivia, Colombia, Peru
2609	Belize, Costa Rica, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua, Panama, Ecuador, Argentina,
2610	Ecuador, Bolivia, Brazil,  Colombia, Guyana, Peru,  Suriname, Venezuela
2611	El Salvador, Guatemala, Honduras, Mexico, Nicaragua  Neotropical, Nearctic
2612	South Africa, Angola, Benin, Botswana, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire,
2613	Algeria, Egypt, Libya, Morocco,   Tunisia, Chad, Mali, Mauritania, Niger, Sudan
2614	Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara, India, Chad, Mauritania, Niger,
2615	Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru
2616	Ecuador, Argentina, Brazil, Colombia, Guyana, Paraguay, Peru, Venezuela
2617	Egypt, Angola, Benin, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire, Djibouti,
2618	South Africa, Angola, Benin, Botswana, Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo,
2619	Antigua and Barbuda, Bahamas, Barbados, Dominica, Dominican Republic, Grenada, Guadeloupe, Jamaica, Saint Kitts and Nevis, Saint Lucia,
2620	Chile,  Argentina, Bolivia, Paraguay
2621	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia  Neotropical, Nearctic
2622	Equatorial Guinea, Angola, Benin, Burkina Faso, Cameroon, Central African Republic, Chad, Congo,   DR Congo, Cote d'Ivoire,
2623	Antigua and Barbuda, Barbados, Dominica, Grenada, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Belize, El Salvador,
2624	Guatemala, Honduras, Mexico, Nicaragua, United States
2625	Ecuador, Argentina, Bolivia,  Brazil, Colombia, Guyana, Paraguay, Peru, Venezuela
2626	Australia, New Zealand, South Africa, Namibia
2627	Belize, Costa Rica, Guatemala, Honduras, Nicaragua, Panama, Ecuador, Colombia, Venezuela
2628	Mexico, Canada, United States, Russia, Australia, New Zealand, Marshall Islands, Chile, Peru
2629	Costa Rica, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
2630	Bahamas, Cuba, United States
2631	Chile,  Argentina, Bolivia, Peru
2632	South Africa, Ethiopia,  Kenya, Malawi, Mozambique, Somalia, Tanzania, Zambia, Zimbabwe
2633	Ecuador,  Colombia, Peru
2634	Egypt, India, Burkina Faso, Chad, Djibouti, Eritrea,  Ethiopia, Mali, Mauritania, Niger,
2635	Argentina, Bolivia, Brazil, Paraguay,  Peru, Uruguay
2636	Costa Rica, Panama, Ecuador, Bolivia, Brazil, Colombia, Peru, Venezuela
2637	Trinidad and Tobago, Canada, United States, Ecuador, Argentina, Bolivia, Brazil,  Colombia, Guyana, Paraguay,
2638	South Africa, Angola, Botswana, Cameroon, Comoros, DR Congo, Kenya, Lesotho, Madagascar, Malawi,
2639	China, India, Bhutan, Laos, Myanmar, Nepal, Thailand, Viet Nam  Indomalayan
2640	Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Venezuela
2641	Djibouti
2642	China, Hong Kong, North Korea, South Korea, Mongolia, Taiwan, Russia,  Indonesia, Laos, Malaysia,
2643	Trinidad and Tobago, Panama, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
2644	Argentina, Paraguay
2645	Belize,  Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Colombia
2646	South Africa,  Angola, Botswana, Burundi, Cameroon, Chad, Congo, DR Congo, Djibouti, Eritrea,
2647	Panama, Ecuador, Bolivia,  Brazil, Colombia, Peru, Suriname, Venezuela
2648	Trinidad and Tobago, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Venezuela
2649	Moldova, Russia, Ukraine, Armenia,  Azerbaijan, Georgia, Iran, Kazakhstan, Kyrgyzstan, Turkey,
2650	Cuba, Trinidad and Tobago, United States, Ecuador, Argentina, Bolivia, Brazil,  Colombia, Guyana, Paraguay,
2651	Argentina, Bolivia, Paraguay, Uruguay
2652	Equatorial Guinea, Angola, Benin, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Ethiopia,
2653	Costa Rica, Guatemala, Honduras, Nicaragua, Panama, Ecuador, Bolivia, Brazil,  Colombia, Peru
2654	South Africa, Angola, Botswana, Burundi, Cameroon, Congo, DR Congo, Cote d'Ivoire, Gabon, Guinea,
2655	Cape Verde
2656	Ecuador, Brazil,  Colombia, Guyana, Peru, Suriname, Venezuela
2657	Neotropical, Nearctic
2658	Guadeloupe
2659	Brazil, Mauritius
2660	Trinidad and Tobago, Costa Rica, Nicaragua, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru,
2661	China, Japan, North Korea, South Korea, Mongolia, Russia, India, Bangladesh, Brunei, Cambodia,
2662	Costa Rica, El Salvador, Guatemala, Mexico
2966	Trinidad and Tobago, Ecuador,  Bolivia, Colombia, Peru, Venezuela
2663	South Africa, Burundi, DR Congo, Kenya,  Malawi, Mozambique, Rwanda, South Sudan, Sudan, Tanzania,
2664	Mexico, Australia, New Zealand, Marshall Islands, Federated States of Micronesia, Chile
2665	Belize, Costa Rica, Guatemala,  Honduras, Mexico, Nicaragua, Panama
2666	South Africa, Angola, Botswana, Namibia, Zimbabwe
2667	New Zealand, Chile, Argentina, Peru,  Uruguay, South Africa
2668	Trinidad and Tobago, Ecuador, Bolivia, Brazil,  Colombia, Guyana, Peru, Suriname, Venezuela
2669	India, Bangladesh, Myanmar, Thailand, Afghanistan, Kazakhstan, Pakistan, Tajikistan
2670	Belize, Honduras, Mexico
2671	Belize, Costa Rica, Guatemala,  Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia
2672	India,  Nepal, Pakistan
2673	Belize, Colombia, Costa Rica, Ecuador, El Salvador, Grenada, Guatemala, Guyana, Honduras, Mexico,
2674	South Africa, Angola, Botswana, Mozambique, Namibia, Zambia
2675	China, North Korea, South Korea, Mongolia, Russia, India, Bangladesh, Cambodia, Laos, Myanmar,
2676	Ecuador, Bolivia, Colombia,  Peru
2677	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua, Panama, Ecuador,
2678	Nigeria  Afrotropical
2679	Burkina Faso, Chad, Mali, Mauritania, Niger,  Sudan
2680	Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara,  Chad, Mali, Mauritania, Niger,
2681	Equatorial Guinea, Angola, Cameroon, Congo, DR Congo, Cote d'Ivoire, Gabon, Ghana, Guinea, Liberia,
2682	Belize, Costa Rica, El Salvador,  Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia,
2683	Costa Rica, Honduras, Nicaragua
2684	Trinidad and Tobago, Chile, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname,
2685	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia, Peru,
2686	Morocco, Brazil, Uruguay, Mauritania, Senegal, Cape Verde
2687	Costa Rica, Mexico, Nicaragua, Panama, Australia, New Zealand, Fiji, Tonga, Ecuador, Colombia,
2688	Costa Rica, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru,
2689	South Africa, Angola, Botswana, Burundi, DR Congo, Kenya, Lesotho, Malawi, Mozambique, Namibia,
2690	Costa Rica, Panama, Ecuador,   Peru, Colombia
2691	Bahamas, Cuba, Dominican Republic, Jamaica, United States
2692	Albania, Bosnia and Herzegovina, Bulgaria, Croatia, Greece, Montenegro, Serbia, Egypt, South Africa, Botswana,
2693	Spain, Portugal, France, Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara, Eritrea,
2694	Cuba, Dominican Republic, United States
2695	Equatorial Guinea,  Angola, Benin,  Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo,
2696	Brazil, Colombia, Paraguay, Peru, Venezuela
2697	South Africa, Angola, Botswana, Namibia, Zambia, Zimbabwe
2698	Jamaica, Colombia
2699	Trinidad and Tobago, Ecuador, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname,  Venezuela
2700	South Africa, Angola, Botswana, Mozambique, Namibia, Zimbabwe
2701	Australia, New Zealand, Chile, Argentina, Uruguay, South Africa
2702	Ecuador, Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru, Uruguay, Venezuela
2703	Ecuador,  Argentina, Bolivia, Brazil,  Colombia, Paraguay, Peru, Venezuela
2704	Ethiopia, Kenya, Malawi, Mozambique, Somalia, South Sudan, Sudan,  Tanzania, Uganda, Iran,
2705	Trinidad and Tobago, Costa Rica, Panama, United States, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana,
2706	Trinidad and Tobago, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru,  Suriname,
2707	Guatemala,  Mexico
2708	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Colombia, Venezuela
2709	Trinidad and Tobago, Ecuador, Chile, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru,
2710	Trinidad and Tobago, Ecuador, Chile, Argentina, Bolivia,  Brazil, Colombia, Guyana, Paraguay, Peru,
2711	Ecuador, Chile, Argentina, Brazil, Peru, Uruguay
2712	Trinidad and Tobago, Argentina, Bolivia, Brazil, Colombia, Paraguay, Venezuela
2713	Guyana, Paraguay, Peru, Suriname, Uruguay, Venezuela
2714	Trinidad and Tobago, United States, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru,
2715	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia, Peru
2716	South Africa, Kenya, Malawi, Mozambique, Tanzania
2717	Antigua and Barbuda, Barbados, Dominica, Grenada, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Belize, Mexico,
2718	Trinidad and Tobago, Panama, Ecuador,  Brazil, Colombia, Guyana,  Peru, Suriname, Venezuela
2719	Angola, Congo, DR Congo
2720	China, Myanmar, Thailand
2721	Chile, Argentina,  Bolivia, Peru
2722	Antigua and Barbuda, Dominica, Guadeloupe, Saint Kitts and Nevis, Saint Lucia
2723	Argentina, Bolivia,  Brazil, Paraguay, Peru, Venezuela
2724	Argentina, Bolivia, Brazil,  Paraguay, Peru, Uruguay
2725	Djibouti, Ethiopia, Kenya,  Somalia, South Sudan, Sudan, Tanzania, Uganda
2726	Chile, Argentina, Bolivia, Brazil, Colombia,  Paraguay, Peru, Uruguay  Neotropical
2727	Spain, Algeria, Libya, Morocco, Tunisia, Western Sahara, Benin,  Burkina Faso, Cameroon, Chad,
2728	Cuba  Neotropical
2729	Canada, United States, Australia, New Zealand, Fiji, Marshall Islands
2730	Australia, New Zealand, Chile, Argentina, Brazil, Peru, Uruguay, South Africa
2731	Argentina, Bolivia, Brazil, Paraguay,  Uruguay
2732	South Africa, Angola, Botswana, Burundi, Congo, DR Congo, Ethiopia, Gabon, Kenya, Malawi,
2733	Ethiopia, Kenya, Somalia, South Sudan, Sudan, Tanzania, Uganda
2734	Costa Rica, El Salvador, Mexico, Nicaragua, Canada, United States, Ecuador, Chile, Colombia, Peru
2735	Angola, Burundi, Central African Republic, DR Congo, Kenya,  Rwanda, South Sudan, Sudan,  Tanzania, Uganda
2736	New Zealand, Chile
2737	Antigua and Barbuda, Barbados, Dominica, Grenada, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Panama,
2738	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, United States
2739	South Africa, Angola, Botswana, Burundi, DR Congo, Malawi, Mozambique, Namibia,  Rwanda, Tanzania,
2740	Chile, Argentina, Bolivia, Brazil, Peru, Uruguay
2741	Ecuador, Chile, Bolivia, Peru
2742	Ecuador, Bolivia, Brazil,  Colombia, Peru, Venezuela
2743	Bolivia, Brazil, Guyana, Suriname, Venezuela
2744	India, Bangladesh, Bhutan, Myanmar, Nepal
2745	Argentina, Bolivia  Neotropical
2746	Yemen
2747	Angola, Botswana, Namibia, Zambia, Zimbabwe
2748	Costa Rica, El Salvador,  Guatemala, Honduras, Mexico, Nicaragua
2749	Trinidad and Tobago, Ecuador, Brazil, Colombia,  Guyana, Peru, Suriname, Venezuela
2750	China, India, Bhutan, Laos, Myanmar, Nepal, Thailand, Viet Nam
2751	Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru,  Venezuela
2752	Antigua and Barbuda,  Barbados, Dominica, Grenada, Guadeloupe, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Brazil,
2753	Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Bolivia, Brazil,  Colombia, Peru, Venezuela
2754	Saint Lucia, Trinidad and Tobago, Costa Rica, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana,
2755	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,  Panama, Ecuador, Bolivia,
2756	China, Cambodia, Laos, Malaysia, Myanmar, Thailand, Viet Nam
2757	Trinidad and Tobago, Belize, Costa Rica,  El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador,
2758	Panama,  Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
2759	Chile, Argentina, Bolivia, Brazil,  Paraguay, Uruguay
2760	China, Japan, North Korea, South Korea, Taiwan, Russia, Cambodia,  Indonesia, Laos, Malaysia,
2761	Argentina, Bolivia, Brazil, Colombia, Guyana, Venezuela
2762	Bolivia, Brazil, Suriname
2763	Bolivia, Brazil, Colombia, Guyana, Paraguay, Suriname, Venezuela
2764	Benin, Burkina Faso, Cameroon, Central African Republic, Chad,  DR Congo, Cote d'Ivoire, Eritrea, Ethiopia, Gambia,
2765	Guatemala, Honduras, Mexico, Nicaragua
2766	Ecuador, Argentina, Bolivia, Brazil,   Guyana, Paraguay, Peru, Venezuela
2767	Ecuador, Chile,  Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru, Uruguay, Venezuela
2768	Panama, Ecuador, Colombia, Peru, Venezuela
2769	El Salvador, Guatemala, Honduras,  Nicaragua
2770	Antigua and Barbuda, Barbados, Dominica, Grenada, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Brazil, Guyana,
2771	United States, Australia, New Zealand, Fiji, Marshall Islands, Tonga
2772	South Africa, Angola, Botswana, Burundi, Eritrea, Ethiopia, Kenya, Mozambique, Namibia, Rwanda,
2773	Costa Rica, Honduras, Nicaragua,  Panama, Ecuador, Colombia
2774	Trinidad and Tobago, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,  Nicaragua, Panama, Colombia, Venezuela
2775	Costa Rica, Nicaragua, Panama, Ecuador,  Bolivia, Brazil, Colombia, Peru
2776	Honduras, Mexico, Nicaragua, Panama, Ecuador,  Argentina, Brazil, Colombia, Paraguay, Peru,
2777	Palearctic
2778	Belize, Costa Rica, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua
2779	Ecuador, Bolivia, Brazil, Colombia,  Peru, Venezuela
2780	Brunei, Indonesia, Malaysia, Myanmar, Philippines, Singapore, Thailand
2781	Ecuador, Argentina, Bolivia, Brazil, Guyana, Paraguay, Suriname
2782	China, Mongolia, Russia, Ukraine, Azerbaijan,  Iran, Kazakhstan, Turkmenistan, Uzbekistan
2783	Panama, Ecuador,  Colombia, Venezuela
2784	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, United States
2785	China, Mongolia, Russia, India, Nepal, Afghanistan, Iran, Kazakhstan, Kyrgyzstan, Pakistan,
2786	Australia, New Zealand, Chile, Argentina
2787	El Salvador, Guatemala, Honduras,  Mexico, Nicaragua
2788	Costa Rica, Panama, Ecuador, Colombia
2789	India, Bangladesh, Bhutan, Myanmar, Nepal, Iran, Pakistan
2790	Angola, Kenya, Namibia, Tanzania
2791	Spain, Algeria, Egypt, Libya, Morocco, Tunisia
2792	Argentina, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
2793	South Africa, Angola, Botswana, Burundi, DR Congo, Ethiopia, Kenya, Malawi, Mozambique, Namibia,
2794	Costa Rica, Mexico, Panama, Colombia, Venezuela
2795	Japan, United States
2796	China, Hong Kong, Japan, North Korea, South Korea, Mongolia, Taiwan, Russia, India, Cambodia,
2797	China, Hong Kong, Australia, Papua New Guinea, India, Cambodia, Indonesia,  Laos, Myanmar, Nepal,
2798	South Africa, Angola, Lesotho, Namibia
2799	Trinidad and Tobago, Costa Rica, Panama, Ecuador, Argentina, Bolivia,  Brazil, Colombia, Guyana, Paraguay,
2800	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Colombia
2801	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua,  Panama
2802	Costa Rica, El Salvador, Guatemala, Mexico, Nicaragua, Panama, United States, Ecuador, Colombia, Peru
2803	China, Egypt, Russia,  India, Nepal, Viet Nam, Kazakhstan, Pakistan
2804	Argentina, Bolivia, Brazil,  Paraguay, Uruguay
2805	China, Bhutan, Nepal
2806	South Africa, Angola, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Ethiopia,  Gabon, Kenya,
2807	China, Japan, South Korea, Taiwan, Russia, Brunei, Indonesia, Malaysia, Philippines
2808	Belize, Costa Rica,  Guatemala, Honduras, Mexico, Nicaragua, Panama
2809	Trinidad and Tobago, Costa Rica, Panama, Brazil, Colombia, Guyana, Suriname, Venezuela
2810	Ecuador, Chile, Argentina, Bolivia,  Colombia, Peru
2811	South Africa, Angola, Botswana, Burundi, Congo, DR Congo, Kenya, Lesotho, Malawi,  Mozambique,
2812	South Africa, Angola, Benin, Botswana, Burkina Faso, Cameroon, Central African Republic, Chad, Cote d'Ivoire, Eritrea,
2813	South Africa, Angola, Botswana, DR Congo, Kenya, Malawi, Mozambique, Namibia, Somalia, Tanzania,
2814	Chile, Bolivia,  Peru
2816	Ecuador, Argentina, Bolivia,  Brazil, Colombia, Guyana,  Paraguay, Peru, Suriname,  Venezuela
2817	Trinidad and Tobago, Argentina, Brazil, Colombia, Guyana, Paraguay, Uruguay, Venezuela
2818	Equatorial Guinea, Angola, Benin, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon, Ghana,
2819	Bolivia, Brazil, Guyana, Peru, Venezuela
2820	Cuba, Dominican Republic,  Jamaica, United States
2821	Egypt, India, Djibouti, Eritrea, Ethiopia, Kenya, Somalia, Tanzania, Uganda, Yemen,
2822	Trinidad and Tobago, Panama, Ecuador, Bolivia, Brazil,  Colombia, Guyana, Peru,  Suriname, Venezuela
2823	Angola, Botswana, Burundi, Congo, DR Congo, Ethiopia, Gabon, Malawi, Mozambique, Namibia,
2824	Trinidad and Tobago, Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico,  Panama, Ecuador, Bolivia,
2825	China, Spain, Portugal, Algeria, Egypt, Libya, Morocco, Tunisia, Western Sahara, Russia,
2826	Belize, Costa Rica,  El Salvador, Guatemala, Honduras, Mexico, Nicaragua, United States
2827	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Colombia
2828	Belize, Guatemala, Honduras, Mexico, Nicaragua
2829	Belize, El Salvador, Guatemala, Mexico
2830	Costa Rica, Nicaragua, Ecuador, Colombia, Venezuela
2831	Argentina, Bolivia,  Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Uruguay, Venezuela
2832	Costa Rica, Honduras, Nicaragua,  Panama
2833	Ecuador, Chile, Argentina, Bolivia, Peru, Uruguay
2834	Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Mexico, Panama, Ecuador, Brazil, Colombia,
2835	China, India, Bangladesh, Bhutan, Myanmar, Nepal, Thailand
2836	Trinidad and Tobago,  Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname,
2837	Morocco, Benin, Burkina Faso, Cameroon, Chad, Cote d'Ivoire, Gambia, Ghana, Guinea, Guinea-Bissau,
2838	China, India, Bhutan, Myanmar, Nepal, Pakistan
2839	Ecuador,  Chile, Argentina, Bolivia, Peru
2840	Chile, Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru, Uruguay
2841	China, India, Bangladesh, Bhutan, Laos, Myanmar, Nepal, Viet Nam
2842	Bolivia, Brazil, Colombia, Guyana, Peru, Suriname,  Venezuela
2843	Costa Rica, Nicaragua, Panama, Ecuador, Bolivia,  Brazil, Colombia, Guyana, Peru, Venezuela
2844	Argentina, Bolivia, Brazil, Paraguay, Peru  Neotropical
2845	Panama, Ecuador, Colombia, Peru
2846	Panama, Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru, Uruguay
2847	Argentina,  Brazil, Paraguay
2848	Ecuador, Argentina,  Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Venezuela
2849	Trinidad and Tobago, Belize, Costa Rica, El Salvador,  Guatemala, Honduras, Mexico,  Nicaragua, Panama, Ecuador,
2850	Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Venezuela
2851	Costa Rica, Nicaragua, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay,
2852	India, Bhutan, Myanmar, Nepal, Viet Nam
2853	Belize, Costa Rica, Guatemala, Honduras, Panama, Bolivia, Brazil, Colombia, Peru
2854	Ecuador, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Venezuela
2855	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States, Ecuador,
2856	Yemen, Saudi Arabia
2857	Chile, Argentina, Brazil, Uruguay  Falkland Islands
2858	Antigua and Barbuda, Barbados, Dominica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago,  Costa Rica, Panama, Ecuador,
2859	Belize, Costa Rica, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia, Guyana, Peru,
2860	Ecuador, Brazil, Guyana, Suriname,  Venezuela
2861	South Africa, Botswana, Mozambique,  Zimbabwe
2862	Panama, Ecuador, Colombia, Venezuela
2863	Costa Rica, Mexico, Panama, United States, Colombia
2864	Colombia  Neotropical
2865	Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela  French Guiana
2866	China, India, Bhutan, Laos,  Myanmar, Nepal, Thailand, Viet Nam
2867	Ecuador, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Venezuela
2868	South Africa,  Lesotho
2869	South Africa, Angola, Botswana, Burkina Faso, Cameroon, Chad, Congo, DR Congo, Eritrea, Ethiopia,
2870	Antigua and Barbuda, Barbados, Dominica, Dominican Republic, Jamaica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines
2871	Costa Rica, Panama, Ecuador,  Brazil, Colombia,  Guyana, Peru, Suriname, Venezuela
2872	Ecuador,  Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Venezuela
2873	Belize, Costa Rica,  Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia
2874	Grenada, Trinidad and Tobago, Brazil, Guyana, Suriname, Venezuela
2875	Ecuador, Bolivia, Peru
2876	Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname,  Uruguay,
2877	Saint Lucia
2878	Chile, Argentina, Bolivia, Brazil, Uruguay
2879	South Africa, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic,  Chad, Congo,
2880	Bolivia, Brazil, Guyana, Peru, Suriname
2881	Costa Rica, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname,  Venezuela
2882	Argentina, Bolivia,  Brazil, Colombia, Paraguay, Peru, Uruguay
2883	Colombia, Peru, Venezuela
2884	Ecuador, Bolivia, Brazil, Colombia, Peru, Suriname,  Venezuela
2885	Belize, Costa Rica, Guatemala,  Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia, Brazil,
2886	India, Afghanistan, Pakistan
2887	Ecuador, Chile, Argentina, Bolivia, Brazil, Peru, Uruguay
2888	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua   Neotropical, Nearctic
2889	Ecuador, Colombia, Peru,  Venezuela
2890	Belize,  Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia, Peru
2891	Bahamas, Cuba, United States, Colombia
2892	Trinidad and Tobago, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Venezuela
2893	Benin, Burkina Faso, Cameroon, Central African Republic, Cote d'Ivoire, Gambia, Ghana, Guinea, Guinea-Bissau, Mali,
2894	Benin, Burkina Faso, Cameroon, Chad, Mali, Mauritania,  Niger, Nigeria, Senegal,  Sudan
2895	Trinidad and Tobago, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Brazil,
2896	Trinidad and Tobago, Costa Rica, Guatemala, Honduras, Nicaragua, Panama, Colombia, Venezuela
2897	Ecuador, Bolivia, Brazil, Guyana, Peru, Suriname, Venezuela
2898	Costa Rica, Honduras, Nicaragua, Panama, Ecuador,  Colombia
2899	Costa Rica, Panama, Ecuador, Bolivia, Brazil,  Colombia, Peru, Venezuela
2900	Bolivia, Brazil, Colombia, Guyana, Suriname, Venezuela
2901	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Panama, Ecuador, Bolivia,  Colombia, Peru,
2902	Ecuador, Chile, Argentina, Bolivia, Brazil, Paraguay, Peru, Uruguay
2903	South Africa, Angola, Botswana, DR Congo, Namibia, Tanzania
2904	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua  Neotropical, Nearctic
2905	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia, Brazil,
2906	Costa Rica, Honduras, Nicaragua, Panama, Colombia, Venezuela
2907	Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Colombia,  Peru
2908	Ecuador, Brazil, Colombia, Guyana, Peru, Venezuela
2909	Trinidad and Tobago, Argentina, Bolivia,  Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Venezuela
2910	Brunei, Indonesia, Malaysia, Myanmar, Thailand, Viet Nam
2911	China, Russia, Cambodia, Laos, Malaysia, Myanmar, Thailand, Viet Nam  Palearctic, Indomalayan
2912	Algeria, Egypt, Libya, Morocco, Tunisia,  Mauritania, Israel, Jordan, Kuwait, Saudi Arabia
2913	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, United States, Ecuador, Colombia
2914	Trinidad and Tobago, Costa Rica, Panama, Colombia,  Venezuela
2915	Argentina,  Bolivia, Brazil, Colombia, Paraguay, Peru, Venezuela
2916	South Africa, Angola, Botswana, Burundi, Congo, DR Congo, Gabon,  Kenya, Malawi, Mozambique,
2917	China, Taiwan, India, Bangladesh, Bhutan, Laos, Myanmar, Nepal,  Thailand, Viet Nam
2918	Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela
2919	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,  Ecuador, Bolivia, Brazil,
2920	Guatemala, Honduras, Mexico  Neotropical, Nearctic
2921	Trinidad and Tobago, Costa Rica, Honduras, Nicaragua, Panama, Ecuador,  Bolivia, Brazil, Colombia, Guyana,
2922	Japan, United States, Marshall Islands, Federated States of Micronesia, Chile
2923	Costa Rica, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Venezuela
2924	Trinidad and Tobago, Costa Rica, Panama, Ecuador, Brazil, Colombia, Guyana, Peru,  Venezuela
2925	Argentina, Bolivia, Brazil,  Colombia, Paraguay, Uruguay
2926	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,  Panama
2927	Ecuador, Brazil, Colombia,  Peru
2928	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama,  Ecuador, Argentina, Bolivia,
2929	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama,  Colombia
2930	China, India, Bangladesh, Bhutan, Nepal, Afghanistan, Iran, Kazakhstan, Kyrgyzstan, Pakistan,
2931	Equatorial Guinea, Angola, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Ethiopia, Gabon, Kenya,
2932	Turkmenistan, Uzbekistan
2933	Kenya, Uganda
2934	Trinidad and Tobago, Costa Rica, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia,  Guyana, Paraguay,
2935	South Africa, Angola, Botswana, Burundi, Chad, DR Congo, Djibouti, Ethiopia, Kenya, Lesotho,
2936	El Salvador, Guatemala, Honduras,  Mexico
2937	Ecuador,  Bolivia, Brazil,  Colombia, Guyana, Peru, Suriname, Venezuela
2938	Costa Rica, Panama, Ecuador, Colombia, Guyana, Peru, Suriname, Venezuela
2939	Ecuador, Bolivia, Brazil, Colombia, Peru, Venezuela  Neotropical
2940	Ecuador, Bolivia, Brazil, Guyana, Peru
2941	Costa Rica, Mexico, Panama, Ecuador, Chile, Colombia, Peru
2942	Ecuador, Bolivia, Colombia,  Peru, Venezuela
2943	South Africa, Angola, Botswana, DR Congo, Mozambique, Namibia, Tanzania, Zambia, Zimbabwe
2944	Equatorial Guinea, Angola, Benin, Burundi, Cameroon, Central African Republic, Chad, Congo,  DR Congo, Cote d'Ivoire,
2945	Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru,
2946	Panama, Ecuador, Argentina, Bolivia, Brazil,  Colombia, Paraguay, Peru, Venezuela
2947	Cameroon, Chad, Mali, Mauritania, Niger,  Nigeria, Senegal, Sudan
2948	Angola, DR Congo, Malawi, Mozambique, Tanzania, Zambia, Zimbabwe
2949	Angola, Botswana, DR Congo, Namibia, Tanzania, Zambia
2950	Equatorial Guinea, Angola, Benin, Burundi, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon,
2951	Ecuador, Brazil, Colombia, Guyana, Peru, Suriname,  Venezuela
2952	China, India, Bangladesh, Bhutan, Laos, Myanmar, Nepal, Thailand, Viet Nam, Afghanistan,
2953	Trinidad and Tobago, Panama, Ecuador, Brazil, Colombia, Guyana, Suriname, Venezuela
2954	Argentina, Brazil, Paraguay, Uruguay  Neotropical
2955	Chile,  Argentina, Brazil, Uruguay
2956	Belize,  El Salvador, Guatemala, Honduras, Mexico, Nicaragua
2957	Costa Rica, Guatemala, Honduras, Nicaragua, Panama, Ecuador, Colombia, Peru,  Venezuela
2958	Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Bolivia, Brazil, Colombia, Peru,  Venezuela
2959	Costa Rica, Honduras, Nicaragua, Panama, Ecuador,  Bolivia, Brazil, Colombia,  Guyana, Peru,
2960	Chile, Argentina, Bolivia, Brazil, Paraguay,  Peru, Uruguay
2961	Benin, Burkina Faso, Cameroon, Cote d'Ivoire, Gambia, Ghana, Guinea,  Guinea-Bissau, Liberia, Mali,
2962	Equatorial Guinea, Angola, Benin, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire,  Gabon, Gambia,
2963	Burundi, Ethiopia, Kenya, Malawi, Mozambique, Namibia, Rwanda, South Sudan, Sudan, Tanzania,
2964	Brunei, Indonesia
2965	Ecuador, Chile, Argentina, Peru, Uruguay
2967	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama  Neotropical, Nearctic
2968	Burundi, DR Congo, Kenya, Malawi, Mozambique, Rwanda, Tanzania, Zambia
2969	Ecuador, Bolivia, Brazil, Colombia, Peru, Suriname, Venezuela
2970	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Colombia, Venezuela  Neotropical, Nearctic
2971	Belize, Honduras, Mexico, United States
2972	Belize, Costa Rica,  Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia, Brazil,
2973	Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana,  Paraguay, Peru, Suriname,
2974	Ecuador, Argentina,  Bolivia, Brazil, Colombia,  Paraguay, Peru, Uruguay, Venezuela
2975	Ecuador, Colombia, Peru, Venezuela  Neotropical
2976	Trinidad and Tobago, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana,  Paraguay, Peru, Suriname,
2977	Equatorial Guinea, Angola, Benin, Burundi, Cameroon,  Central African Republic, Congo,  DR Congo, Cote d'Ivoire, Gabon,
2978	Argentina, Bolivia, Brazil, Colombia, Paraguay, Suriname, Venezuela  Falkland Islands, French Guiana
2979	Cameroon, Central African Republic, Chad, Eritrea, Ethiopia, Mali, Mauritania, Niger, Nigeria, South Sudan,
2980	Panama, Ecuador,  Colombia, Peru
2981	Angola, Burundi, DR Congo, Kenya, Malawi, Rwanda, South Sudan, Sudan, Tanzania, Uganda,
2982	Benin, Cote d'Ivoire, Gambia, Ghana, Guinea, Guinea-Bissau, Liberia, Mali, Nigeria, Senegal,
2983	Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru, Uruguay
2984	Antigua and Barbuda, Barbados, Dominica, Grenada, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Bolivia, Brazil,
2985	Ecuador, Argentina, Bolivia, Colombia, Peru
2986	Trinidad and Tobago, Costa Rica, Honduras, Mexico, Nicaragua,  Panama, Ecuador, Bolivia, Brazil, Colombia,
2987	Trinidad and Tobago, Brazil, Colombia, Guyana, Peru,  Suriname, Venezuela
2988	Argentina, Bolivia,  Brazil, Paraguay
2989	Antigua and Barbuda, Barbados, Dominica, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Trinidad and Tobago, Ecuador, Argentina, Bolivia,
2990	Ecuador,  Bolivia, Colombia, Peru, Venezuela
2991	Trinidad and Tobago, Costa Rica, Panama, Ecuador, Argentina,  Bolivia, Brazil, Colombia, Guyana, Paraguay,
2992	Costa Rica, El Salvador, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia, Colombia, Guyana,
2993	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama,  Ecuador, Brazil, Colombia,
2994	Belize, Guatemala, Honduras,  Mexico
2995	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Nigeria, Tanzania, Uganda
2996	Argentina, Bolivia, Brazil,  Paraguay, Peru
2997	Guyana, Suriname
2998	Benin, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire, Eritrea, Gambia, Ghana,
2999	Honduras, Mexico, Nicaragua, Ecuador,  Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay,
3000	Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Suriname, Venezuela
3001	Costa Rica, Panama, Ecuador, Bolivia, Brazil, Colombia, Peru  Neotropical
3002	Ecuador, Colombia, Peru  Neotropical
3003	Trinidad and Tobago, Panama, Ecuador, Brazil,  Colombia, Guyana, Suriname, Venezuela
3004	South Africa, Botswana, Zimbabwe
3005	Costa Rica, Honduras, Nicaragua, Ecuador, Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru
3006	Ecuador, Bolivia, Brazil,  Colombia, Guyana,  Peru, Suriname, Venezuela  French Guiana
3007	Belize, Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua,  Panama, Colombia
3008	Belize,  Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia, Venezuela
3009	Argentina, Bolivia, Brazil,  Colombia, Guyana, Paraguay,  Suriname, Venezuela
3010	China, Taiwan, Philippines
3011	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Bolivia, Colombia,
3012	Costa Rica, Honduras, Nicaragua, Panama, Ecuador, Bolivia, Brazil,  Colombia, Guyana, Peru,
3013	Ethiopia, Kenya, Somalia, South Sudan, Sudan, Tanzania,  Uganda
3014	Belize,  Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Colombia
3015	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Brazil, Colombia,
3016	Burundi, DR Congo, Kenya, Malawi, Tanzania, Uganda, Zambia
3017	Ecuador, Argentina, Bolivia, Brazil,  Colombia, Paraguay, Peru, Venezuela
3018	Argentina,  Bolivia, Brazil, Paraguay, Peru, Uruguay
3019	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Panama, Ecuador, Bolivia, Colombia, Peru,
3020	India, Bangladesh, Myanmar, Thailand
3021	Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Peru, Venezuela
3022	Ecuador, Bolivia, Colombia, Peru,  Venezuela
3023	Trinidad and Tobago, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru,  Suriname, Venezuela
3024	Brazil, Paraguay, Uruguay
3025	Angola, Zambia
3026	Brazil, Colombia, Guyana,  Suriname, Venezuela
3027	Dominica, Guadeloupe, Saint Lucia
3028	Ecuador, Bolivia,  Colombia, Peru, Venezuela
3029	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama,  Ecuador, Colombia, Peru
3030	Benin, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire, Gambia,  Ghana, Guinea,
3031	Trinidad and Tobago, Panama, Ecuador, Bolivia, Brazil, Colombia,  Guyana, Peru, Suriname, Venezuela
3032	Suriname
3033	Panama, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Suriname, Uruguay, Venezuela
3034	Belize, Costa Rica, Guatemala, Honduras, Mexico,  Nicaragua, Panama, Ecuador, Colombia, Peru,
3035	Trinidad and Tobago, Belize, Costa Rica, Guatemala, Honduras, Nicaragua, Panama, Ecuador, Argentina, Bolivia,
3036	Argentina, Brazil, Paraguay,  Uruguay
3037	Central African Republic, DR Congo, South Sudan, Sudan, Uganda
3038	Trinidad and Tobago, Costa Rica, Panama, Argentina, Bolivia, Brazil,  Colombia, Guyana, Paraguay, Peru,
3039	Ecuador, Argentina, Brazil, Colombia, Paraguay, Peru, Suriname, Venezuela
3040	Equatorial Guinea, Angola, Benin, Botswana, Cameroon, Central African Republic, Chad, Congo, DR Congo, Ghana,
3041	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama,  Ecuador, Colombia, Peru,
3042	South Africa, Botswana
3043	Ecuador, Bolivia,  Brazil, Colombia,  Guyana, Peru, Suriname, Venezuela
3044	Trinidad and Tobago, Panama, Brazil, Colombia, Guyana, Venezuela
3045	Angola, Congo, DR Congo, Gabon, Rwanda, Zambia
3046	Costa Rica, El Salvador, Guatemala, Honduras, Nicaragua, Panama, Colombia, Venezuela
3047	Panama, Ecuador, Bolivia, Brazil, Colombia,  Guyana, Paraguay, Peru, Suriname, Venezuela
3048	Angola, Benin, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Congo, DR Congo, Cote d'Ivoire,
3049	South Africa, Botswana, Namibia, Zambia
3050	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo,  DR Congo, Cote d'Ivoire, Gabon, Ghana, Guinea,
3051	Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Venezuela
3052	Angola, Congo, DR Congo, Gabon, Malawi, Mozambique, Tanzania, Zambia
3053	Argentina, Bolivia, Brazil
3054	Costa Rica, Panama, Ecuador, Colombia  Neotropical
3055	Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama, Ecuador, Argentina, Bolivia, Brazil,
3056	Burundi, DR Congo, Kenya, Rwanda, Tanzania, Uganda
3057	Ecuador, Brazil, Guyana, Peru, Suriname, Venezuela
3058	Costa Rica, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru, Venezuela
3059	Ecuador, Brazil, Colombia, Guyana, Peru, Suriname
3060	Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Uruguay, Venezuela
3061	Trinidad and Tobago, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Uruguay,
3062	Angola, Burundi, DR Congo, Kenya, Malawi, Mozambique, Rwanda,  South Sudan, Sudan, Tanzania,
3063	Argentina, Bolivia, Brazil, Colombia, Guyana,  Paraguay, Venezuela
3064	Panama, Ecuador, Brazil, Colombia, Venezuela
3065	Chad, DR Congo, Ethiopia, Kenya, South Sudan, Sudan, Tanzania, Uganda
3066	Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname, Venezuela
3067	Belize, Costa Rica, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua,  Panama, Ecuador, Colombia
3068	Trinidad and Tobago, Costa Rica, Panama, Ecuador, Argentina, Bolivia, Brazil, Colombia, Guyana,  Paraguay,
3069	Benin, Burkina Faso, Cameroon, Central African Republic, Chad,  DR Congo, Cote d'Ivoire, Ghana,  Guinea, Liberia,
3070	Argentina, Bolivia, Brazil, Paraguay, Peru,  Suriname, Uruguay
3071	Brazil,  Colombia, Guyana, Suriname, Venezuela
3072	Burundi, DR Congo, Kenya, Malawi, Rwanda, South Sudan, Sudan, Tanzania, Uganda, Zambia
3073	Trinidad and Tobago, Belize, Costa Rica, Honduras, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana,
3074	Equatorial Guinea, Benin, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon, Gambia, Ghana,
3075	Ecuador, Chile, Argentina, Bolivia, Peru  Neotropical
3076	DR Congo, Kenya, South Sudan, Sudan, Tanzania, Uganda, Zambia
3077	Bolivia, Brazil, Colombia, Guyana,  Suriname
3078	Belize, El Salvador, Guatemala, Honduras, Mexico, Nicaragua  Neotropical, Nearctic
3079	Ecuador, Argentina, Bolivia,  Colombia, Peru, Venezuela
3080	Bolivia, Brazil, Paraguay  Neotropical
3081	Ethiopia, Kenya, Somalia, South Sudan, Sudan
3082	Ecuador,  Brazil, Colombia, Peru
3083	Trinidad and Tobago, Costa Rica, Panama, Argentina, Bolivia,  Brazil, Colombia, Guyana, Paraguay, Peru,
3084	Costa Rica, Honduras, Panama, Ecuador, Colombia
3085	Chile, Bolivia, Colombia, Peru
3086	Angola, Cameroon, Central African Republic, Chad, Congo, DR Congo, Gabon, Kenya, Nigeria, South Sudan,
3087	Costa Rica, Panama, Argentina, Bolivia, Brazil, Colombia, Guyana, Paraguay, Peru, Suriname,
3088	Costa Rica, Nicaragua, Panama, Ecuador, Bolivia, Colombia, Guyana, Peru,  Suriname, Venezuela
3089	Panama, Ecuador, Brazil, Colombia, Peru
3090	Angola, DR Congo, Malawi, Tanzania, Zambia
3091	Ecuador, Bolivia, Brazil, Colombia, Peru,  Venezuela
3092	Belize, Costa Rica, Guatemala, Honduras, Mexico,  Nicaragua, Panama, Ecuador, Colombia
3093	Trinidad and Tobago, Argentina, Bolivia, Brazil, Guyana, Paraguay, Uruguay, Venezuela
3094	Panama, Ecuador, Bolivia, Brazil, Colombia,  Peru
3095	Burundi, DR Congo, Kenya, Rwanda, Tanzania,  Uganda
3096	Belize, Costa Rica, Guatemala, Honduras, Nicaragua, Panama, Ecuador, Colombia
3097	Malawi, Mozambique, Zimbabwe
3098	Bolivia, Brazil, Guyana, Peru, Suriname, Venezuela
3099	Benin, Burkina Faso, Cameroon, Central African Republic, Chad, DR Congo, Cote d'Ivoire, Gambia, Ghana, Guinea,
3100	Costa Rica, El Salvador, Guatemala,  Honduras, Mexico, Nicaragua,  Panama, Ecuador, Bolivia,  Brazil,
3101	Argentina, Bolivia,  Peru
3102	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama,  Ecuador, Bolivia, Brazil,
3103	Ecuador, Argentina, Bolivia, Peru
3104	Bolivia, Brazil, Colombia, Peru, Suriname
3105	Costa Rica, Guatemala, Nicaragua, Panama, Ecuador, Colombia,  Peru, Venezuela
3106	Antigua and Barbuda, Barbados, Dominica, Grenada, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines,  Trinidad and Tobago, Costa Rica, Nicaragua,
3107	Ecuador, Argentina, Bolivia, Brazil, Colombia,  Paraguay, Peru, Uruguay  Neotropical
3108	Trinidad and Tobago, Panama, Colombia, Venezuela
3109	Bolivia, Brazil, Paraguay, Suriname
3110	Ecuador, Bolivia, Brazil, Colombia, Peru  Neotropical
3111	Equatorial Guinea, Angola, Benin, Cameroon, Central African Republic, Congo,  DR Congo, Cote d'Ivoire, Gabon, Ghana,
3112	Ecuador, Argentina, Bolivia, Colombia, Paraguay, Peru
3113	Costa Rica, Nicaragua, Panama, Ecuador,  Colombia
3114	Trinidad and Tobago, Ecuador, Bolivia, Brazil, Colombia, Guyana,  Suriname, Venezuela
3115	Ecuador, Colombia, Venezuela  Neotropical
3116	Cote d'Ivoire, Ghana, Guinea, Liberia, Sierra Leone  Afrotropical
3117	Panama, Ecuador, Bolivia, Brazil,  Colombia, Peru
3118	Ecuador, Argentina, Bolivia, Brazil, Paraguay, Peru, Uruguay
3119	Trinidad and Tobago, Panama, Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname, Venezuela  French Guiana
3120	Ecuador,  Colombia, Peru, Venezuela
3121	Belize, Costa Rica, Guatemala, Honduras, Mexico, Nicaragua, Panama,  Brazil, Colombia, Guyana,
3122	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon, Ghana, Guinea, Kenya,
3123	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo, DR Congo, Gabon, Nigeria,  South Sudan, Sudan,
3124	Cameroon, Cote d'Ivoire, Ghana, Guinea, Liberia, Nigeria, Sierra Leone
3125	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo,  DR Congo, Gabon, Nigeria, Uganda
3126	Chad, Mali, Niger, Sudan
3127	Ecuador, Bolivia, Colombia
3128	Argentina, Bolivia, Colombia, Peru, Venezuela
3129	Costa Rica, Panama, Ecuador, Colombia,  Venezuela
3130	Costa Rica, Guatemala, Honduras, Nicaragua, Panama
3131	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon,  Ghana, Guinea,
3132	Argentina, Bolivia, Colombia, Peru
3133	Equatorial Guinea, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon, Ghana, Liberia, Nigeria
3134	Argentina, Bolivia, Paraguay, Peru, Uruguay
3135	Ethiopia, Kenya, Tanzania
3136	Angola, DR Congo, Tanzania, Zambia
3137	Costa Rica, Nicaragua
3138	Costa Rica, Panama, Ecuador, Bolivia, Brazil, Colombia,  Guyana, Peru, Suriname, Venezuela
3139	Argentina, Bolivia, Brazil, Paraguay, Venezuela
3140	Burkina Faso, Cameroon, Chad, Eritrea, Mali, Mauritania, Niger, Nigeria, Senegal, South Sudan,
3141	Equatorial Guinea, Benin, Cameroon, Central African Republic, Congo, DR Congo, Cote d'Ivoire, Gabon, Ghana, Guinea,
3142	Ecuador, Bolivia, Colombia, Peru, Venezuela  Neotropical
3143	Panama, Ecuador, Brazil, Colombia, Guyana, Peru, Venezuela
3144	Costa Rica, Honduras, Nicaragua, Panama, Ecuador,  Colombia, Peru
3145	Ecuador, Colombia, Peru, Suriname, Venezuela
3146	Malawi, Tanzania, Zambia
3147	Equatorial Guinea, Angola, Cameroon, Central African Republic, Congo,  DR Congo, Gabon, Uganda
3148	Costa Rica, El Salvador, Guatemala, Honduras, Mexico, Nicaragua, Panama, Colombia
3149	Bolivia, Brazil, Colombia, Venezuela
3150	Ecuador, Colombia, Guyana, Peru, Venezuela
3151	Ecuador, Argentina, Bolivia, Brazil, Colombia, Peru, Venezuela
3152	Ecuador, Brazil, Colombia, Guyana, Suriname, Venezuela
3153	Ecuador, Brazil, Colombia, Peru, Venezuela  Neotropical
3154	Bolivia, Brazil, Colombia, Guyana, Venezuela  Neotropical
3155	Ecuador, Bolivia, Brazil, Colombia, Paraguay, Peru
3156	Argentina, Bolivia, Brazil, Colombia, Paraguay, Peru, Uruguay,  Venezuela
3157	Ecuador, Brazil, Colombia, Guyana, Venezuela  French Guiana
3158	Bolivia, Brazil, Venezuela
3159	Trinidad and Tobago, Costa Rica, Panama, Ecuador, Bolivia, Brazil, Colombia, Peru, Venezuela
3160	Angola, Benin, Cote d'Ivoire, Ghana, Guinea, Guinea-Bissau, Liberia, Nigeria, Sierra Leone, Togo
3161	Bolivia, Brazil, Colombia, Guyana, Peru,  Suriname, Venezuela
3162	Bolivia, Peru, Venezuela
3163	Chile, Argentina, Bolivia, Paraguay, Uruguay
3164	Chile, Argentina, Bolivia, Paraguay, Peru, Uruguay
3165	Ecuador, Bolivia, Brazil, Colombia, Guyana, Peru, Suriname
3166	Angola, DR Congo, Gabon
3167	Panama, Brazil, Colombia, Guyana, Venezuela
3168	Benin, Cote d'Ivoire, Ghana, Guinea, Liberia, Nigeria, Sierra Leone, Togo
3169	Kenya, Malawi, Mozambique, Tanzania
3170	Ecuador, Colombia,  Peru, Venezuela
3171	Bolivia, Brazil, Paraguay, Peru
\.


--
-- Data for Name: populationstatus; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.populationstatus (id, status) FROM stdin;
1	Least concern (LC)
2	Endangered (EN)
3	Vulnerable (VU)
4	Near Threatened (NT)
5	Not evaluated (NE)
6	Critically endangered (CR)
7	Data deficient (DD)
\.


--
-- Data for Name: populationttrend; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.populationttrend (id, trend) FROM stdin;
1	Stable
2	Decreasing
3	Increasing
4	Unknown
\.


--
-- PostgreSQL database dump complete
--

