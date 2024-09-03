--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Homebrew)
-- Dumped by pg_dump version 16.3 (Homebrew)

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
-- Name: customers; Type: TABLE; Schema: public;
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    customer_name character varying(255) NOT NULL,
    age integer,
    gender character varying(50),
    location character varying(255),
    date_joined date
);


--
-- Name: exchange_rates; Type: TABLE; Schema: public;
--

CREATE TABLE public.exchange_rates (
    currency_code character varying(3) NOT NULL,
    exchange_rate double precision,
    date date
);


--
-- Name: products; Type: TABLE; Schema: public;
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    price double precision,
    stock_available integer
);


--
-- Name: sales_data; Type: TABLE; Schema: public;
--

CREATE TABLE public.sales_data (
    transaction_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer,
    price double precision,
    transaction_date date
);


--
-- Name: transactions; Type: TABLE; Schema: public;
--

CREATE TABLE public.transactions (
    transaction_id integer NOT NULL,
    customer_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer,
    transaction_date date,
    total_amount double precision
);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public;
--

COPY public.customers (customer_id, customer_name, age, gender, location, date_joined) FROM stdin;
1	John Doe	95	\N	Unknown	2020-07-04
2	Charlie Brown	43	\N	Texas	2020-02-04
3	Alice Johnson	64	Female	California	2020-11-29
4	John Doe	89	\N	Florida	2020-01-01
5	Alice Johnson	18	Non-binary	New York	2020-05-22
6	John Doe	19	Non-binary	Florida	2020-02-05
7	Alice Johnson	91	Non-binary	Texas	2020-07-20
8	Jane Smith	48	Female	New York	2020-09-16
9	Charlie Brown	90	\N	New York	2020-10-12
10	Bob Lee	76	Male	Texas	2020-06-23
11	John Doe	70	Male	California	2020-01-17
12	John Doe	79	Male	New York	2020-12-18
13	Alice Johnson	65	Female	Texas	2020-10-03
14	John Doe	29	Non-binary	California	2020-05-20
15	Bob Lee	78	Female	Florida	2020-04-12
16	Charlie Brown	22	\N	California	2020-02-04
17	Alice Johnson	43	Female	Unknown	\N
18	Bob Lee	34	Female	Florida	2020-12-15
19	Alice Johnson	52	Male	Florida	2020-03-16
20	Bob Lee	37	Male	Florida	2020-09-16
21	Charlie Brown	\N	Male	Unknown	2020-09-14
22	Bob Lee	79	Female	Florida	2020-07-31
23	John Doe	29	Non-binary	California	2020-06-21
24	Alice Johnson	76	Female	California	2020-07-19
25	Jane Smith	35	Non-binary	California	2020-12-10
26	Bob Lee	99	Female	Florida	2020-10-04
27	Charlie Brown	55	\N	Florida	2020-05-13
28	Jane Smith	90	\N	Unknown	2020-11-26
29	Alice Johnson	32	Female	New York	2020-05-31
30	John Doe	46	Non-binary	California	2020-01-05
31	Charlie Brown	25	Female	New York	2020-11-24
32	John Doe	62	Female	Florida	2020-05-26
33	Bob Lee	98	Male	Unknown	2020-06-01
34	Charlie Brown	33	Non-binary	Unknown	2020-10-10
35	Jane Smith	23	Female	New York	2020-10-24
36	Jane Smith	44	Non-binary	Florida	2020-10-28
37	Bob Lee	95	Non-binary	Florida	2020-08-13
38	Jane Smith	68	Non-binary	California	2020-05-28
39	Charlie Brown	38	\N	New York	2020-10-29
40	Jane Smith	63	Female	Florida	\N
41	Bob Lee	81	\N	California	2020-09-28
42	Charlie Brown	96	Non-binary	California	2020-08-05
43	John Doe	41	Male	Texas	2020-07-04
44	Bob Lee	39	\N	California	2020-12-21
45	Charlie Brown	22	Male	Florida	2020-04-23
46	Bob Lee	86	Non-binary	California	2020-05-03
47	Alice Johnson	94	Male	New York	2020-12-31
48	Charlie Brown	96	Non-binary	California	2020-01-02
49	Bob Lee	98	Male	California	2020-04-27
50	Jane Smith	29	Male	\N	2020-01-30
51	Jane Smith	73	\N	California	2020-09-03
52	Alice Johnson	48	Female	Florida	2020-03-10
53	Bob Lee	27	\N	California	2020-05-12
54	Charlie Brown	36	\N	Florida	2020-12-23
55	Bob Lee	32	Female	Florida	2020-08-26
56	Bob Lee	50	Non-binary	Florida	2020-05-08
57	Charlie Brown	87	Female	Texas	2020-12-26
58	Charlie Brown	54	\N	Texas	2020-12-17
59	John Doe	39	Male	California	2020-09-24
60	Bob Lee	38	\N	Florida	2020-09-28
61	John Doe	30	Female	California	2020-12-19
62	Alice Johnson	68	\N	California	\N
63	Jane Smith	97	\N	Texas	2020-03-14
64	Alice Johnson	20	\N	New York	2020-11-28
65	Bob Lee	31	Female	Unknown	2020-11-27
66	Jane Smith	17	\N	New York	2020-03-28
67	John Doe	85	Female	New York	2020-11-27
68	John Doe	92	Non-binary	New York	2020-08-24
69	Charlie Brown	17	\N	Texas	2020-05-24
70	Jane Smith	74	Non-binary	Unknown	2020-01-06
71	Alice Johnson	99	Female	Texas	2020-06-05
72	John Doe	46	\N	California	2020-04-13
73	Jane Smith	77	Female	New York	2020-05-19
74	Bob Lee	95	\N	Florida	2020-01-05
75	John Doe	53	Male	Unknown	2020-11-05
76	Bob Lee	72	\N	Unknown	2020-11-20
77	Alice Johnson	38	Non-binary	Florida	2020-01-20
78	John Doe	64	Male	Unknown	2020-09-08
79	Bob Lee	52	Female	Florida	2020-06-21
80	Alice Johnson	82	Female	Unknown	2020-11-12
81	John Doe	17	Non-binary	Texas	2020-04-09
82	Alice Johnson	19	Female	California	2020-09-30
83	Alice Johnson	93	Non-binary	Unknown	2020-06-26
84	Jane Smith	72	Female	Texas	2020-06-16
85	John Doe	38	Female	Florida	\N
86	Bob Lee	65	Non-binary	\N	2020-10-16
87	John Doe	88	Male	Florida	2020-05-27
88	Bob Lee	37	Female	Unknown	2020-09-17
89	Alice Johnson	84	\N	Unknown	2020-08-30
90	Charlie Brown	89	Male	Unknown	2020-12-17
91	Jane Smith	31	Male	New York	2020-07-20
92	Charlie Brown	69	Non-binary	Florida	2020-09-30
93	Alice Johnson	\N	Female	Florida	2020-03-28
94	Jane Smith	93	\N	Florida	2020-01-19
95	Bob Lee	72	Male	Texas	2020-12-19
96	John Doe	53	Male	Florida	2020-04-28
97	Charlie Brown	56	Female	California	2020-12-06
98	Charlie Brown	36	Non-binary	Texas	2020-07-20
99	John Doe	32	Male	California	2020-09-18
100	Charlie Brown	20	\N	California	2020-06-24
101	Bob Lee	\N	Non-binary	California	2020-08-17
102	Charlie Brown	91	\N	Texas	2020-07-25
103	Alice Johnson	44	Non-binary	Florida	2020-01-06
104	Jane Smith	\N	\N	California	2020-01-05
105	Charlie Brown	36	\N	California	2020-08-21
106	John Doe	24	\N	Unknown	2020-04-05
107	John Doe	27	Non-binary	Texas	2020-06-15
108	Alice Johnson	78	Female	Florida	2020-12-09
109	Charlie Brown	26	Male	California	2020-07-07
110	Bob Lee	78	Non-binary	Unknown	2020-12-04
111	Jane Smith	64	Female	New York	2020-05-12
112	Alice Johnson	54	\N	California	2020-04-10
113	Charlie Brown	25	\N	Unknown	2020-05-18
114	Jane Smith	47	\N	New York	2020-05-15
115	Alice Johnson	32	\N	Unknown	2020-03-20
116	Alice Johnson	54	Female	Florida	2020-12-29
117	Jane Smith	69	Female	Texas	2020-12-01
118	Bob Lee	26	Non-binary	Unknown	2020-12-02
119	John Doe	96	\N	New York	2020-10-22
120	Alice Johnson	36	\N	Texas	2020-05-16
121	John Doe	17	Non-binary	Texas	2020-12-22
122	Charlie Brown	84	Male	Unknown	2020-07-11
123	John Doe	52	\N	Texas	2020-07-11
124	Alice Johnson	34	\N	California	2020-07-30
125	Bob Lee	66	Male	Texas	2020-03-15
126	Bob Lee	54	\N	Texas	2020-09-29
127	Charlie Brown	71	Non-binary	Florida	2020-03-22
128	Alice Johnson	51	Male	New York	2020-05-08
129	Bob Lee	78	Female	Texas	2020-01-07
130	Jane Smith	16	\N	New York	2020-01-14
131	Jane Smith	40	Male	Florida	2020-08-14
132	Bob Lee	35	\N	Texas	\N
133	Jane Smith	52	Non-binary	Florida	2020-04-25
134	Bob Lee	83	\N	Unknown	2020-12-02
135	Bob Lee	76	Female	Texas	2020-04-21
136	Alice Johnson	82	\N	Texas	2020-12-03
137	Bob Lee	49	Female	Texas	2020-05-26
138	Bob Lee	56	Male	California	2020-07-07
139	Bob Lee	30	Non-binary	California	2020-08-25
140	John Doe	17	\N	\N	2020-12-07
141	Charlie Brown	18	\N	California	2020-04-19
142	John Doe	44	Female	Texas	2020-01-14
143	John Doe	91	Male	Texas	2020-10-11
144	Jane Smith	72	Male	California	2020-09-18
145	Alice Johnson	\N	Non-binary	New York	2020-12-16
146	Jane Smith	87	Male	New York	2020-05-22
147	John Doe	94	Non-binary	Unknown	2020-04-23
148	Charlie Brown	66	\N	California	2020-06-02
149	Alice Johnson	54	\N	Unknown	2020-03-25
150	Jane Smith	82	\N	New York	2020-02-23
151	Alice Johnson	62	\N	New York	2020-07-23
152	Alice Johnson	57	Male	Florida	2020-05-23
153	John Doe	49	Male	California	2020-01-13
154	Alice Johnson	46	Non-binary	New York	2020-03-04
155	Jane Smith	90	\N	Unknown	2020-11-13
156	Charlie Brown	39	\N	Unknown	2020-09-15
157	Alice Johnson	24	Female	Florida	2020-01-16
158	Alice Johnson	69	Male	California	2020-08-31
159	Alice Johnson	19	Non-binary	Florida	2020-08-21
160	John Doe	99	Female	California	2020-03-08
161	Jane Smith	81	Female	Texas	2020-09-16
162	Alice Johnson	42	Male	New York	2020-03-21
163	John Doe	90	Female	Florida	2020-11-07
164	Charlie Brown	55	Female	Unknown	2020-10-08
165	Bob Lee	56	Male	California	2020-05-27
166	John Doe	58	\N	California	2020-04-01
167	Charlie Brown	94	Female	New York	2020-12-29
168	Alice Johnson	27	\N	California	2020-02-28
169	Bob Lee	66	Female	Florida	2020-12-29
170	Alice Johnson	55	Male	California	2020-10-14
171	Charlie Brown	39	\N	California	2020-07-21
172	Bob Lee	79	\N	New York	2020-09-18
173	Bob Lee	55	Male	California	2020-12-30
174	Bob Lee	83	Non-binary	Unknown	2020-09-07
175	Charlie Brown	52	Female	New York	2020-03-18
176	Bob Lee	32	Non-binary	Florida	2020-09-30
177	Alice Johnson	32	Female	Unknown	2020-09-14
178	John Doe	24	\N	California	2020-08-31
179	John Doe	89	\N	California	2020-07-26
180	John Doe	97	\N	Texas	2020-03-14
181	John Doe	82	Non-binary	New York	2020-11-05
182	John Doe	52	Male	New York	2020-12-05
183	John Doe	35	Female	Unknown	2020-08-15
184	Alice Johnson	39	Female	Unknown	2020-06-19
185	Alice Johnson	37	Male	\N	2020-10-02
186	Alice Johnson	97	\N	Florida	2020-06-05
187	Charlie Brown	97	\N	New York	2020-07-08
188	Jane Smith	\N	\N	New York	2020-04-13
189	Bob Lee	47	Non-binary	Florida	\N
190	Alice Johnson	83	\N	Florida	2020-01-30
191	Alice Johnson	26	Male	California	2020-05-07
192	Bob Lee	54	Male	Unknown	2020-03-14
193	Charlie Brown	76	Female	New York	2020-07-03
194	John Doe	98	Male	California	2020-01-22
195	John Doe	66	Female	New York	2020-10-11
196	Jane Smith	33	Male	Unknown	2020-12-16
197	Jane Smith	78	Male	Unknown	2020-07-16
198	Bob Lee	\N	Non-binary	Florida	2020-02-19
199	Alice Johnson	91	Non-binary	New York	2020-11-23
200	Jane Smith	49	\N	Texas	2020-01-02
201	Bob Lee	51	Male	California	2020-01-25
202	Jane Smith	94	Non-binary	Texas	2020-12-23
203	Charlie Brown	48	Non-binary	California	2020-02-27
204	Bob Lee	65	Female	New York	2020-11-10
205	Bob Lee	80	Non-binary	Texas	2020-12-21
206	Charlie Brown	50	Non-binary	Texas	2020-03-31
207	John Doe	18	Male	Unknown	2020-01-01
208	Bob Lee	22	Female	Unknown	2020-07-31
209	Charlie Brown	58	\N	California	2020-09-30
210	John Doe	37	Non-binary	\N	2020-06-17
211	Charlie Brown	19	Female	Florida	2020-05-01
212	Alice Johnson	83	Male	California	2020-09-30
213	John Doe	78	Non-binary	Unknown	2020-05-27
214	John Doe	\N	Male	Texas	2020-06-24
215	John Doe	74	Female	Unknown	2020-03-27
216	Jane Smith	88	\N	Florida	2020-05-16
217	Jane Smith	\N	Non-binary	Unknown	2020-03-06
218	Bob Lee	44	\N	Unknown	2020-12-10
219	Alice Johnson	66	\N	New York	2020-12-23
220	Charlie Brown	68	\N	New York	2020-08-26
221	John Doe	85	Female	Florida	2020-02-23
222	Charlie Brown	26	Male	New York	2020-10-12
223	John Doe	75	Non-binary	Texas	2020-06-24
224	John Doe	99	\N	New York	2020-08-01
225	Bob Lee	17	\N	Florida	2020-05-02
226	John Doe	27	Non-binary	Unknown	2020-07-24
227	Charlie Brown	31	Female	Texas	2020-09-28
228	John Doe	57	Non-binary	Texas	2020-11-29
229	Bob Lee	88	Male	New York	2020-11-30
230	Jane Smith	15	\N	Unknown	2020-04-17
231	John Doe	79	Female	Texas	2020-03-28
232	John Doe	88	Male	Florida	2020-10-26
233	Charlie Brown	91	Male	Unknown	2020-06-15
234	Charlie Brown	50	Non-binary	California	2020-01-15
235	Alice Johnson	98	Male	California	2020-07-24
236	Jane Smith	97	Non-binary	Florida	2020-04-24
237	Alice Johnson	48	Female	California	2020-09-14
238	Bob Lee	58	Non-binary	Florida	2020-01-08
239	Bob Lee	28	\N	New York	2020-11-05
240	Bob Lee	61	Non-binary	Unknown	2020-05-08
241	Charlie Brown	24	Male	Florida	2020-03-28
242	Alice Johnson	53	Male	California	2020-02-20
243	Jane Smith	71	Male	California	2020-05-22
244	Charlie Brown	77	Female	\N	2020-01-09
245	Charlie Brown	66	Female	California	2020-07-26
246	John Doe	54	Male	New York	2020-11-13
247	Bob Lee	27	Female	Unknown	2020-07-20
248	Bob Lee	21	Non-binary	Florida	2020-06-08
249	Jane Smith	42	Non-binary	Unknown	2020-05-15
250	Bob Lee	34	Male	Unknown	2020-04-14
251	Bob Lee	32	\N	New York	2020-11-24
252	Alice Johnson	38	Female	New York	2020-02-17
253	Jane Smith	94	Female	California	2020-02-10
254	Alice Johnson	\N	\N	Florida	2020-12-06
255	John Doe	64	Male	Unknown	2020-05-02
256	John Doe	20	Male	Unknown	2020-03-18
257	Alice Johnson	92	\N	Texas	2020-03-29
258	Jane Smith	84	\N	Texas	2020-12-05
259	Bob Lee	79	Female	Florida	2020-08-23
260	Alice Johnson	65	Male	Unknown	2020-04-01
261	Jane Smith	91	Female	Unknown	2020-04-25
262	Jane Smith	61	\N	California	2020-06-27
263	Alice Johnson	59	Non-binary	Unknown	2020-02-06
264	Charlie Brown	98	Male	California	2020-06-10
265	Charlie Brown	71	Female	Texas	2020-01-16
266	Jane Smith	69	Female	Florida	2020-01-09
267	Alice Johnson	15	Non-binary	New York	2020-01-19
268	Bob Lee	35	Female	California	2020-07-01
269	Bob Lee	61	Female	New York	2020-02-12
270	Alice Johnson	36	\N	Florida	2020-01-22
271	Charlie Brown	57	\N	New York	2020-05-28
272	John Doe	77	Female	Texas	2020-03-13
273	Jane Smith	74	Male	Texas	2020-05-22
274	Alice Johnson	47	\N	Florida	2020-06-24
275	Jane Smith	49	\N	New York	2020-01-13
276	Alice Johnson	19	\N	California	2020-01-27
277	Bob Lee	62	Non-binary	Unknown	2020-01-30
278	Bob Lee	23	\N	Unknown	2020-02-15
279	Bob Lee	57	Male	Texas	2020-09-23
280	John Doe	68	Female	\N	2020-03-30
281	Charlie Brown	82	Male	New York	2020-11-17
282	John Doe	67	Non-binary	New York	2020-11-19
283	Charlie Brown	96	Female	Texas	2020-11-19
284	Jane Smith	66	Male	California	2020-07-26
285	Alice Johnson	78	Non-binary	California	2020-07-18
286	Charlie Brown	47	Female	Florida	2020-05-25
287	Bob Lee	70	Male	New York	2020-08-30
288	Alice Johnson	51	Female	California	2020-12-25
289	John Doe	81	Non-binary	Texas	2020-02-03
290	Charlie Brown	69	\N	Unknown	2020-12-14
291	Jane Smith	21	Male	Unknown	2020-01-21
292	Bob Lee	53	Male	New York	2020-07-08
293	Charlie Brown	36	Non-binary	New York	2020-03-10
294	Charlie Brown	84	\N	Unknown	2020-10-13
295	Charlie Brown	20	Female	California	2020-06-06
296	Bob Lee	78	\N	California	2020-04-22
297	Jane Smith	77	Male	Florida	2020-04-09
298	Alice Johnson	28	Non-binary	California	2020-09-11
299	Bob Lee	80	Male	Florida	2020-08-05
300	Jane Smith	75	Female	California	2020-04-12
301	Jane Smith	30	Male	Texas	2020-02-23
302	John Doe	48	\N	California	2020-07-01
303	Jane Smith	51	Non-binary	Texas	2020-07-27
304	Bob Lee	54	Female	Texas	2020-11-18
305	Alice Johnson	18	Non-binary	Unknown	2020-09-29
306	Charlie Brown	33	Female	New York	2020-12-27
307	Alice Johnson	62	Male	Florida	2020-06-12
308	Alice Johnson	\N	\N	New York	2020-08-30
309	Bob Lee	38	Male	California	2020-09-08
310	Alice Johnson	50	Male	California	2020-04-19
311	Charlie Brown	88	Male	New York	2020-10-02
312	Bob Lee	98	Male	New York	2020-02-03
313	Bob Lee	57	Non-binary	Texas	2020-07-13
314	John Doe	90	Male	California	2020-04-27
315	John Doe	73	Non-binary	California	2020-09-18
316	John Doe	\N	Female	Texas	2020-11-25
317	Charlie Brown	66	Male	New York	2020-10-25
318	Alice Johnson	16	Female	Florida	2020-03-10
319	Charlie Brown	17	Female	New York	2020-09-19
320	Charlie Brown	81	Male	\N	2020-08-27
321	Jane Smith	20	Female	New York	2020-08-31
322	Charlie Brown	52	\N	New York	2020-01-04
323	John Doe	86	Female	California	2020-07-07
324	Charlie Brown	64	Female	Florida	2020-10-12
325	John Doe	15	\N	Texas	2020-02-09
326	Alice Johnson	33	Non-binary	California	2020-09-08
327	Jane Smith	96	Male	Texas	2020-01-29
328	Jane Smith	43	Female	New York	2020-11-13
329	Jane Smith	32	Male	Texas	2020-02-16
330	Bob Lee	59	\N	Texas	2020-07-28
331	Charlie Brown	19	Non-binary	Unknown	2020-01-03
332	Bob Lee	66	Male	Florida	2020-05-07
333	Jane Smith	67	Male	Florida	2020-09-17
334	Bob Lee	68	Female	New York	2020-06-10
335	Jane Smith	86	\N	Texas	2020-05-05
336	John Doe	68	\N	California	2020-08-17
337	Charlie Brown	68	Non-binary	Florida	2020-01-21
338	Alice Johnson	82	Non-binary	New York	2020-10-06
339	Alice Johnson	23	Non-binary	New York	2020-06-25
340	Charlie Brown	59	Male	Texas	2020-12-18
341	John Doe	42	Male	New York	2020-12-27
342	Jane Smith	77	Male	Texas	2020-08-16
343	Bob Lee	\N	Non-binary	Florida	2020-04-21
344	John Doe	63	\N	Unknown	2020-06-25
345	Alice Johnson	97	Female	California	2020-11-07
346	Bob Lee	50	Male	Florida	\N
347	Bob Lee	65	\N	Unknown	2020-01-04
348	Bob Lee	27	Male	Texas	2020-08-21
349	Jane Smith	78	Non-binary	Florida	2020-06-05
350	Alice Johnson	26	\N	Texas	\N
351	John Doe	81	Male	\N	2020-11-22
352	Bob Lee	44	Male	New York	2020-04-06
353	John Doe	47	Non-binary	Florida	2020-08-29
354	John Doe	45	Female	Unknown	2020-03-04
355	Alice Johnson	40	Non-binary	Florida	2020-08-28
356	Charlie Brown	57	\N	Florida	2020-06-11
357	Bob Lee	\N	\N	California	2020-10-29
358	John Doe	93	\N	Texas	2020-10-08
359	Charlie Brown	97	\N	Texas	2020-10-31
360	Alice Johnson	30	\N	New York	2020-06-17
361	John Doe	78	Non-binary	California	2020-07-09
362	Charlie Brown	99	\N	New York	2020-12-20
363	Charlie Brown	71	Female	Florida	2020-02-07
364	Bob Lee	39	Non-binary	Texas	2020-06-01
365	Jane Smith	82	Male	Unknown	2020-10-25
366	Bob Lee	88	Non-binary	Unknown	2020-06-29
367	John Doe	49	Male	Unknown	2020-08-14
368	Bob Lee	88	Non-binary	California	2020-03-12
369	Alice Johnson	42	Female	Texas	2020-06-29
370	Jane Smith	\N	Non-binary	Texas	2020-09-21
371	Bob Lee	57	\N	Florida	2020-12-10
372	Charlie Brown	\N	Male	Florida	2020-04-27
373	Alice Johnson	43	\N	Florida	2020-01-25
374	Alice Johnson	36	Male	Florida	2020-09-28
375	Alice Johnson	52	Female	\N	2020-02-05
376	John Doe	57	\N	Florida	2020-06-15
377	Jane Smith	31	Female	Texas	2020-05-13
378	Jane Smith	64	Male	Unknown	2020-07-23
379	Charlie Brown	87	Female	Texas	2020-10-10
380	Charlie Brown	46	Non-binary	Unknown	2020-04-07
381	Bob Lee	68	Female	Florida	2020-08-22
382	John Doe	67	\N	New York	2020-06-02
383	Bob Lee	47	\N	Florida	2020-06-10
384	Charlie Brown	70	\N	California	2020-11-24
385	John Doe	44	Non-binary	Florida	2020-02-16
386	Bob Lee	64	Non-binary	California	2020-11-19
387	Bob Lee	24	Non-binary	Texas	2020-02-02
388	Charlie Brown	46	Female	Unknown	2020-02-15
389	Jane Smith	29	\N	New York	2020-05-13
390	Bob Lee	36	\N	California	2020-01-20
391	Bob Lee	65	Non-binary	Florida	2020-10-18
392	John Doe	57	Female	Florida	2020-01-10
393	John Doe	53	Non-binary	New York	2020-05-14
394	Charlie Brown	62	Non-binary	California	2020-04-19
395	Alice Johnson	31	Non-binary	New York	2020-06-29
396	Bob Lee	\N	Female	Unknown	2020-12-01
397	Bob Lee	83	\N	Texas	2020-06-18
398	Bob Lee	33	Male	Unknown	2020-07-24
399	Jane Smith	\N	Non-binary	New York	2020-07-08
400	Bob Lee	29	Non-binary	Unknown	2020-04-20
401	Alice Johnson	46	Male	Texas	2020-10-23
402	Alice Johnson	69	Non-binary	Unknown	2020-11-16
403	Bob Lee	81	\N	Florida	2020-05-25
404	Jane Smith	49	\N	Texas	2020-03-20
405	John Doe	99	Non-binary	Texas	2020-10-22
406	John Doe	21	Male	New York	2020-12-16
407	Jane Smith	65	Non-binary	Florida	2020-10-28
408	John Doe	62	Non-binary	Florida	2020-08-18
409	Bob Lee	52	Female	Texas	2020-06-26
410	Jane Smith	48	Female	Florida	2020-09-14
411	John Doe	83	Male	Texas	2020-05-11
412	Jane Smith	82	Female	New York	2020-05-18
413	John Doe	96	Male	Unknown	2020-02-13
414	Bob Lee	37	Female	Florida	2020-12-03
415	Bob Lee	81	\N	Texas	\N
416	Alice Johnson	67	Female	California	2020-05-12
417	Jane Smith	46	Female	Texas	2020-04-08
418	Jane Smith	54	Non-binary	Unknown	2020-06-16
419	Bob Lee	96	Non-binary	California	2020-05-15
420	Jane Smith	67	\N	Florida	2020-07-25
421	Charlie Brown	86	Female	New York	2020-01-08
422	Jane Smith	96	Female	Florida	2020-12-14
423	Charlie Brown	\N	\N	Unknown	2020-09-10
424	John Doe	65	Non-binary	California	2020-07-09
425	Alice Johnson	85	\N	Texas	2020-11-05
426	John Doe	57	\N	New York	2020-02-10
427	Alice Johnson	68	Non-binary	Florida	2020-05-07
428	Jane Smith	75	Non-binary	California	2020-01-15
429	Alice Johnson	75	\N	Texas	2020-07-09
430	Alice Johnson	51	Female	California	2020-09-09
431	John Doe	87	Male	California	2020-09-28
432	Alice Johnson	74	\N	Florida	2020-10-05
433	John Doe	68	\N	Texas	2020-12-07
434	Bob Lee	93	Female	California	2020-05-27
435	Bob Lee	34	Female	Texas	2020-09-03
436	Alice Johnson	96	Non-binary	New York	2020-10-08
437	Charlie Brown	91	\N	California	2020-07-05
438	Alice Johnson	85	Female	Florida	2020-10-28
439	Jane Smith	57	Male	Texas	2020-01-21
440	Alice Johnson	99	Male	New York	2020-03-25
441	Jane Smith	56	Male	New York	2020-11-14
442	Bob Lee	47	Male	Texas	2020-04-20
443	John Doe	98	\N	Unknown	2020-04-13
444	Bob Lee	\N	Male	California	2020-05-25
445	Alice Johnson	54	Non-binary	New York	2020-12-26
446	Bob Lee	99	\N	Texas	2020-01-28
447	John Doe	28	Non-binary	Texas	2020-11-08
448	Alice Johnson	85	Non-binary	California	2020-07-06
449	John Doe	58	Non-binary	California	2020-03-04
450	Bob Lee	40	\N	Unknown	2020-06-28
451	John Doe	89	Female	California	2020-07-20
452	Charlie Brown	95	Non-binary	\N	2020-09-29
453	Alice Johnson	62	\N	California	2020-05-30
454	Bob Lee	63	Non-binary	California	2020-04-13
455	Bob Lee	66	Female	Florida	2020-11-26
456	John Doe	69	\N	California	2020-04-11
457	Bob Lee	56	\N	Texas	\N
458	Bob Lee	92	\N	Unknown	2020-09-20
459	Alice Johnson	17	Non-binary	Florida	2020-07-15
460	Jane Smith	94	Male	Unknown	2020-11-28
461	Alice Johnson	33	Female	Unknown	2020-10-14
462	John Doe	64	Non-binary	California	2020-07-29
463	Charlie Brown	47	Female	Unknown	2020-08-05
464	Charlie Brown	96	\N	New York	2020-12-31
465	Bob Lee	18	Female	Texas	2020-03-02
466	Bob Lee	38	\N	New York	2020-06-15
467	Charlie Brown	92	Female	Florida	2020-10-28
468	Alice Johnson	72	\N	Florida	2020-02-02
469	John Doe	48	Non-binary	Florida	2020-10-29
470	Jane Smith	70	Non-binary	California	2020-02-11
471	Charlie Brown	31	Male	Unknown	2020-07-03
472	Alice Johnson	74	Female	Texas	2020-09-05
473	Bob Lee	98	\N	Texas	2020-01-05
474	Jane Smith	56	Male	Florida	2020-11-04
475	Bob Lee	76	\N	Texas	2020-01-17
476	Jane Smith	39	\N	Unknown	2020-08-09
477	Jane Smith	39	Female	Unknown	2020-12-13
478	Jane Smith	96	Female	New York	2020-06-26
479	Charlie Brown	20	Female	Texas	2020-08-27
480	John Doe	41	Male	Texas	2020-03-26
481	Charlie Brown	75	\N	Texas	2020-05-24
482	Bob Lee	99	\N	New York	2020-11-11
483	John Doe	38	Non-binary	Unknown	2020-07-04
484	John Doe	23	Male	Texas	2020-10-14
485	Charlie Brown	47	\N	Unknown	2020-10-28
486	Bob Lee	80	Female	Florida	2020-08-08
487	Alice Johnson	18	\N	Unknown	2020-01-01
488	Charlie Brown	41	Male	Texas	2020-12-11
489	Jane Smith	90	\N	California	2020-11-17
490	Charlie Brown	64	Female	Texas	2020-12-28
491	John Doe	69	Male	New York	2020-08-20
492	Bob Lee	90	Female	California	2020-05-06
493	Jane Smith	45	\N	Unknown	2020-04-27
494	Charlie Brown	93	Male	Texas	2020-02-16
495	Bob Lee	56	Female	Texas	2020-04-13
496	Charlie Brown	77	Female	California	2020-12-02
497	John Doe	15	Male	\N	2020-11-24
498	John Doe	85	Female	New York	2020-02-29
499	Charlie Brown	82	Non-binary	New York	2020-04-04
500	Jane Smith	72	\N	Unknown	2020-05-20
501	John Doe	15	\N	Unknown	2020-02-03
502	Bob Lee	22	Non-binary	Florida	2020-10-23
503	Jane Smith	40	Male	Unknown	2020-02-05
504	Alice Johnson	64	Male	Unknown	2020-07-31
505	Alice Johnson	97	\N	Unknown	2020-06-26
506	Alice Johnson	99	Female	Texas	2020-08-17
507	Bob Lee	64	\N	Florida	2020-07-15
508	Charlie Brown	67	Male	Texas	2020-11-27
509	John Doe	19	Female	Texas	2020-07-15
510	Alice Johnson	80	Non-binary	California	2020-12-16
511	Alice Johnson	30	Male	Texas	2020-12-30
512	John Doe	44	Female	California	2020-07-18
513	Charlie Brown	41	Female	California	2020-10-26
514	Alice Johnson	76	Male	Unknown	2020-02-03
515	John Doe	15	Non-binary	New York	2020-12-17
516	John Doe	32	Non-binary	California	2020-03-26
517	Charlie Brown	96	Male	Unknown	2020-09-28
518	John Doe	76	Non-binary	California	2020-01-21
519	Jane Smith	79	\N	California	2020-12-24
520	Bob Lee	75	Male	Unknown	2020-02-24
521	Jane Smith	\N	Female	Texas	2020-04-30
522	Alice Johnson	74	\N	Unknown	2020-09-23
523	Alice Johnson	60	Male	New York	2020-05-03
524	Jane Smith	35	\N	California	2020-01-20
525	Alice Johnson	89	\N	Florida	2020-02-21
526	Jane Smith	60	Female	New York	2020-01-01
527	Charlie Brown	94	Female	Florida	2020-09-25
528	Jane Smith	42	Female	Unknown	2020-05-14
529	Alice Johnson	99	Non-binary	Texas	2020-07-02
530	Jane Smith	70	\N	Texas	2020-10-25
531	Alice Johnson	27	\N	Florida	2020-02-12
532	John Doe	84	Non-binary	New York	2020-12-25
533	Bob Lee	50	Female	California	2020-10-28
534	Alice Johnson	46	\N	California	2020-03-23
535	Bob Lee	18	Non-binary	Texas	2020-08-16
536	Bob Lee	46	Male	Florida	2020-07-26
537	Alice Johnson	68	Female	Florida	2020-07-05
538	Alice Johnson	78	Female	Unknown	2020-04-29
539	Jane Smith	63	Non-binary	Texas	2020-11-01
540	Alice Johnson	31	\N	New York	2020-10-28
541	Charlie Brown	66	Male	New York	2020-03-01
542	Alice Johnson	56	\N	\N	2020-09-07
543	John Doe	24	Non-binary	Unknown	2020-03-06
544	Jane Smith	90	\N	Unknown	2020-02-17
545	Jane Smith	63	Male	Unknown	2020-06-08
546	Bob Lee	39	Non-binary	Unknown	2020-07-24
547	Bob Lee	\N	Male	Texas	2020-08-15
548	Alice Johnson	66	Male	New York	2020-07-10
549	Bob Lee	90	Female	Unknown	2020-08-02
550	Bob Lee	46	Female	California	2020-06-30
551	John Doe	41	Female	New York	2020-10-20
552	Jane Smith	45	\N	Unknown	2020-05-02
553	Bob Lee	87	Female	Texas	2020-03-10
554	Alice Johnson	60	\N	New York	2020-02-22
555	Charlie Brown	75	\N	Florida	2020-04-14
556	Alice Johnson	43	Non-binary	Texas	2020-01-07
557	Jane Smith	67	Male	Florida	2020-08-06
558	John Doe	33	\N	Unknown	2020-05-30
559	John Doe	55	Female	Florida	2020-08-03
560	Alice Johnson	25	\N	Florida	2020-04-09
561	Jane Smith	61	Male	New York	2020-06-29
562	Jane Smith	\N	Male	Texas	2020-04-28
563	John Doe	\N	\N	New York	2020-08-15
564	Jane Smith	40	Female	California	2020-07-03
565	Charlie Brown	\N	Male	Texas	2020-05-07
566	Alice Johnson	50	Male	New York	2020-05-05
567	Jane Smith	85	Male	Florida	2020-07-15
568	Jane Smith	98	Male	\N	2020-04-06
569	Charlie Brown	36	Non-binary	Texas	2020-01-22
570	John Doe	52	Female	Texas	2020-02-08
571	Jane Smith	46	Male	California	2020-08-15
572	John Doe	63	Female	Unknown	\N
573	Alice Johnson	63	\N	Texas	2020-05-01
574	Charlie Brown	54	Non-binary	California	2020-08-28
575	Charlie Brown	60	Male	California	2020-09-05
576	Charlie Brown	50	Male	California	2020-08-21
577	Alice Johnson	18	Male	Texas	2020-06-13
578	Alice Johnson	91	Male	Unknown	2020-09-05
579	Bob Lee	38	Non-binary	New York	2020-02-17
580	John Doe	28	Non-binary	Florida	2020-08-07
581	Jane Smith	62	\N	Texas	2020-12-23
582	Jane Smith	27	\N	California	2020-08-26
583	Jane Smith	31	Non-binary	Texas	2020-04-16
584	Bob Lee	88	Female	Unknown	2020-02-29
585	Alice Johnson	42	Male	Unknown	2020-07-19
586	Charlie Brown	\N	\N	California	2020-11-26
587	Jane Smith	33	Female	California	2020-09-03
588	Bob Lee	91	Female	California	2020-01-10
589	Charlie Brown	78	Male	Unknown	2020-07-02
590	Alice Johnson	46	Male	New York	2020-04-12
591	John Doe	84	\N	Texas	2020-11-28
592	Jane Smith	59	Female	New York	2020-09-23
593	Jane Smith	55	Male	Unknown	2020-01-09
594	Alice Johnson	54	Female	New York	2020-10-13
595	Charlie Brown	97	Non-binary	Unknown	2020-09-06
596	Bob Lee	30	Male	New York	2020-11-11
597	John Doe	31	Male	Unknown	2020-09-25
598	Bob Lee	60	Male	California	2020-02-01
599	Jane Smith	57	Non-binary	Texas	2020-09-12
600	Jane Smith	34	Female	New York	2020-05-09
601	Charlie Brown	36	Female	Unknown	2020-04-02
602	Charlie Brown	78	Female	New York	2020-12-23
603	John Doe	\N	Non-binary	Texas	2020-08-12
604	John Doe	61	Male	Florida	2020-10-14
605	Charlie Brown	62	Male	New York	2020-07-03
606	Charlie Brown	36	Non-binary	Unknown	2020-11-13
607	John Doe	46	Non-binary	Florida	2020-10-31
608	Alice Johnson	37	Non-binary	California	2020-04-06
609	Charlie Brown	\N	Male	New York	2020-12-24
610	Charlie Brown	34	Non-binary	Florida	2020-01-22
611	Alice Johnson	92	Male	New York	2020-06-28
612	Bob Lee	52	Male	Texas	2020-05-06
613	Jane Smith	89	Non-binary	Unknown	2020-12-06
614	Bob Lee	61	Non-binary	Texas	2020-04-19
615	Alice Johnson	31	Non-binary	Texas	2020-04-25
616	Jane Smith	19	Male	\N	2020-08-05
617	Bob Lee	86	Female	Florida	2020-12-17
618	Charlie Brown	\N	Male	California	\N
619	Alice Johnson	68	Male	Florida	2020-02-12
620	Jane Smith	44	Female	Unknown	2020-04-21
621	Bob Lee	28	\N	California	2020-05-01
622	Jane Smith	80	Male	Texas	\N
623	Charlie Brown	27	Non-binary	New York	2020-04-07
624	John Doe	15	Female	New York	2020-03-06
625	Alice Johnson	28	Female	New York	2020-12-28
626	John Doe	44	Male	New York	2020-08-25
627	Jane Smith	84	\N	Florida	2020-05-27
628	Bob Lee	76	Female	Florida	2020-11-27
629	Bob Lee	19	\N	Florida	2020-11-30
630	Charlie Brown	15	Female	New York	2020-03-04
631	Bob Lee	40	Male	Florida	2020-08-31
632	Charlie Brown	\N	Female	California	2020-05-10
633	John Doe	30	Non-binary	Unknown	2020-08-27
634	John Doe	41	\N	California	2020-08-10
635	Alice Johnson	30	Male	Unknown	2020-06-23
636	John Doe	41	\N	Florida	2020-10-08
637	John Doe	54	Male	California	2020-03-30
638	Alice Johnson	66	Non-binary	Unknown	2020-06-15
639	Bob Lee	69	\N	California	2020-02-16
640	Jane Smith	\N	Male	Texas	2020-02-02
641	Bob Lee	35	\N	New York	2020-09-27
642	Bob Lee	49	Male	Texas	2020-09-10
643	Jane Smith	93	Male	Unknown	2020-08-06
644	Alice Johnson	20	\N	Florida	2020-07-07
645	Bob Lee	71	\N	New York	2020-05-26
646	Charlie Brown	\N	Female	Texas	2020-03-23
647	Charlie Brown	66	\N	Florida	2020-11-23
648	Jane Smith	24	Male	California	2020-11-08
649	Alice Johnson	98	\N	Florida	2020-02-05
650	Bob Lee	53	\N	New York	2020-11-29
651	Jane Smith	68	\N	Florida	2020-09-17
652	Charlie Brown	\N	Female	Texas	2020-10-12
653	John Doe	97	Female	Unknown	2020-09-01
654	Alice Johnson	60	Female	Texas	2020-02-18
655	Jane Smith	63	Female	Texas	2020-07-23
656	Charlie Brown	94	Female	Florida	2020-05-12
657	Alice Johnson	90	\N	Texas	\N
658	Alice Johnson	62	Female	California	2020-01-15
659	John Doe	77	Male	New York	2020-06-10
660	Alice Johnson	38	\N	Unknown	\N
661	John Doe	81	\N	Texas	2020-02-04
662	John Doe	25	Female	New York	2020-04-04
663	Jane Smith	74	Female	Florida	2020-03-24
664	Jane Smith	59	Female	Unknown	2020-09-17
665	Charlie Brown	83	\N	Florida	2020-01-31
666	John Doe	57	Non-binary	California	2020-12-20
667	Bob Lee	44	\N	Unknown	2020-09-24
668	Jane Smith	\N	Non-binary	California	2020-07-30
669	Bob Lee	\N	\N	Unknown	2020-03-22
670	Charlie Brown	60	\N	Texas	2020-08-29
671	Bob Lee	23	Non-binary	Florida	2020-10-14
672	John Doe	40	Male	California	2020-04-03
673	John Doe	42	\N	California	2020-03-14
674	Alice Johnson	63	Male	California	2020-11-15
675	Charlie Brown	53	\N	\N	2020-01-03
676	Bob Lee	68	\N	Texas	2020-02-24
677	Charlie Brown	82	Male	New York	2020-07-29
678	Bob Lee	\N	Female	Texas	2020-11-22
679	John Doe	85	Non-binary	California	2020-09-25
680	John Doe	22	\N	Unknown	2020-03-29
681	Alice Johnson	61	Non-binary	Florida	2020-04-16
682	Alice Johnson	70	Female	Unknown	2020-12-18
683	Charlie Brown	76	Non-binary	New York	2020-07-27
684	Charlie Brown	53	Male	California	2020-12-20
685	John Doe	27	Non-binary	Florida	2020-08-25
686	Bob Lee	63	Non-binary	Texas	2020-10-30
687	Bob Lee	68	\N	California	2020-11-26
688	Bob Lee	88	Non-binary	New York	2020-08-12
689	Bob Lee	45	\N	Florida	2020-02-02
690	Charlie Brown	23	Non-binary	Texas	2020-12-30
691	Bob Lee	32	Non-binary	New York	2020-09-19
692	Alice Johnson	37	Female	New York	2020-05-02
693	John Doe	36	\N	California	2020-10-22
694	John Doe	41	\N	California	2020-01-08
695	John Doe	58	Female	Unknown	2020-04-01
696	Alice Johnson	39	Male	Florida	2020-02-15
697	Alice Johnson	45	Male	Texas	2020-05-27
698	John Doe	80	Female	Texas	2020-02-03
699	Bob Lee	70	\N	California	2020-01-02
700	Jane Smith	70	Male	Texas	2020-07-28
701	Alice Johnson	39	\N	California	2020-08-10
702	Jane Smith	35	\N	Unknown	2020-07-13
703	John Doe	93	\N	Florida	2020-12-12
704	John Doe	52	Male	California	2020-11-04
705	Jane Smith	67	Male	Florida	2020-07-14
706	Alice Johnson	35	\N	California	2020-04-22
707	Bob Lee	34	Non-binary	New York	2020-02-28
708	Jane Smith	85	Non-binary	California	2020-05-14
709	Jane Smith	71	Female	Unknown	2020-07-24
710	Charlie Brown	69	\N	California	2020-08-29
711	Alice Johnson	42	Non-binary	New York	2020-11-06
712	Jane Smith	73	Male	California	2020-02-24
713	Jane Smith	28	\N	Texas	2020-02-28
714	Alice Johnson	97	\N	New York	2020-09-28
715	Charlie Brown	32	Female	Unknown	2020-04-12
716	John Doe	35	Male	\N	2020-01-23
717	Jane Smith	99	\N	Texas	2020-02-16
718	Alice Johnson	40	Non-binary	Texas	2020-03-31
719	Alice Johnson	18	Male	California	2020-06-10
720	John Doe	50	Non-binary	New York	2020-10-09
721	Jane Smith	96	Non-binary	\N	2020-07-22
722	Charlie Brown	\N	Non-binary	Unknown	2020-11-14
723	Charlie Brown	85	\N	New York	2020-06-07
724	Charlie Brown	88	Non-binary	New York	2020-11-17
725	Bob Lee	48	Non-binary	Florida	2020-10-28
726	Jane Smith	24	Male	Florida	2020-07-05
727	John Doe	57	Non-binary	\N	2020-07-03
728	Bob Lee	78	Female	Texas	2020-10-24
729	Bob Lee	24	Non-binary	Unknown	2020-03-24
730	Bob Lee	52	\N	New York	2020-09-26
731	Bob Lee	72	Male	California	2020-05-01
732	John Doe	73	Male	Florida	2020-04-07
733	Charlie Brown	68	\N	Texas	2020-07-21
734	Bob Lee	32	\N	Florida	2020-08-19
735	Charlie Brown	17	Female	Texas	2020-05-20
736	Alice Johnson	71	Non-binary	California	2020-06-16
737	Alice Johnson	75	Male	New York	2020-08-28
738	Charlie Brown	60	Non-binary	California	2020-11-06
739	John Doe	67	\N	New York	2020-06-21
740	John Doe	86	\N	Unknown	2020-09-16
741	Bob Lee	\N	Female	Florida	2020-03-29
742	Alice Johnson	85	Non-binary	California	2020-07-03
743	Charlie Brown	67	\N	New York	2020-07-25
744	Bob Lee	78	Male	Florida	2020-10-21
745	John Doe	19	Male	New York	\N
746	John Doe	46	Male	New York	2020-01-13
747	Jane Smith	77	Female	California	2020-12-11
748	Alice Johnson	93	Non-binary	California	2020-04-15
749	Charlie Brown	24	Non-binary	California	2020-05-25
750	Alice Johnson	23	\N	Texas	2020-04-30
751	Jane Smith	86	Female	Florida	2020-09-18
752	Alice Johnson	77	\N	California	2020-03-08
753	Charlie Brown	84	Non-binary	\N	2020-01-04
754	John Doe	50	Male	Texas	2020-05-07
755	Alice Johnson	20	Male	California	2020-11-24
756	Jane Smith	58	Female	Unknown	2020-05-07
757	Jane Smith	58	\N	Unknown	2020-03-05
758	Jane Smith	79	Non-binary	California	2020-06-30
759	John Doe	37	Female	Florida	2020-09-13
760	Charlie Brown	63	Female	New York	2020-04-27
761	Alice Johnson	\N	Female	New York	2020-07-27
762	Bob Lee	92	Female	California	2020-06-18
763	Charlie Brown	96	Female	California	2020-11-27
764	Bob Lee	58	Non-binary	California	2020-12-09
765	John Doe	97	\N	Texas	2020-01-10
766	Jane Smith	86	Female	California	2020-04-15
767	Bob Lee	52	Male	Texas	2020-04-23
768	John Doe	59	Male	Unknown	2020-05-26
769	Jane Smith	16	\N	Texas	2020-06-30
770	Bob Lee	63	\N	California	2020-10-30
771	Charlie Brown	58	Female	New York	2020-05-10
772	Alice Johnson	25	Male	Florida	2020-08-25
773	Charlie Brown	43	Male	Unknown	2020-03-18
774	John Doe	78	Female	Unknown	2020-08-01
775	John Doe	75	Non-binary	Florida	2020-11-17
776	Alice Johnson	\N	Non-binary	New York	2020-06-06
777	Jane Smith	39	Non-binary	California	2020-11-25
778	Jane Smith	72	Female	Florida	2020-08-23
779	John Doe	49	Male	New York	2020-03-26
780	Jane Smith	27	Male	\N	2020-10-23
781	Jane Smith	54	Male	Texas	2020-10-25
782	John Doe	71	\N	Texas	2020-12-11
783	Bob Lee	86	Female	Texas	2020-02-25
784	Bob Lee	77	\N	Texas	2020-09-14
785	John Doe	36	Non-binary	Unknown	2020-10-31
786	Jane Smith	49	Male	California	2020-12-01
787	John Doe	37	Male	Unknown	2020-04-02
788	John Doe	23	Non-binary	Florida	2020-04-13
789	Bob Lee	32	Female	Florida	2020-02-03
790	Bob Lee	79	Male	Texas	2020-04-11
791	Bob Lee	26	Female	Texas	2020-12-11
792	Bob Lee	50	Male	New York	2020-09-22
793	Charlie Brown	52	Male	Florida	2020-11-02
794	Alice Johnson	81	\N	Florida	2020-11-17
795	Charlie Brown	64	Male	Texas	2020-07-08
796	Bob Lee	89	Female	Unknown	2020-07-11
797	Charlie Brown	72	Female	Florida	2020-09-08
798	Jane Smith	33	Male	Unknown	2020-05-29
799	Alice Johnson	\N	\N	Texas	2020-05-28
800	Jane Smith	56	Female	New York	2020-09-25
801	Alice Johnson	62	Female	Texas	2020-02-22
802	Jane Smith	77	\N	Florida	2020-02-19
803	John Doe	72	Female	Florida	2020-11-21
804	Alice Johnson	\N	Non-binary	New York	2020-02-11
805	Bob Lee	17	\N	Texas	2020-08-04
806	Alice Johnson	57	Male	Texas	2020-07-01
807	John Doe	77	Non-binary	Florida	2020-07-16
808	Alice Johnson	24	Male	Florida	2020-01-01
809	Bob Lee	\N	Female	California	2020-05-04
810	Charlie Brown	93	Female	Florida	2020-06-02
811	Bob Lee	45	Non-binary	Unknown	2020-06-06
812	Charlie Brown	64	Male	New York	2020-08-04
813	Charlie Brown	77	Non-binary	New York	2020-02-26
814	Bob Lee	81	Female	\N	2020-07-22
815	John Doe	20	Male	Unknown	2020-11-02
816	John Doe	21	Female	Texas	2020-12-19
817	Bob Lee	87	Male	California	2020-11-10
818	Charlie Brown	24	Male	New York	2020-02-03
819	John Doe	63	Female	New York	2020-05-29
820	Jane Smith	93	Female	California	2020-10-28
821	Bob Lee	92	\N	Florida	2020-08-01
822	Alice Johnson	31	Non-binary	California	2020-09-10
823	Alice Johnson	15	Male	Texas	2020-11-14
824	John Doe	38	Female	Texas	2020-01-30
825	John Doe	84	Female	Florida	2020-07-18
826	Jane Smith	41	\N	California	2020-08-24
827	Alice Johnson	22	Male	California	2020-09-28
828	Alice Johnson	98	Female	Florida	2020-04-28
829	Bob Lee	33	\N	New York	2020-10-06
830	Alice Johnson	35	Female	Texas	2020-03-05
831	John Doe	59	Female	Unknown	2020-12-26
832	Bob Lee	47	Male	Texas	2020-10-24
833	John Doe	99	Male	New York	2020-06-28
834	Alice Johnson	96	Non-binary	Florida	2020-05-25
835	John Doe	93	\N	California	2020-10-10
836	Alice Johnson	82	\N	New York	2020-05-10
837	Charlie Brown	40	Male	Texas	2020-04-19
838	Jane Smith	52	Non-binary	New York	2020-09-25
839	Bob Lee	44	Female	California	2020-12-31
840	Alice Johnson	73	Female	New York	2020-07-22
841	John Doe	85	Male	Texas	2020-06-16
842	Charlie Brown	15	Female	Texas	2020-04-13
843	Jane Smith	54	Female	Florida	2020-07-13
844	Jane Smith	87	Female	New York	2020-01-24
845	Bob Lee	64	\N	\N	2020-11-11
846	Bob Lee	94	Non-binary	Unknown	2020-08-08
847	Charlie Brown	75	Female	New York	2020-09-12
848	John Doe	78	Female	Texas	2020-12-11
849	Bob Lee	88	Male	Unknown	2020-03-29
850	Jane Smith	73	Non-binary	California	2020-01-12
851	Bob Lee	86	Male	Unknown	2020-08-22
852	Alice Johnson	69	Female	Unknown	2020-08-11
853	Alice Johnson	58	\N	Texas	2020-12-22
854	Alice Johnson	31	Male	California	2020-09-01
855	Bob Lee	67	Non-binary	\N	2020-02-04
856	Bob Lee	47	Female	California	2020-06-05
857	Alice Johnson	87	Male	Unknown	2020-06-28
858	Jane Smith	24	Non-binary	Texas	2020-03-23
859	Jane Smith	37	\N	New York	2020-11-22
860	Charlie Brown	88	Non-binary	California	2020-07-15
861	John Doe	46	Non-binary	New York	2020-01-22
862	Alice Johnson	66	Female	Unknown	2020-09-21
863	Jane Smith	99	Male	California	2020-03-19
864	John Doe	88	Male	New York	2020-08-13
865	Charlie Brown	73	Non-binary	California	2020-10-12
866	Alice Johnson	55	Male	California	2020-11-26
867	John Doe	81	Female	New York	2020-09-14
868	John Doe	24	Non-binary	Florida	2020-02-03
869	Charlie Brown	35	\N	New York	2020-08-17
870	Bob Lee	93	Female	New York	2020-05-09
871	Jane Smith	39	Male	Unknown	2020-02-19
872	Bob Lee	57	Non-binary	Texas	2020-08-08
873	Bob Lee	67	Non-binary	Unknown	2020-10-26
874	Bob Lee	93	Female	California	2020-05-20
875	Jane Smith	91	Male	Florida	2020-03-20
876	Alice Johnson	75	\N	Florida	2020-05-13
877	Charlie Brown	78	Female	New York	2020-09-12
878	Jane Smith	56	Male	Unknown	\N
879	Alice Johnson	\N	Female	New York	2020-05-02
880	Alice Johnson	56	Non-binary	New York	2020-02-23
881	Jane Smith	80	Non-binary	California	2020-09-22
882	Alice Johnson	94	Male	New York	2020-11-01
883	Charlie Brown	66	Female	Texas	2020-06-09
884	Bob Lee	94	Female	\N	2020-11-12
885	Bob Lee	35	Female	New York	2020-01-17
886	Charlie Brown	34	\N	Unknown	2020-03-03
887	Bob Lee	27	Female	Texas	2020-02-02
888	John Doe	87	Male	Florida	2020-02-26
889	Bob Lee	43	Female	Texas	2020-03-19
890	Jane Smith	55	Non-binary	California	2020-09-26
891	Bob Lee	75	Female	Texas	2020-02-03
892	Alice Johnson	92	\N	New York	2020-10-27
893	Bob Lee	82	\N	New York	2020-11-08
894	Bob Lee	34	Male	Unknown	2020-04-27
895	Alice Johnson	65	Male	\N	2020-11-15
896	John Doe	72	Female	Florida	2020-07-28
897	Jane Smith	93	Male	Florida	2020-10-01
898	Jane Smith	53	Male	Unknown	2020-05-13
899	Bob Lee	\N	Female	New York	2020-02-24
900	Charlie Brown	43	Non-binary	California	2020-01-27
901	Jane Smith	44	Male	Florida	2020-06-19
902	Bob Lee	75	Male	Unknown	2020-06-07
903	Jane Smith	62	Female	California	2020-05-30
904	John Doe	66	Female	Texas	2020-05-27
905	Alice Johnson	34	Female	New York	2020-04-08
906	Jane Smith	84	Female	Florida	2020-11-11
907	Charlie Brown	50	Male	\N	2020-08-14
908	Jane Smith	79	\N	Florida	2020-12-01
909	Charlie Brown	86	\N	Florida	2020-06-16
910	Jane Smith	34	\N	New York	2020-02-21
911	Bob Lee	51	Female	New York	2020-09-23
912	Bob Lee	98	Female	Texas	2020-09-30
913	John Doe	93	Female	Texas	2020-11-24
914	Jane Smith	30	Female	Unknown	2020-02-24
915	Alice Johnson	93	\N	Florida	2020-04-26
916	Alice Johnson	61	Non-binary	Florida	2020-03-17
917	Jane Smith	23	\N	Florida	2020-12-25
918	Bob Lee	66	Male	California	2020-07-24
919	Charlie Brown	34	\N	New York	2020-08-25
920	Charlie Brown	66	Female	Texas	2020-04-14
921	John Doe	38	Female	Unknown	2020-07-29
922	Bob Lee	78	\N	Texas	2020-09-07
923	John Doe	43	Female	Texas	2020-02-05
924	Charlie Brown	56	Male	Florida	2020-09-29
925	Alice Johnson	54	Male	Texas	2020-07-09
926	Bob Lee	78	Female	Texas	2020-01-23
927	Bob Lee	30	Non-binary	Florida	2020-09-18
928	Bob Lee	72	Female	Unknown	2020-09-13
929	Charlie Brown	43	Male	Unknown	2020-01-22
930	Charlie Brown	45	\N	California	2020-11-27
931	Jane Smith	90	Female	California	2020-12-02
932	John Doe	99	Non-binary	New York	2020-05-23
933	Charlie Brown	88	Female	California	2020-05-19
934	Alice Johnson	33	Non-binary	California	2020-06-27
935	Bob Lee	60	Male	California	2020-12-25
936	Bob Lee	79	Non-binary	Texas	2020-08-07
937	Bob Lee	73	Female	New York	2020-08-30
938	Alice Johnson	59	Male	Texas	2020-04-19
939	Jane Smith	25	Male	Texas	2020-01-25
940	John Doe	84	\N	Unknown	2020-03-08
941	Charlie Brown	20	\N	Texas	2020-01-10
942	Jane Smith	\N	Male	New York	2020-04-27
943	Bob Lee	70	Female	Texas	2020-01-23
944	Alice Johnson	85	Male	\N	2020-04-21
945	John Doe	52	Non-binary	California	2020-03-12
946	John Doe	64	Male	Florida	2020-03-26
947	Charlie Brown	21	Female	California	2020-10-15
948	Bob Lee	32	\N	Texas	2020-08-20
949	Bob Lee	47	Female	Unknown	2020-11-04
950	John Doe	54	Male	Texas	2020-06-12
951	Bob Lee	85	Non-binary	California	2020-04-26
952	Jane Smith	89	Non-binary	California	2020-01-05
953	Alice Johnson	94	Non-binary	\N	2020-04-01
954	Alice Johnson	42	Non-binary	Unknown	2020-11-10
955	Charlie Brown	70	Non-binary	New York	2020-06-05
956	Jane Smith	28	Non-binary	California	2020-11-21
957	Jane Smith	22	Non-binary	Unknown	2020-10-17
958	John Doe	53	Male	California	2020-12-27
959	John Doe	66	Female	\N	2020-07-18
960	Alice Johnson	62	Non-binary	Florida	2020-05-15
961	Alice Johnson	65	Male	Florida	2020-08-30
962	Alice Johnson	49	\N	Texas	2020-02-16
963	Alice Johnson	88	Non-binary	Florida	2020-05-20
964	Bob Lee	63	Male	California	2020-07-07
965	Bob Lee	74	\N	New York	2020-10-01
966	Bob Lee	66	Male	New York	2020-07-30
967	Alice Johnson	56	\N	Florida	2020-02-08
968	John Doe	84	\N	Unknown	2020-04-07
969	John Doe	90	Female	Unknown	2020-05-13
970	Bob Lee	74	Male	New York	2020-01-20
971	Alice Johnson	26	Non-binary	Unknown	2020-10-11
972	Alice Johnson	73	\N	Texas	2020-11-29
973	Charlie Brown	29	Non-binary	Texas	2020-05-05
974	John Doe	78	\N	Florida	2020-07-13
975	John Doe	75	Male	Unknown	2020-09-24
976	Charlie Brown	38	Female	Florida	2020-08-02
977	John Doe	63	Non-binary	Texas	2020-03-25
978	Alice Johnson	69	\N	California	2020-03-21
979	Alice Johnson	31	\N	New York	2020-08-11
980	Bob Lee	20	Non-binary	California	2020-05-07
981	Charlie Brown	83	Female	California	2020-06-30
982	Charlie Brown	42	Female	Unknown	2020-11-29
983	Bob Lee	88	\N	Unknown	2020-10-26
984	Charlie Brown	20	Female	Unknown	2020-10-22
985	Bob Lee	62	Female	Unknown	2020-10-19
986	Charlie Brown	33	Non-binary	Unknown	2020-06-25
987	John Doe	78	Male	Unknown	2020-03-19
988	John Doe	34	Female	Florida	2020-09-20
989	John Doe	43	Non-binary	Florida	2020-01-28
990	Charlie Brown	75	Non-binary	Florida	2020-08-03
991	Charlie Brown	70	Male	California	2020-08-25
992	Jane Smith	24	Female	Unknown	2020-06-02
993	Alice Johnson	44	Non-binary	New York	2020-09-14
994	Charlie Brown	86	\N	Unknown	2020-03-03
995	Charlie Brown	73	Female	Unknown	2020-02-25
996	Jane Smith	52	Non-binary	New York	2020-11-15
997	Jane Smith	30	Female	Texas	2020-11-27
998	Alice Johnson	54	Female	Unknown	2020-02-17
999	Charlie Brown	39	Non-binary	Texas	2020-01-08
1000	Jane Smith	54	Female	Texas	2020-03-19
\.


--
-- Data for Name: exchange_rates; Type: TABLE DATA; Schema: public;
--

COPY public.exchange_rates (currency_code, exchange_rate, date) FROM stdin;
AUD	1.0467	2022-10-10
EUR	0.8946	2022-01-21
EUR	0.1472	2022-04-07
JPY	0.6749	2022-08-25
AUD	0.5259	2022-04-18
EUR	0.4603	2022-12-24
GBP	0.5843	2022-11-19
AUD	-0.2994	2022-01-15
JPY	0.9274	2022-06-21
AUD	0.4756	2022-02-21
EUR	0.4204	2022-09-18
EUR	1.1994	2022-07-04
EUR	-0.1365	2022-11-25
AUD	0.7213	2022-08-28
EUR	-0.3387	2022-07-28
AUD	\N	2022-03-25
JPY	0.5115	2022-11-01
GBP	0.9226	2022-10-03
GBP	0.943	2022-01-31
GBP	-0.4298	2022-02-10
AUD	0.164	2022-02-11
GBP	0.2348	2022-05-16
JPY	1.1318	2022-07-16
AUD	1.3106	2022-02-17
GBP	0.7788	2022-01-12
JPY	0.1838	2022-03-08
JPY	1.2544	2022-08-17
AUD	1.3418	2022-08-26
AUD	0.063	\N
AUD	-0.0141	2022-07-23
JPY	1.4804	2022-09-11
EUR	1.2151	2022-11-27
USD	-0.0634	2022-12-19
GBP	\N	2022-10-22
AUD	0.0737	2022-12-20
JPY	-0.448	2022-01-12
USD	0.6269	2022-05-09
JPY	0.1303	2022-10-03
JPY	0.375	2022-02-09
JPY	0.3171	2022-10-18
USD	0.0677	2022-04-17
AUD	1.245	2022-02-04
JPY	0.1287	2022-12-02
JPY	1.4513	2022-04-10
JPY	0.1802	2022-05-26
JPY	0.2007	2022-09-04
USD	\N	2022-11-09
JPY	-0.2536	2022-11-03
USD	0.2931	2022-10-23
GBP	0.5873	2022-03-12
USD	1.009	2022-01-11
GBP	0.2049	2022-04-17
AUD	1.4249	2022-06-25
USD	0.2662	2022-10-25
EUR	0.7436	2022-05-20
GBP	0.5813	2022-11-06
JPY	1.4031	2022-11-21
EUR	0.5455	2022-04-22
JPY	0.7213	2022-06-03
AUD	1.049	2022-12-29
JPY	0.5617	2022-12-28
EUR	0.5066	2022-08-30
GBP	0.4175	2022-03-17
GBP	0.2654	2022-12-27
EUR	-0.3653	2022-03-01
EUR	0.906	2022-05-28
AUD	0.2139	2022-02-07
EUR	-0.3882	2022-08-19
JPY	-0.3204	2022-05-20
AUD	0.2437	2022-01-07
USD	-0.0925	2022-07-10
JPY	0.5717	2022-03-02
AUD	-0.4092	2022-10-26
GBP	0.7362	2022-04-06
AUD	0.9145	2022-05-08
USD	0.1953	2022-04-05
GBP	-0.4338	2022-10-26
GBP	0.282	2022-12-26
EUR	-0.3375	2022-02-19
JPY	0.2958	2022-12-13
AUD	0.4899	2022-12-02
JPY	\N	2022-11-28
AUD	0.0864	2022-08-08
JPY	1.4214	2022-11-19
AUD	-0.4487	2022-10-22
JPY	\N	2022-09-04
EUR	-0.3677	2022-04-08
USD	0.7127	2022-06-10
EUR	-0.2337	2022-09-28
AUD	0.8407	2022-07-09
AUD	1.1661	2022-01-03
USD	-0.1218	2022-03-13
EUR	0.9597	2022-03-26
USD	1.0817	2022-01-09
EUR	1.3037	2022-07-26
AUD	0.6352	2022-08-26
AUD	0.9202	2022-02-21
AUD	-0.4928	2022-03-02
USD	-0.0359	2022-05-22
JPY	0.6523	2022-06-07
AUD	-0.2527	2022-11-24
USD	1.4349	2022-09-26
USD	1.1738	2022-03-18
EUR	-0.024	2022-07-28
GBP	0.7341	2022-04-09
EUR	-0.3838	2022-10-27
USD	0.7677	2022-02-01
USD	-0.1435	2022-04-27
EUR	-0.4697	2022-03-23
USD	1.2703	2022-05-30
USD	-0.4328	2022-05-31
USD	0.8055	2022-08-17
GBP	0.2513	2022-08-14
AUD	1.4746	2022-10-08
EUR	-0.1053	2022-06-07
JPY	0.0528	2022-06-18
USD	-0.1813	2022-04-18
JPY	1.1543	2022-02-26
GBP	1.2053	2022-06-18
JPY	0.9077	2022-08-28
AUD	-0.2963	2022-12-17
AUD	\N	2022-10-27
USD	0.6685	2022-11-15
JPY	1.4734	2022-02-23
AUD	-0.4398	2022-03-01
GBP	1.2006	2022-10-11
EUR	-0.3519	2022-06-20
GBP	0.8332	2022-11-26
EUR	\N	2022-04-15
JPY	-0.0505	2022-01-02
EUR	0.7372	2022-05-31
JPY	1.0936	2022-10-20
JPY	-0.0707	2022-06-08
EUR	0.1919	2022-09-14
AUD	0.4386	2022-03-11
EUR	-0.4648	2022-03-31
USD	1.3288	\N
AUD	-0.0244	2022-04-20
JPY	0.2058	2022-08-23
AUD	-0.0886	2022-10-29
JPY	0.1475	2022-01-03
JPY	-0.4395	2022-01-02
USD	-0.1285	2022-12-25
EUR	-0.4014	2022-11-10
EUR	-0.306	2022-07-13
AUD	-0.0235	2022-09-25
GBP	0.6287	2022-05-11
EUR	0.9485	2022-10-17
EUR	1.2104	2022-04-27
GBP	\N	2022-07-16
AUD	0.0954	2022-07-04
AUD	-0.4497	2022-03-22
USD	1.1944	2022-01-31
EUR	0.9162	2022-08-28
USD	-0.4104	2023-01-01
USD	-0.1398	2022-03-28
JPY	0.4287	2022-03-19
EUR	0.1193	2022-05-11
JPY	0.2302	2022-07-13
JPY	\N	2022-10-16
JPY	1.2254	2022-11-27
AUD	1.3273	2022-09-22
GBP	-0.2284	2022-08-10
JPY	1.0445	2022-08-04
AUD	-0.246	2022-06-18
AUD	0.2898	2022-03-31
GBP	0.3994	2022-11-21
EUR	1.4516	2022-05-02
USD	0.331	2022-08-31
GBP	0.1911	2022-05-16
USD	-0.3888	2022-10-05
JPY	0.509	2022-12-26
AUD	0.5125	2022-03-19
AUD	0.9057	2022-05-23
USD	1.4656	2022-03-27
USD	1.0483	2022-08-21
JPY	1.3326	2022-11-26
GBP	0.3082	2022-03-06
AUD	1.279	2022-11-09
GBP	0.3426	2022-09-29
JPY	0.1568	2022-12-06
AUD	-0.1895	2022-01-22
GBP	-0.3234	2022-11-17
EUR	0.4466	2022-06-19
EUR	0.8967	2022-04-02
AUD	\N	2022-10-04
GBP	-0.3762	2022-02-16
JPY	-0.2672	2022-09-20
JPY	-0.0979	2022-11-06
EUR	0.5671	2022-11-19
EUR	0.5215	2022-07-30
AUD	0.6407	2022-01-31
AUD	\N	2022-11-24
GBP	-0.3042	2022-05-06
USD	-0.4979	2022-01-18
EUR	-0.2304	2022-03-28
AUD	0.2403	2022-08-03
JPY	\N	2022-12-01
AUD	0.3327	2022-05-20
GBP	0.8216	2022-01-29
USD	1.1069	2022-09-21
AUD	0.257	\N
JPY	1.2932	2022-05-10
AUD	0.1923	2022-08-06
USD	0.3757	2022-03-12
USD	0.7099	2022-01-11
AUD	1.4343	2022-02-14
GBP	-0.1919	2022-07-12
EUR	-0.1595	2022-12-18
USD	1.083	2022-08-31
JPY	-0.2649	2022-06-24
GBP	0.2254	2022-12-13
GBP	0.7429	2022-11-28
JPY	0.0494	2022-06-15
AUD	-0.4353	2022-12-29
EUR	1.4428	2022-03-09
USD	1.3325	2022-08-26
EUR	0.002	2022-07-25
GBP	0.9102	2022-04-30
AUD	-0.1585	2022-01-08
EUR	1.3563	2022-12-09
EUR	\N	2022-10-08
JPY	1.4563	2022-07-15
EUR	0.4042	2022-03-20
AUD	-0.4568	2022-10-26
GBP	0.8587	2022-07-25
GBP	0.982	\N
USD	\N	2022-05-09
GBP	0.3462	2022-04-26
EUR	-0.2766	2022-12-09
AUD	-0.4401	2022-12-05
AUD	1.1514	2022-08-04
GBP	1.247	2022-01-13
AUD	1.472	2022-10-26
EUR	0.5844	2022-12-01
GBP	0.8702	2022-03-11
EUR	-0.366	2022-12-10
USD	0.7876	2022-06-21
USD	-0.4628	2022-01-21
GBP	-0.3849	2022-03-24
JPY	0.8521	2022-07-28
GBP	0.9203	2022-11-09
EUR	-0.3309	2022-01-03
EUR	0.9438	2022-09-10
JPY	1.4545	2022-11-27
EUR	1.2257	2022-09-01
AUD	-0.2271	2022-09-11
EUR	-0.2112	2022-05-15
GBP	0.4509	2022-06-19
EUR	\N	2022-12-13
GBP	0.1209	2022-09-05
EUR	0.4251	2022-12-21
GBP	0.3714	2022-11-21
AUD	0.708	2022-10-17
JPY	1.3782	2022-03-20
EUR	1.2399	2022-08-05
GBP	-0.3759	2022-01-28
EUR	0.1217	2022-12-22
JPY	0.0016	2022-04-20
EUR	-0.1198	2022-02-06
USD	-0.1874	2022-03-27
GBP	0.4907	2022-04-02
EUR	0.9873	2022-09-09
AUD	0.9356	2022-03-11
EUR	-0.3929	2022-06-11
EUR	0.3285	2022-12-07
JPY	0.9238	2022-02-01
JPY	-0.3891	2022-05-23
USD	1.4109	2022-05-17
JPY	0.5005	2022-11-25
EUR	0.8977	2022-03-06
AUD	0.0918	2022-05-23
AUD	1.2861	2022-04-08
AUD	0.5878	2022-09-23
GBP	1.3185	2022-03-08
GBP	0.2036	2022-09-13
JPY	-0.285	2022-11-03
AUD	1.3688	2022-06-09
JPY	0.6323	2022-12-24
USD	1.4062	2022-06-25
JPY	1.4232	2022-06-14
AUD	0.4489	2022-12-14
GBP	0.2257	2022-08-06
AUD	\N	\N
AUD	1.033	2022-10-13
JPY	0.656	2022-01-16
EUR	0.7498	2022-09-30
EUR	1.0258	2022-12-09
EUR	1.2392	2022-08-27
JPY	0.7692	2022-05-29
USD	1.1925	2023-01-01
USD	0.8633	2022-08-24
GBP	0.6375	2022-02-09
AUD	1.1335	2022-06-03
JPY	\N	2022-07-11
EUR	-0.2066	2022-04-16
JPY	1.1569	2022-07-02
EUR	1.2636	2022-10-16
AUD	0.9485	2022-08-03
USD	-0.1309	2022-09-29
JPY	0.7688	2022-01-03
AUD	0.8673	2022-10-26
JPY	0.2365	2022-06-15
AUD	0.9607	2022-08-29
EUR	0.1647	2022-07-26
USD	1.2023	2022-09-23
AUD	1.1111	2022-03-24
JPY	-0.4765	2022-03-24
EUR	0.2551	2022-05-10
GBP	0.7149	2022-08-07
USD	1.089	2022-05-22
EUR	0.6769	\N
GBP	0.3273	2022-10-10
GBP	0.8458	2022-01-08
USD	-0.474	2022-08-31
EUR	0.5259	2022-10-04
GBP	0.5851	2022-06-11
AUD	-0.3646	2022-12-28
USD	0.4114	2022-01-22
EUR	1.3433	2022-08-17
EUR	1.0005	2022-10-19
JPY	-0.2262	2022-01-30
EUR	0.8499	2022-10-05
GBP	-0.4358	2022-10-13
AUD	0.4579	2022-03-17
AUD	-0.1064	2022-02-24
AUD	0.3628	2022-08-25
EUR	0.0287	2022-02-14
EUR	0.4764	2022-02-06
AUD	-0.4038	2022-06-21
USD	0.9626	2022-11-09
JPY	-0.07	\N
AUD	0.0544	2022-08-20
USD	0.7204	2022-05-31
EUR	1.4025	2022-02-21
EUR	0.6934	2022-11-21
JPY	0.7423	2022-07-09
USD	0.1455	2022-11-19
AUD	0.95	2022-04-14
AUD	-0.1609	2022-11-08
JPY	0.5443	2022-09-27
EUR	1.3203	2022-08-02
JPY	1.4118	2022-10-21
USD	0.4519	2022-10-11
AUD	1.0269	2022-08-27
EUR	-0.2839	\N
AUD	-0.032	2022-03-19
AUD	1.3432	2022-10-22
JPY	0.6288	2022-10-25
GBP	-0.258	2022-12-25
AUD	\N	2022-09-23
GBP	1.3368	2022-05-30
USD	0.4265	2022-06-23
JPY	1.4588	2022-04-21
USD	-0.3705	2022-02-10
USD	0.0862	2022-05-16
GBP	0.0302	2022-04-02
EUR	0.1109	2022-05-09
EUR	-0.4089	2022-06-30
JPY	0.395	2022-06-14
JPY	0.7664	2022-05-25
AUD	-0.2217	2022-09-14
USD	0.9787	2022-05-07
AUD	1.1225	2022-03-02
JPY	0.9093	2022-08-24
USD	1.0731	2022-03-28
JPY	0.8314	2022-07-04
AUD	-0.1295	2022-07-24
EUR	0.4544	2022-11-19
EUR	-0.1355	2022-12-09
USD	1.2006	2022-03-22
AUD	0.0982	2022-12-26
USD	0.6597	2022-06-10
JPY	0.156	2022-12-21
EUR	0.7107	2022-03-10
GBP	0.8593	2022-08-02
GBP	1.0825	2022-04-13
USD	0.6537	2022-08-26
AUD	-0.4262	2022-08-05
GBP	-0.3951	2022-01-11
USD	1.2082	2022-01-30
JPY	0.0618	2022-11-04
EUR	-0.1636	2022-08-27
AUD	0.15	2022-08-08
GBP	0.748	2022-11-10
AUD	1.0374	2022-06-14
AUD	0.897	2022-11-23
AUD	\N	2022-02-15
GBP	0.9627	2022-04-04
JPY	0.8792	2022-02-07
AUD	0.2948	2022-08-04
EUR	-0.2808	2022-03-23
USD	-0.0564	2022-01-23
JPY	0.7875	2022-01-15
EUR	1.2328	2022-09-18
EUR	\N	2022-03-19
AUD	0.142	2022-08-23
GBP	1.0964	2022-10-20
EUR	0.6875	2022-04-19
USD	-0.4344	2022-08-11
GBP	0.5603	2022-11-07
GBP	-0.2689	2022-12-16
JPY	1.2813	2022-01-02
AUD	0.5275	2022-05-04
EUR	0.8772	2022-02-11
EUR	\N	2022-08-21
AUD	1.3405	2022-01-28
USD	0.9386	2022-03-05
EUR	0.1422	2022-01-13
JPY	-0.4759	2022-09-22
USD	0.3182	2022-02-14
USD	1.2567	2022-03-24
GBP	0.6239	2022-04-14
USD	0.0072	2022-07-25
AUD	0.8744	\N
USD	1.2628	2022-04-13
GBP	1.2379	2022-06-07
USD	-0.0073	2022-10-26
JPY	-0.0823	2022-04-18
JPY	0.2058	2022-11-03
GBP	1.0085	2022-10-19
AUD	0.8032	2022-06-19
EUR	0.8268	2022-10-22
EUR	-0.4714	2022-12-06
JPY	1.4323	2022-10-18
EUR	1.425	2022-02-16
AUD	0.8338	2022-04-18
EUR	\N	2022-11-25
GBP	-0.1594	2022-03-28
JPY	-0.0185	2022-01-03
AUD	0.7073	2022-11-28
JPY	0.8588	2022-08-16
AUD	1.0934	2022-03-02
EUR	-0.0279	2022-03-09
AUD	1.1256	2022-07-16
JPY	-0.2532	2022-07-01
GBP	0.3966	2022-06-16
JPY	-0.1426	2022-02-02
GBP	-0.0365	2022-09-04
USD	1.4734	2022-06-04
EUR	0.7971	\N
GBP	1.1477	2022-12-28
JPY	-0.3139	2022-10-26
USD	1.2224	2022-10-09
JPY	-0.2382	2022-09-05
AUD	0.4373	2022-04-24
EUR	0.8579	2022-10-14
USD	-0.3521	2022-06-02
AUD	0.4065	2022-08-02
JPY	-0.4418	2022-04-01
GBP	\N	2022-06-09
GBP	1.2641	2022-06-20
USD	0.3176	2022-11-17
EUR	0.0595	2022-11-05
AUD	0.8805	2022-09-06
AUD	-0.2356	2022-09-28
USD	0.388	2022-03-10
USD	0.6291	2022-10-11
USD	0.6139	2022-10-03
JPY	-0.4275	2022-04-16
EUR	0.3122	2022-08-12
AUD	1.1561	2022-07-11
AUD	0.7046	2022-03-20
USD	0.6746	2022-07-04
USD	-0.3734	2022-06-24
GBP	0.1075	2022-03-16
GBP	\N	2022-10-28
EUR	0.3977	2022-03-28
JPY	0.4993	\N
GBP	\N	2022-07-28
GBP	0.1205	2022-12-16
USD	-0.2158	2022-03-05
AUD	0.9357	2022-03-30
USD	0.1916	2022-05-14
USD	0.861	2022-06-02
USD	0.1921	2022-04-12
JPY	0.1202	2022-12-23
AUD	1.26	2022-02-13
EUR	1.2818	2022-02-24
AUD	0.123	2022-11-15
GBP	-0.3908	2022-05-09
JPY	0.2582	2022-01-10
AUD	1.0819	2022-05-24
AUD	0.2668	2022-08-05
GBP	1.0422	2022-01-02
JPY	-0.4912	2022-09-14
JPY	-0.0023	2022-09-29
EUR	0.09	2022-09-16
AUD	1.1994	2022-12-27
AUD	1.1296	2022-04-03
GBP	-0.3967	2022-08-03
EUR	0.3098	2022-09-19
EUR	0.7044	2022-07-21
GBP	1.1808	2022-09-20
AUD	\N	2022-11-14
JPY	\N	2022-10-05
EUR	-0.2237	2022-01-21
GBP	0.6304	2022-02-19
USD	0.9947	2022-03-12
AUD	-0.2703	2022-10-15
AUD	-0.1628	2022-08-08
USD	-0.2693	2022-04-01
JPY	0.4967	2022-01-30
JPY	1.1556	2022-02-07
EUR	0.999	2022-11-29
EUR	-0.3185	2022-01-17
EUR	\N	2022-01-23
GBP	0.2884	2022-03-17
JPY	0.2279	2022-07-08
JPY	-0.291	2022-06-22
EUR	0.7888	2022-05-06
AUD	-0.0227	2022-06-21
EUR	1.2826	2022-06-28
USD	0.6562	2022-12-29
USD	-0.041	2022-09-09
AUD	0.3907	2022-02-05
GBP	0.144	2022-10-30
USD	0.0959	2022-02-11
GBP	-0.403	2022-11-21
GBP	-0.2526	2022-10-27
JPY	0.0549	2022-11-22
EUR	-0.412	2022-07-21
GBP	0.0845	2022-04-15
EUR	0.0562	2022-07-16
GBP	0.6982	2022-12-14
AUD	0.9793	2022-03-05
EUR	1.3998	2022-02-09
EUR	0.2572	2022-07-11
USD	-0.156	2022-11-03
USD	-0.0704	2022-02-28
AUD	1.4272	2022-12-14
AUD	0.0215	2022-02-05
JPY	-0.0599	2022-01-23
USD	-0.2446	2022-09-01
USD	0.9902	2022-04-10
USD	0.02	2022-04-30
AUD	0.7049	2022-10-18
JPY	0.7337	2022-08-16
AUD	1.31	2022-02-14
GBP	0.2042	2022-09-25
GBP	0.5817	2022-02-14
AUD	0.2056	2022-05-25
EUR	-0.4292	2022-01-14
EUR	1.2265	2022-04-13
EUR	0.6109	2022-10-08
USD	0.221	2022-08-21
USD	0.1584	2022-07-27
USD	1.3129	2022-07-01
EUR	0.8726	2022-06-21
EUR	0.6266	2022-10-13
EUR	1.3695	2022-07-27
AUD	0.0359	2022-02-13
JPY	-0.3261	2022-03-31
GBP	0.2678	2022-12-09
EUR	-0.0413	2022-11-11
EUR	1.2141	2022-05-06
JPY	0.4268	2022-01-30
JPY	0.6888	2022-09-16
JPY	-0.4609	2022-08-06
USD	0.3498	2022-03-15
JPY	1.0888	2022-02-09
EUR	1.1745	2022-11-01
USD	-0.2891	2022-07-05
USD	-0.1562	2022-04-03
USD	0.9479	2022-06-28
GBP	0.0094	2022-03-22
AUD	-0.2436	2022-03-10
USD	0.2581	2022-10-01
GBP	0.2514	2022-10-19
JPY	0.2933	2022-01-08
JPY	\N	2022-04-14
GBP	1.3096	2022-05-27
GBP	1.022	2022-08-11
USD	0.8232	2022-11-19
AUD	0.9591	2022-12-03
JPY	0.3018	2022-02-21
JPY	1.1558	2022-09-22
GBP	1.1705	2022-10-14
JPY	1.0036	2022-08-13
GBP	1.293	2022-09-27
AUD	0.9105	2022-04-15
GBP	0.5612	2022-05-22
GBP	-0.2749	2022-05-28
EUR	\N	2022-03-26
USD	0.1761	2022-07-29
GBP	\N	2022-11-24
AUD	1.2554	2022-05-17
USD	-0.065	\N
AUD	\N	2022-05-22
USD	-0.4798	2022-11-20
AUD	0.1728	2022-05-16
USD	0.3165	2022-03-23
JPY	0.1348	2022-05-28
EUR	0.0001	2022-12-31
GBP	0.4195	2022-09-02
USD	1.3155	2022-06-16
GBP	0.5417	2022-03-06
GBP	1.216	2022-03-25
JPY	\N	2022-04-13
EUR	0.2755	2022-05-30
JPY	0.8996	2022-08-14
GBP	-0.4238	2022-11-10
EUR	-0.2497	2022-10-02
AUD	0.2691	2022-04-06
AUD	\N	2022-06-17
AUD	-0.3018	2022-10-04
USD	0.2822	2022-10-11
AUD	-0.1834	2022-11-07
USD	1.1911	2022-12-03
USD	0.4163	2022-04-07
EUR	0.296	2022-09-20
JPY	1.1441	2022-02-05
GBP	0.1046	2022-02-19
JPY	0.5975	2022-04-05
JPY	0.1494	2022-02-19
GBP	1.248	2022-12-01
USD	-0.2111	2022-02-22
AUD	1.3785	2022-02-17
JPY	-0.3025	2022-02-15
JPY	0.5629	2022-01-06
AUD	-0.2462	2022-07-06
GBP	0.8055	2022-01-29
AUD	0.6844	2022-09-12
USD	0.7812	2022-05-31
GBP	1.0874	2022-10-01
AUD	1.4299	2022-08-15
GBP	-0.1555	2022-12-07
EUR	1.0121	2022-03-10
GBP	0.1109	2022-02-20
USD	0.8262	2022-12-15
USD	0.3449	2022-04-04
GBP	-0.3736	2022-01-19
EUR	-0.3708	2022-12-02
EUR	0.2723	2022-06-19
AUD	0.3531	2022-12-05
JPY	0.5376	2022-11-15
EUR	1.1422	2022-06-04
EUR	0.751	2022-12-27
JPY	0.672	2022-03-19
JPY	-0.0233	2022-07-23
GBP	-0.3304	2022-11-22
USD	0.116	2022-12-02
GBP	\N	2022-07-06
USD	1.0954	2022-11-30
EUR	1.3436	2022-03-12
EUR	-0.1088	2022-09-09
JPY	0.5078	2022-10-30
GBP	1.2911	2022-10-03
EUR	1.3479	2022-01-05
AUD	-0.4298	2022-04-21
AUD	1.4302	2022-03-30
JPY	1.219	2022-06-04
AUD	0.2326	2022-04-13
EUR	1.4183	2022-03-05
EUR	0.305	2022-08-29
EUR	0.5164	2022-06-08
USD	0.9816	2022-03-25
GBP	0.4973	2022-10-11
JPY	0.7967	2022-05-26
USD	0.4219	2022-10-01
JPY	0.4828	2022-04-07
USD	1.2354	2022-10-28
JPY	1.4562	2022-07-01
AUD	-0.1801	2022-05-29
AUD	0.8296	2022-04-29
EUR	1.3747	2022-08-18
JPY	0.7023	2022-06-11
GBP	0.5508	2022-07-05
GBP	0.1226	2022-06-16
JPY	0.6252	2022-09-28
AUD	\N	2022-01-18
EUR	0.8877	\N
USD	-0.2396	2022-11-02
USD	0.1871	2022-05-11
JPY	1.2178	2022-03-06
JPY	-0.2759	2022-02-20
EUR	-0.1314	2022-09-26
USD	0.1959	2022-10-26
GBP	-0.3132	2022-09-23
USD	-0.1505	2022-05-04
EUR	0.8672	2022-04-05
JPY	0.0767	2022-06-01
JPY	1.3085	2022-01-09
EUR	-0.0482	2022-11-17
USD	0.0144	2022-12-26
GBP	0.5776	2022-12-06
JPY	0.5959	2022-05-21
AUD	0.6855	2022-03-09
USD	0.7965	2022-06-18
AUD	0.8019	2022-02-16
AUD	1.2792	2022-03-02
EUR	0.7315	2022-08-21
GBP	0.4686	2022-01-15
USD	\N	2022-12-07
JPY	1.4043	2022-10-18
AUD	0.467	2022-06-16
GBP	0.0425	2022-07-09
GBP	0.4026	2022-07-25
USD	1.4506	2022-06-21
EUR	1.2727	2022-10-18
EUR	-0.3868	2022-08-05
GBP	1.2407	2022-06-07
AUD	0.737	2022-11-10
EUR	1.4606	2022-06-05
EUR	-0.2832	2022-07-25
GBP	0.3153	2022-01-08
GBP	1.2659	2022-03-13
AUD	-0.4983	2022-01-21
AUD	-0.0117	2022-04-26
EUR	-0.12	2022-06-14
GBP	-0.1288	2022-03-06
EUR	1.4519	2022-10-02
AUD	0.2313	2022-12-27
GBP	1.4673	2022-06-04
GBP	0.4231	2022-05-12
EUR	-0.4571	2022-12-06
USD	0.7732	2022-10-26
JPY	0.5734	2022-04-21
EUR	1.1297	2022-07-28
AUD	-0.3991	2022-05-22
JPY	0.5834	2022-02-08
USD	0.334	2022-11-23
GBP	1.3013	2022-03-15
JPY	-0.4772	2022-12-09
EUR	-0.2282	2022-03-04
AUD	1.4063	2022-02-12
GBP	0.742	2022-11-10
GBP	1.418	2022-05-19
USD	-0.255	2022-10-07
USD	-0.2339	2022-06-16
GBP	0.1134	2022-08-05
EUR	1.1918	2022-01-16
AUD	0.5734	2022-11-17
EUR	\N	2022-08-27
USD	0.5377	2022-06-28
AUD	0.0961	2022-07-16
GBP	-0.3196	2022-07-08
AUD	-0.1452	2022-09-13
AUD	-0.4392	\N
JPY	0.0813	2022-06-05
GBP	1.2103	2022-05-22
AUD	-0.2715	\N
EUR	1.1644	2022-01-07
JPY	0.5408	2022-07-06
GBP	0.5163	2022-05-28
EUR	1.2002	2022-01-13
AUD	0.2059	2022-10-07
USD	0.7132	2022-05-09
USD	-0.2091	2022-09-16
USD	0.6687	2022-03-22
AUD	-0.4809	\N
USD	-0.3487	2022-01-27
EUR	-0.1385	2022-06-06
JPY	\N	2022-02-22
AUD	-0.1362	2022-05-15
JPY	1.3149	2022-06-19
JPY	0.3097	2022-07-22
GBP	-0.025	2022-02-19
USD	-0.1744	2022-06-12
USD	0.5586	2022-07-06
USD	0.6579	2022-05-18
USD	1.3049	2022-06-26
GBP	-0.4531	2022-03-03
USD	-0.179	2022-02-12
USD	1.2881	2022-12-29
EUR	-0.1379	2022-06-16
EUR	-0.1781	2022-06-14
USD	1.4977	2022-12-16
AUD	0.3822	2022-05-03
USD	1.0609	2022-12-30
GBP	\N	2022-03-04
USD	0.5787	2022-06-29
JPY	-0.1867	2022-06-15
EUR	-0.4574	2022-04-19
GBP	0.2794	2022-09-17
EUR	-0.2803	2022-06-13
EUR	0.0156	2022-02-26
JPY	1.1526	2022-07-17
GBP	1.3211	2022-09-30
GBP	1.2095	2022-12-29
AUD	\N	2022-03-13
EUR	0.1376	2022-01-12
EUR	-0.0019	2022-10-17
GBP	1.3347	2022-09-29
USD	1.2976	2022-12-23
AUD	-0.0626	2022-05-28
EUR	-0.3456	2022-08-27
EUR	-0.1864	2022-11-26
GBP	-0.0921	2022-11-03
EUR	1.388	2022-07-18
JPY	0.3243	2022-04-22
JPY	-0.0495	2022-08-09
USD	0.6312	2022-09-13
USD	\N	2022-05-14
AUD	1.1293	2022-12-27
EUR	0.7851	2022-09-06
AUD	0.5969	2022-06-01
EUR	1.4561	2022-01-31
AUD	0.675	2022-05-19
USD	0.9297	2022-03-05
GBP	0.1755	2022-01-18
GBP	0.9873	\N
JPY	0.6789	2022-06-05
EUR	0.1483	2022-07-30
GBP	0.0934	2022-03-08
GBP	1.0702	2022-08-11
GBP	0.3167	2022-07-18
JPY	-0.1144	2022-10-29
EUR	-0.2344	2022-01-29
JPY	-0.1744	2022-11-30
USD	0.0689	2022-01-28
JPY	1.3773	2022-08-13
USD	0.3882	2022-07-11
AUD	0.7007	2022-07-12
AUD	0.0073	2022-02-14
JPY	-0.214	2022-01-10
JPY	0.5005	2022-07-17
USD	1.0133	2022-05-20
EUR	-0.1519	2022-06-10
JPY	0.996	2022-12-02
JPY	0.1291	2022-06-15
JPY	1.3228	2022-11-09
EUR	\N	2022-07-23
AUD	-0.0391	2022-08-18
JPY	1.222	\N
AUD	1.466	2022-09-10
USD	-0.0926	2022-10-16
JPY	-0.4581	2022-06-30
JPY	0.6651	2022-11-08
EUR	0.4094	2022-11-21
GBP	1.0195	2022-10-03
EUR	0.2977	2022-08-18
GBP	-0.0714	2022-02-01
JPY	0.3402	2022-03-21
GBP	-0.3397	2022-02-24
GBP	1.0849	2022-11-23
JPY	-0.4698	2022-04-26
USD	0.2133	2022-02-28
USD	1.1559	2022-07-23
JPY	0.9946	2022-07-10
GBP	0.0655	2022-08-25
AUD	0.868	2022-04-05
GBP	0.3391	2022-05-19
USD	0.9108	2022-04-06
AUD	0.6366	2022-05-18
GBP	0.3456	2022-01-26
AUD	-0.2304	2022-06-06
EUR	-0.2969	2022-12-26
JPY	0.1619	2022-01-29
JPY	0.2904	2022-06-10
USD	1.1713	2022-03-17
EUR	0.241	2022-01-25
JPY	\N	2022-08-07
USD	0.8446	2022-08-05
AUD	-0.2715	2022-12-05
AUD	1.4289	2022-02-13
JPY	0.2228	2022-04-16
USD	1.4797	2022-02-02
EUR	-0.4054	2022-09-14
EUR	-0.2549	2022-04-18
EUR	0.1487	2022-06-25
AUD	1.4748	2022-07-11
GBP	-0.1547	2022-05-18
GBP	-0.2147	2022-08-12
JPY	1.3831	2022-10-28
JPY	0.7591	2022-03-01
USD	1.0284	2022-11-21
AUD	0.6565	2022-12-07
AUD	1.2277	2022-04-21
EUR	0.2095	2022-06-13
USD	1.374	2022-04-02
USD	0.7878	2022-03-01
JPY	0.7925	2022-04-16
JPY	0.9502	2022-03-20
USD	0.0219	2022-05-18
USD	-0.2519	2022-10-16
GBP	1.4267	2022-10-24
GBP	0.0502	2022-03-10
EUR	1.2312	\N
EUR	0.4296	2022-05-14
JPY	0.536	2022-09-16
EUR	0.1865	2022-04-10
USD	1.1979	2022-07-16
JPY	0.1696	2022-11-29
EUR	-0.4271	\N
AUD	1.3029	2022-03-17
GBP	1.0494	2022-03-10
GBP	0.7567	2022-09-08
GBP	0.9511	2022-10-11
EUR	\N	2022-06-06
EUR	1.2307	2022-01-05
JPY	-0.3057	2022-11-20
USD	0.8048	2022-03-30
AUD	0.3424	2022-11-25
AUD	0.7673	2022-02-13
USD	0.6852	2022-09-02
JPY	-0.1589	2022-10-20
AUD	1.0561	2022-10-11
AUD	0.2701	2022-10-15
JPY	1.0119	2022-07-13
AUD	1.3411	2022-05-21
EUR	0.4366	2022-05-28
AUD	-0.3668	2022-07-31
GBP	-0.0386	2022-11-30
EUR	1.0248	2022-01-03
AUD	0.3717	2022-02-14
EUR	0.1249	2022-02-18
USD	0.5351	2022-08-17
EUR	0.7654	2022-05-13
EUR	0.9049	2022-05-21
JPY	0.3113	2022-12-12
EUR	1.2525	\N
AUD	-0.3623	2022-09-15
AUD	-0.1302	2022-04-20
GBP	1.1485	2022-12-09
JPY	0.6228	2022-02-09
GBP	1.0155	2022-09-02
EUR	-0.3864	2022-09-25
GBP	0.1956	2022-03-24
EUR	-0.0371	2022-01-15
EUR	0.0295	2022-02-23
GBP	0.9545	2022-04-25
JPY	1.0959	2022-12-16
JPY	0.9122	2022-05-14
JPY	-0.4067	2022-06-13
USD	0.9647	2022-11-26
EUR	1.1664	2022-01-26
JPY	1.4392	2022-05-01
USD	1.1448	2022-01-20
AUD	0.8209	\N
JPY	0.9234	2022-08-21
AUD	1.0216	2022-04-04
GBP	0.907	2022-06-05
USD	\N	2022-09-03
GBP	-0.4734	2022-06-23
USD	\N	2022-02-28
AUD	1.1748	2022-03-09
JPY	1.1295	\N
USD	1.3205	2022-11-18
EUR	1.0885	2022-08-21
GBP	0.4394	2022-12-20
JPY	0.6221	2022-12-07
USD	1.066	2022-08-24
EUR	0.6425	2022-06-21
JPY	0.3141	2022-07-23
USD	0.2759	2022-06-09
USD	0.2958	2022-06-12
JPY	1.2876	2022-07-05
USD	1.2635	2022-10-29
JPY	-0.0504	2022-01-16
JPY	1.4601	2022-12-10
GBP	0.6798	2022-08-27
GBP	0.1115	2022-05-23
AUD	0.5757	2022-06-12
USD	1.172	2022-02-17
AUD	0.3839	2022-10-30
EUR	-0.3419	2022-05-18
AUD	\N	2022-02-08
JPY	0.6336	2022-01-16
EUR	0.0697	2022-05-31
GBP	-0.4065	2022-07-02
USD	-0.4408	2022-01-29
JPY	1.2221	2022-10-13
GBP	-0.3619	2022-12-15
USD	1.1515	2022-11-20
AUD	0.9644	2022-04-26
AUD	1.1687	2022-08-04
GBP	1.3233	2022-10-25
EUR	0.3862	2022-09-29
JPY	0.7337	2022-08-02
GBP	0.4954	2022-12-08
USD	\N	2022-12-17
EUR	-0.2783	2022-08-17
GBP	0.598	2022-12-16
GBP	0.5343	2022-04-20
GBP	-0.0584	2022-07-26
JPY	1.3197	2022-02-15
JPY	0.8117	2022-05-14
GBP	0.4374	2022-01-24
EUR	0.2989	2022-07-16
GBP	1.4263	2022-12-27
AUD	0.9497	2022-06-01
JPY	0.4833	2022-01-26
JPY	0.9622	2022-05-16
GBP	1.3723	2022-09-29
EUR	1.4341	2022-07-28
AUD	0.0415	2022-04-13
AUD	0.5001	2022-05-25
USD	0.6431	2022-04-24
EUR	0.7986	2022-07-07
EUR	-0.217	2022-01-14
GBP	-0.2542	2022-01-11
USD	0.2655	2022-04-04
GBP	0.1003	2022-03-10
GBP	0.5699	2022-05-26
USD	-0.2922	2022-07-07
USD	0.6458	2022-11-10
GBP	\N	2022-11-15
EUR	0.2035	\N
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public;
--

COPY public.products (product_id, product_name, category, price, stock_available) FROM stdin;
1	Product_1	Clothing	121.34	348
2	Product_2	Electronics	104.49	591
3	Product_3	Electronics	126.17	368
4	Product_4	Books	44.7	309
5	Product_5	Books	162.85	816
6	Product_6	Books	142.8	948
7	Product_7	Books	-8.35	57
8	Product_8	Furniture	127.47	640
9	Product_9	Furniture	30.79	142
10	Product_10	Electronics	86.21	259
11	Product_11	Books	34.02	749
12	Product_12	Toys	145.21	737
13	Product_13	Clothing	-6.98	784
14	Product_14	Electronics	23.93	591
15	Product_15	Electronics	102.01	601
16	Product_16	Toys	68.44	716
17	Product_17	Clothing	196.82	211
18	Product_18	Clothing	135.51	19
19	Product_19	Electronics	121.37	310
20	Product_20	Furniture	43.89	813
21	Product_21	Clothing	147.59	249
22	Product_22	Toys	180.81	693
23	Product_23	Books	178.79	600
24	Product_24	Furniture	38.92	775
25	Product_25	Electronics	142.94	696
26	Product_26	Furniture	34.84	735
27	Product_27	Books	148.43	851
28	Product_28	Books	102.44	427
29	Product_29	Furniture	162.03	758
30	Product_30	Toys	192.12	239
31	Product_31	Electronics	186.41	796
32	Product_32	Books	44.83	215
33	Product_33	Furniture	40.45	277
34	Product_34	Toys	177.05	468
35	Product_35	Furniture	39.44	509
36	Product_36	Books	120.08	262
37	Product_37	Furniture	191.54	340
38	Product_38	Furniture	126.28	338
39	Product_39	Clothing	56.24	804
40	Product_40	Electronics	43.76	417
41	Product_41	Furniture	119.8	478
42	Product_42	Clothing	28.86	229
43	Product_43	Furniture	34.29	957
44	Product_44	Clothing	79.5	780
45	Product_45	Furniture	28.08	313
46	Product_46	Electronics	115.86	84
47	Product_47	Electronics	33.21	443
48	Product_48	Clothing	152.84	890
49	Product_49	Electronics	31.23	204
50	Product_50	Furniture	71.35	401
51	Product_51	Books	143.24	518
52	Product_52	Books	195.05	921
53	Product_53	Books	49.75	883
54	Product_54	Toys	15.04	794
55	Product_55	Clothing	143.92	482
56	Product_56	Furniture	170.09	588
57	Product_57	Toys	130.93	317
58	Product_58	Furniture	-2.02	705
59	Product_59	Furniture	13.92	534
60	Product_60	Furniture	101.13	484
61	Product_61	Books	158.76	828
62	Product_62	Books	54.97	913
63	Product_63	Clothing	83.74	845
64	Product_64	Electronics	106.71	351
65	Product_65	Books	104.63	706
66	Product_66	Furniture	125.81	39
67	Product_67	Books	38.81	696
68	Product_68	Toys	49.43	688
69	Product_69	Furniture	14.18	235
70	Product_70	Electronics	97.35	449
71	Product_71	Clothing	56.92	353
72	Product_72	Furniture	137.4	156
73	Product_73	Electronics	-5.15	803
74	Product_74	Electronics	139.38	682
75	Product_75	Books	197.65	313
76	Product_76	Furniture	146.02	519
77	Product_77	Electronics	186.55	622
78	Product_78	Electronics	124.77	145
79	Product_79	Toys	82.61	579
80	Product_80	Clothing	173.18	522
81	Product_81	Furniture	86.3	598
82	Product_82	Books	128.64	793
83	Product_83	Electronics	139.2	179
84	Product_84	Clothing	139.78	486
85	Product_85	Toys	76.79	491
86	Product_86	Clothing	156.54	730
87	Product_87	Toys	171.79	994
88	Product_88	Electronics	15.97	629
89	Product_89	Electronics	185.62	105
90	Product_90	Electronics	-9.09	744
91	Product_91	Clothing	29.54	133
92	Product_92	Electronics	122.27	880
93	Product_93	Furniture	67.67	550
94	Product_94	Furniture	106.11	619
95	Product_95	Clothing	53.86	345
96	Product_96	Electronics	-7.88	207
97	Product_97	Toys	91.25	365
98	Product_98	Furniture	135.29	569
99	Product_99	Electronics	8.7	31
100	Product_100	Clothing	120.84	804
101	Product_101	Clothing	112.91	312
102	Product_102	Electronics	117.55	787
103	Product_103	Electronics	-10.35	216
104	Product_104	Toys	92.71	573
105	Product_105	Electronics	2.74	683
106	Product_106	Books	75.24	925
107	Product_107	Electronics	168.02	610
108	Product_108	Clothing	-11.23	0
109	Product_109	Furniture	191.61	121
110	Product_110	Toys	101.71	83
111	Product_111	Clothing	73.59	770
112	Product_112	Electronics	33.7	407
113	Product_113	Books	127.93	620
114	Product_114	Furniture	172.41	245
115	Product_115	Books	169.94	945
116	Product_116	Books	3.13	714
117	Product_117	Clothing	73.42	213
118	Product_118	Electronics	63.43	966
119	Product_119	Books	64.34	161
120	Product_120	Books	122.47	259
121	Product_121	Furniture	48.59	942
122	Product_122	Electronics	146.03	336
123	Product_123	Clothing	10.88	897
124	Product_124	Toys	40.4	910
125	Product_125	Electronics	-2.21	849
126	Product_126	Furniture	128.15	902
127	Product_127	Clothing	29.96	139
128	Product_128	Toys	39.22	612
129	Product_129	Books	168.06	277
130	Product_130	Books	50.94	818
131	Product_131	Toys	36.77	879
132	Product_132	Clothing	147.14	665
133	Product_133	Electronics	-19.59	-6
134	Product_134	Electronics	-14.23	761
135	Product_135	Books	150.27	733
136	Product_136	Toys	174.37	96
137	Product_137	Clothing	83.8	192
138	Product_138	Toys	88.28	916
139	Product_139	Electronics	33.08	549
140	Product_140	Electronics	185.02	50
141	Product_141	Toys	98.25	85
142	Product_142	Electronics	163.31	938
143	Product_143	Books	178.48	735
144	Product_144	Toys	122.75	539
145	Product_145	Books	-18.4	446
146	Product_146	Clothing	85.49	415
147	Product_147	Electronics	135.28	60
148	Product_148	Books	81.1	476
149	Product_149	Books	194.8	453
150	Product_150	Toys	-7.12	684
151	Product_151	Toys	193.52	143
152	Product_152	Furniture	95.94	740
153	Product_153	Toys	105.03	917
154	Product_154	Toys	66.92	812
155	Product_155	Books	84.11	985
156	Product_156	Toys	166.72	862
157	Product_157	Toys	87.74	665
158	Product_158	Electronics	-5.89	310
159	Product_159	Books	60.85	385
160	Product_160	Electronics	82.28	222
161	Product_161	Toys	104.1	778
162	Product_162	Toys	95.85	226
163	Product_163	Books	138.59	690
164	Product_164	Clothing	96.66	-4
165	Product_165	Furniture	16.4	759
166	Product_166	Books	42.56	932
167	Product_167	Electronics	156.47	645
168	Product_168	Toys	113.55	624
169	Product_169	Electronics	199.9	204
170	Product_170	Electronics	23.3	27
171	Product_171	Furniture	110.97	730
172	Product_172	Toys	-4.38	918
173	Product_173	Clothing	117.19	180
174	Product_174	Books	116.75	261
175	Product_175	Toys	104.56	375
176	Product_176	Clothing	88.8	717
177	Product_177	Clothing	125.84	35
178	Product_178	Toys	38.36	757
179	Product_179	Clothing	71.86	848
180	Product_180	Clothing	12.16	385
181	Product_181	Toys	60.9	286
182	Product_182	Furniture	14.97	335
183	Product_183	Books	99.05	715
184	Product_184	Toys	66.51	711
185	Product_185	Books	41.01	650
186	Product_186	Toys	56.37	515
187	Product_187	Furniture	56.66	246
188	Product_188	Toys	128.36	347
189	Product_189	Toys	79.23	447
190	Product_190	Clothing	35.06	101
191	Product_191	Books	166.64	959
192	Product_192	Furniture	145.46	187
193	Product_193	Toys	160.87	63
194	Product_194	Furniture	196.05	192
195	Product_195	Books	82.72	485
196	Product_196	Furniture	55.06	256
197	Product_197	Clothing	23.63	720
198	Product_198	Electronics	109.74	915
199	Product_199	Books	57.75	763
200	Product_200	Toys	100.64	184
201	Product_201	Clothing	77.58	100
202	Product_202	Electronics	-15.75	212
203	Product_203	Clothing	7.79	297
204	Product_204	Electronics	61.49	687
205	Product_205	Books	62.76	779
206	Product_206	Furniture	32.96	1
207	Product_207	Toys	8.74	828
208	Product_208	Toys	124.46	8
209	Product_209	Books	-16.84	951
210	Product_210	Books	128.7	450
211	Product_211	Furniture	91.99	272
212	Product_212	Books	49.18	718
213	Product_213	Toys	186.79	278
214	Product_214	Furniture	-14.34	123
215	Product_215	Clothing	83.27	868
216	Product_216	Toys	9.22	711
217	Product_217	Toys	108.03	104
218	Product_218	Furniture	75.92	875
219	Product_219	Electronics	-9.3	752
220	Product_220	Electronics	83.17	63
221	Product_221	Clothing	-19.6	747
222	Product_222	Clothing	185.51	552
223	Product_223	Toys	132.94	987
224	Product_224	Clothing	134.32	580
225	Product_225	Books	188.81	84
226	Product_226	Clothing	126.41	423
227	Product_227	Electronics	184.6	808
228	Product_228	Books	9.62	121
229	Product_229	Clothing	84.18	495
230	Product_230	Electronics	86.14	821
231	Product_231	Clothing	153.41	634
232	Product_232	Books	21.11	685
233	Product_233	Books	34.75	751
234	Product_234	Furniture	57.41	773
235	Product_235	Electronics	51.8	941
236	Product_236	Books	65.86	871
237	Product_237	Furniture	189.13	462
238	Product_238	Books	80.89	891
239	Product_239	Clothing	146.53	647
240	Product_240	Books	55.15	61
241	Product_241	Books	41.38	913
242	Product_242	Clothing	37.22	995
243	Product_243	Books	128.43	144
244	Product_244	Toys	58.7	694
245	Product_245	Clothing	-7.21	568
246	Product_246	Furniture	83.69	68
247	Product_247	Toys	72.05	542
248	Product_248	Furniture	103.2	953
249	Product_249	Books	57.78	477
250	Product_250	Electronics	27.07	469
251	Product_251	Books	167.44	470
252	Product_252	Electronics	105.48	278
253	Product_253	Electronics	68.31	621
254	Product_254	Furniture	-8.67	524
255	Product_255	Furniture	163.51	699
256	Product_256	Books	-8.43	119
257	Product_257	Electronics	1.29	378
258	Product_258	Electronics	190.12	426
259	Product_259	Electronics	76.45	540
260	Product_260	Toys	170	327
261	Product_261	Electronics	43.31	725
262	Product_262	Furniture	31.32	860
263	Product_263	Furniture	58.8	868
264	Product_264	Toys	135.03	550
265	Product_265	Furniture	15.75	519
266	Product_266	Toys	123.71	761
267	Product_267	Books	16.06	872
268	Product_268	Clothing	173.65	877
269	Product_269	Electronics	92.18	939
270	Product_270	Clothing	10.41	446
271	Product_271	Books	96.83	182
272	Product_272	Furniture	63.04	256
273	Product_273	Furniture	151.36	530
274	Product_274	Clothing	165.86	919
275	Product_275	Clothing	69.11	624
276	Product_276	Toys	134.76	819
277	Product_277	Toys	119.88	857
278	Product_278	Clothing	132.35	217
279	Product_279	Clothing	75.43	185
280	Product_280	Clothing	189.33	894
281	Product_281	Furniture	88.2	794
282	Product_282	Furniture	8.28	589
283	Product_283	Toys	132.19	771
284	Product_284	Furniture	159.65	45
285	Product_285	Electronics	104.47	955
286	Product_286	Furniture	2.93	633
287	Product_287	Electronics	16.56	331
288	Product_288	Books	52.79	865
289	Product_289	Toys	150.69	900
290	Product_290	Electronics	105.37	50
291	Product_291	Electronics	167.7	116
292	Product_292	Electronics	187.51	662
293	Product_293	Toys	73.96	580
294	Product_294	Furniture	22.22	190
295	Product_295	Books	62.02	65
296	Product_296	Toys	141.63	572
297	Product_297	Clothing	47.29	340
298	Product_298	Clothing	115.29	385
299	Product_299	Electronics	121.42	151
300	Product_300	Furniture	55.43	764
301	Product_301	Books	-14.3	804
302	Product_302	Toys	120.26	900
303	Product_303	Books	5.08	577
304	Product_304	Toys	103.84	682
305	Product_305	Clothing	-3.82	-2
306	Product_306	Books	98.45	179
307	Product_307	Clothing	180	885
308	Product_308	Electronics	24.02	282
309	Product_309	Books	155.49	178
310	Product_310	Books	11.15	880
311	Product_311	Electronics	183.62	53
312	Product_312	Toys	4.6	578
313	Product_313	Toys	178.78	508
314	Product_314	Toys	21.38	293
315	Product_315	Books	66.73	288
316	Product_316	Toys	150.21	19
317	Product_317	Electronics	51.88	992
318	Product_318	Books	139.98	193
319	Product_319	Electronics	54.39	376
320	Product_320	Toys	142.03	593
321	Product_321	Electronics	20.62	597
322	Product_322	Electronics	-12.39	145
323	Product_323	Books	105.57	636
324	Product_324	Toys	57.16	259
325	Product_325	Clothing	181.63	615
326	Product_326	Furniture	40.92	54
327	Product_327	Toys	109.26	681
328	Product_328	Furniture	151.46	745
329	Product_329	Electronics	102.54	243
330	Product_330	Clothing	24.47	22
331	Product_331	Electronics	143.7	24
332	Product_332	Clothing	126.06	720
333	Product_333	Electronics	159.08	752
334	Product_334	Toys	4.85	92
335	Product_335	Toys	35.98	548
336	Product_336	Books	103.57	152
337	Product_337	Clothing	106.04	354
338	Product_338	Toys	58.05	337
339	Product_339	Books	-7.36	744
340	Product_340	Clothing	120.16	585
341	Product_341	Toys	152.47	188
342	Product_342	Clothing	-1.47	55
343	Product_343	Clothing	150.98	276
344	Product_344	Furniture	21.01	225
345	Product_345	Books	152.72	180
346	Product_346	Books	55.78	787
347	Product_347	Books	-0.09	815
348	Product_348	Furniture	73.14	392
349	Product_349	Clothing	149.03	749
350	Product_350	Toys	-9.64	411
351	Product_351	Toys	117.3	350
352	Product_352	Toys	31.61	216
353	Product_353	Electronics	147.51	506
354	Product_354	Furniture	79.69	802
355	Product_355	Books	164.72	233
356	Product_356	Clothing	6.28	675
357	Product_357	Toys	57.22	155
358	Product_358	Books	191.78	848
359	Product_359	Toys	61.96	487
360	Product_360	Clothing	186.33	11
361	Product_361	Clothing	152.33	632
362	Product_362	Clothing	95.71	495
363	Product_363	Toys	112.76	200
364	Product_364	Clothing	28.2	29
365	Product_365	Toys	120.88	218
366	Product_366	Electronics	167.39	403
367	Product_367	Furniture	66.07	863
368	Product_368	Clothing	7.67	832
369	Product_369	Furniture	51.35	557
370	Product_370	Toys	3.04	498
371	Product_371	Toys	71.28	634
372	Product_372	Books	97.51	165
373	Product_373	Books	39.08	853
374	Product_374	Electronics	1.57	148
375	Product_375	Books	12.81	436
376	Product_376	Electronics	145.71	394
377	Product_377	Books	31.01	791
378	Product_378	Electronics	23.42	846
379	Product_379	Toys	114.87	398
380	Product_380	Toys	22.75	366
381	Product_381	Clothing	-4.81	369
382	Product_382	Clothing	-12.7	746
383	Product_383	Clothing	-7.55	462
384	Product_384	Books	6.85	430
385	Product_385	Clothing	47.69	915
386	Product_386	Electronics	108.53	619
387	Product_387	Electronics	52.78	488
388	Product_388	Books	113.77	589
389	Product_389	Clothing	42.52	414
390	Product_390	Electronics	194.5	787
391	Product_391	Toys	11.03	666
392	Product_392	Books	190.15	523
393	Product_393	Books	39.7	626
394	Product_394	Books	47.72	717
395	Product_395	Toys	156.86	886
396	Product_396	Electronics	43.25	194
397	Product_397	Furniture	179.34	761
398	Product_398	Electronics	159.29	805
399	Product_399	Books	63.63	702
400	Product_400	Books	18.25	565
401	Product_401	Clothing	92.14	163
402	Product_402	Books	160.4	279
403	Product_403	Books	30.78	78
404	Product_404	Electronics	108.04	907
405	Product_405	Books	185.24	317
406	Product_406	Toys	5.39	730
407	Product_407	Books	-12.04	416
408	Product_408	Electronics	-15.94	782
409	Product_409	Toys	169.14	26
410	Product_410	Toys	200	800
411	Product_411	Electronics	137.28	359
412	Product_412	Electronics	154.36	311
413	Product_413	Books	119.31	268
414	Product_414	Toys	55.36	445
415	Product_415	Books	156.15	736
416	Product_416	Furniture	15.14	926
417	Product_417	Clothing	25.12	166
418	Product_418	Electronics	91.6	790
419	Product_419	Furniture	0.64	76
420	Product_420	Clothing	-15.29	269
421	Product_421	Furniture	50.57	190
422	Product_422	Furniture	120.29	975
423	Product_423	Books	26.57	168
424	Product_424	Toys	163.04	719
425	Product_425	Electronics	182.24	689
426	Product_426	Books	70.82	737
427	Product_427	Clothing	0.35	-4
428	Product_428	Books	128.16	447
429	Product_429	Furniture	8.73	228
430	Product_430	Furniture	26.07	525
431	Product_431	Electronics	173.62	898
432	Product_432	Electronics	-1.63	319
433	Product_433	Furniture	149.33	213
434	Product_434	Electronics	-10.89	365
435	Product_435	Books	63.02	290
436	Product_436	Furniture	-15.92	854
437	Product_437	Clothing	139.74	694
438	Product_438	Furniture	137.39	225
439	Product_439	Books	100.8	1
440	Product_440	Toys	70.83	882
441	Product_441	Clothing	94.63	809
442	Product_442	Electronics	29.83	657
443	Product_443	Clothing	40.63	281
444	Product_444	Electronics	153.39	453
445	Product_445	Electronics	107.66	960
446	Product_446	Books	159.15	173
447	Product_447	Toys	65.98	471
448	Product_448	Toys	153.88	351
449	Product_449	Clothing	104.26	107
450	Product_450	Toys	82.26	460
451	Product_451	Toys	101	338
452	Product_452	Clothing	-17.5	298
453	Product_453	Electronics	12.51	474
454	Product_454	Electronics	69.29	274
455	Product_455	Furniture	-17.49	571
456	Product_456	Electronics	-10.89	981
457	Product_457	Books	151.86	356
458	Product_458	Books	170.09	858
459	Product_459	Furniture	131.36	474
460	Product_460	Furniture	51.89	484
461	Product_461	Toys	186.42	934
462	Product_462	Furniture	29.29	395
463	Product_463	Books	151.82	48
464	Product_464	Toys	81.84	816
465	Product_465	Electronics	82.71	917
466	Product_466	Books	9	921
467	Product_467	Toys	61.04	839
468	Product_468	Electronics	189.66	105
469	Product_469	Furniture	12.71	431
470	Product_470	Clothing	-0.92	839
471	Product_471	Books	50.47	556
472	Product_472	Furniture	165.92	154
473	Product_473	Furniture	68.59	336
474	Product_474	Books	177.1	983
475	Product_475	Furniture	79.07	266
476	Product_476	Clothing	-6.7	24
477	Product_477	Books	78.34	769
478	Product_478	Clothing	29.25	293
479	Product_479	Electronics	-4.73	523
480	Product_480	Electronics	19.35	672
481	Product_481	Clothing	-15.13	714
482	Product_482	Furniture	181.78	763
483	Product_483	Clothing	3.47	768
484	Product_484	Toys	85.24	47
485	Product_485	Electronics	116.33	958
486	Product_486	Furniture	171.07	876
487	Product_487	Books	70.5	718
488	Product_488	Furniture	109.47	364
489	Product_489	Electronics	192.61	806
490	Product_490	Electronics	95.63	407
491	Product_491	Toys	9.96	892
492	Product_492	Electronics	164.21	216
493	Product_493	Books	101.11	805
494	Product_494	Toys	190.16	402
495	Product_495	Toys	-7.49	-6
496	Product_496	Electronics	132.11	615
497	Product_497	Books	-12.38	292
498	Product_498	Toys	143.38	300
499	Product_499	Furniture	23.26	40
500	Product_500	Toys	60.04	611
501	Product_501	Toys	92.64	354
502	Product_502	Electronics	-4.53	463
503	Product_503	Books	180.7	732
504	Product_504	Furniture	72.67	524
505	Product_505	Furniture	115.33	283
506	Product_506	Furniture	89.52	272
507	Product_507	Electronics	126.51	3
508	Product_508	Electronics	164.02	653
509	Product_509	Books	172.96	745
510	Product_510	Clothing	18.01	424
511	Product_511	Electronics	13.16	47
512	Product_512	Toys	190.77	806
513	Product_513	Toys	81.59	6
514	Product_514	Books	54.92	724
515	Product_515	Electronics	55.98	461
516	Product_516	Toys	26.56	943
517	Product_517	Furniture	58.64	91
518	Product_518	Furniture	162.1	505
519	Product_519	Furniture	112.55	306
520	Product_520	Electronics	101.13	511
521	Product_521	Toys	48.38	217
522	Product_522	Books	92.74	263
523	Product_523	Furniture	-7.37	931
524	Product_524	Books	133.47	328
525	Product_525	Furniture	177.15	138
526	Product_526	Electronics	146.37	819
527	Product_527	Books	33.55	505
528	Product_528	Furniture	171.16	979
529	Product_529	Toys	21.85	314
530	Product_530	Furniture	124.15	243
531	Product_531	Toys	-14.24	144
532	Product_532	Toys	46.3	511
533	Product_533	Clothing	37.04	972
534	Product_534	Electronics	179.41	199
535	Product_535	Toys	141.72	515
536	Product_536	Toys	181.2	826
537	Product_537	Books	20.54	471
538	Product_538	Books	191.68	77
539	Product_539	Electronics	163.01	181
540	Product_540	Toys	106.74	464
541	Product_541	Electronics	160.28	240
542	Product_542	Furniture	125.64	407
543	Product_543	Books	83.05	340
544	Product_544	Toys	116.41	805
545	Product_545	Furniture	32.47	434
546	Product_546	Clothing	5.97	375
547	Product_547	Toys	166.37	769
548	Product_548	Toys	97.27	82
549	Product_549	Toys	59.17	110
550	Product_550	Toys	111.68	737
551	Product_551	Electronics	196.47	198
552	Product_552	Furniture	101.36	76
553	Product_553	Electronics	171.13	736
554	Product_554	Books	98.54	210
555	Product_555	Clothing	33.87	124
556	Product_556	Furniture	178.4	465
557	Product_557	Toys	45.56	690
558	Product_558	Toys	190.08	57
559	Product_559	Clothing	121.45	851
560	Product_560	Books	52.22	444
561	Product_561	Books	147.57	112
562	Product_562	Toys	101.71	370
563	Product_563	Books	184.78	820
564	Product_564	Books	72.89	219
565	Product_565	Electronics	113.87	811
566	Product_566	Books	81.08	821
567	Product_567	Toys	54.59	374
568	Product_568	Electronics	46.95	145
569	Product_569	Electronics	4.24	400
570	Product_570	Electronics	-18.84	841
571	Product_571	Books	-13.53	795
572	Product_572	Electronics	-12.27	424
573	Product_573	Clothing	-3.21	336
574	Product_574	Books	92.24	697
575	Product_575	Clothing	194.05	327
576	Product_576	Toys	88.14	473
577	Product_577	Books	148.5	202
578	Product_578	Books	17.09	700
579	Product_579	Books	53.27	870
580	Product_580	Clothing	16.34	669
581	Product_581	Clothing	-19.07	128
582	Product_582	Books	123.74	888
583	Product_583	Clothing	121.81	22
584	Product_584	Furniture	144.06	953
585	Product_585	Books	-6.82	929
586	Product_586	Electronics	115.76	28
587	Product_587	Books	60.93	782
588	Product_588	Furniture	31.59	352
589	Product_589	Toys	13.05	72
590	Product_590	Books	157.5	874
591	Product_591	Electronics	197.23	595
592	Product_592	Clothing	25.36	183
593	Product_593	Books	1.82	948
594	Product_594	Toys	88.5	705
595	Product_595	Clothing	155.96	87
596	Product_596	Clothing	197.37	920
597	Product_597	Toys	-18.6	961
598	Product_598	Toys	10.95	309
599	Product_599	Clothing	76.75	952
600	Product_600	Electronics	-17.2	102
601	Product_601	Electronics	-3.67	416
602	Product_602	Toys	106.34	17
603	Product_603	Clothing	104.23	265
604	Product_604	Furniture	69.14	872
605	Product_605	Furniture	108.12	207
606	Product_606	Furniture	81.77	246
607	Product_607	Furniture	168.26	899
608	Product_608	Furniture	98.52	23
609	Product_609	Electronics	20.01	538
610	Product_610	Electronics	158.32	441
611	Product_611	Toys	-0.07	929
612	Product_612	Toys	131.33	702
613	Product_613	Electronics	74.26	665
614	Product_614	Electronics	163.78	594
615	Product_615	Furniture	164.13	711
616	Product_616	Furniture	14.98	27
617	Product_617	Electronics	137.24	417
618	Product_618	Toys	182.68	327
619	Product_619	Toys	29.03	813
620	Product_620	Furniture	139.05	73
621	Product_621	Toys	66.75	742
622	Product_622	Electronics	98.58	351
623	Product_623	Furniture	141.09	546
624	Product_624	Books	184.31	480
625	Product_625	Furniture	95.54	877
626	Product_626	Clothing	21.7	844
627	Product_627	Clothing	172.78	394
628	Product_628	Clothing	102.75	879
629	Product_629	Toys	151.33	542
630	Product_630	Electronics	108.78	636
631	Product_631	Books	142.57	5
632	Product_632	Furniture	-11.42	851
633	Product_633	Books	93.53	431
634	Product_634	Electronics	165.5	451
635	Product_635	Books	146.3	309
636	Product_636	Furniture	87.24	668
637	Product_637	Furniture	195.01	434
638	Product_638	Furniture	90.57	459
639	Product_639	Books	154.07	867
640	Product_640	Electronics	50.32	71
641	Product_641	Electronics	164.34	502
642	Product_642	Books	104.97	161
643	Product_643	Toys	-2.65	359
644	Product_644	Clothing	6.53	893
645	Product_645	Toys	50.61	385
646	Product_646	Toys	5.09	983
647	Product_647	Electronics	-11.09	723
648	Product_648	Clothing	44.47	544
649	Product_649	Clothing	37.5	130
650	Product_650	Electronics	150.35	645
651	Product_651	Electronics	147	756
652	Product_652	Toys	113.8	168
653	Product_653	Clothing	199.88	363
654	Product_654	Books	5.7	201
655	Product_655	Books	96.52	239
656	Product_656	Clothing	149.1	990
657	Product_657	Electronics	159.56	516
658	Product_658	Books	125.44	934
659	Product_659	Furniture	183.8	333
660	Product_660	Clothing	164.05	746
661	Product_661	Furniture	154.22	752
662	Product_662	Electronics	81.88	318
663	Product_663	Furniture	66.04	435
664	Product_664	Clothing	166.65	967
665	Product_665	Furniture	179.05	266
666	Product_666	Books	159.22	477
667	Product_667	Toys	83.36	913
668	Product_668	Toys	176.03	551
669	Product_669	Electronics	71.38	285
670	Product_670	Toys	55.21	662
671	Product_671	Toys	88.18	907
672	Product_672	Books	97.47	227
673	Product_673	Electronics	13.91	566
674	Product_674	Toys	93.95	902
675	Product_675	Electronics	99.81	466
676	Product_676	Electronics	199.48	780
677	Product_677	Toys	180.54	620
678	Product_678	Toys	20.92	863
679	Product_679	Clothing	181.12	432
680	Product_680	Clothing	38.94	401
681	Product_681	Furniture	139.83	946
682	Product_682	Electronics	9.98	933
683	Product_683	Clothing	92.26	367
684	Product_684	Electronics	86.33	143
685	Product_685	Furniture	137.03	231
686	Product_686	Toys	20.93	332
687	Product_687	Furniture	17.58	543
688	Product_688	Toys	184.07	375
689	Product_689	Books	99.14	722
690	Product_690	Electronics	127.02	758
691	Product_691	Electronics	55.68	752
692	Product_692	Books	34.59	19
693	Product_693	Toys	13.3	236
694	Product_694	Furniture	75.12	450
695	Product_695	Clothing	188.91	996
696	Product_696	Furniture	102.7	910
697	Product_697	Electronics	65.94	160
698	Product_698	Furniture	164.15	518
699	Product_699	Books	50.74	519
700	Product_700	Books	-2.65	857
701	Product_701	Toys	83.57	963
702	Product_702	Furniture	195.94	174
703	Product_703	Toys	181.74	633
704	Product_704	Clothing	56.67	203
705	Product_705	Books	9.56	343
706	Product_706	Electronics	94.9	263
707	Product_707	Furniture	170.42	733
708	Product_708	Toys	172.92	304
709	Product_709	Books	71.72	342
710	Product_710	Clothing	90.03	729
711	Product_711	Books	-1.48	306
712	Product_712	Furniture	20.38	49
713	Product_713	Electronics	17.13	-10
714	Product_714	Toys	141.46	575
715	Product_715	Furniture	155.04	915
716	Product_716	Electronics	64.15	645
717	Product_717	Furniture	118.1	48
718	Product_718	Clothing	83.34	54
719	Product_719	Furniture	75.89	901
720	Product_720	Electronics	180.51	700
721	Product_721	Electronics	138.75	270
722	Product_722	Books	135.34	706
723	Product_723	Toys	174.28	336
724	Product_724	Clothing	36.17	747
725	Product_725	Books	147.72	-3
726	Product_726	Electronics	84.71	770
727	Product_727	Books	-7.45	40
728	Product_728	Books	-17.58	287
729	Product_729	Furniture	48.01	231
730	Product_730	Furniture	174.79	536
731	Product_731	Toys	157.94	969
732	Product_732	Clothing	2.1	253
733	Product_733	Toys	110.84	526
734	Product_734	Furniture	161.93	879
735	Product_735	Books	139.04	0
736	Product_736	Toys	109.21	904
737	Product_737	Electronics	58.22	891
738	Product_738	Toys	149.61	68
739	Product_739	Furniture	126.29	150
740	Product_740	Electronics	153.71	303
741	Product_741	Toys	-7.05	673
742	Product_742	Books	115.96	913
743	Product_743	Books	133.86	238
744	Product_744	Toys	30.48	238
745	Product_745	Clothing	91.08	197
746	Product_746	Books	179.78	954
747	Product_747	Books	196.57	623
748	Product_748	Electronics	37.31	944
749	Product_749	Books	157.39	642
750	Product_750	Toys	177.35	363
751	Product_751	Books	153.54	-4
752	Product_752	Clothing	139.82	974
753	Product_753	Clothing	92.81	939
754	Product_754	Toys	92.88	614
755	Product_755	Clothing	195.22	124
756	Product_756	Books	73.13	741
757	Product_757	Toys	165.85	99
758	Product_758	Furniture	44.78	97
759	Product_759	Toys	151.27	262
760	Product_760	Electronics	138.22	182
761	Product_761	Electronics	121.56	547
762	Product_762	Furniture	44.36	799
763	Product_763	Books	33.98	68
764	Product_764	Books	134.52	492
765	Product_765	Clothing	177.5	247
766	Product_766	Furniture	116.42	651
767	Product_767	Furniture	122.06	450
768	Product_768	Electronics	-12.96	383
769	Product_769	Books	117.12	745
770	Product_770	Furniture	26.13	607
771	Product_771	Books	69.49	213
772	Product_772	Books	78.42	635
773	Product_773	Books	118.33	574
774	Product_774	Toys	192.85	233
775	Product_775	Toys	20.93	154
776	Product_776	Toys	62.75	967
777	Product_777	Books	49.46	193
778	Product_778	Electronics	2.38	876
779	Product_779	Electronics	86.36	644
780	Product_780	Clothing	102.83	245
781	Product_781	Toys	149.48	114
782	Product_782	Books	-11.56	67
783	Product_783	Toys	14.11	968
784	Product_784	Books	18.87	437
785	Product_785	Books	169.5	640
786	Product_786	Clothing	89.26	-2
787	Product_787	Furniture	150.32	119
788	Product_788	Furniture	29.36	467
789	Product_789	Books	74.77	210
790	Product_790	Books	43.16	-2
791	Product_791	Clothing	40.41	400
792	Product_792	Electronics	-6.42	599
793	Product_793	Books	-8.64	734
794	Product_794	Furniture	16.44	904
795	Product_795	Electronics	48.78	478
796	Product_796	Furniture	-4.27	581
797	Product_797	Electronics	67.15	689
798	Product_798	Clothing	183.82	96
799	Product_799	Electronics	-8.91	390
800	Product_800	Books	171.49	732
801	Product_801	Toys	84.4	920
802	Product_802	Books	90.26	32
803	Product_803	Clothing	71.49	353
804	Product_804	Clothing	123.26	499
805	Product_805	Books	116.11	811
806	Product_806	Books	-16.72	475
807	Product_807	Electronics	17.75	372
808	Product_808	Toys	113.19	653
809	Product_809	Electronics	66.45	556
810	Product_810	Electronics	182.32	865
811	Product_811	Furniture	71.83	366
812	Product_812	Clothing	177.91	-3
813	Product_813	Clothing	192.49	716
814	Product_814	Furniture	8.8	457
815	Product_815	Books	154.03	434
816	Product_816	Electronics	-14.44	638
817	Product_817	Furniture	188.97	837
818	Product_818	Books	66.29	273
819	Product_819	Furniture	174.25	716
820	Product_820	Toys	168.99	919
821	Product_821	Toys	51.23	143
822	Product_822	Furniture	112.8	769
823	Product_823	Electronics	192.82	965
824	Product_824	Toys	9.77	839
825	Product_825	Furniture	196.16	518
826	Product_826	Toys	57.48	230
827	Product_827	Furniture	78.85	602
828	Product_828	Clothing	30.66	385
829	Product_829	Clothing	91.11	629
830	Product_830	Furniture	176.55	701
831	Product_831	Electronics	5.86	825
832	Product_832	Clothing	97.65	994
833	Product_833	Furniture	30.03	552
834	Product_834	Books	177.44	51
835	Product_835	Clothing	46.05	807
836	Product_836	Toys	142.82	453
837	Product_837	Books	199.09	93
838	Product_838	Clothing	98.05	951
839	Product_839	Electronics	80.46	287
840	Product_840	Toys	93.86	515
841	Product_841	Toys	13.11	134
842	Product_842	Electronics	12.52	142
843	Product_843	Books	-15.16	570
844	Product_844	Furniture	0.1	825
845	Product_845	Electronics	50.27	414
846	Product_846	Toys	139.31	824
847	Product_847	Toys	28.43	204
848	Product_848	Clothing	-1.66	131
849	Product_849	Toys	33.48	676
850	Product_850	Toys	31.97	285
851	Product_851	Books	38.44	895
852	Product_852	Books	52.75	825
853	Product_853	Electronics	127.03	656
854	Product_854	Clothing	119.82	276
855	Product_855	Furniture	122.9	443
856	Product_856	Furniture	130.59	635
857	Product_857	Books	59.58	863
858	Product_858	Electronics	8.16	845
859	Product_859	Toys	171.41	42
860	Product_860	Furniture	191.55	962
861	Product_861	Books	114.72	0
862	Product_862	Toys	149.84	541
863	Product_863	Toys	64	831
864	Product_864	Electronics	139.96	974
865	Product_865	Electronics	103.07	936
866	Product_866	Toys	-9.24	775
867	Product_867	Toys	178.35	13
868	Product_868	Books	151.17	997
869	Product_869	Clothing	16.52	20
870	Product_870	Furniture	120.29	523
871	Product_871	Toys	66.99	804
872	Product_872	Electronics	137.55	396
873	Product_873	Furniture	187.41	235
874	Product_874	Furniture	132.05	286
875	Product_875	Clothing	76.04	117
876	Product_876	Electronics	168.57	380
877	Product_877	Furniture	155.25	230
878	Product_878	Clothing	68.53	363
879	Product_879	Toys	86.27	744
880	Product_880	Furniture	-19.59	186
881	Product_881	Clothing	107.19	314
882	Product_882	Electronics	36.94	333
883	Product_883	Furniture	-16.37	958
884	Product_884	Books	11.74	646
885	Product_885	Furniture	93.42	664
886	Product_886	Clothing	14.82	612
887	Product_887	Toys	141.67	74
888	Product_888	Electronics	152.61	86
889	Product_889	Furniture	128.92	861
890	Product_890	Clothing	103.84	357
891	Product_891	Books	121.91	375
892	Product_892	Clothing	63.49	865
893	Product_893	Clothing	31.08	302
894	Product_894	Clothing	141.17	967
895	Product_895	Clothing	10.7	956
896	Product_896	Electronics	133.31	354
897	Product_897	Electronics	54.31	289
898	Product_898	Toys	26.68	402
899	Product_899	Electronics	70.41	427
900	Product_900	Clothing	184.51	809
901	Product_901	Clothing	-16.02	318
902	Product_902	Furniture	74.84	279
903	Product_903	Clothing	68.54	475
904	Product_904	Toys	143.19	926
905	Product_905	Furniture	34.21	995
906	Product_906	Clothing	27.13	180
907	Product_907	Furniture	156.75	630
908	Product_908	Toys	69.44	892
909	Product_909	Toys	103.26	679
910	Product_910	Furniture	16.83	945
911	Product_911	Books	122.49	883
912	Product_912	Furniture	193.16	528
913	Product_913	Clothing	170.16	585
914	Product_914	Clothing	183.9	923
915	Product_915	Electronics	105.91	701
916	Product_916	Books	167.99	702
917	Product_917	Books	106.79	407
918	Product_918	Books	86.68	756
919	Product_919	Books	155.16	313
920	Product_920	Electronics	-11.34	547
921	Product_921	Toys	155.7	354
922	Product_922	Toys	184.89	965
923	Product_923	Books	-6.58	327
924	Product_924	Electronics	44.18	734
925	Product_925	Electronics	-18.44	430
926	Product_926	Electronics	62.05	539
927	Product_927	Books	149.39	43
928	Product_928	Clothing	135.96	831
929	Product_929	Toys	-0.43	445
930	Product_930	Toys	-14.12	253
931	Product_931	Furniture	-6.95	729
932	Product_932	Books	-2.85	270
933	Product_933	Books	166.84	886
934	Product_934	Clothing	-13.04	305
935	Product_935	Furniture	87.71	711
936	Product_936	Electronics	180.57	301
937	Product_937	Furniture	191.26	509
938	Product_938	Toys	3.86	871
939	Product_939	Books	75.31	724
940	Product_940	Toys	25.21	882
941	Product_941	Electronics	17.08	786
942	Product_942	Books	126.64	897
943	Product_943	Furniture	189.72	973
944	Product_944	Books	74.71	822
945	Product_945	Toys	50.26	39
946	Product_946	Electronics	61.87	81
947	Product_947	Books	157.25	200
948	Product_948	Toys	104.64	632
949	Product_949	Books	147.18	571
950	Product_950	Toys	127.4	76
951	Product_951	Toys	48.94	39
952	Product_952	Toys	115.49	887
953	Product_953	Clothing	84.81	-1
954	Product_954	Books	90.63	139
955	Product_955	Electronics	149.8	463
956	Product_956	Toys	37.66	427
957	Product_957	Toys	62.41	729
958	Product_958	Furniture	168.9	849
959	Product_959	Clothing	59.11	838
960	Product_960	Furniture	89.87	200
961	Product_961	Furniture	67.06	577
962	Product_962	Toys	199.61	226
963	Product_963	Toys	165.88	469
964	Product_964	Clothing	175.37	517
965	Product_965	Furniture	53.38	43
966	Product_966	Books	-3.11	582
967	Product_967	Furniture	157.54	412
968	Product_968	Books	150.54	968
969	Product_969	Clothing	0.1	823
970	Product_970	Clothing	170.99	266
971	Product_971	Electronics	68.72	478
972	Product_972	Books	133.74	81
973	Product_973	Toys	151.21	306
974	Product_974	Clothing	182.66	346
975	Product_975	Clothing	-18.46	316
976	Product_976	Toys	25.78	90
977	Product_977	Toys	35.29	267
978	Product_978	Furniture	86.5	982
979	Product_979	Books	80.26	437
980	Product_980	Books	-9.24	65
981	Product_981	Toys	122.62	519
982	Product_982	Books	141.91	663
983	Product_983	Books	77.52	237
984	Product_984	Electronics	55.83	778
985	Product_985	Books	107.21	134
986	Product_986	Books	90.32	707
987	Product_987	Toys	21.59	396
988	Product_988	Electronics	47.47	292
989	Product_989	Furniture	23.18	19
990	Product_990	Books	-5.93	860
991	Product_991	Books	155.03	270
992	Product_992	Furniture	88.35	636
993	Product_993	Toys	141.66	859
994	Product_994	Books	109	98
995	Product_995	Furniture	83.14	294
996	Product_996	Electronics	48.2	807
997	Product_997	Clothing	52.74	897
998	Product_998	Toys	158.49	706
999	Product_999	Electronics	164.38	110
1000	Product_1000	Toys	138.86	871
\.


--
-- Data for Name: sales_data; Type: TABLE DATA; Schema: public;
--

COPY public.sales_data (transaction_id, product_id, quantity, price, transaction_date) FROM stdin;
1	1003	2	4.85	2022-05-05
2	1002	3	66.37	2022-12-06
3	1001	10	142.4	2022-08-06
4	1001	10	14.22	2022-12-29
5	1001	7	110.56	2022-10-20
6	1005	7	121.91	2022-12-19
7	1002	3	79.54	2022-01-20
8	1002	4	-42.89	2022-04-11
9	1004	9	96.17	2022-07-27
10	1002	5	35.84	2022-02-18
11	1005	4	63.59	2022-03-06
12	1001	8	116.12	2022-07-12
13	1003	3	117.23	2022-05-28
14	1005	6	103.43	2022-01-02
15	1001	10	52.43	2022-12-03
16	1004	2	143.3	2022-12-13
17	1003	-1	\N	2022-01-02
18	1005	3	-9.42	2022-11-28
19	1001	6	-16.15	2022-01-20
20	1004	10	11.79	2022-04-15
21	1002	1	55.16	2022-12-06
22	1004	6	145.1	2022-09-02
23	1003	9	\N	2022-11-04
24	1002	5	\N	2022-07-03
25	1003	4	3.56	2022-08-28
26	1003	3	81.82	2022-06-05
27	1005	8	-37.15	2022-12-05
28	1002	5	139.97	2022-11-21
29	1002	6	-8.31	2022-03-12
30	1001	10	116.08	2022-05-27
31	1001	5	26.22	2022-08-06
32	1001	5	-16.2	2022-08-30
33	1002	3	141.93	2022-02-18
34	1005	9	-46.95	2022-10-14
35	1002	1	85.21	2022-03-01
36	1002	1	105.18	2022-12-11
37	1004	2	97.3	2022-12-16
38	1001	5	-6.82	2022-01-31
39	1005	2	-0.86	2022-10-06
40	1001	7	-28.07	2022-11-07
41	1003	7	28.14	2022-11-11
42	1004	4	-45.99	2022-07-25
43	1004	2	149.52	2022-04-11
44	1005	10	97.39	2022-11-11
45	1002	10	-12.43	2022-01-02
46	1004	7	14.36	2022-12-31
47	1004	10	-27.72	2022-02-10
48	1004	5	138.7	2022-02-02
49	1001	5	147.61	2022-04-02
50	1003	2	3.5	2022-10-27
51	1003	1	-35.4	2022-05-03
52	1003	5	49.03	2022-05-09
53	1001	7	\N	2022-05-06
54	1005	7	24.03	2022-03-03
55	1001	2	145.44	2022-03-28
56	1002	9	69.01	2022-04-23
57	1003	7	-13.75	2022-01-24
58	1001	9	-24.14	2022-01-17
59	1002	3	43.02	2022-12-26
60	1005	2	24.78	2022-06-04
61	1005	3	24.41	2022-12-01
62	1003	10	22.66	2022-01-23
63	1004	2	134.69	2022-02-15
64	1001	10	121.84	2022-03-21
65	1005	5	77.66	2022-01-27
66	1003	10	-49.18	2022-08-10
67	1001	10	2.77	2022-06-19
68	1001	9	-12.81	2022-04-18
69	1001	9	-38.98	\N
70	1003	8	-13.86	2022-01-04
71	1002	10	93.78	2022-02-23
72	1002	1	103.86	2022-10-08
73	1001	2	99.37	2022-12-24
74	1002	3	147.46	2022-02-12
75	1005	7	18.05	2022-09-21
76	1003	1	103.14	2022-07-18
77	1002	8	-28.26	2022-08-19
78	1003	8	96.08	2022-03-02
79	1005	2	33.13	\N
80	1001	5	-49.4	2022-09-30
81	1004	3	97.42	2022-10-07
82	1004	4	89.64	2022-12-08
83	1005	5	5.18	2022-05-13
84	1002	10	89.6	2022-10-18
85	1002	7	66.29	2022-05-21
86	1005	8	137.1	2022-12-28
87	1001	3	126.59	2022-11-09
88	1005	4	92.29	2022-05-24
89	1004	6	-29.12	2022-10-26
90	1005	6	87.26	2022-10-27
91	1003	4	72.99	2022-10-17
92	1001	10	-6.4	2022-07-14
93	1005	2	37.68	2022-03-12
94	1003	2	-1.64	2022-05-09
95	1001	2	2.33	2022-10-24
96	1005	4	145.31	2022-02-21
97	1003	10	43.75	2022-05-31
98	1002	3	\N	2022-04-20
99	1001	7	\N	2022-04-08
100	1005	7	-43.96	2022-05-17
101	1001	10	48.13	2022-03-05
102	1004	2	138.81	\N
103	1004	4	27.37	2022-02-15
104	1005	2	149.85	2022-01-13
105	1001	9	9.4	2022-12-06
106	1001	3	26.34	2022-07-07
107	1002	9	135.09	2022-05-26
108	1002	1	\N	2022-04-03
109	1001	8	1.54	2022-03-02
110	1002	9	110.54	2022-03-22
111	1001	9	6.86	2022-05-01
112	1001	5	71.49	2022-12-01
113	1004	10	59.65	2022-11-08
114	1001	4	23.47	2022-03-20
115	1002	1	-27.46	2022-10-10
116	1004	8	98.61	2022-06-10
117	1002	3	21.31	2022-04-23
118	1003	10	-13.68	2022-06-04
119	1004	5	64.32	2022-04-15
120	1005	1	28.54	2022-12-09
121	1004	7	\N	2022-04-28
122	1004	6	33.13	2022-05-14
123	1004	4	94.97	2022-09-14
124	1005	6	139.88	2022-11-08
125	1001	1	-21.84	2022-06-25
126	1002	4	94.3	2022-01-11
127	1001	1	7.61	2022-10-19
128	1005	8	30.24	2022-09-24
129	1002	4	-43.1	2022-12-10
130	1005	7	8.34	2022-10-21
131	1005	3	78.24	2022-06-23
132	1003	7	120.59	2022-03-03
133	1004	1	46.85	2022-04-15
134	1004	5	-16.04	2022-02-16
135	1002	6	64.35	2022-01-25
136	1004	1	123.72	2022-09-02
137	1003	7	-48.44	2022-01-23
138	1002	10	35.47	2022-06-15
139	1005	5	92.84	2022-01-23
140	1002	4	126.66	2022-02-16
141	1002	7	147.87	2022-04-16
142	1001	9	128.12	2022-05-08
143	1002	3	122.81	2022-07-10
144	1001	8	50.74	2022-01-24
145	1005	5	-25.38	2022-02-25
146	1004	3	118.23	2022-03-16
147	1002	5	61.94	2022-03-17
148	1003	2	-11.8	2022-03-02
149	1002	9	-15.34	2022-02-07
150	1001	1000	126.07	2022-07-29
151	1004	6	-15.68	2022-10-08
152	1002	1	-18.56	2022-10-28
153	1004	10	89.73	2022-07-05
154	1001	3	121.29	2022-11-29
155	1005	5	134.47	2022-12-12
156	1002	5	33.66	2022-08-27
157	1004	5	116.47	2022-03-26
158	1004	10	149.65	2022-07-27
159	1005	8	30.72	2022-07-10
160	1002	1	-38.8	2022-03-31
161	1003	10	-12.89	2022-07-27
162	1002	10	1.77	2022-06-22
163	1004	1	-27.16	2022-11-30
164	1003	4	16.97	\N
165	1003	8	132.11	2022-12-27
166	1005	6	33.66	2022-08-06
167	1004	1	128.3	2022-08-01
168	1004	10	94.99	2022-09-25
169	1003	9	-34.27	2022-03-22
170	1004	2	-46.79	2022-01-04
171	1004	2	125.02	2022-10-23
172	1005	1000	109.65	2022-10-08
173	1004	8	-43.83	2022-08-26
174	1005	3	121.38	2022-06-06
175	1002	3	102.58	2022-01-22
176	1001	4	60.81	2022-09-05
177	1004	3	104.97	2022-02-12
178	1004	10	2.34	\N
179	1004	8	44.01	2022-01-11
180	1003	1	95.26	2022-07-14
181	1001	10	-18.26	2022-08-13
182	1005	6	120.75	2022-02-02
183	1005	1	5.59	2022-01-04
184	1003	9	-3.64	2022-06-30
185	1001	8	97.35	2022-03-10
186	1005	5	121.13	2022-10-12
187	1001	3	61.66	2022-03-02
188	1002	10	90.04	2022-01-06
189	1003	10	-34.97	2022-06-26
190	1004	7	94.32	2022-11-15
191	1002	6	-14.64	2022-02-24
192	1002	4	-39.05	2022-03-10
193	1002	2	90.92	2022-10-02
194	1003	7	-3.24	2022-07-09
195	1005	3	-11.11	2022-02-10
196	1004	10	42.86	2022-11-03
197	1005	2	-24.01	2022-12-10
198	1004	9	35.47	2022-04-11
199	1004	1	-24.14	2022-07-31
200	1005	8	\N	2022-10-01
201	1003	1	-25.1	2022-07-21
202	1001	7	53.08	2022-10-09
203	1004	6	81.84	2022-07-07
204	1004	6	59.86	2022-12-05
205	1003	1	48.89	2022-09-16
206	1002	2	75.48	2022-11-13
207	1003	3	101.33	2022-11-24
208	1002	5	117.13	2022-03-15
209	1003	2	117.45	2022-07-13
210	1001	5	107.52	2022-10-12
211	1003	8	17.91	2022-02-08
212	1002	3	97.9	\N
213	1001	6	148.22	2022-11-23
214	1001	8	51.96	2022-05-19
215	1003	7	-34.15	2022-08-14
216	1004	4	83.09	\N
217	1003	3	47.49	2022-06-05
218	1003	4	-24.3	2022-12-30
219	1002	9	36.13	2022-01-28
220	1002	7	90.3	2022-12-23
221	1005	3	50.52	2022-11-24
222	1003	9	21.52	2022-06-04
223	1003	10	-47.26	2022-10-20
224	1004	9	103.83	2022-06-23
225	1003	3	\N	2022-01-22
226	1003	8	-1.73	2022-06-23
227	1005	8	73.11	2022-03-07
228	1004	7	55.19	2022-03-21
229	1002	4	136.06	2022-06-21
230	1005	10	33.43	2022-04-11
231	1003	10	122.76	2022-12-14
232	1005	1	-43.49	\N
233	1005	7	64.21	2022-10-07
234	1002	7	5.51	2022-10-18
235	1002	7	99.84	2022-08-31
236	1005	8	63.81	2022-02-09
237	1005	2	60.04	2022-09-27
238	1005	10	-43.46	2022-10-27
239	1004	10	28.17	2022-03-31
240	1005	9	43.72	2022-12-21
241	1003	6	-43.17	2022-07-01
242	1004	3	120.73	\N
243	1004	2	117.97	2022-03-05
244	1002	10	60.38	2022-09-24
245	1004	10	\N	2022-07-27
246	1003	4	29.31	2022-01-13
247	1003	6	41.61	2022-11-05
248	1004	1	106.95	2022-03-31
249	1002	7	45.57	2022-08-02
250	1005	1	88	2022-07-31
251	1005	10	-13.31	2022-06-02
252	1003	7	\N	2022-07-23
253	1001	7	-14.94	2022-01-27
254	1005	4	-40.66	2023-01-01
255	1002	2	72.05	2022-01-09
256	1003	3	-14.11	2022-10-09
257	1004	3	109.82	2022-02-09
258	1003	2	14.97	2022-03-11
259	1005	7	120.14	2022-04-22
260	1002	7	41.82	2022-10-01
261	1005	2	116.1	2022-11-12
262	1003	4	-15.09	2022-05-06
263	1004	2	-38.11	2022-03-19
264	1001	5	96.59	2022-02-25
265	1002	5	15.28	2022-10-12
266	1002	3	-9.56	2022-05-23
267	1002	10	-33.62	2022-05-08
268	1002	4	83.7	2022-10-24
269	1002	5	55.57	2022-05-03
270	1001	7	21.02	2022-08-04
271	1005	3	115.18	2022-05-28
272	1003	7	146.44	2022-08-11
273	1004	9	127.8	2022-01-06
274	1002	10	-34.93	2022-02-04
275	1004	6	44.28	2022-03-13
276	1004	10	-7.41	2022-08-13
277	1005	2	58.28	2022-07-06
278	1003	4	21.93	2022-09-07
279	1001	1	107.86	\N
280	1001	7	111.98	2022-07-12
281	1002	8	121.17	2022-10-31
282	1002	10	22.43	2022-10-26
283	1001	8	-18.83	2022-08-13
284	1001	9	1	2022-11-25
285	1005	5	-5.5	2022-08-24
286	1002	9	-24.65	2022-05-11
287	1002	6	77.11	2022-10-30
288	1002	10	-42.83	2022-02-13
289	1004	4	28.79	2022-03-17
290	1004	-1	61.25	2022-09-23
291	1001	3	-22.57	2022-07-03
292	1004	9	129.56	2022-01-19
293	1005	8	50.23	2022-05-05
294	1005	6	39.16	2022-07-19
295	1005	3	\N	2022-04-05
296	1002	6	55.38	2022-10-08
297	1005	10	31.11	2022-06-09
298	1005	6	-9.6	2022-11-08
299	1002	4	118.23	2022-08-06
300	1005	5	57.85	\N
301	1005	6	78.44	2022-06-18
302	1005	5	62.89	2022-11-09
303	1003	10	149.33	2022-05-12
304	1004	4	14.02	2022-04-12
305	1002	6	54.83	2022-02-25
306	1001	6	136.17	2022-09-05
307	1004	4	140.61	2022-12-19
308	1005	2	84.79	2022-10-13
309	1004	10	130.44	2022-05-24
310	1004	7	117.12	2022-03-07
311	1003	3	-15.79	2022-09-08
312	1005	4	79.49	2022-03-28
313	1004	9	-17.54	2022-04-04
314	1004	9	109.12	2022-07-22
315	1001	1	121.59	2022-09-18
316	1002	8	62.06	2022-12-13
317	1003	9	126.35	2022-12-06
318	1003	0	-10.18	2022-08-02
319	1001	8	51.66	2022-05-13
320	1003	5	136.27	2022-04-01
321	1002	5	7.28	2022-02-03
322	1001	5	143.12	2022-11-27
323	1001	4	-19.59	2022-02-25
324	1003	9	-28.86	2022-03-20
325	1001	9	9.95	2022-04-19
326	1005	1	64.89	2022-04-14
327	1005	10	109.67	2022-10-01
328	1002	4	148.11	2022-07-25
329	1005	10	127.29	2022-01-09
330	1003	6	117.82	2022-03-11
331	1005	6	56.19	2022-12-14
332	1005	10	143.04	2022-11-25
333	1003	10	82.58	2022-01-22
334	1002	1	\N	2022-06-24
335	1001	9	80.39	2022-07-26
336	1001	3	63.7	2022-09-24
337	1001	4	\N	2022-12-02
338	1001	1	-16.64	2022-11-28
339	1003	5	20.92	2022-11-06
340	1001	6	117.81	2022-07-05
341	1002	7	29.53	\N
342	1003	6	58.52	2022-04-04
343	1005	10	131.47	2022-07-19
344	1001	1	40.68	2022-01-08
345	1005	8	45.39	2022-01-05
346	1002	6	7.35	2022-07-06
347	1002	8	60.56	2022-04-30
348	1004	10	\N	2022-04-19
349	1004	5	57.15	2022-08-15
350	1001	5	-23.47	2022-04-17
351	1004	5	\N	2022-03-19
352	1001	2	11.4	2022-08-28
353	1004	7	-35.86	2022-10-18
354	1005	6	127.2	2022-04-20
355	1003	4	121.81	2022-04-25
356	1003	5	24.71	2022-12-23
357	1005	7	121.45	2022-03-01
358	1004	10	97.42	2022-05-30
359	1005	5	5.92	2022-10-27
360	1003	2	-6.44	2022-03-29
361	1002	8	79.41	2022-12-08
362	1002	1	-42.47	2022-01-14
363	1005	5	-46.81	2022-03-28
364	1004	10	-47.09	2022-08-17
365	1002	10	46.52	2022-05-15
366	1005	10	16.29	2022-02-25
367	1005	2	-38.36	\N
368	1002	9	-12.02	2022-07-31
369	1001	2	44.42	2022-11-02
370	1002	-1	138.71	2022-07-19
371	1004	-1	149.29	2022-12-21
372	1004	2	9.95	2022-03-31
373	1005	5	-6.27	2022-11-30
374	1002	5	122.2	2022-08-27
375	1005	5	17.7	2022-12-03
376	1001	5	143.54	2022-11-27
377	1001	2	21.81	2022-06-11
378	1003	6	32.08	2022-12-14
379	1001	2	-18.59	2022-04-03
380	1003	3	18.53	2022-01-19
381	1004	4	-4.32	2022-08-25
382	1005	4	30.55	2022-06-01
383	1003	7	128.32	2022-04-27
384	1003	4	88.89	2022-01-25
385	1003	8	116.47	2022-12-11
386	1005	2	36.41	2022-07-03
387	1004	5	36.13	2022-12-24
388	1003	4	-8.98	2022-12-15
389	1005	4	-37.62	2022-09-30
390	1001	9	114.53	2022-11-03
391	1001	8	79.7	2022-07-15
392	1005	6	94.72	2022-05-14
393	1002	10	-19.23	2022-06-12
394	1004	1	-45.45	2022-02-18
395	1003	7	128.65	2022-01-25
396	1001	7	-13.42	2022-02-23
397	1002	6	55.05	2022-01-12
398	1001	9	99.58	2022-06-13
399	1004	5	-39.13	2022-09-09
400	1002	5	100.63	2022-04-09
401	1001	6	60.53	2022-08-22
402	1004	9	31.43	2022-12-12
403	1001	4	4.94	2022-09-17
404	1005	8	104.67	2022-09-08
405	1001	3	64.93	2022-11-26
406	1003	4	59.94	2022-04-25
407	1001	6	73.92	2022-07-23
408	1005	8	57.69	2022-07-14
409	1005	1	113.04	2022-01-04
410	1003	1	-19.44	2022-09-15
411	1005	6	105.23	2022-06-07
412	1005	1	110.3	2022-06-21
413	1003	3	94.14	2022-06-24
414	1003	2	10.54	2022-10-27
415	1004	10	\N	2022-12-07
416	1001	2	-21.71	2022-08-29
417	1004	5	147.05	2022-08-15
418	1001	5	108.25	2022-07-07
419	1001	3	\N	2022-09-02
420	1002	3	58.73	2022-07-22
421	1005	10	77.19	2022-01-25
422	1002	1	-13.75	2022-04-22
423	1001	10	106.31	2022-07-05
424	1005	6	122.54	2022-12-07
425	1004	8	-40.93	2022-07-29
426	1004	3	28.35	2022-09-18
427	1005	4	14.28	2022-07-16
428	1005	5	115.15	2022-12-28
429	1001	10	147.87	2022-06-04
430	1002	8	80.29	2022-12-21
431	1003	7	47.97	2022-11-11
432	1002	5	\N	2022-06-21
433	1005	1	89.05	2022-06-18
434	1003	6	23.54	2022-01-23
435	1002	1	2.64	2022-03-21
436	1003	1	117.96	2022-11-27
437	1003	8	80.13	2022-12-12
438	1002	2	-18.46	2022-02-18
439	1005	10	28.09	2022-03-15
440	1001	3	123.97	2022-06-03
441	1004	3	0.97	2022-03-29
442	1002	5	-41.81	2022-08-08
443	1005	5	-42.2	2022-12-10
444	1004	6	-27.29	2022-01-14
445	1004	7	100.08	2022-09-14
446	1002	10	142.11	2022-07-05
447	1003	1	31.52	2022-04-06
448	1004	8	44.83	2022-10-29
449	1001	7	127.62	2022-03-05
450	1005	5	77.97	2022-09-02
451	1005	2	33	2022-12-31
452	1001	8	121.2	2022-11-19
453	1005	6	-49.27	2022-04-22
454	1005	2	75.4	2022-06-12
455	1002	6	27.4	2022-08-09
456	1005	9	\N	2022-04-29
457	1001	4	125.53	2022-11-28
458	1003	2	\N	2022-09-07
459	1001	10	-21.43	2022-11-23
460	1001	3	75.93	\N
461	1003	1	\N	2022-06-14
462	1004	7	145.61	2022-07-14
463	1003	7	-48.79	2022-08-26
464	1001	5	\N	2022-01-15
465	1002	8	18.32	2022-05-20
466	1004	7	29.89	2022-08-11
467	1002	2	135.94	2022-05-25
468	1002	3	-19.7	2022-08-22
469	1005	1	37.07	2022-01-17
470	1005	10	98.76	2022-03-03
471	1003	7	-45.46	2022-12-31
472	1001	2	-2.12	2022-06-21
473	1005	6	-1.54	2022-09-03
474	1001	3	138.51	2022-01-20
475	1003	8	107	2022-01-31
476	1004	1000	33.65	2022-05-17
477	1005	3	-25.89	2022-01-13
478	1002	6	48.26	2022-06-03
479	1002	8	102.42	2022-03-25
480	1005	9	-0.99	2022-05-16
481	1004	4	-49.68	2022-09-08
482	1005	9	52.31	2022-04-14
483	1003	6	45.92	2022-01-31
484	1004	7	112.54	2022-05-08
485	1003	9	89.12	2022-07-31
486	1001	3	94.27	2022-09-14
487	1004	4	-6.45	2022-05-16
488	1005	10	6.44	2022-07-28
489	1005	8	-22.78	2022-11-23
490	1001	4	122.41	2022-06-02
491	1005	6	-9.57	2022-03-28
492	1001	2	35.22	2022-01-23
493	1001	8	50.03	2022-08-23
494	1002	7	-17.37	2022-01-31
495	1005	2	-16.63	2022-09-19
496	1005	5	52.47	2022-11-24
497	1005	4	22.01	\N
498	1001	3	72.57	2022-02-24
499	1004	3	3	2022-12-15
500	1002	10	16.65	2022-08-06
501	1002	8	-19.27	2022-02-12
502	1002	3	107.95	2022-06-02
503	1004	3	7.6	2022-08-18
504	1002	7	-1.07	2022-07-09
505	1003	10	-24.11	2022-07-16
506	1003	1	114.82	2022-11-04
507	1001	10	132.07	2022-12-01
508	1004	9	53.87	2022-03-31
509	1005	7	145.23	2022-09-04
510	1005	1	124.89	2022-02-09
511	1004	10	112.82	2022-06-07
512	1002	8	63.61	2022-09-30
513	1003	8	-36.89	2022-07-11
514	1001	10	120.64	2022-03-19
515	1004	9	145.89	2022-10-03
516	1003	9	32.99	2022-10-11
517	1002	7	85.99	2022-10-03
518	1001	10	63.84	2022-04-18
519	1003	4	-6.3	2022-04-04
520	1003	4	-45.66	2022-12-01
521	1004	5	119.28	2022-07-11
522	1005	8	133.26	\N
523	1001	7	139.65	2022-09-10
524	1001	10	-17.41	2022-12-13
525	1005	8	133.35	2022-12-25
526	1004	3	109.33	2022-04-13
527	1005	1	61.91	2022-11-03
528	1005	6	88.77	2022-08-02
529	1001	5	32.73	2022-06-06
530	1002	10	-23.61	2022-06-27
531	1004	3	80.26	2022-04-04
532	1005	9	123.85	\N
533	1002	7	140.82	2022-06-21
534	1001	9	85.97	2022-12-06
535	1001	9	-23.34	2022-08-05
536	1005	4	-35.41	2022-12-03
537	1005	10	133.41	2023-01-01
538	1005	2	11.34	2022-01-14
539	1003	1	84.5	2022-01-12
540	1001	7	32.33	2022-04-25
541	1005	2	132.32	2022-04-16
542	1002	10	51.57	2022-11-23
543	1004	5	12.23	\N
544	1004	3	86.46	2022-05-15
545	1005	3	131.82	2022-08-16
546	1005	9	3.64	2022-12-22
547	1002	8	-47.44	2022-06-03
548	1003	10	29.47	2022-11-15
549	1001	8	22.2	2022-06-07
550	1003	8	-0.83	2022-06-15
551	1005	4	8.26	2022-12-07
552	1005	2	64.79	2022-12-30
553	1002	7	120.46	2022-08-23
554	1005	5	11.83	2022-01-14
555	1003	1000	118.69	2022-05-24
556	1001	10	105.24	2022-07-31
557	1001	3	13.76	2022-07-07
558	1002	6	-7.12	2022-12-28
559	1002	5	147.69	2022-12-19
560	1001	5	-44.88	2022-11-19
561	1003	2	104.03	2022-01-27
562	1001	-1	68.95	2022-01-03
563	1005	8	101.26	2022-04-14
564	1002	10	-12.26	2022-02-22
565	1001	1	26.81	2022-05-11
566	1003	1	-30.6	2022-05-01
567	1003	1	119.84	2022-12-16
568	1004	4	78.93	2022-08-17
569	1005	9	52.19	2022-10-24
570	1001	9	123.52	2022-05-26
571	1002	1	70.89	2022-02-19
572	1004	-1	133.14	2022-08-05
573	1001	3	148.61	2022-09-25
574	1002	4	90.74	2022-02-08
575	1003	8	92.76	2022-12-24
576	1001	8	16.17	2022-09-11
577	1005	7	46.41	2022-06-10
578	1003	10	20.4	2022-08-31
579	1004	8	3.58	2022-05-04
580	1001	3	18.4	2022-06-22
581	1003	3	\N	2022-09-01
582	1002	10	57.65	2022-11-30
583	1004	3	128.15	2022-07-16
584	1001	5	-33.83	2022-01-14
585	1002	8	-20.46	2022-09-09
586	1005	4	-14.01	2022-10-22
587	1004	9	-30.43	2022-06-02
588	1003	7	4.72	\N
589	1003	10	136.15	2022-01-11
590	1003	9	102.28	2022-08-26
591	1002	9	-10.51	2022-09-22
592	1001	3	122.67	\N
593	1001	10	121.3	2022-09-01
594	1002	1	-26.17	2022-10-01
595	1001	6	-36.08	2022-02-27
596	1005	4	147.64	2022-03-28
597	1004	6	16.38	2022-12-31
598	1002	7	-20.7	2022-08-23
599	1001	4	126.45	2022-08-31
600	1004	6	122.69	2022-08-14
601	1005	8	120.3	2022-06-25
602	1005	8	120.21	2022-02-13
603	1004	6	89.62	2022-06-26
604	1002	8	55.06	2022-12-23
605	1005	7	21.05	2022-03-21
606	1002	9	4.14	2022-01-09
607	1004	6	30.31	\N
608	1001	9	148.31	2022-10-23
609	1004	4	-4.48	2022-12-29
610	1004	10	71.99	2022-07-22
611	1001	9	81.88	2022-11-12
612	1001	4	34.7	2022-03-05
613	1005	4	37.94	2022-02-18
614	1005	8	-3.78	2022-08-11
615	1002	10	132.34	2022-06-23
616	1003	2	121.9	2022-03-24
617	1005	1	-8.26	2022-05-29
618	1003	8	49.81	2022-06-05
619	1001	6	117.23	2022-01-22
620	1004	1	-4.57	2022-05-17
621	1001	7	-3.04	2022-04-09
622	1005	4	52.79	2022-05-10
623	1005	9	73.01	2022-05-15
624	1002	3	-43.12	2022-04-08
625	1004	4	99.82	2022-11-01
626	1003	10	10.12	2022-02-22
627	1005	7	-12.51	2022-03-17
628	1004	5	81.56	2022-04-06
629	1002	5	99.69	2022-04-01
630	1005	4	46.22	2022-08-12
631	1005	9	43.67	\N
632	1003	10	\N	2022-01-06
633	1001	4	-34.19	2022-10-24
634	1003	3	6.09	2022-05-04
635	1002	4	-24.55	2022-11-17
636	1004	2	67.89	2022-01-13
637	1002	1000	64.38	2022-01-24
638	1003	1	-34.29	2022-11-11
639	1003	5	84.97	2022-09-03
640	1001	10	131.08	2022-04-29
641	1002	8	149.52	2022-05-20
642	1001	-1	-42.91	2022-12-22
643	1004	10	16.6	2022-07-04
644	1003	8	15.78	2022-04-30
645	1002	4	97.48	2022-11-16
646	1002	5	129.23	2022-07-06
647	1002	10	133.26	2022-09-10
648	1005	9	\N	2022-11-12
649	1003	10	-14.77	2022-09-30
650	1002	9	-27.33	2022-05-14
651	1002	10	97.22	2022-01-27
652	1002	10	19.44	2022-04-16
653	1003	7	51.65	2022-10-16
654	1004	1	31.61	2022-07-21
655	1002	7	67.78	2022-10-21
656	1005	8	42.47	2022-05-08
657	1004	5	25.73	2022-01-08
658	1005	1	136.29	2022-02-23
659	1002	4	-24.09	2022-02-25
660	1001	9	108.17	2022-10-22
661	1001	7	55.44	2022-12-22
662	1004	4	67.2	2022-08-27
663	1002	9	81.18	\N
664	1005	10	73.36	2022-09-23
665	1004	4	-9.89	2022-10-24
666	1005	5	-6.18	2022-11-10
667	1005	10	31.27	2022-05-12
668	1005	8	40.34	2022-05-20
669	1002	7	105.49	2022-09-03
670	1005	6	132.83	2022-11-09
671	1005	5	-20.44	2022-07-26
672	1003	4	-36.76	2022-10-27
673	1005	1	-36.42	2022-07-14
674	1003	10	-27.2	2022-01-09
675	1003	2	81.05	2022-05-19
676	1001	3	134.16	2022-03-29
677	1002	2	-48.98	2022-10-15
678	1005	6	75.73	2022-08-28
679	1005	6	71.31	2022-02-14
680	1002	6	9.49	2022-12-16
681	1004	10	-25.9	2022-05-09
682	1001	3	25.97	2022-06-26
683	1001	9	20.24	2022-06-13
684	1001	6	54.16	2022-06-20
685	1003	7	-9.03	2022-01-02
686	1003	3	6.53	2022-04-03
687	1001	10	27.99	2022-07-20
688	1005	6	-7.3	2022-09-30
689	1004	1	-37.8	2022-07-29
690	1005	10	115.9	2022-04-30
691	1001	2	129.4	2022-12-23
692	1005	2	89.12	2022-07-31
693	1004	6	5.77	2022-11-21
694	1003	5	8.78	2022-04-29
695	1003	4	107.14	2022-12-19
696	1001	8	80.54	2022-03-18
697	1005	9	-2.96	2022-01-31
698	1002	8	95.28	2022-03-25
699	1001	10	-2.44	2022-06-02
700	1002	9	98.71	2022-04-22
701	1001	4	5.79	2022-03-15
702	1001	4	124.18	2022-07-13
703	1005	4	87.87	2022-09-02
704	1004	6	79.91	2022-07-28
705	1005	1	118.85	2022-01-20
706	1003	3	-19.54	\N
707	1004	6	57.25	2022-11-22
708	1005	6	53.31	\N
709	1005	4	-30.96	2022-05-03
710	1005	2	104.76	2022-08-04
711	1003	10	80.42	2022-08-04
712	1003	2	-13.47	2022-04-20
713	1002	1	-14.79	2022-05-08
714	1004	5	80.95	2022-11-26
715	1003	8	132.32	2022-08-02
716	1002	2	85.81	2022-12-24
717	1002	2	-43.8	2022-10-24
718	1003	7	-9.04	2022-11-12
719	1001	10	135.53	2022-08-20
720	1003	3	-3.73	2022-01-15
721	1001	8	15.31	2022-07-03
722	1001	9	147.35	2022-08-26
723	1005	2	11.54	2022-10-08
724	1005	4	-44.62	2022-03-15
725	1002	1	88.86	2022-10-27
726	1004	9	26.56	2022-06-20
727	1001	4	-9.93	2022-03-01
728	1003	10	-45.1	2022-03-02
729	1002	2	73.29	2022-05-25
730	1001	6	\N	2022-04-20
731	1002	6	78.89	2022-03-26
732	1001	1	-31.95	2022-11-15
733	1001	9	120.96	2022-11-08
734	1005	7	-30.79	2022-07-27
735	1002	5	26.1	2022-03-14
736	1001	3	103.88	2022-03-07
737	1001	8	\N	2022-07-21
738	1003	8	65.09	2022-12-30
739	1002	4	39.05	2022-07-27
740	1003	9	40.55	2022-04-02
741	1003	6	-44.47	2022-07-09
742	1002	4	-36.59	2022-06-14
743	1003	8	-1.35	2022-01-02
744	1003	3	-19.95	2022-08-14
745	1001	7	12.09	2022-09-26
746	1004	9	-26.59	2022-08-12
747	1005	5	26.36	2022-04-14
748	1003	7	-37.53	2022-06-27
749	1003	7	143.15	2022-05-20
750	1001	4	-22.12	2022-02-12
751	1003	1	50.15	2022-03-07
752	1003	1	42.78	2022-11-19
753	1005	5	54.66	2022-05-15
754	1003	8	72.84	2022-11-25
755	1002	1	68.82	2022-06-07
756	1002	1	\N	2022-09-27
757	1001	3	-21.54	2022-10-05
758	1005	2	102.16	2022-08-25
759	1003	3	94.54	2022-02-09
760	1002	9	103.3	2022-07-09
761	1002	1	44.68	2022-10-27
762	1002	2	107.33	2022-11-28
763	1004	8	107.28	2022-12-29
764	1004	2	101.09	2022-10-20
765	1001	10	43.79	2022-12-29
766	1005	3	-38.88	2022-02-19
767	1005	6	93.3	2022-01-10
768	1004	3	3.55	2022-09-18
769	1004	6	37.8	2022-09-19
770	1003	1	\N	2022-03-17
771	1004	6	137.5	2022-03-21
772	1005	1	23.67	\N
773	1005	4	99.26	2022-04-06
774	1002	2	30.2	2022-09-01
775	1003	9	44.86	2022-11-17
776	1001	6	-13.09	2022-04-16
777	1002	9	94.02	2022-01-02
778	1002	9	83.51	2022-03-25
779	1004	4	45	2022-07-27
780	1003	10	65.64	2022-02-21
781	1005	10	\N	2022-04-30
782	1005	3	123.95	2022-07-31
783	1002	2	54.07	2022-06-19
784	1002	10	12.13	2022-12-20
785	1002	3	141.68	2022-01-29
786	1005	4	62.84	2022-08-31
787	1003	2	93.54	2022-12-24
788	1005	4	-23.04	2022-02-08
789	1003	1	3.48	2022-03-07
790	1004	2	51.72	2022-02-20
791	1003	1	52.76	2022-02-18
792	1003	8	116.5	2022-04-07
793	1005	5	-14.41	2022-10-02
794	1002	4	-16.15	2022-02-03
795	1001	4	42.39	2022-03-09
796	1002	6	88.74	2022-09-10
797	1002	2	-33.03	2022-02-20
798	1005	3	122.67	2022-01-17
799	1004	2	147.63	2022-07-11
800	1005	1	22.95	2022-01-11
801	1001	4	121.34	2022-11-10
802	1001	10	0.39	2022-11-03
803	1003	6	-34.57	2022-10-20
804	1001	5	132.96	2022-05-28
805	1002	7	24.15	2022-06-15
806	1001	8	77.62	2022-06-03
807	1005	4	30.25	2022-12-06
808	1004	7	\N	2022-08-26
809	1003	4	109.22	2022-10-02
810	1004	9	108.97	2022-04-25
811	1001	2	14.94	2022-03-16
812	1005	8	-43.93	2022-06-23
813	1001	5	75.42	2022-03-15
814	1003	5	\N	2022-06-30
815	1003	4	96.86	2022-03-14
816	1001	6	83.46	2022-07-26
817	1001	5	22.49	2022-10-05
818	1001	1	64.48	2022-08-13
819	1001	4	77.01	2022-08-18
820	1003	10	111	2022-07-05
821	1002	8	-2.43	2022-05-28
822	1005	6	103.64	2022-03-19
823	1005	7	-20.35	2022-11-29
824	1004	5	63.04	2022-08-30
825	1003	4	77.89	2022-09-08
826	1001	8	\N	2022-06-01
827	1004	10	142.02	2022-04-08
828	1003	3	131.73	2022-01-20
829	1005	2	-38.45	2022-04-12
830	1002	5	58.6	2022-11-10
831	1003	1	62.24	2022-11-12
832	1001	7	-32.16	2022-11-03
833	1001	5	-49.19	2022-12-20
834	1001	8	-45.46	2022-05-20
835	1005	3	31.6	2022-01-28
836	1005	6	-1.16	2022-01-11
837	1002	6	96.71	\N
838	1004	1000	119.42	2022-12-10
839	1004	7	82.56	2022-07-21
840	1003	6	-38.58	2022-05-05
841	1003	1	-41.16	2022-03-19
842	1001	7	139.04	\N
843	1003	10	-21.41	2022-03-02
844	1001	4	37.94	\N
845	1004	10	-37.93	2022-12-21
846	1002	8	118.82	2022-05-30
847	1001	3	73.03	2022-11-10
848	1002	2	82.67	2022-09-20
849	1004	1	88.24	2022-09-12
850	1004	6	20.48	2022-09-08
851	1005	3	104.72	2022-12-31
852	1004	3	24.19	2022-07-02
853	1005	6	-29.29	2022-06-23
854	1001	1	-22.04	2022-12-26
855	1004	6	81.06	2022-04-12
856	1003	4	91.81	2022-05-11
857	1002	2	10.83	2022-04-08
858	1001	4	106.1	2022-05-01
859	1004	5	-5.59	2022-10-13
860	1003	10	-0.71	2022-07-13
861	1004	3	\N	2022-11-05
862	1001	9	-25.68	2022-06-14
863	1003	8	-45.99	2022-09-02
864	1001	1	68.84	2022-07-31
865	1001	9	68.83	2022-01-07
866	1005	10	75.13	2022-10-17
867	1005	0	109.43	2022-07-05
868	1001	3	107.7	2022-05-07
869	1003	2	54.3	2022-04-18
870	1001	8	145.25	2022-09-03
871	1001	6	143.49	2022-12-29
872	1004	5	66.31	2022-10-21
873	1004	1	69.8	2022-05-02
874	1003	10	-36.62	2022-07-06
875	1003	1	-8.32	2022-08-03
876	1001	1	24.06	2022-05-02
877	1002	9	\N	2022-05-21
878	1001	9	46.89	2022-01-18
879	1002	1	8.59	2022-12-27
880	1003	10	-49.45	2022-12-02
881	1001	5	37.24	2022-01-29
882	1005	1	\N	2022-09-11
883	1001	3	-6.25	2022-10-21
884	1005	6	90.76	2022-01-06
885	1001	3	102.14	2022-03-28
886	1003	9	86.87	2022-08-23
887	1002	8	127.8	2022-11-01
888	1005	3	24.91	2022-04-13
889	1002	8	18.49	2022-05-24
890	1005	6	124.42	2022-10-04
891	1005	5	64.18	2022-10-07
892	1002	10	119.1	2022-06-02
893	1004	5	138.45	2022-12-30
894	1003	4	15.99	2022-08-19
895	1002	2	126.46	2022-07-26
896	1002	10	5.66	2022-05-23
897	1001	3	19.71	2022-06-22
898	1001	4	-8.51	2022-04-27
899	1001	6	112.05	2022-04-08
900	1003	7	140.27	2022-01-01
901	1001	9	39.24	2022-05-23
902	1001	8	148.55	\N
903	1004	4	20.89	2022-01-17
904	1001	8	1.26	2022-02-04
905	1002	0	44.2	2022-11-27
906	1005	5	24.67	2022-02-17
907	1004	4	66.99	2022-12-30
908	1004	4	18.48	2022-03-15
909	1004	1	-40.35	2022-11-20
910	1001	2	53.08	2022-11-22
911	1002	1000	100.12	2022-05-31
912	1002	10	\N	2022-09-10
913	1001	4	116.79	2022-05-03
914	1001	6	124.91	2022-02-10
915	1004	6	127.45	2022-08-02
916	1002	7	138.27	2022-03-04
917	1004	5	-10.29	2022-01-01
918	1001	10	56.8	2022-08-31
919	1004	5	24.48	2022-03-05
920	1003	6	91.85	2022-11-20
921	1001	4	8.81	2022-02-14
922	1003	1	8.44	2022-12-20
923	1001	10	\N	2022-11-19
924	1004	6	\N	2022-03-16
925	1005	8	59.51	2022-05-03
926	1001	10	\N	2022-09-05
927	1005	1	34.68	2022-11-30
928	1004	1	-23.69	2022-03-19
929	1001	5	40.19	2022-02-20
930	1004	2	-20.29	2022-08-07
931	1005	8	-1.63	2022-09-24
932	1001	1	11.54	2022-12-30
933	1003	1	-38.28	2022-06-11
934	1005	1	116.21	2022-05-23
935	1002	6	30.49	2022-03-06
936	1003	4	131.27	2022-06-06
937	1002	8	146.72	2022-01-06
938	1002	10	36.74	2022-10-22
939	1005	10	67.97	2022-01-03
940	1005	9	-30.69	2022-01-12
941	1001	10	13.21	2022-01-07
942	1004	6	-11.38	2022-11-18
943	1002	4	93.94	2022-08-29
944	1003	-1	90.91	2022-11-27
945	1004	5	11.39	2022-12-08
946	1002	5	38	2022-04-17
947	1002	2	1.41	2022-05-22
948	1003	1	-20.18	2022-03-16
949	1003	4	-15.66	2022-11-08
950	1002	6	144.53	2022-03-08
951	1002	2	41.82	2022-04-17
952	1001	7	\N	2022-03-25
953	1001	7	-45.98	2022-02-10
954	1002	4	113.54	2022-03-21
955	1002	6	108	2022-10-10
956	1002	4	109.57	\N
957	1002	10	67.48	2022-06-28
958	1001	6	98.8	2022-10-14
959	1005	-1	-43.01	2022-09-25
960	1003	5	105.06	2022-07-14
961	1003	7	38.5	2022-06-05
962	1001	6	41.19	2022-04-02
963	1001	7	147.31	2022-09-11
964	1003	9	-18.05	2022-12-12
965	1002	4	10.28	2022-09-22
966	1004	10	24.61	2022-06-29
967	1004	9	-37.7	2022-05-27
968	1005	9	44.16	2022-02-25
969	1005	7	137.67	2022-05-05
970	1003	10	-35.35	2022-11-19
971	1004	4	95.58	2022-09-18
972	1004	4	20.68	2022-04-01
973	1005	4	2.2	2022-04-04
974	1005	3	124.77	2022-08-28
975	1005	8	138.36	2022-03-08
976	1005	3	91.11	2022-10-15
977	1004	4	-15.11	2022-01-15
978	1004	8	120.7	2022-09-24
979	1002	5	145.74	2022-12-16
980	1004	2	-39	2022-12-24
981	1005	4	63.2	2022-06-03
982	1002	2	16.07	2022-02-27
983	1001	5	42.37	2022-11-14
984	1003	10	91.9	2022-07-25
985	1005	3	\N	2022-07-19
986	1004	10	-9.49	2022-07-02
987	1003	7	41.02	2022-04-14
988	1004	1	-33.22	2022-05-17
989	1001	6	101.07	2022-03-22
990	1001	1	95.95	2022-09-29
991	1002	2	-2.22	2022-12-11
992	1004	8	\N	2022-11-01
993	1005	6	95.82	2022-09-24
994	1001	6	58.73	2022-10-27
995	1002	1	141.3	2022-06-18
996	1001	1	39.71	2022-04-02
997	1001	5	60.32	2022-07-02
998	1003	1	77.54	2022-08-09
999	1005	9	119	2022-12-29
1000	1002	7	23.75	2022-04-25
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public;
--

COPY public.transactions (transaction_id, customer_id, product_id, quantity, transaction_date, total_amount) FROM stdin;
1	168	813	3	2022-03-05	242.07
2	759	250	5	\N	-8.299999999999999
3	681	786	2	2022-12-29	185.06
4	230	291	1	2022-08-12	-16.51
5	551	774	8	2022-11-30	\N
6	953	249	9	2022-11-13	1241.0099999999998
7	654	317	5	2022-04-06	636.9
8	368	835	8	2022-10-18	1209.04
9	492	710	9	2022-02-26	1533.78
10	406	416	2	2022-08-12	-20.68
11	438	757	4	\N	437.04
12	166	456	9	\N	901.98
13	542	699	2	2022-01-17	379.7
14	49	115	7	2022-02-12	-65.10000000000001
15	904	298	1	2022-07-31	76.66
16	824	278	6	2022-08-27	772.98
17	393	550	7	2022-04-02	\N
18	621	938	2	2022-12-03	258.66
19	730	179	1	2022-07-07	6.62
20	306	858	7	2022-05-27	-16.87
21	691	706	8	2022-07-08	1139.28
22	96	984	2	2022-01-10	153.8
23	644	884	3	2022-01-01	-10.35
24	723	179	3	2022-07-16	-46.349999999999994
25	507	162	3	2022-10-30	142.62
26	17	360	6	2022-12-25	310.56
27	833	673	6	2022-03-01	840.78
28	506	222	7	2022-08-03	247.45
29	921	671	8	2022-11-02	968.96
30	8	38	10	2022-04-09	458.5
31	712	460	9	2022-02-05	1743.93
32	378	452	5	2022-02-10	258.95
33	513	546	4	2022-03-23	-22.4
34	671	93	6	2022-10-27	948.12
35	187	80	1	2022-07-10	1.84
36	61	739	1	2022-10-18	163.34
37	930	674	9	2022-01-28	666.09
38	527	358	8	2022-08-14	503.68
39	648	200	6	2022-10-13	460.86
40	557	515	3	2022-05-29	235.5
41	956	138	3	2022-03-21	296.43
42	130	378	3	2022-06-16	399.66
43	501	358	9	2022-12-09	1096.11
44	157	696	5	2022-03-21	764.75
45	66	521	5	2022-07-21	0.25
46	950	495	3	2022-12-16	80.13
47	129	598	5	2022-10-30	401.5
48	443	14	7	2022-06-06	652.26
49	40	332	5	2022-08-23	330.15
50	6	217	1	2022-10-06	36.25
51	952	683	5	2022-04-05	-0.4499999999999999
52	615	638	3	2022-04-09	449.46
53	189	991	4	2022-06-06	685.04
54	677	371	8	2022-08-31	978.56
55	269	228	3	2022-04-10	373.71
56	401	86	6	2022-03-26	770.58
57	677	930	8	2022-11-09	784.96
58	892	997	8	2022-01-12	114.72
59	753	606	2	2022-03-09	325.72
60	335	184	1	2022-12-10	126.51
61	507	460	7	2022-11-18	523.9499999999999
62	749	959	5	2022-11-10	82.44999999999999
63	896	988	6	2022-02-25	1131.12
64	385	316	5	2022-03-09	545.85
65	700	326	9	2022-06-10	513.4499999999999
66	981	235	9	2022-02-21	103.77
67	958	527	8	2022-05-18	-62.08
68	382	851	2	2022-08-19	195.6
69	553	51	1	2022-04-06	180.94
70	599	16	7	2022-09-30	548.73
71	726	234	4	2022-01-29	427.56
72	245	804	4	2022-06-07	170.24
73	39	112	2	2022-07-22	8
74	606	459	6	2022-06-26	346.08
75	797	314	8	2022-09-04	1537.44
76	842	103	10	2022-09-15	1075.5
77	275	538	6	2022-01-09	405.72
78	564	719	2	2022-12-18	90.86
79	687	782	8	2022-05-25	1520.48
80	588	159	10	2022-02-24	1413.4
81	378	840	8	2022-12-01	13.44
82	391	786	10	2022-01-29	1257.4
83	456	300	8	2022-06-23	324.32
84	837	881	3	2022-11-02	525.75
85	346	828	8	2022-01-29	560.08
86	739	610	9	2022-08-15	417.33
87	779	96	2	2022-09-06	35.2
88	969	432	5	2022-10-24	87.65
89	782	433	9	2022-09-29	1652.04
90	21	649	4	2022-02-01	746
91	848	484	1	2022-03-25	162.31
92	288	400	1	2022-01-15	-15.93
93	195	191	4	2022-04-13	426.12
94	212	709	3	2022-02-09	29.19
95	910	20	10	2022-05-15	1316.3
96	708	252	2	2022-10-26	254.3
97	730	656	5	2022-12-17	959.4
98	814	498	5	2022-05-23	150.29999999999998
99	839	324	1	2022-04-01	176.31
100	510	841	7	2022-02-14	232.12
101	552	432	3	2022-08-08	561.9000000000001
102	64	32	10	2022-05-06	1341.9
103	831	125	8	2022-11-02	919.52
104	329	537	2	2022-09-25	289.3
105	127	803	8	2022-09-04	902.4
106	886	43	6	2022-09-09	942.54
107	931	844	6	2022-09-15	23.88
108	869	557	1	2022-03-30	125.09
109	652	966	9	2022-10-20	1642.5
110	810	874	1	2022-08-29	-0.53
111	12	722	9	2022-02-04	593.82
112	249	316	3	2022-10-25	24.630000000000003
113	298	469	5	2022-12-04	389.7999999999999
114	60	422	10	2022-02-20	1864.8
115	209	835	7	2022-02-18	-36.82
116	150	262	3	2022-02-03	64.28999999999999
117	374	974	7	2022-01-12	631.54
118	909	116	5	2022-03-17	-98.35
119	944	339	9	2022-07-11	154.17
120	863	400	1	2022-09-01	153.57
121	2	835	7	2022-05-11	411.81
122	901	787	8	2022-02-11	217.76
123	925	492	9	2022-09-17	-178.92
124	507	955	10	2022-03-09	228.5
125	663	917	4	2022-05-21	24.8
126	490	460	2	2022-08-17	53.8
127	911	513	9	2022-09-17	328.41
128	919	631	10	2022-04-17	1353.1999999999998
129	12	120	5	2022-10-05	841
130	223	340	8	2022-06-30	1355.04
131	71	816	6	2022-07-18	146.46
132	458	963	5	2022-04-22	118.9
133	175	256	5	2022-05-02	-32.05
134	592	876	5	2022-04-28	276.2
135	460	327	6	2022-07-25	703.92
136	691	451	4	2022-06-15	44.84
137	27	864	8	2022-04-07	1275.84
138	1000	96	9	2022-10-29	1168.38
139	10	745	6	2022-07-28	-49.260000000000005
140	807	319	2	2022-02-11	52
141	430	625	6	2022-08-19	283.74
142	285	500	5	\N	35.05
143	480	923	10	2022-03-02	119
144	299	503	9	2022-12-05	1492.83
145	281	240	8	2022-11-09	670.72
146	71	579	9	2022-01-04	974.07
147	680	539	10	\N	1044.2
148	16	404	9	2022-02-11	625.23
149	684	613	9	2022-03-14	1505.79
150	459	399	2	2022-06-29	344.28
151	140	586	10	2022-09-26	\N
152	688	166	5	2022-08-21	253.45
153	901	31	8	2022-05-08	1172.8
154	597	391	6	2022-04-24	661.02
155	539	219	6	2022-12-06	961.98
156	700	674	1	2022-07-03	-10.7
157	923	685	9	2022-10-14	237.6
158	788	185	2	2022-10-29	193.5
159	926	363	8	2022-12-10	1215.68
160	182	911	7	2022-05-17	712.81
161	912	803	3	2022-01-26	317.25
162	784	191	3	2022-03-07	540.66
163	235	810	5	2022-01-06	-70.19999999999999
164	210	401	5	2022-12-22	745.8499999999999
165	848	119	3	2022-07-19	304.86
166	823	997	10	2022-09-28	1264.8
167	132	2	2	2022-01-05	207.9
168	333	616	1	2022-10-28	17.4
169	962	873	10	2022-04-30	1124.9
170	31	698	7	2022-08-10	436.1
171	855	622	10	2022-03-22	18.799999999999997
172	897	255	7	2022-07-02	1308.02
173	338	996	2	2022-06-08	209.92
174	909	765	5	2022-08-31	703.4000000000001
175	746	971	3	2022-01-16	185.04
176	465	297	2	\N	215.7
177	480	40	8	2022-10-06	397.44
178	582	951	8	2022-07-02	182.64
179	259	218	5	2022-06-05	19.950000000000003
180	408	208	5	2022-08-31	432.9
181	791	242	10	2022-10-25	1235.6
182	359	611	6	2022-04-15	930.6
183	735	558	5	2022-08-26	24.950000000000003
184	279	579	4	2022-07-18	495.04
185	766	456	1	2022-11-29	111.92
186	339	967	6	2022-09-29	729.78
187	170	178	10	2022-09-25	-7.7
188	971	979	5	2022-05-21	7.800000000000001
189	133	839	3	2022-07-11	493.59
190	15	816	10	2022-07-20	1815.6
191	688	95	9	2022-06-21	882
192	979	846	2	2022-02-03	117.16
193	248	984	8	2022-01-27	488.56
194	427	799	9	2022-03-07	-148.5
195	416	328	8	2022-11-22	453.6
196	831	377	9	2022-07-18	1397.07
197	340	358	2	2022-05-19	396.2
198	608	105	5	2022-12-01	959.9
199	987	390	8	2022-08-30	1004.16
200	3	692	7	2022-05-13	-55.86
201	812	420	3	2022-11-02	329.07
202	81	596	3	2022-05-31	273.63
203	631	670	10	2022-01-15	151.7
204	621	337	4	2022-07-22	596.04
205	525	890	1	2022-10-09	49.54
206	742	856	2	2022-03-01	-2.42
207	740	41	6	2022-03-11	\N
208	779	507	10	2022-07-11	291
209	927	977	4	\N	626.48
210	342	697	5	2022-03-16	17.4
211	664	868	4	2022-12-05	10.48
212	840	29	10	2022-01-10	643.1
213	817	718	4	2022-06-21	556.24
214	106	864	2	2022-05-11	383.88
215	401	455	7	2022-12-28	469.42
216	570	983	7	2022-07-01	107.45
217	525	667	6	2022-06-06	-34.08
218	553	48	9	2022-02-12	1655.37
219	684	519	10	2022-10-31	1349.8
220	135	94	7	2022-01-11	\N
221	98	165	10	\N	1206.2
222	751	872	4	2022-04-09	6.88
223	239	589	2	2022-06-12	38.54
224	119	933	7	2022-11-04	1125.04
225	892	290	9	\N	299.16
226	207	606	7	2022-12-15	648.76
227	687	51	9	2022-07-18	1449.72
228	585	797	6	2022-05-04	441.24
229	667	35	2	2022-02-01	\N
230	68	911	1	2022-10-29	-2.46
231	983	845	2	2022-11-12	182.78
232	776	334	7	2022-11-26	618.66
233	355	307	10	2022-04-19	-63.5
234	912	772	2	2022-09-26	128.46
235	199	155	1	2022-02-17	67.37
236	214	654	9	2022-01-28	1714.23
237	598	932	9	2022-11-16	1665.72
238	871	520	10	2022-11-04	470.3
239	374	565	6	2022-10-21	652.92
240	193	954	8	2022-07-25	1089.2
241	128	251	4	2022-02-26	-11.2
242	64	826	10	2022-03-27	595.3
243	222	533	10	2022-12-13	566.4
244	755	675	7	2022-01-27	1279.53
245	170	634	7	2022-04-20	214.55
246	850	712	5	2022-11-29	-13.15
247	248	147	9	2022-12-18	855.4499999999999
248	314	771	7	2022-12-06	496.37
249	506	139	6	2022-02-26	-105.18
250	642	419	3	2022-10-01	423.21
251	473	149	5	2022-07-29	370.9
252	635	512	9	2022-05-21	643.86
253	818	697	10	2022-10-06	238.3
254	395	613	9	2022-04-18	1093.05
255	649	872	1	2022-10-10	150.59
256	226	195	8	2022-11-21	-6.4
257	202	602	5	2022-10-16	472.2999999999999
258	995	530	3	2022-06-27	416.37
259	418	321	4	2022-09-11	722.48
260	128	719	5	2022-11-21	842.55
261	328	386	10	2022-03-01	249.4
262	843	905	1	2022-04-16	89.73
263	673	926	3	2022-08-02	552.33
264	727	325	4	2022-12-20	533.4
265	152	481	5	2022-11-11	603.75
266	107	374	5	2022-04-15	438.7
267	417	571	4	2022-02-25	42.88
268	997	366	9	2022-01-03	64.71000000000001
269	798	688	5	2022-04-27	887.05
270	562	284	1	2022-02-03	5.24
271	424	741	2	2022-10-30	345.06
272	579	769	1	2022-03-22	85.5
273	852	428	10	2022-10-22	881.9
274	974	527	8	2022-05-09	1468.08
275	952	117	9	2022-03-12	1723.23
276	808	908	6	2022-01-13	832.92
277	17	823	2	2022-05-19	127.96
278	431	694	1	2022-01-12	31.28
279	272	125	7	2022-04-15	\N
280	592	710	5	2022-04-05	612.7
281	896	448	4	2022-06-08	8.76
282	481	372	9	2022-08-06	1356.66
283	515	576	4	2022-11-26	740.56
284	83	495	2	2022-02-15	302.92
285	141	954	3	2022-04-07	599.8499999999999
286	307	115	6	2022-02-21	993.06
287	385	443	1	2022-04-20	192.91
288	484	843	7	2022-01-05	-9.1
289	488	356	4	2022-04-30	681.44
290	163	57	4	2022-09-24	238.96
291	67	866	10	2022-10-01	1921
292	452	328	2	2022-09-28	16.36
293	2	689	5	2022-05-14	91
294	759	27	9	2022-01-12	-177.66
295	585	927	2	2022-11-19	160.08
296	927	895	4	2022-11-07	26.56
297	755	88	3	2022-07-25	557.55
298	367	573	4	2022-04-24	155.76
299	415	762	6	2022-11-15	646.4399999999999
300	932	409	4	2022-04-10	\N
301	244	949	10	2022-12-07	96.1
302	832	794	7	2022-01-28	\N
303	703	731	10	2022-05-13	-132.89999999999998
304	211	13	7	2022-02-10	861.84
305	72	93	4	2023-01-01	426.88
306	826	202	10	2022-07-03	1160.9
307	465	693	10	2022-02-20	965
308	76	326	3	2022-05-11	507.68999999999994
309	537	850	5	\N	797.45
310	327	828	6	2022-07-16	561.66
311	909	334	5	2022-09-15	272.35
312	672	100	5	2022-03-10	685.6
313	325	640	8	2022-12-16	793.28
314	767	929	8	2022-01-12	-81.76
315	914	950	3	2022-10-25	\N
316	572	885	10	2022-03-06	1446.9
317	770	547	9	2022-12-07	390.68999999999994
318	969	873	1	2022-05-17	-4.28
319	776	688	2	2022-06-24	140.7
320	848	259	2	2022-02-18	-7.88
321	433	849	10	2022-07-15	1960.5
322	32	602	1	2022-12-01	152.39
323	798	51	7	2022-10-27	\N
324	77	134	2	2022-12-30	-6.3
325	763	503	3	2022-12-11	-9.27
326	593	870	3	2022-05-04	233.58
327	231	617	9	2022-07-12	1559.61
328	423	807	4	2022-11-28	\N
329	423	321	6	2022-04-25	551.9399999999999
330	467	671	4	2022-06-10	316.8
331	230	204	5	2022-09-04	135.7
332	557	98	8	2022-05-02	87.28
333	817	301	5	2022-11-10	281.6
334	773	575	10	2022-12-02	496.9
335	750	837	10	2022-11-25	1157.8
336	631	962	2	2022-10-25	232.14
337	498	701	4	2022-04-12	282.4
338	767	478	5	2022-01-06	505.15
339	195	244	3	2022-07-25	-30.869999999999997
340	618	861	1	2022-12-11	-16.49
341	942	217	1	2022-03-13	72
342	472	480	3	2022-12-07	367.9500000000001
343	4	168	7	2022-10-18	263.2
344	337	673	9	2022-07-05	833.4
345	117	990	1	2022-01-08	144.91
346	906	173	3	2022-01-26	518.73
347	805	337	6	2022-07-14	431.76
348	885	179	8	2022-10-20	937.2
349	827	895	3	2022-06-22	556.74
350	364	281	3	2022-05-07	285.6
351	895	355	4	2022-06-12	608.16
352	979	489	3	2022-09-19	359.58
353	920	897	1	2022-06-21	\N
354	985	179	3	2022-09-30	\N
355	479	750	1	2022-10-23	128.05
356	549	916	4	2022-01-29	354.16
357	941	152	3	2022-04-25	519.48
358	469	384	10	2022-08-09	772
359	843	97	7	2022-04-30	660.24
360	393	295	9	2022-11-06	1591.11
361	931	768	7	2022-11-28	414.26
362	925	492	7	2022-02-16	\N
363	392	716	10	2022-08-16	1027.8
364	536	183	5	2022-10-26	\N
365	816	944	4	2022-12-02	117.84
366	703	40	6	2022-06-07	197.46
367	840	417	2	2022-05-17	168.24
368	1000	786	7	2022-07-30	745.57
369	936	657	9	2022-04-02	1111.77
370	114	340	7	2022-11-05	530.6700000000001
371	221	395	9	2022-10-30	-50.22
372	100	927	2	2022-07-10	246.7
373	317	674	7	2022-12-03	1359.61
374	896	691	9	2022-12-31	95.04
375	562	337	9	2022-09-09	1570.86
376	276	102	1	2022-08-16	168.42
377	385	237	3	2022-10-23	100.89
378	322	881	8	2022-12-03	270.56
379	805	184	3	2022-12-07	450.72
380	532	960	1	2022-02-15	-15.59
381	110	194	3	2022-05-20	\N
382	431	720	2	2022-12-27	290.04
383	266	397	5	2022-08-13	67
384	836	476	7	2022-05-22	561.61
385	826	567	6	2022-11-29	429.96
386	292	972	2	2022-03-25	109.7
387	518	204	8	2022-08-27	1580.48
388	184	989	4	2022-11-04	211.08
389	702	308	8	2022-01-07	-77.92
390	115	782	1	2022-11-06	98.45
391	159	2	6	2022-06-30	770.04
392	757	992	3	2022-10-17	241.92
393	630	632	3	2022-06-12	68.76
394	55	159	8	2022-04-25	1097.12
395	243	743	10	2022-01-29	441.3
396	866	492	6	2022-03-25	422.64
397	650	796	4	2022-12-19	642.24
398	935	567	9	2022-07-22	1253.79
399	427	675	9	2022-06-06	416.79
400	170	246	4	2022-06-30	603.12
401	171	731	3	2022-09-27	15.09
402	901	976	4	2022-09-01	449.8
403	551	940	6	2022-05-15	277.86
404	373	76	5	2022-05-11	343.25
405	745	64	4	2022-07-18	653.6
406	902	307	9	2022-09-11	1210.68
407	29	490	7	2022-05-14	725.13
408	729	129	10	2022-07-31	1595
409	469	153	9	2022-01-19	1743.03
410	580	294	8	2022-06-25	1305.44
411	786	735	1	2022-05-06	91.69
412	684	871	8	2022-12-06	642.32
413	866	173	3	2022-06-04	290.79
414	91	733	4	2022-11-25	379.2
415	913	493	9	2022-04-27	338.49
416	533	933	6	2022-07-31	347.1
417	117	944	10	2022-12-16	1788.7
418	610	195	5	2022-12-12	647.3000000000001
419	915	511	1	2022-05-13	120.05
420	665	844	7	2022-07-24	732.34
421	567	883	5	2022-09-15	678.65
422	271	219	3	2022-06-20	352.44
423	254	633	10	2022-11-12	1628.9
424	875	855	2	2022-05-27	\N
425	515	63	7	2022-08-07	549.43
426	912	765	10	\N	1757
427	895	371	1	2022-01-12	156.74
428	662	217	9	2022-12-04	-38.97
429	466	561	10	2022-08-23	1510.5
430	904	736	10	2022-02-08	799.9
431	842	172	2	2022-04-22	68.26
432	383	436	10	2022-05-11	616.5
433	430	260	6	2022-05-27	740.46
434	744	549	8	2022-01-03	1468.88
435	679	448	7	2022-01-25	-54.95
436	928	83	8	2022-09-11	1138.32
437	974	609	3	2022-05-25	409.02
438	990	258	9	2022-10-25	526.23
439	250	524	6	2022-12-27	1135.38
440	536	612	1	2022-05-18	52.54
441	264	598	9	2022-01-04	554.49
442	91	727	8	2022-06-14	933.52
443	119	585	5	2022-08-17	515.0500000000001
444	668	997	10	2022-09-24	1979.2
445	636	96	6	2022-12-12	1098.3000000000002
446	326	82	9	2022-03-21	936.45
447	140	934	5	2022-06-15	398.5
448	964	569	10	2022-07-06	2.2
449	752	710	6	2022-09-19	1191.84
450	774	327	9	2022-11-29	1319.58
451	503	709	2	2022-06-26	53.94
452	654	596	9	2022-02-01	1045.53
453	623	72	6	2022-05-19	261.78000000000003
454	913	170	8	2022-08-10	229.36
455	874	42	4	2022-02-18	270.84
456	716	852	8	2022-12-16	613.84
457	714	237	1	2022-01-15	110.49
458	917	264	4	2022-07-01	328.48
459	474	207	9	2022-09-09	1524.87
460	8	161	10	\N	1191.6
461	261	293	6	\N	816.36
462	820	274	8	2022-03-14	298
463	632	558	8	2022-11-26	156.72
464	288	822	7	2022-02-14	-27.93
465	413	907	5	2022-06-14	770.4000000000001
466	6	719	4	2022-02-03	\N
467	676	869	9	2022-07-07	811.26
468	277	929	8	2022-09-30	1100.8
469	577	847	1	2022-03-25	4.6
470	408	262	9	\N	1613.79
471	142	719	4	2022-05-26	378.24
472	696	724	4	2022-09-06	-24.52
473	819	996	7	2022-10-17	1281.77
474	98	778	2	2022-08-31	\N
475	365	190	6	2022-03-29	618.12
476	858	664	5	2022-03-20	757.5
477	315	211	2	2022-09-13	210.56
478	678	834	7	2022-07-04	1041.39
479	326	77	6	2022-12-05	377.76
480	625	306	3	2022-10-07	416.28
481	688	440	6	2022-10-10	755.88
482	9	473	8	2022-05-12	1271.28
483	58	707	3	2022-06-19	530.37
484	28	477	2	2022-03-13	6.62
485	540	682	10	2022-11-27	1408.3000000000002
486	800	317	8	2022-08-30	1087.36
487	698	260	6	2022-05-28	203.64
488	270	57	6	2022-03-28	1142.88
489	719	487	1	2022-08-06	101.13
490	439	60	10	2022-07-26	1051.6
491	730	576	4	2022-08-18	463.84
492	315	982	4	2022-01-29	-25.16
493	266	316	4	2022-12-04	615.36
494	47	960	7	2022-07-07	-50.47
495	72	68	4	2022-01-12	277.64
496	120	15	4	2022-01-19	769.8
497	11	107	5	2022-04-13	435.75
498	787	997	4	2022-10-24	333.6
499	900	669	7	2022-09-30	711.9699999999999
500	224	955	9	2022-08-20	571.3199999999999
501	259	8	7	2022-01-02	1068.83
502	24	101	4	2022-08-13	351.6
503	179	983	8	2022-12-10	729.44
504	719	383	4	2022-04-22	522.48
505	631	652	4	2022-05-05	341.52
506	603	411	1	2022-02-14	56.03
507	710	57	2	2022-08-02	351.76
508	571	139	3	2022-10-02	373.38
509	235	973	10	2022-01-03	187.1
510	48	913	7	2022-01-05	779.73
511	801	836	4	2022-08-10	431.12
512	544	150	5	2022-04-29	731.2
513	626	279	3	2022-09-01	118.14
514	70	74	10	2022-06-29	\N
515	216	128	9	2022-08-31	98.91
516	207	526	4	\N	237.88
517	464	808	8	2022-10-03	-46.72
518	910	697	8	2022-08-03	\N
519	668	568	5	2022-09-25	651.5999999999999
520	338	697	7	2022-07-08	605.01
521	844	93	8	2022-02-22	511.52
522	453	953	8	2022-03-04	64.8
523	914	188	4	2022-04-21	-53.28
524	770	438	9	2022-06-27	1774.35
525	309	974	5	2022-06-28	679.5
526	438	950	7	2022-07-04	190.96
527	378	544	3	2022-08-29	-22.44
528	568	359	6	2022-11-10	73.32000000000001
529	661	665	2	2022-07-06	389.2
530	366	486	3	2022-10-05	18.57
531	355	933	2	2022-08-15	238.42
532	927	515	8	2022-06-05	1223.52
533	880	212	1	2022-08-07	152.88
534	558	8	4	2022-05-24	210.44
535	229	847	10	2022-04-09	877.2
536	103	828	2	2022-06-05	282.54
537	259	252	4	2022-02-09	\N
538	685	686	1	2022-11-09	7.54
539	252	727	3	2022-07-11	46.38
540	995	750	2	2022-03-25	65.08
541	877	711	8	2022-12-30	575.92
542	590	775	10	2022-11-15	1602.6
543	257	935	2	2022-09-03	222.08
544	868	813	7	2022-12-26	320.10999999999996
545	178	820	5	2022-03-26	132.55
546	117	670	1	2022-09-24	164.52
547	615	740	7	2022-04-02	1298.78
548	144	1	2	2022-04-02	\N
549	146	461	2	2022-10-25	206.78
550	385	503	7	2022-11-29	707.35
551	985	135	6	2022-12-12	416.82
552	657	702	4	2022-12-23	736.32
553	402	78	9	2022-04-04	358.83
554	698	475	8	2022-07-07	416.16
555	586	147	8	2022-03-30	931.92
556	997	907	10	2022-11-01	-146.9
557	274	619	7	2022-10-13	-3.5
558	662	573	8	2022-08-11	1279.44
559	665	890	6	2022-03-29	472.68
560	725	265	5	2022-11-26	93.65
561	758	740	2	2022-05-12	363.14
562	706	762	3	2022-08-25	280.40999999999997
563	257	550	9	2022-04-23	856.08
564	458	687	6	2022-02-17	660.72
565	918	974	5	2022-04-05	\N
566	585	874	2	2022-07-23	26.04
567	521	529	10	\N	899.9
568	52	993	6	2022-09-20	1001.46
569	852	665	6	2022-10-31	966.42
570	366	388	5	2022-04-02	854.75
571	113	487	5	2022-07-04	490.7999999999999
572	670	83	1	2022-10-20	182.25
573	712	291	3	\N	-7.98
574	36	777	7	2022-05-10	-119.28
575	662	767	2	2022-07-22	61.24
576	486	26	10	2022-06-18	1937.6
577	355	600	5	2022-12-31	507.9
578	756	9	3	2022-05-10	467.52
579	900	177	6	2022-03-05	-67.08
580	832	28	10	2022-10-13	291.1
581	224	613	5	2022-03-06	53.099999999999994
582	902	440	4	2022-11-12	32.08
583	801	200	7	2022-03-13	290.84999999999997
584	295	695	1	2022-04-21	-10.87
585	4	684	3	2022-03-19	452.46
586	143	444	9	2022-09-26	290.96999999999997
587	396	196	3	2022-11-11	105.54
588	509	894	10	2022-05-18	884.9
589	857	532	4	2022-06-16	380.68
590	989	695	7	2022-11-23	996.59
591	585	274	6	2022-04-22	497.34
592	310	530	8	2022-08-14	1131.76
593	161	711	7	2022-09-06	935.9
594	783	227	7	2022-06-19	15.54
595	221	838	4	2022-09-06	245.4
596	427	782	8	2022-01-07	1042.64
597	31	229	6	2022-05-29	-119.52
598	756	444	10	2022-04-09	216.3
599	766	904	2	2022-07-11	157.48
600	660	296	4	2022-03-20	\N
601	625	978	7	\N	413.84
602	629	735	10	2022-11-19	1815
603	385	56	3	2022-11-21	236.31
604	485	395	2	2022-01-04	351.26
605	567	952	3	2022-09-22	175.95
606	37	502	10	2022-02-26	1241.5
607	390	542	9	2022-04-13	1226.7
608	883	299	1	2022-08-18	9.01
609	870	441	3	2022-12-14	235.11
610	758	332	6	2022-04-05	-73.67999999999999
611	905	442	6	2022-11-06	-109.98
612	479	676	10	2022-06-22	-184.2
613	251	2	5	2022-07-02	\N
614	721	173	4	2022-06-22	31.92
615	888	562	3	2022-12-26	548.76
616	513	718	6	2022-02-21	396.78
617	976	699	9	2022-07-07	598.68
618	239	510	10	2022-06-07	1861.6
619	377	626	10	2022-08-25	94.2
620	268	835	10	2022-11-27	390.4
621	268	25	6	2022-04-19	898.5
622	791	216	8	2022-09-30	1157.84
623	863	52	4	2022-01-22	499.88
624	849	90	5	2022-12-12	964.4
625	918	989	3	2022-10-22	197.19
626	710	997	3	2022-06-30	520.59
627	652	794	6	2022-01-26	393.78
628	279	625	3	2022-12-12	69.27
629	387	574	1	2022-08-22	64.49
630	395	461	3	2022-11-26	342
631	238	694	4	2022-12-21	185.2
632	252	41	5	2022-10-12	491.55
633	583	620	6	2022-10-18	594.12
634	438	353	5	2022-12-11	630.3499999999999
635	946	333	3	2022-03-05	266.85
636	367	368	10	2022-10-12	799.3000000000001
637	570	253	1	2022-06-12	123.15
638	212	478	6	2022-08-07	381.2999999999999
639	861	290	9	2022-11-18	349.11
640	517	37	6	2022-05-02	567.3
641	159	851	3	2022-01-20	399.4500000000001
642	817	475	8	2022-08-30	1334.72
643	48	666	8	2022-07-11	75.84
644	888	317	1	2022-09-01	45.1
645	413	604	7	\N	653.73
646	587	688	9	2022-05-29	704.61
647	810	113	8	2022-09-24	650.96
648	646	52	9	2022-03-24	1216.44
649	529	585	6	2022-03-01	256.98
650	514	514	8	2022-04-07	550.4
651	686	345	1	2022-11-15	149.48
652	958	298	3	2022-09-08	124.29
653	468	33	8	2022-01-24	832.48
654	189	648	2	\N	-18.26
655	959	57	3	2022-08-21	341.96999999999997
656	449	810	4	2022-01-10	754.4
657	464	263	9	2022-01-30	1024.92
658	672	198	3	2022-06-18	-19.950000000000003
659	639	308	6	2022-06-04	257.1
660	912	379	6	2022-04-28	420.18
661	472	558	3	2022-08-23	\N
662	43	365	3	2022-03-16	420.4500000000001
663	89	856	2	2022-11-10	174.08
664	603	814	7	2022-03-27	\N
665	648	498	3	2022-01-03	315.69
666	142	718	9	2022-12-27	1532.88
667	107	494	3	2022-06-17	550.23
668	623	293	1	2022-03-04	102.64
669	334	247	5	2022-12-26	-57.55
670	918	296	7	2022-03-20	827.96
671	270	395	3	2022-04-05	\N
672	833	352	7	2022-10-21	179.41
673	610	827	7	2022-11-25	943.81
674	327	611	1	2022-04-13	4.86
675	87	934	1	\N	69.36
676	327	282	3	2022-02-05	445.5
677	647	544	5	2022-05-16	-68.60000000000001
678	26	138	8	2022-12-24	1233.2
679	436	293	9	2022-06-21	-28.17
680	829	525	10	2022-08-30	1847.7
681	356	451	9	2022-01-08	447.48
682	364	880	1	2022-11-19	139.67
683	394	712	10	2022-02-23	1270.4
684	496	778	7	2022-12-01	1175.09
685	527	581	1	2022-04-26	89.24
686	321	85	5	2022-04-02	-52.3
687	790	903	4	2022-07-09	692.88
688	151	53	4	2022-04-10	685.52
689	323	188	5	2022-03-20	\N
690	954	843	4	2022-12-12	248.6
691	897	392	3	2022-01-27	504.27
692	895	306	10	2022-11-18	463.2
693	105	559	6	2022-03-28	385.14
694	865	420	7	2022-11-26	710.2199999999999
695	32	884	9	2022-05-16	1084.32
696	329	549	1	2022-12-05	142.34
697	904	296	7	2022-12-16	38.080000000000005
698	226	24	3	2022-07-27	109.89
699	378	205	7	2022-07-08	948.01
700	86	612	7	2022-08-08	697.06
701	246	915	3	2022-03-29	416.18999999999994
702	402	71	7	2022-11-21	210.84
703	330	871	3	2022-12-28	449.76
704	50	825	3	2022-06-30	3.66
705	254	680	3	2022-06-28	460.43999999999994
706	742	57	9	2022-10-17	1751.85
707	868	176	7	2022-07-29	515.5500000000001
708	733	909	6	2022-01-30	210.66
709	901	861	7	2022-09-20	-38.5
710	732	573	9	2022-05-29	-154.53000000000003
711	518	32	3	2022-04-22	445.5
712	136	1	4	2022-05-27	-14.28
713	863	233	9	2022-07-24	1415.88
714	185	453	10	2022-01-10	315.1
715	877	312	2	2022-01-28	95.16
716	736	536	8	2022-07-12	1575.84
717	249	534	7	2022-06-11	1333.29
718	223	345	1	2022-04-03	6.97
719	60	173	2	2022-02-10	121.34
720	877	126	6	2022-05-01	779.04
721	543	464	10	2022-07-30	192.2
722	434	682	3	2022-06-23	483.93
723	650	514	3	2022-01-07	159.3
724	30	874	2	2022-12-09	309.22
725	382	653	8	2022-12-26	881.04
726	195	377	6	2022-12-26	570.24
727	260	682	3	2022-04-29	\N
728	958	426	1	2022-02-18	74.09
729	782	383	10	2022-10-09	-194.7
730	867	759	10	2022-09-07	49.7
731	391	70	10	2022-06-11	1569.7
732	226	740	6	2022-03-15	8.399999999999999
733	723	285	5	2022-01-04	542.1
734	654	240	2	2022-09-24	245.8
735	921	379	5	2022-06-04	856.1
736	986	776	2	2022-03-13	155.52
737	159	683	1	2022-09-21	192.09
738	119	725	10	2022-07-27	623.5
739	854	213	6	2022-05-16	-79.44
740	186	76	4	2022-02-20	693.28
741	198	645	7	2022-01-01	1386.7
742	235	890	8	2022-07-23	-15.36
743	988	517	10	2022-06-21	41.5
744	160	244	6	2022-05-17	\N
745	406	40	2	2022-06-04	151.94
746	373	550	6	2022-11-09	271.56
747	956	630	7	2022-12-29	798.21
748	638	687	9	2022-09-19	1638.27
749	124	549	10	2022-08-26	1858.5
750	343	62	6	2022-10-15	\N
751	732	125	1	2022-12-31	109.98
752	359	65	10	2022-06-23	-51.7
753	528	361	5	2022-03-29	929
754	444	544	7	2022-11-06	892.15
755	669	37	1	2022-04-13	-19.66
756	67	251	8	2022-11-24	1308.56
757	359	107	4	2022-07-01	262.92
758	602	428	2	2022-11-20	310.62
759	929	436	7	2022-12-28	682.15
760	104	656	8	\N	109.28
761	360	33	9	2022-06-19	227.34
762	848	289	7	2022-07-27	751.8000000000001
763	143	546	9	2022-09-19	-68.39999999999999
764	302	614	9	2022-11-24	1127.61
765	941	623	9	2022-07-12	928.26
766	487	303	3	2022-10-16	75.57000000000001
767	430	783	3	2022-07-28	219.71999999999997
768	798	227	8	2022-10-01	692.64
769	283	679	2	2022-09-19	359.6
770	134	472	9	2022-01-15	1257.12
771	362	510	9	2022-12-22	147.69
772	197	197	5	2022-08-17	768.8
773	207	289	5	2022-09-03	702.45
774	966	702	4	2022-06-24	-12.72
775	288	927	1	\N	172.76
776	344	372	7	2022-01-06	-59.709999999999994
777	366	892	5	2022-06-29	398.6
778	995	195	5	2022-07-20	475.1
779	41	773	6	2022-06-16	\N
780	759	495	10	2022-05-02	1785.1
781	187	638	8	2022-04-26	1585.2
782	379	736	2	2022-12-11	-16.18
783	756	948	4	2022-04-22	497.64
784	887	50	1	2022-05-05	1.12
785	432	278	3	2022-02-23	101.4
786	41	715	6	2022-12-13	\N
787	202	325	1	2022-01-25	14.41
788	280	939	2	2022-07-19	67.36
789	837	978	3	2022-07-24	264.06
790	574	592	4	2022-07-24	69.64
791	338	265	9	2022-08-15	1665.63
792	65	655	1	2022-03-21	103.59
793	566	188	8	2022-02-16	1133.12
794	332	834	6	2022-11-13	665.04
795	447	292	10	2022-03-11	896.2
796	474	180	8	2022-03-31	\N
797	675	258	7	2022-12-04	-75.18
798	111	710	4	2022-02-03	589.36
799	255	171	2	2022-06-06	-16.42
800	63	816	10	2022-05-26	202.1
801	230	135	5	2022-05-29	-67.35000000000001
802	886	710	5	2022-07-01	523.1
803	166	50	4	2022-04-16	729.28
804	164	825	10	2022-06-07	421.2
805	746	746	9	2022-06-16	151.65
806	484	68	6	2022-07-19	1164.48
807	699	918	10	2022-08-21	216.4
808	618	699	2	2022-03-24	357.78
809	526	304	1	2022-11-17	153.19
810	566	176	7	2022-08-06	771.3299999999999
811	272	74	9	2022-08-02	-118.17
812	342	422	1	2022-01-14	182.51
813	84	29	3	2022-09-13	136.5
814	768	616	8	2022-11-14	1137.68
815	74	415	9	2022-09-14	639.6299999999999
816	212	716	10	2022-12-10	1525.1
817	522	832	6	2022-08-05	644.46
818	300	836	2	2022-10-06	96.38
819	823	594	3	2022-12-27	258.18
820	250	677	7	2022-07-30	679.07
821	468	708	10	2022-03-07	124.5
822	854	153	10	2022-09-26	-20.8
823	290	61	7	2022-04-15	-42.21
824	91	229	4	2022-01-12	\N
825	550	423	5	2022-12-04	-29.1
826	929	544	5	2022-06-28	468.6
827	423	716	6	2022-06-06	1082.22
828	259	208	4	2022-10-22	491.72
829	827	25	9	2022-09-26	1201.68
830	345	948	1	2022-10-08	152.58
831	709	716	9	2022-01-06	228.42
832	423	51	4	2022-06-13	32.04
833	590	367	9	2022-06-13	1374.21
834	302	267	9	\N	722.79
835	362	436	6	\N	302.70000000000005
836	822	334	5	2022-10-14	683.15
837	655	597	1	2022-11-10	20.76
838	62	234	4	2022-09-27	261.28
839	40	845	2	2022-03-23	226.82
840	242	808	5	2022-06-03	750.8
841	258	475	8	2022-10-23	-12.64
842	982	695	10	2022-08-04	403.9
843	889	808	1	2022-11-16	150.56
844	22	858	8	2022-04-04	1235.52
845	194	844	1	2022-11-14	94.08
846	620	302	10	2022-05-13	1299.5
847	37	18	5	2022-12-23	263.09999999999997
848	585	127	9	2022-11-21	190.62
849	175	91	2	2022-12-03	303.54
850	558	334	2	2022-11-18	190.28
851	48	567	9	2022-06-30	-66.42
852	469	336	6	2022-07-10	471.72
853	78	206	2	\N	317.8
854	761	604	2	\N	-15.48
855	792	454	10	2022-12-14	972.5
856	318	357	3	2022-12-16	-4.050000000000001
857	922	758	10	2022-06-06	1408
858	896	910	4	2022-05-06	71.64
859	678	682	1	2022-07-07	194.26
860	500	161	5	2022-04-24	267.45
861	304	850	1	2022-06-07	155.5
862	564	19	1	2022-04-20	46.84
863	461	507	1	2022-07-07	\N
864	907	424	4	2022-06-13	\N
865	272	593	9	2022-06-10	273.51
866	795	380	8	2022-03-08	\N
867	930	316	5	2022-11-06	452.4
868	519	784	3	2022-12-03	537.39
869	139	545	10	2022-06-01	1523.1
870	895	621	1	2022-04-27	2.9
871	780	531	4	2022-04-04	\N
872	274	736	5	2022-09-05	216.1
873	104	195	9	2022-03-17	1447.83
874	504	82	8	2022-08-14	1006.72
875	753	715	3	2022-02-24	366.78
876	836	995	1	2022-12-24	0.86
877	133	333	3	2022-09-11	450.33
878	320	898	8	2022-09-15	-51.76
879	947	172	5	2022-06-14	281.84999999999997
880	585	534	3	2022-09-03	93.45
881	758	509	5	2022-09-16	161.45
882	343	826	6	2022-01-21	317.1
883	777	517	1	2022-08-21	43.2
884	589	117	8	2022-06-23	1075.2
885	405	958	6	2022-08-23	682.2
886	442	102	5	2022-03-24	47.55
887	83	815	5	2022-09-05	699.4499999999999
888	91	397	9	2022-06-10	1208.25
889	2	149	4	2022-06-20	127.4
890	788	178	2	2022-01-21	32.6
891	671	341	8	2022-07-29	1431.04
892	322	501	6	2022-05-14	213.42
893	601	200	5	2022-10-16	722.1500000000001
894	951	607	4	2022-12-01	563.08
895	602	41	8	2022-03-08	1200.16
896	828	252	5	2022-07-30	987.9
897	539	195	3	2022-02-25	86.61
898	864	521	8	2022-01-22	690.72
899	313	987	3	2022-01-26	224.31
900	377	46	10	2022-04-08	\N
901	764	175	5	2022-04-05	19.25
902	742	192	5	2022-11-24	568.65
903	505	799	7	2022-08-10	116.9
904	767	203	8	2022-04-04	771.92
905	633	998	2	2022-11-10	92.02
906	495	752	9	2022-08-16	1459.89
907	603	433	9	2022-07-19	503.18999999999994
908	840	756	8	2022-08-05	180.56
909	896	4	9	2022-03-16	1706.22
910	502	21	5	\N	689.0999999999999
911	383	131	4	2022-09-17	673.72
912	42	884	1	2022-03-05	166.37
913	310	252	5	2022-06-08	420
914	121	2	7	2022-03-12	-103.11
915	804	896	9	2022-04-07	728.82
916	150	92	2	2022-07-15	33.72
917	733	3	7	2022-01-11	1349.95
918	276	443	10	2022-04-07	1482.4
919	636	76	5	2022-07-13	502.25
920	533	807	2	2022-09-06	309.48
921	243	785	2	2022-05-18	150.82
922	938	787	7	2022-11-12	1363.25
923	835	697	6	2022-07-01	980.76
924	985	418	8	2022-01-09	548.16
925	704	175	1	2022-02-11	186.53
926	142	908	8	2022-02-25	22.64
927	202	852	1	\N	32.88
928	45	395	9	2022-05-14	1083.6
929	402	658	1	2022-08-04	170.4
930	728	646	4	2022-05-23	157.84
931	644	262	3	2022-08-27	494.04
932	455	389	9	2022-06-01	359.82
933	946	109	5	2022-01-20	710.15
934	328	384	5	2022-07-10	-39.3
935	596	326	7	2022-07-02	412.3
936	63	782	5	2022-08-20	963.4
937	625	421	9	2022-02-09	\N
938	584	237	4	2022-03-04	390.28
939	382	930	2	2022-02-28	161.86
940	284	47	4	2022-12-24	673.16
941	651	431	8	2022-02-28	-100.72
942	983	323	10	2022-12-18	699.5
943	633	20	4	2022-04-14	400.64
944	397	888	5	2022-08-02	746.35
945	477	306	8	2022-11-07	717.04
946	149	433	5	2022-08-25	86.75
947	96	575	1	2022-05-18	61.56
948	325	164	7	2022-02-19	500.92
949	642	456	4	2022-03-26	436.12
950	396	411	7	2022-01-15	1005.97
951	775	533	10	2022-07-31	741.7
952	132	118	3	2022-01-19	304.20000000000005
953	754	33	2	2022-02-22	299.4
954	357	303	4	2022-03-23	-2.56
955	43	107	6	2022-08-13	939.18
956	983	633	6	2022-10-19	864.54
957	166	890	6	2022-01-03	1190.4
958	805	457	8	2022-06-27	1029.36
959	636	777	6	2022-05-16	670.38
960	348	851	4	2022-11-20	620.72
961	347	395	5	2022-09-12	447.9500000000001
962	602	769	6	2022-07-10	1138.68
963	925	506	5	2022-04-23	111.55
964	989	602	4	2022-12-19	610.36
965	808	232	6	2022-09-19	965.82
966	708	693	4	2022-08-31	136.6
967	767	622	6	2022-08-04	176.46
968	703	357	2	2022-11-23	166.2
969	683	179	3	2022-08-21	126.78
970	710	325	8	2023-01-01	552.16
971	773	267	1	2022-04-08	83.29
972	80	299	9	2022-07-03	570.6
973	286	189	6	2022-10-01	662.16
974	867	519	1	2022-10-10	113.77
975	212	322	7	2022-12-12	437.08
976	397	741	4	2022-09-19	498.72
977	784	426	5	2022-04-03	\N
978	585	689	2	2022-05-18	141.5
979	273	824	1	2022-02-19	-7.24
980	872	60	3	2022-06-29	534.21
981	688	572	5	\N	376.25
982	175	437	9	2022-05-16	493.11
983	779	63	8	2022-03-20	155.44
984	205	634	9	2022-05-16	1332.81
985	999	508	9	2022-08-18	1352.7
986	458	71	2	2022-10-18	313.12
987	948	395	6	2022-11-19	90.3
988	289	643	6	\N	-64.19999999999999
989	189	783	7	2022-12-21	726.18
990	816	744	10	2022-06-01	1084.1
991	106	888	7	2022-12-14	416.57
992	458	361	5	2022-07-19	238.75
993	532	928	3	2022-08-13	267.93
994	453	922	4	\N	422.56
995	824	363	8	2022-09-26	858.16
996	293	378	3	2022-09-14	15.09
997	712	807	6	2022-04-18	557.7
998	716	687	4	\N	635.44
999	922	262	9	2022-06-16	883.98
1000	57	318	4	2022-01-05	685.32
\.


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public;
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public;
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: sales_data sales_data_pkey; Type: CONSTRAINT; Schema: public;
--

ALTER TABLE ONLY public.sales_data
    ADD CONSTRAINT sales_data_pkey PRIMARY KEY (transaction_id);


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public;
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (transaction_id);


--
-- PostgreSQL database dump complete
--

