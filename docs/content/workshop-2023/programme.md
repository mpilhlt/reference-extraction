---
title: "Programme"
date: 2023-04-20T08:04:00+02:00
draft: false
---

Hybrid Workshop at the [Max Planck Institute for Legal History and Legal Theory (mpilhlt)](https://www.lhlt.mpg.de/en/), 15/16 May, 2023

All times are Frankfurt time, that is CEST (UTC/GMT +2 hours)

### Monday 15 May 2023

**13:00-13:30 Opening**

**13:30-14:50 Presentations 1**

1. **Aleksandra Kaye/Bernardo S. Buarque/Malte Vogl/Raphael Schlattmann (ModelSEN project, MPI for History of Science): *Socio-epistemic networks of Polish migrants in Latin America – a challenge for heterogeneous reference extraction***
{{< details "Abstract" >}}

**Proposal and Context**

The project embraces the framework of socio-epistemic networks that defines knowledge networks as being composed of three different layers: the social network, the semiotic network, and the semantic network. Building on previous research of the social network connecting Polish professionals working across Latin America between 1830 and 1889 (Kaye, 2022), we now seek to examine in greater detail one of the fields of the migrants’ expertise – oil prospecting.
We wish to explore how published discourses around petroleum changed over time in Argentina and in the partitioned territories of the Polish-Lithuanian Commonwealth and who was referenced. We begin with the Polish sources, intending to expand to the Argentinian corpora in the
future.

**Corpora and Challenges**

The Polish corpora are available open access through repositories of digitised primary sources, including the Jagiellonian Digital Library; the Federacja Bibliotek Cyfrowych portal; NUKAT; and Polona.
Being able to reliably extract references from the corpora would greatly aid and speed up the work, which currently is largely manual, but this is not a simple task. The corpora consist of digitised and OCRed late nineteenth-century and early twentieth-century newspapers and periodicals, principally in Polish, which might quote text in one or more languages, most often in Spanish, French, German and Russian. The unstandardised format of these publications is where the issue of extracting heterogeneous reference data arises.
The references to other scholars or texts are very often included in-text in different ways – including partial or complete in-text and footnote citations. Running the ad-hoc OpenAI API experiment on a Polish sample resulted in only partial success in extracting references. A number of works and authors were successfully picked up as references, but places and subjects of study were also wrongly classed as references.

**Example of references**

Quote, copied from OCRed scan (Zuber 1883, p. 4), references emboldened manually:
“Sa wprawdzie wzmianki o przyrodzie Karpat nawet w bardzo dawnych dziełach (np. **Gabryjela Rzączyńskiego: Historia naturalis curiosa regni Poloniae; Saudomiriae 1721**); […] Nie mogę się tu zapuszczać w szcze gółowy przegląd literatury odnośnej, wspomnę tylko, że np. **Oyenhausen** uważał piaskowiec karpacki za tak zw. szarowakę (Grauwacke)”
Translation: *“There are mentions of the nature of the Carpathians even in very old works (eg. **Gabryjel Rzączyński: Historia naturalis curiosa regni Poloniae; Saudomiriae 1721**); […] I cannot go into a detailed review of the relevant literature here, but I will mention that, for example, **Oyenhausen** considered the Carpathian sandstone to be the so-called the greywacke (Grauwacke)”*

**Future work**

During the initial phase of this project, it is necessary to create training datasets for multilingual heterogeneous reference extraction based on the available corpora. To do this we propose adapting Sarah Oberbichler and Eva Pfanzelter’s (2021) method to create a robust, representative and research driven corpus from the full corpora for further analysis. Once built, it will be necessary to conduct data cleaning on the corpus: tidying up the OCRed text, using Regular Expressions and/or Open Refine and to standardize data access. It would also be beneficial to perform linguistic normalisation on the texts, including morphological normalisation of Polish names eg. from the genitive form *Gabryjela Rzączyńskiego* to the standard form *Gabryjel Raczyński*. It might also be necessary for accessibility reasons, to translate the corpora into English.
These data preparation tasks should in theory increase the accuracy of the automatic extraction of references from the corpus, allowing us to proceed with the socio-epistemic network analysis.

**References**

- Audino, Patricia, ‘El petróleo argentino en las primeras décadas del siglo XX: un comienzo polémico’, Análisis económico, xxxiv (2019).
- Bastian, Mathieu, ‘Gephi - The Open Graph Viz Platform’ <https://gephi.org/> [accessed 1 April 2023].
- Fleig Frank, Alison, Oil Empire: Visions of Prosperity in Austrian Galicia (Cambridge MA, 2007).
- García Costa, Víctor, Prehistoria Del Petróleo Argentino (Buenos Aires, 1988).
- Golonka, Jan and Frank J. Picha, The Carpathians and Their Foreland: Geology and Hydrocarbon Resources (Tulsa, 2006).
- Kaye, Aleksandra, Mapping the Polish Knowledge Networks in Nineteenth-century Latin America, 1830-1889 [Unpublished doctoral dissertation] (University College London, 2022).
- Oberbichler, S. and Eva Pfanzelter ‘Topic-specific corpus building: A step towards a representative newspaper corpus on the topic of return migration using text mining methods’, Journal of Digital History, i (2021).
- Orfila Reynal, Arnaldo, El petróleo (Buenos Aires, 1945).
- Piotrowski, Michael, Natural Language Processing for Historical Texts, Synthesis Lectures on Human Language Technologies (Cham, 2012).
- Python wrapper for ‘Polona API’ <https://polona.pl/api/> [accessed 27 March 2023].
- Terrell, John Edward, ‘Social Network Analysis and the Practice of History’, in Carl Knappett ed. Network Analysis in Archaeology (Oxford, 2013).
- Wacięga, Sebastian, ‘Galicyjscy Pionierzy Przemysłu Naftowego w II Połowie XIX Wieku’, Rocznik Małopolska. Regiony, Regionalizmy Małe Ojczyzny., XVIII (2016).
- Wetherell, Charles, ‘Historical Social Network Analysis’, International Review of Social History, xliii (1998).
- Zuber, Rudolf, Nafta i wosk ziemny w Galicyi (Warszawa, 1883).

{{< /details >}}

2. **Raphael Schlattmann/Malte Vogl/Aleksandra Kaye/Bernardo S. Buarque (ModelSEN project, MPI for History of Science): *Automated construction of historical semiotic networks – Can person-names within textual contexts be mapped to structured references?***
{{< details "Abstract" >}}

**Proposal and Context**

The ModelSEN project seeks to model the evolution and development of knowledge systems via a network theoretic approach that encompasses three different layers of so-called socio-epistemic networks: social, semiotic, and semantic. The semiotic and semantic layers are often based on information encoded in large unstructured text corpora, such as scientific publications. One challenge regarding this kind of input is the transition from unstructured explicit and implicit references to structured ones. Using publications of Hans-Jürgen Treder – one of the most prominent scientists of the GDR – as an ego-centred dataset, we are interested in mapping referenced person-names (implicit citations within a textual context) to explicit structured references, thus enabling the application of network analytic methods at the semiotic level.

We are interested in the following questions:

1. How can referenced names in a textual context be mapped to explicit publications?
2. Is this mapping more feasible if the names refer to references explicitly cited in the same corpus?
3. Is mapping easier if a name is frequently referenced implicitly but only one explicit publication of the person is referenced in the entire corpus?

**Corpus and Challenges**

The corpus comprises all known publications by Treder, including scientific articles, books, popular science articles, and newspaper articles, mostly on topics concerning gravitational physics, foundations of physics and the philosophy and history of science. All explicit references have been manually assigned to structured references. Additionally, every first mention of a name without an explicit reference has been assigned a structured form.

Some challenges associated with most historical corpora include:
- Multilingualism: Publications are mostly in German, with some in English and a few in Russian or French.
- Uncleaned OCR: OCR quality varies from accurate to poor, depending on scan quality.
- Inconsistent spelling or errors: Names may have German spelling, original language spelling, or contain errors.

**Example**

The text-sequence (**T**):
„Im Jahre 1915 fand Albert Einstein auf Grund seiner allgemeinen Relativitätstheorie eine Lösung in der Erkenntnis, daß der Weltraum zwar keine Grenzen hat, aber dennoch nicht unendlich groß ist, sondern einen gekrümmten Raum darstellt.“,

taken from one of Treder‘s publications (Treder 1946), implicitly references a publication of Albert Einstein on general relativity in the year 1915, which probably corresponds to the explicit reference (**R**):

*Einstein, Albert (1915): Feldgleichungen der Gravitation. In: Sitzungsber. Preuss. Akad. Wiss., S. 844–847.*

The OpenAI prompt: “To which explicit publication could this text sequence refer: **T**” was able to generate an answer that matches the human inference (**R**).

**Future work**

Future work includes the extraction of all reference data from the Treder corpus to build a more comprehensive semiotic network of its texts. However, the entire semiotic branch of ModelSEN would also benefit greatly from the development of new methods for reference extraction. To achieve accurate automation for reference extraction but also other NLP tasks, further corpus cleaning is required, including OCR correction, translation, and normalization. These data preparation tasks have been conducted for titles and abstracts but are essential for both reference extraction and further full-text exploration regarding the semantic layer of Treder's and other socio-epistemic networks.

**References**

- Renn, Jürgen; Wintergrün, Dirk; Lalli, Roberto; Laubichler, Manfred Dietrich; Valleriani, Matteo (2016): Netzwerke als Wissensspeicher. In: Jürgen Mittelstraß und Ulrich Rüdiger (Hg.): Die Zukunft der Wissensspeicher. Forschen, sammeln und vermitteln im 21. Jahrhundert. Konstanz, München: UVK Verlagsgesellschaft (Konstanzer Wissenschaftsforum, Band 7), p. 35–79.
- Wintergrün, Dirk (2019): Netzwerkanalysen und semantische Datenmodellierung als heuristische Instrumente für die historische Forschung. Dissertation. Friedrich-Alexander-Universität, Erlangen, Nürnberg. Technische Fakultät. https://opus4.kobv.de/opus4-fau/frontdoor/index/index/docId/11189.
- Lalli, Roberto; Howey, Riaz; Wintergrün, Dirk (2020): The Socio-Epistemic Networks of General Relativity, 1925–1970. In: Alexander S. Blum, Roberto Lalli und Jürgen Renn (Hg.): The Renaissance of General Relativity in Context. Cham: Springer International Publishing (16), p. 15–84.
- Schlattmann, Raphael (2020): Relativity and Dialectical Materialism: Science, Philosophy and Ideology in Hans-Jürgen Treder’s Early Academic Career. In: Christian Forstner und Mark Walker (Hg.): Biographies in the History of Physics. Actors, Objects, Institutions. Cham: Springer International Publishing, p. 129–144.
- Hoffmann, Dieter; Schlattmann, Raphael (2022): Prinzipien statt Orthodoxie. In: Phys. J. (11), p. 35–39.
- Treder, Hans-Jürgen (1946): Rätsel der Einstein-Welt. In: Nacht-Express 1, 13.08.1946.
- Einstein, Albert (1915): Feldgleichungen der Gravitation. In: Sitzungsber. Preuss. Akad. Wiss., p. 844–847.

{{< /details >}}

Discussion

**14:50-15:00 Coffee Break**

**15:00-16:20 Presentations 2**

3. **Johannes Riedl (University Library Tübingen): *A Description of the Work in Progress of the Transformation of the _Handbuch der Keilschriftenliteratur_***
{{< details "Abstract" >}}
The University Library of Tübingen has been faced with an increasing number of requests from different faculties to transform relevant scientific achievements from the past - like type- and sometimes even partially handwritten bibliographies, registers and dictionaries - to a form that lends itself to the import into a database based retrieval system.

In a considerable number of cases such works comprise the lifework of an individual person and partly have been an indispensable tool for generations of scientists, but despite their relevancy still only exist in a limited quality printed form, since smaller subjects lack the resources to provide a structured digital edition. Since these works are often both highly idiosyncratic in their structure (i.e. they follow individual rules for the formation of the information given), contain a plethora of abbreviations, have a high entropy (i.e. nearly every token is relevant) but have in many cases never been written with the intent of providing the unambiguous syntactical structure needed for computer processing, they pose a considerable challenge for the transformation process. Moreover, the text scope is normally too large to allow economic manual transformation, but nonetheless small in terms of the currently needed amount of data necessary to train an individual model. This, accompanied by the fact that the institution only has restricted resources for these kind of projects, leads to the question, whether and how generally accessible methods can be used to achieve feasible results.

A paradigmatic example of this task are the first two volumes of the "Handbuch der Keilschriftliteratur" (HKl) \[1\], \[2\], a cuneiform bibliography that is centered around individual authors and contains references to both where a cuneiform inscription was published, which fragments of cuneiform inscriptions belong together and relevant secondary literature for an inscription location. The aim is to transform the relevant parts of HKl to a tree like a JSON file that respresents the semantic structure and thus in an optimum way allows to associate the cited works to records present in general library catalogues and to segment and extract the precise citations and references given along with their function in the text. A prerequisite for this is a reliable detection of sentence boundaries and the subsequent identification of semantic entities. Transformers \[3\] being the current state-of-the-art in Natural Language Processing for both sentence segmentation and Named Entity Recognition and us aiming to stick to existing “off-the-shelf” solutions as closely as possible, our current approach uses the NLP framework *spaCy* \[4\] and its ecosystem as a basis to examine whether existing general language transformer models can be tailored to our area of application using transfer learning (c.f. \[5\]). The presentation will show the current work in progress and the experiences made so far.

**References**

- [1] Rykle Borger. 1967. *Handbuch der Keilschriftliteratur*, Bd. 1. De Gruyter, Berlin
- [2] Rykle Borger. 1975. *Handbuch der Keilschriftliteratur*, Bd. 2. De Gruyter, Berlin
- [3] Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N. Gomez, Łukasz Kaiser, and Illia Polosukhin. 2017. *Attention is all you need*. In Proceedings of the 31st International Conference on Neural Information Processing Systems (NIPS'17). Curran Associates Inc., Red Hook, NY, USA, 6000–6010. <https://dl.acm.org/doi/10.5555/3295222.3295349>
- [4] Spacy. 2023. Spacy - Industrial-Strength Natural Language Processing in Python. Retrieved from <https://spacy.io>
- [5] Sandra Wankmüller. 2022. Introduction to Neural Transfer Learning With Transformers for Social Science Text Analysis. *Sociological Methods & Research*, Online First. <https://doi.org/10.1177/00491241221134527>, Preprint also available at <https://arxiv.org/pdf/2102.02111.pdf>
{{< /details >}}

4. **Victor Westrich (Academy of Sciences and Literature, Mainz): *Extraction of primary and secondary sources from the _Regesta Imperii_***
{{< details "Abstract" >}}
The Regesta Imperii (RI) regests are not Regests in the classical sense, insofar as a Regest at best aims to represent the current state of research on a historical event, usually an act of rule by the respective emperor or king.

Structurally, an "original source" is assumed, which should represent the leading source of a regest, but if it cannot be accessed, it is derived from a copy or a mere reference in a third source (the so-called "Deperditum"). Such a third source does not have to be a contemporary documentary source, but the Regest can also be constructed based on a later copy, a print, a literature reference, or another regest. However, even if there is a clear original source, as many additional transmission lines as possible are added. Furthermore, references to current research
literature and related research literature are included.

Digitally, neither the individual references to primary and secondary sources nor the relationship between these sources in the Regest and across the entire Regest collection are consistently and clearly recorded. Only the literature references are largely indexed by linking to the RI OPAC. While this provides standardized data for literature titles, one quickly encounters analog limitations with
archive signatures on the archives' side.

The extraction of, for example, personal names from the Regests of Emperor Frederick III, is possible with “Natural Language Processing” (NLP) approaches for this task, i.e. "Named Entity Recognition" (NER), specifically the Python library spaCy, or "Large Language Models," (LLM) such
as "ChatGPT."

For extracting primary and secondary sources, the equivalent to personal names are references to archives and their signatures, as well as author names and literature titles. The challenge here isn’t so much the identification of the relevant substrings, which follow fairly standardized citation patterns, but tracing the correct relations: Between an archive and a signature, as well as identifying if it functions as a “original source”, for example, in the taxonomy of sources imposed by the RI. The specific task area in the context of LLMs for this purpose is called “Question Answering”. I will fine tune a LLM trained on this purpose, such as "gelectra-large-germanquad" on a set of standardized questions relevant for the task of extracting such relations, and then compare it's performance to the generalized LLM ChatGPT.

Finally, I would like to examine if and how the information that is to be extracted in this way can be reassembled in a larger structure. The Regest already represents a summarizing abstraction of one or more historical sources. Before any further abstraction should be attempted, the question is to be asked if there remains a relevant ordering principle. A prime experimental candidate here is the underlying historical event captured as an entity in itself.

I would like to present the results of this application at your workshop. Additionally, I would like to make the Regests available as a dataset on behalf of the project, as well as the annotated training and result data resulting from the comparative extraction of primary and secondary sources.

**References**

- Arbeitskreis für Editionsgrundsätze: Richtlinien für die Regestierung von Urkunden. In: Harald Zimmermann (Hrsg.): Die Regesta Imperii im Fortschreiten und Fortschritt, Weimar/Wien 2000, S. 87-93.
- Assmann, Bernd: Sind die kanonischen Zitierweisen der Geisteswissenschaften als nachhaltige Komponenten digitaler Repositorien geeignet? Universität Köln 2005. URL: <https://www.cei.lmu.de/pub/MagArbAssmann.pdf>. Letzter Zugriff: 13.04.23.
- González-Gallardo, Carlos-Emiliano: Yes but.. Can ChatGPT Identify Entities in Historical Documents? 2023. [DOI:10.48550/arXiv.2303.17322](https://doi.org/10.48550/arXiv.2303.17322).
- Honnibal, Matthew u. Montani, Ines: spaCy 2: Natural language understanding with Bloom embeddings, convolutional neural networks and incremental parsing. 2017. URL: <https://spacy.io/>. Letzter Zugriff: 13.04.23.
- Meroño-Peñuela, Albert (u.a.): What Is Linked Historical Data? In: Knowledge Engineering and Knowledge Management. Springer International Publishing (Hrsg.): Knowledge Engineering and Knowledge Management. Cham 2014. S. 282-287.
- Mikoletzky, Hanns Leo: Regesten und Regestentechnik. In: Harald Zimmermann (Hrsg.): Die Regesta Imperii im Fortschreiten und Fortschritt, Weimar/Wien 2000, S. 73-86.
- Möller, Timo (u.a.): gelectra-large-germanquad. 2021. URL: <https://huggingface.co/deepset/gelectra-large-germanquad>. Letzter Zugriff: 13.04.23.
- Nakayama, Hiroki (u.a.): Doccano: Text Annotation Tool for Human. 2018. URL: <https://github.com/doccano/doccano>. Letzter Zugriff: 13.04.23.
- OpenAI: ChatGPT: An AI Language Model by OpenAI. 2021. URL: <https://openai.com/blog/chatgpt>. Letzter Zugriff: 13.04.23.

{{< /details >}}

Discussion

**16:20-16:30 Coffee Break**

**16:30-18:15 Presentations 3**

5. **Kilian Lüders/Bent Stohlmann (HU Berlin): *Extraction of string-citations in court data***
{{< details "Abstract" >}}
We are currently working on a project of extracting references in the decisions of the German Federal Constitutional Court (GFCC). In particular, we are interested in the self-referencing of the court.

So-called citation networks for courts are an established use case of reference data. Especially concerning the United States Supreme Court (USSC), there is a long history of studies regarding its references to prior decisions (e.g. Fowler et al. 2007). Also, there is some recent work on the network of references between decisions of the Court of Justice for the European Union (CJEU) (e.g. Šadl and Olsen 2017).

Up until now, there has been little work regarding the self-references of the GFCC (although recently there have been first studies Ighreiz et al. 2020; Coupette 2019). Presenting our work on self-references of the GFCC would fit within the conception of the workshop in two ways.

Firstly, networks of court self-citation are a current use case in which the extracting of heterogeneous reference data arises. With the availability of research into large data sets of court decisions being a relatively young phenomenon, there are various promising research questions the answer to which relies on the extracting of such data. On the one hand, we could learn about differences in style between certain types of decisions or concerning their relevance (issue of centrality). On the other hand, we could learn more about the role prior decisions play in a court's justification of its decisions (issue of normativity).

Secondly, we can present a working extraction framework approaching the issue of extracting reference data of the GFCC regarding its prior decisions. While there is prior work here (see above) our solution is the first to provide a way to extract string citations. String citations are a prominent phenomenon in the way the GFCC refers to its prior case law (Jestaedt 2010, 151). In legal literature, it is also discussed as an important feature of the court's argumentation (Holzleithner and Mayer-Schönberger 2000, 338). String citations link references to multiple prior decisions together (regarding string citations in the CJEUs case law see Jacob 2014, 100). This linkage makes it challenging to extract all the reference information. Our main work was to find such sequences of references within decisions and then store them as a unit of information.

For extracting the references from the text of the court decisions, we use a classical rule-based approach (regex patterns) because the court makes its self-references comparatively uniformly. To handle the data, we programmed an object-oriented solution that is customized to our needs: There is a class “Verweis” (reference) that is equipped with attributes that are required for citations in the “BVerfGE” style. In addition, there is a class “Verweiskette” (string-citation), which ultimately consists of an ordered list of objects of the class “Verweis”. Both classes provide methods to output the information for different purposes. From a programming perspective, this is a straightforward application of a fundamental paradigm of computer science. Although it is very specific to a problem, it can be easily adapted and is characterized in particular by very good scalability. At the same time, string citations in that particular form are a very specific reference type with limited comparability to established reference types in other contexts.

For this task, we used a corpus consisting of all decisions of the GFCC's senates. An earlier version of this corpus containing linguistic annotation data as well as metadata information was previously made available as part of our research project (LLCon) (Möllers, Shadrova, and Wendel 2021).

Data and code will be available at: <https://github.com/klueders/string-citations>
Our GitHub repository will provide a list of the software packages used (conda environment).

**References**

- Black/Spriggs, The Citation and Depreciation of U.S. Supreme Court Precedent, Journal of Empirical Legal Studies 2013, 325.
- Brodocz/Schäller, Selbstreferenzielles Entscheiden und institutionelle Eigengeschichte – Eine quantitative Analyse zur Rechtsprechung am Bundesverfassungsgericht, Dresdner Beiträge zur Politischen Theorie und Ideengeschichte, Nr. 3/2005.
- Coupette, Juristische Netzwerkforschung 2019.
- Derlén/Lindholm, Peek-A-Boo, It’s a Case Law System! Comparing the European Court of Justice and the United States Supreme Court from a Network Perspective, German Law Journal 2017, 647.
- Fowler u. a., Network Analysis and the Law: Measuring the Legal Importance of Precedents at the U.S. Supreme Court, Political Analyis 2007, 324.
- Granger/Pérez, Jupyter: Thinking and Storytelling With Code and Data, Computing in Science & Engineering 2021 (23/2), 7-14. [DOI:10.1109/MCSE.2021.3059263](https://10.1109/MCSE.2021.3059263).
- Harris/Millman/van der Walt et al., Array programming with NumPy, Nature 585 (2020), 357–362. [DOI:10.1038/s41586-020-2649-2](https://doi.org/10.1038/s41586-020-2649-2)
- Holzleithner/Mayer-Schönberger, Das Zitat als grundloser Grund rechtlicher Legitimität, in: Feldner/Forgó (eds.), Norm und Entscheidung – Prolegomena zu einer Theorie des Falls, 2000, 318.
- Ighreiz u. a., Karlsruher Kanones? Selbst- und Fremdkanonisierung der Rechtsprechung des Bundesverfassungsgerichts, Archiv öffentlichen Rechts 2020, 537.
- Jacob, Precedent and Case-Based Reasoning in the European Court of Justice – Unfinished Business 2014.
- Jesteadt, Autorität und Zitat – Anmerkungen zur Zitierpraxis des Bundesverfassungsgerichts, in: Jacob/Mayer, Ethik des Zitierens 2010, 141.
- Jiang, Network research in law: current scholarship in review, Humanities & Social Sciences Reviews 2019, 528.
- McKinney, Data structures for statistical computing in python, Proceedings of the 9th Python in Science Conference, Volume 445, 2010.
- Möllers/Shadrova/Wendel, BVerfGE-Korpus (1.0) [Data set], 2021, available at: <https://zenodo.org/record/4551408>.
- pandas development team, pandas-dev/pandas: Pandas (v2.0.0) 2023. [DOI:10.5281/zenodo.7794821](https://doi.org/10.5281/zenodo.7794821).
- Python Software Foundation. Python Language Reference, version 3.10. Available at <http://www.python.org>
- Richardson, Beautiful soup, version 4.12.2 (2023). Available at <https://www.crummy.com/software/BeautifulSoup/>.
- Šadl/Olsen, Can Quantitative Methods Complement Doctrinal Legal Studies? Using Citation Network and Corpus Linguistic Analysis to Understand International Courts, Leiden Journal of International Law 2017, 327.
- Wendel, Metadaten zu Entscheidungen des Bundesverfassungsgerichts (2.6.1) [Data set], 2023, available at: <https://doi.org/10.5281/zenodo.7664631>.
- Whalen, Legal Networks: The promises and challenges of legal network analysis, Michigan State Law Review 2016, 539.

{{< /details >}}

6. **Thiago Freitas Hansen/Rafael Castro Andrade (Universidade Federal do Paraná/Positivo University, Curitiba): *Words and Social Rights in Brazil (1933-1941)***
{{< details "Abstract" >}}
This research arose from the convergence of interests between professors of legal history and design history. They are interested in learning techniques and research methodologies in digital humanities to later create a laboratory versed in these methodologies in the archive of the Law School of Federal University of Paraná.

The objective of the research is to understand, in two large and heterogeneous textual corpora that serve as testimonies of the formation of social constitutionalism and social rights in Brazil during the years 1933-1941, the main references, books, experiences, and authors present in these documents.

There are two textual corpora under analysis: the Minutes of the Itamaraty Subcommittee (1) and the Proceedings of the First Social Law Congress (2).

1. Minutes of the Itamaraty Subcommittee: This is a facsimile edition of the stenographic notes of the meetings of the "committee of notables" created in 1933 and responsible for drafting the draft of the new Brazilian constitution. These minutes mark a unique moment in understanding the arrival of the idea of social constitutionalism in Brazilian politics.

2. Proceedings of the First Social Law Congress: This is a four-volume textual corpus gathering a heterogeneous set of information around this event held in 1941. In this documentation, it is possible to identify debates on labor law and social security law, as well as a series of reflections on corporatism, unionism, representation, etc. It is composed of lectures, theses, letters, projects, messages, honors, and other textual forms.

The Minutes (1) are composed of the paraphrases made by stenographers of the debates held in a reserved room at the headquarters of the Ministry of Foreign Affairs during the years 1933 and 1934. Despite the third-person language of the stenographer, the dialogic character exposes mention of many interconnected themes, revisited from previous meetings, making this a text in itself discontinuous, like a potential stream of consciousness, but much more bureaucratic and less exciting as in literature.

The Proceedings (2) are the records of an important Congress held in 1941 in the city of São Paulo promoted by the Institute of Social Law, which had state support, the presence of many law faculties, retirement institutes, Church, etc., aiming at the formation of a set of eight subcommittees that would guide the organization of all Brazilian social law, with the presentation of theses and objective proposals. In the following years, in fact, a series of laws were enacted, culminating in the formation of the main legacy of the first Vargas government, the Consolidation of Labor Laws (CLT) of 1943.

For this, we used the support of generative artificial intelligence ChatGPT as a guide to code some applications in Python, using the library pdf2image to convert .pdf to images for text recognition using the OCR software Tesseract v.5. The development workflow consists of: extracting texts from .pdf files; cleaning the text; processing each corpus; analyzing the texts; and mapping the information.

For the preliminary analysis of the corpus, the Voyant Tools tool will be used to visualize sectors of the text with specific word incidence, as well as their context, thematically mapping the corpus. In addition, Voyant can contribute to evaluating correlations, co-occurrences, and terms that express debates about social rights in Brazil during those years.

With the support these techniques, it will be possible to identify and associate authors with themes and doctrinal positions in the process of institutionalizing social rights in the country. Finally, the idea is to create a set of images that allow us to visualize the themes, disputes, and history of this relevant sector of law in the country.

**References**

- Azevedo, J. A. M. (1933/1993). Elaborando a Constituição Nacional: Atas da Subcomissão elaboradora do Anteprojeto 1932/1933. Organização e índices: Paulo Roberto Moraes de Aguiar \[Fac-similar\]. Brasília: Senado Federal. Subsecretaria de Edições Técnicas.
- Instituto de Direito Social. (1943). Anais do Primeiro Congresso Brasileiro de Direito Social promovido pelo Instituto de Direito Social. V.2 [Atas do Congresso]. Apresentado no Congresso Brasileiro de Direito Social, São Paulo, 1941. Rio de Janeiro: Ministério do Trabalho e Previdência Social.
- OpenAI. (2021). GPT-3.5 \[Language Model\]. Retrieved April 9, 2023, from <https://openai.com/blog/gpt-3-5/>.
- Tesseract OCR (version 5.3.2) \[Software\]. (2023). Retrieved from <https://github.com/tesseract-ocr/tesseract>.
- Voyant Tools (version 2.6.4) \[Software\]. (2023). Retrieved from <https://voyant-tools.org/>.

{{< /details >}}

7. **Will Hanley/J. Hernandez/M. Nagales/B. Goff (Florida State University): *Citation Analysis of International Law Journals, 1869-1939***
{{< details "Abstract" >}}
This study is based on a 70-million-word TEI-XML-encoded corpus of the four leading French-language international law journals hosted at <https://github.com/whanley/ilcorpus>. Currently, the corpus contains the full contents of *Journal du droit international privé et de la jurisprudence comparée*, *Revue de droit international et de législation comparée*, *Bulletin de la Société de législation comparée*, and *Annuaire de l’Institut de droit international* up to the year 1939. The corpus is a work in progress, and it is expanding.

The ultimate aim of this project is to determine, in empirical terms, the evidentiary basis of the newly professionalized field of international law that developed after 1869. The conventional account of international law’s origins follows Martti Koskenniemi in describing a genealogy of ideas and intellectuals. This project shows that the jurisprudence and legislation of empire was a major ingredient in the modern field’s formation from its first moments. The corpus also demonstrates the role played by middling scholars in the chain of citations that came to constitute the field.

This paper presents two steps we have taken in approaching this challenge.

First, the paper argues that classification of journal contents by genre is an important step in isolating citations. Citation patterns differ considerably between the various genres that make up these heterogeneous journals. For example, scholarly essays differ from legislation and jurisprudence reports, which differ from bibliography sections. The TEI-XML structure of this dataset permits faceted study of citations. The paper shows, in empirical terms, why undifferentiated full text analysis of journals fails to capture citation patterns. It shows the prominence of different sources in different kinds of writing. Crucially, it shows that certain parts of the journal must be excluded from citation analysis in order to produce an accurate measure of the sources of this particular discursive tradition.

This corpus has been encoded using XPath and regular expressions. Because this encoding work has not been automated, the authors who have done it have been able to produce an elaborate schema that is closely tailored to the journals: <https://github.com/whanley/ilcorpus/blob/master/ILCorpusSchema.odd>.

Second, the paper tackles the problem of internal reference. The footnote nodes in this TEI-XML corpus (which number at least 75,000) contain many abbreviations (such as *Ibid.* and *Op. Cit.*) that must be referred to a preceding note for accurate citation analysis. The journals also contain other abbreviated references, such as references to legislation and internal references to each journal’s own contents. Our paper explains our preliminary solutions to these problems in pursuit of accurate citation counts, which take the form of a draft Python package (“XMLCitation”), which produces a reference id number attribute for each footnote node, and resolves Ibid. and similar nodes to their referent.

**References**

- Koskenniemi, Martti: The Gentle Civilizer of Nations: The Rise and Fall of International Law, 1870-1960. Cambridge: Cambridge University Press, 2002.
- Text Encoding Initiative: Text Encoding Initiative P5 Guidelines. <https://tei-c.org/guidelines/p5/>.

{{< /details >}}

Discussion

**18:15-18:45 Break**

**18:45-19:30 Discussion of Whitepaper idea**

### Tuesday 16 May 2023

**10:00-11:20 Presentations 4**

8. **Diego de la Hera/Dominic Dall’Osto (Wikimedistas Calamuchita/Univ. of Zurich): *Using _Cita_ to support reference extraction workflows from Zotero***
{{< details "Abstract" >}}
Citation data are crucial to understanding the evolution of knowledge in any research field. Collated citation databases have recently become more available and grown in scale, thanks to efforts promoting their public release \[1\], and digitization and reference extraction initiatives \[2\]. These databases are increasingly valuable for research into automated citation recommendation systems \[3\], and as a component for building general scientific knowledge storage and retrieval systems \[4\]. However, although some services exist that make these data easily accessible for querying and extracting knowledge (e.g., Scholia \[5\]), citation data are surprisingly not supported in any of the most widely used reference management software.

Since 2020 we have been developing *Cita* \[6\], a plugin that adds citation graph support to Zotero, the most popular open-source reference management software \[7\]. Cita allows adding individual references (i.e., outgoing citations) as metadata to items in Zotero libraries. These can be added manually, or imported from Wikidata, an open collaborative knowledge base that has become an important part of the bibliographic repository ecosystem \[8\]. Importing from other sources is supported as well via standard list of reference files, including the output from reference extraction engines. In addition, Cita supports publishing reference metadata to a variety of datasets and formats, including back to Wikidata. Finally, it supports matching references to items already in Zotero, and shows a local citation network graph that allows users better understand how works in their libraries connect to one another, and discover other relevant works.

In this presentation we will introduce Cita and discuss how its current features can support reference extraction workflows by simplifying the reconciliation, publication and reutilization of extracted data. Specifically, we will show how extracted references may be added to Zotero items and reconciled with bibliographic records on Wikidata. We will also show how extracted reference metadata can be published to Wikidata, further contributing to this collaborative database. Finally, we will demonstrate how these data can be reused by other Cita and Scholia users to better understand how works in their fields build upon one another.

In addition, we will discuss how proposed features may further support reconciliation with and publication to additional data sources, including OpenCitation’s Crowdsourced Open Citations Index, *CROCI* \[9\]. Finally, we will propose plans to have Cita integrate reference extraction engines right into Zotero. We will discuss how this may enable wider use of these tools and the promotion of crowd-sourced projects.

**References**

- \[1\] “Citation Data Are Now Open, but That’s Far from Enough.” Nature 2022 (609/7927), 441–441. <https://www.nature.com>, [DOI:10.1038/d41586-022-02915-1](https://doi.org/10.1038/d41586-022-02915-1).
- \[2\] Colavizza, Giovanni, and Matteo Romanello. “Citation Mining of Humanities Journals: The Progress to Date and the Challenges Ahead.” Journal of European Periodical Studies 2019 (4/1). <https://openjournals.ugent.be/>, [DOI:10.21825/jeps.v4i1.10120](https://doi.org/10.21825/jeps.v4i1.10120).
- \[3\] Färber, Michael, and Jatowt, Adam. “Citation recommendation: approaches and datasets.” International Journal on Digital Libraries 2020 (21), 375–405. [DOI:10.1007/s00799-020-00288-2](https://doi.org/10.1007/s00799-020-00288-2).
- \[4\] Taylor, Ross, et al. “Galactica: A Large Language Model for Science”. arXiv, 16 November 2022. <https://arXiv.org/>. [DOI:10.48550/arXiv.2211.09085](https://doi.org/10.48550/arXiv.2211.09085).
- \[5\] Nielsen, Finn Årup, et al. “Scholia, Scientometrics and Wikidata.” The Semantic Web: ESWC 2017 Satellite Events, edited by Eva Blomqvist et al., Springer International Publishing, 2017, 237–59. Springer Link. [DOI:10.1007/978-3-319-70407-4_36](https://doi.org/10.1007/978-3-319-70407-4_36).
- \[6\] Wikidata:Zotero/Cita - Wikidata. <https://www.wikidata.org/wiki/Wikidata:Zotero/Cita>. Accessed 26 Feb. 2023.
- \[7\] Ivey, Camille, y Janet Crum. “Choosing the Right Citation Management Tool: Endnote, Mendeley, Refworks, or Zotero”. Journal of the Medical Library Association : JMLA 2018 (106/3), 399–403.
- \[8\] Rasberry, Lane, et al. “Robustifying Scholia: Paving the Way for Knowledge Discovery and Research Assessment through Wikidata.” Research Ideas and Outcomes, May 2019 (5), p. e35820. Crossref, [DOI:10.3897/rio.5.e35820](https://doi.org/10.3897/rio.5.e35820).
- \[9\] Heibi, Ivan, et al. Crowdsourcing Open Citations with CROCI -- An Analysis of the Current Status of Open Citations, and a Proposal. arXiv, 21 June 2019. <https://arXiv.org/>, [DOI:10.48550/arXiv.1902.02534](https://doi.org/10.48550/arXiv.1902.02534).

{{< /details >}}

9. **Julia Hütten/Jeff Huang (mpilhlt/Brown University): *Automatically characterizing the heterogeneous interpretations of a citation for incorporating into a hosted dataset***
{{< details "Abstract" >}}
Papers are cited in many ways and in different contexts, but current bibliometric systems focus on counting the number of citations, and do not characterize the citation in any other way \[1\]. Knowing more qualitatively what a citation was intending to do can identify whether the cited work is being used as an example, as a key paper, as a paper that the citing paper is trying to disprove, or any other reason. However, with the increasing capability to interpret text automatically using pre-trained language models, bibliometric systems may be able to break citation counts into more nuanced assessments of the cited work. This can occur when the citations are automatically extracted from the paper.

We present some preliminary results from an analysis combining automated characterizations of citations, specifically over a dataset of award-winning computer science papers. These papers comprise 26 years of best-paper awards judged by program committees during the year of submission, across 30 different computer science conferences gathered by the second author \[2\]. This dataset was chosen due to the availability of quality judgments completely independent of citations, as citations are not available when the paper was chosen for the best paper award considering the paper had not yet been published. Additionally, computer science papers gather citations relatively quickly, and have a culture of improving the algorithms and systems of prior work, thus allowing for multiple ways that the prior work can be cited.

Compared to papers not chosen for best paper awards, are the citations qualitatively different? From a sample of the best paper awards, do a higher proportion of papers citing it indicate that the work is seminal, or especially rigorous? We show that the automated approaches to processing the text around the citations can produce a unique classification of the citations. And that these classifications can supplement citation graphs as a way to evaluate the work; or when aggregated by author, the text surrounding a citation can be automatically summarized to understand how others thought of the body of work of an author. Finally, we believe that soliciting qualitative comments about a paper from citizen scientists can be a way to develop a structured dataset of attributes about papers and their academic authors in what's essentially a crowd-powered system \[3\]. We discuss a proposed prototype of what such a system may look like, with a mockup based on the existing Drafty system. The qualitative analysis of citations thus may be considered beyond the in-text analyses \[4\]. The source of the technique for interpreting the text surrounding a citation is expected to be released following the conclusion of the workshop.

**References**

- \[1\] Aksnes, Langfeldt, Wouters (2019), Citations, Citation Indicators, and Research Quality: An Overview of Basic Concepts and Theories, SAGE Open (9/1).[DOI:10.1177/2158244019829575](https://doi.org/10.1177/2158244019829575).
- \[2\] Huang (2022), Best Paper Awards in Computer Science. <https://jeffhuang.com/best_paper_awards>.
- \[3\] Iqbal, Hassan, Aljohani, Alelyani, Nawaz, Bornmann (2021), A decade of in-text citation analysis based on natural language processing and machine learning techniques: an overview of empirical studies. Scientometrics (126), 6551–6599. [DOI:10.1007/s11192-021-04055-1](https://doi.org/10.1007/s11192-021-04055-1).
- \[4\] Wallace, Van Kleunen, Aubin-Le Quere, Peterkin, Huang (2017), Drafty: Enlisting Users to be Editors who Maintain Structured Data, Proceedings of the Fifth Conference on Human Computation and Crowdsourcing (HCOMP 2017). [DOI:10.1609/hcomp.v5i1.13300](https://10.1609/hcomp.v5i1.13300/).

{{< /details >}}

Discussion

**11:20-11:40 Coffee Break**

**11:40-13:00 Presentations 5**

10. **Christian Boulanger (mpilhlt): *Order from Chaos: Potential and Limits of CRF-based Reference Extraction from Footnotes***
{{< details "Abstract" >}}
Citations are a central component of a knowledge graph that maps the history of knowledge production in a scientific field. However, for many academic domains, particularly those where the language is not English, citation data either does not exist or is fragmentary. In these domains, citations have to be extracted from the source material. For literature that provides the cited references in well-organized, consistently styled bibliographies, technologies exist that have sufficient performance to produce the needed data \[1\]. However, in the Humanities and parts of the Social Sciences, this is not the case: whereas humans have no problem understanding what is being referenced, from a computational perspective, the reference data is inconsistent, fragmentary, and buried in a lot of noise \[2\]. This area of reference extraction is understudied \[3\].

I present an end-to-end framework for citation extraction from PDF documents that addresses this problem. The framework includes a [web application](https://github.com/cboulanger/citext) for annotating documents and training a model to semi-automate annotations, and a [CLI](https://github.com/cboulanger/anystyle-workflow) which uses the trained model to for the extraction of references from PDFs and validates and enriches the extracted data from various sources such as the Web of Science or OpenAlex. The extraction workflow relies the AnyStyle extraction engine, which is based on a conventional CRF-Model \[4\]. GROBID is additionally used to extract affiliation data from the documents \[5\].(1) 
The use case is the extraction of references from socio-legal literature, which contains many scholarly works which contain references solely in the footnotes, in heterogeneous formats and often heavily mixed with non-reference text such as commentary. The default model of AnyStyle exhibits poor performance in handling citations based on footnotes. However, the performance can be substantially enhanced by using a moderately-sized training corpus of annotations for two distinct models: the "finder" model, which predicts whether a line comprises a reference or not, and the "parser" model, which predicts the constituent parts of the extracted lines that belong to a particular element of a reference. Trained with one dataset of annotated documents from the Journal of Law and Society (25 “finder” sequences and 1500 “parser” sequences), the recognized references can be validated by entries in citation indexes such as the Web of Science in roughly 90% of cases.(2)

The limits of “old-style” CRF models are obvious: No amount of training data will be able to cover all edge cases when applying simple statistical prediction algorithms to messy data.(3) In contrast, commercial large language models such as GPT-3 show spectacular performance without any prior training, as they can “understand” the semantics of the tokens in the text and are therefore able to distinguish information from noise much better (See the ad-hoc experiment at <https://pad.gwdg.de/CDSuiiyLTpmi5LUfxxX2Qg) Yet, as long as these new technologies are, at least at scale, slow and expensive, and given their proprietary nature, further work is warranted to improve the performance of the existing fast and open source reference extraction technologies. In this context, deep learning techniques will be needed to overcome the limitations of the existing solutions \[6\], \[7\].

**Endnotes**

(1) The purpose of the framework goes beyond reference extraction: I am trying to construct a pluggable architecture that can model all functional requirements of constructing a knowledge graph of scholarly productions, the venues in which they were published, the scholars who created them, and the institutions these scholars were affiliated with, similar to the data model of https://openalex.org.

(2) Other extracted data cannot be validated because no entries exist in external citation databases. The high validation rate allows to be optimistic about its quality, however, without a standardized evaluation infrastructure it is hard to know for sure.

(3) For example, the model has been trained with a multitude of training sequences where “See, for example…” is classified as a “signal” token. And yet it will keep misclassifying “See” as an author name.

**References**

- \[1\] A. Cioffi and S. Peroni, “Structured references from PDF articles: assessing the tools for bibliographic reference extraction and parsing.” arXiv, May 29, 2022. [DOI:10.48550/arXiv.2205.14677](https://10.48550/arXiv.2205.14677).
- \[2\] C. Boulanger and A. Iurshina, “Extracting bibliographic references from footnotes with EXcite-docker,” in Proceedings of the Workshop on Understanding LIterature references in academic full Text, T. Backes, A. Iurshina, and P. Mayr, Eds., in CEUR Workshop Proceedings, vol. 3220. Hybrid Event, Cologne: CEUR, Jun. 2022, pp. 26–33. Accessed: Nov. 07, 2022. \[Online\]. Available: <http://ceur-ws.org/Vol-3220/#paper3>.
- \[3\] G. Colavizza and M. Romanello, “Citation Mining of Humanities Journals: The Progress to Date and the Challenges Ahead,” J. Eur. Period. Stud., vol. 4, no. 1, Art. no. 1, Jun. 2019. [DOI:10.21825/jeps.v4i1.10120](10.21825/jeps.v4i1.10120).
- \[4\] S. Keil, “AnyStyle.” Apr. 10, 2023. Accessed: Apr. 11, 2023. \[Online\]. Available: <https://github.com/inukshuk/anystyle>.
- \[5\] L. Romary and P. Lopez, “GROBID - Information Extraction from Scientific Publications,” ERCIM News, vol. 100, Jan. 2015, Accessed: Apr. 30, 2022. \[Online\]. Available: <https://hal.inria.fr/hal-01673305>.
- \[6\] D. Rodrigues Alves, G. Colavizza, and F. Kaplan, “Deep Reference Mining From Scholarly Literature in the Arts and Humanities,” Front. Res. Metr. Anal., vol. 3, p. 21, 2018. [DOI:10.3389/frma.2018.00021](https://doi.org/10.3389/frma.2018.00021).
- \[7\] W. Choi et al., “Building an annotated corpus for automatic metadata extraction from multilingual journal article references,” PLOS ONE, vol. 18, no. 1, p. e0280637, Jan. 2023. [DOI:10.1371/journal.pone.0280637](https://doi.org/10.1371/journal.pone.0280637).

{{< /details >}}

11. **Andreas Wagner (mpilhlt): *Obtaining Training Data - Different Tasks, Different Options***
{{< details "Abstract" >}}
When scholars want to make use of the best mechanisms for reference extraction, this endeavour invariably involves training the available tools for their particular dataset (and, eventually, for the particular task of reference extraction, too). Unfortunately, training routines, and - even more cumbersome - data formats to use for such routines differ considerably between the most promising tools. In order to provide some orientation for both scholars planning a reference extraction project, and those considering offering some data they are in possession of as training data, this presentation will discuss (a) the most important data formats and (b) data preparation workflows for such training data. In the former part, besides the data formats themselves, some conversion mechanisms are mentioned. In the latter part, various tooling options for the manual or semi-manual tagging of references in source texts will be presented briefly.

**Data Formats**

First, I will mention a couple of file formats in which you can encounter citation and bibliographies encoded “in the wild”, because they are commonly used in digitization projects or in reference managers like Zotero (Corporation for Digital Scholarship 2023). The Citation Style Language encoding of a reference can be serialized either in XML (Zelle 2015) or in JSON (Bennett 2016), texts encoded according to the recommendations of the Text Encoding Initiative (TEI Consortium 2023) will be in XML. BibTex/BibLaTeX files are frequently used for exchange of bibliography files and have a custom format that is neither XML nor JSON (Kime et al. 2023).

Second, I will discuss file formats specifically meant for training sequence labeling tools. Some tools are able to work with TEI XMl or CSL files directly, but often, training data needs to be encoded in other ways: I will introduce the BIO/BILOU tagging approach, and the CoNLL TSV format (Universal Dependencies Consortium 2023) and two spaCy options (JSON file formats and constructing examples in python; Honnibal et al. 2020) for encoding and serializing (tokenized and) tagged texts, specifying which tools need which file formats. Examples for conversions between some of the combinations are shown in spaCy and XSLT (W3C 2017).

**Workflows**

I will present some annotation environments that can be used for creating reference annotations in source texts, or for refining ones that have been suggested by a prior run of some labeling tool. The import/export of Catma (Gius et al. 2022) and INCEpTION (Klie et al. 2018) are based on Apache Tika (Tika Project 2023) and Apache UIMA (UIMA Project 2023), respectively, and support a range of file formats. TEI Publisher () has orignally been a platform for the publication of digital editions that now also allows running spaCy tasks and manually adding/changing annotations in TEI XML files. And Doccano (Nakayama et al. 2022) or Prodigy (Montani/Honnibal 2023) are more narrowly tailored to JSON(L) files. Getting results from these tools into some of the formats required for training will be the concluding step of the presentation.

**References**

- Bennett, Jr., Frank G. (2016): CSL-JSON. <https://citeproc-js.readthedocs.io/en/latest/csl-json/markup.html>
- Corporation for Digital Scholarship (2023): Zotero, v6.0.23. <https://www.zotero.org>.
- e-editiones (2023): TEI Publisher, v8.0.0. <https://teipublisher.com/index.html>.
- Gius, Evelyn & Meister, Jan Christoph & Meister, Malte & Petris, Marco & Bruck, Christian & Jacke, Janina & Schumacher, Mareike & Gerstorfer, Dominik & Flüh, Marie & Horstmann, Jan (2022): CATMA 6 (Version 6.5). [DOI:10.5281/zenodo.1470118](https://doi.org/10.5281/zenodo.1470118). See also <https://catma.de/>.
- Honnibal, Matthew & Montani, Ines & Van Landeghem, Sophie & Boyd, Adriane (2020): spaCy: Industrial-strength Natural Language Processing in Python. [DOI:10.5281/zenodo.1212303](https://doi.org/10.5281/zenodo.1212303). See also "Data formats": <https://spacy.io/api/data-formats>.
- Kime, Philip & Wemheuer, Moritz & Lehman, Philipp (2023): The biblatex Package. Programmable Bibliographies and Citations. Version 3.19. <https://www.ctan.org/pkg/biblatex>
- Klie, Jan-Christoph & Bugert, Michael & Boullosa, Beto & Eckart de Castilho, Richard & Gurevych, Iryna (2018): "The INCEpTION Platform: Machine-Assisted and Knowledge-Oriented Interactive Annotation", in: Proceedings of the 27th International Conference on Computational Linguistics, pp. 5–9. <https://aclanthology.org/C18-2002>. See also <https://inception-project.github.io/>.
- Montani, Ines & Honnibal, Matthew (2023): Prodigy: A modern and scriptable annotation tool for creating training data for machine learning models, v1.11.10. ExplosionAI. <https://prodi.gy/>.
- Nakayama, Hiroki & Kubo, Takahiro & Kamura, Junya & Taniguchi, Yasufumi & Xu, Liang (2022): Doccano. Text Annotation Tool for Humans. v1.8.3. <https://github.com/doccano/doccano>.
- TEI Consortium, The (2023): TEI P5: Guidelines for Electronic Text Encoding and Interchange. Version 4.6.0. Last updated on 4th April 2023. <https://www.tei-c.org/release/doc/tei-p5-doc/en/html/index.html>, [DOI:10.5281/zenodo.3413524](https://doi.org/10.5281/zenodo.3413524)
- Tika Project, The (2023): "Apache Tika - A Content Analysis Toolkit". <https://tika.apache.org/>.
- UIMA Project, The (2023): "Apache UIMA - Unstructured Information Management Architecture". <https://uima.apache.org/>.
- Universal Dependencies Consortium, The (2023): "CoNLL-U Format" <https://universaldependencies.org/format.html>. See also "CoNLL-U Plus Format" <https://universaldependencies.org/ext-format.html>.
- W3C (2017): XSL Transformations (XSLT) Version 3.0. Edited by Michael Kay. <https://www.w3.org/TR/xslt-30/>.
- Zelle, Rintze M. (2015): Primer — An Introduction to CSL. <https://docs.citationstyles.org/en/stable/primer.html>
- Zelle, Rintze M. & Brenton M. Wiernik & Frank G. Bennett, Jr. & Bruce D'Arcus & Denis Maier (2015): CSL 1.0.2 Specification. <https://docs.citationstyles.org/en/stable/specification.html>

{{< /details >}}

Discussion

**13:00-14:30 Lunch Break**

**14:30-15:50 Presentations 6**

12. **Anastasiia Iurshina/Tobias Backes/Ahsan Shahid/Philipp Mayer (Univ. of Stuttgart): *Outcite: end-to-end reference processing pipeline***
{{< details "Abstract" >}}
Facilitating access to bibliographic data for both researchers and the general public is crucial across all disciplines. To this end, numerous publishers utilize bibliographic databases to index their publications. However, in certain fields like social science, a notable portion of citation data remains beyond the reach of such databases. Our prior project, Excite \[7\], was specifically designed to address this issue and has proven successful in bridging the gap between the availability of citation data in social science and other domains. Through Excite, we have developed and implemented tools that enable the extraction, and segmentation of reference strings from PDF documents, which are then cross-referenced against bibliographic databases.

The Outcite project \[1\] addresses the problem of out-of-source references: references that could not be matched to any of the target collections during the previous project, Excite \[4\]. To achieve this, we take several actions: after extraction and segmentation of references is done, we try to remove the references that could not potentially be matched (e.g. they were broken in the previous steps of the processing or the authors of the paper did not provide enough information for the reference to be uniquely identified), we call these references ”outliers”. After that we perform the de-duplication step to reduce the number of references and then the search step is performed: we look for matches in in the collection of sources which was greatly extended compared to the Excite project.

At the workshop, we are going to present an overview of the pipeline that combines several reference extraction and segmentation tools (e.g. Grobid \[2\], Cermine \[3\], AnyStyle \[5\], Excite \[4\]) and searches for the parsed references in several sources (e.g OpenAlex \[6\], Crossref). We will show how the system is set up and follow this presentation by a short demo.

In addition to that we will present a quantitative analysis of how different combinations of extraction and segmentation tools compare to each other. The references are processed in an end-to-end manner: the input is PDF documents and the output is parsed reference objects. Evaluation is performed for reference strings and individual fields in the parsed references. We use two datasets for the evaluation: one has been created in the Excite project \[4\] and the other one in the GEOCITE project \[8\].

**References**

- \[1\] Outcite project, <https://demo-outcite.gesis.org/>.
- \[2\] Grobid, <https://github.com/kermitt2/grobid>.
- \[3\] Cermine, <https://github.com/CeON/CERMINE>.
- \[4\] Excite, <https://excite.informatik.uni-stuttgart.de/>.
- \[5\] AnyStyle, <https://anystyle.io/>.
- \[6\] OpenAlex, <https://openalex.org/>.
- \[7\] Boukhers, Zeyd & Ambhore, Shriharsh & Staab, Steffen. (2019). ”An End-to-end Approach for Extracting and Segmenting High-Variance References from PDF Documents”, JCDL ’19.
- \[8\] Geocite, <https://geographische-netzwerkstatt.uni-passau.de/geocite/>.

{{< /details >}}

13. **Olga Pagnotta/Silvio Peroni (University of Bologna): *Measuring the Performances of AnyStyle and Grobid against a Gold Strandard***
{{< details "Abstract" >}}
In a prior study (Cioffi & Peroni, 2022), we analysed the available reference extraction tools to understand their performances off-the-shelf – i.e. by using them as they have been configured, without prior training. We evaluated them against a corpus of 56 PDF articles (our gold standard) published in 27 subject areas (Computer Science, Arts and Humanities, Mathematics, etc.). From that analysis, we have identified the two most promising tools for bibliographic reference extraction and parsing, i.e. Anystyle and Grobid, which are CRF based.

We want to extend such a study by training these two tools against the same gold standard used in the previous analysis to understand how much the performances improve. As a result, we are also going to revise the code used for testing and comparing the reference extraction software to make it available also for others to be reused for similar analysis. The final aim of this work would be to develop a reference extraction service which enables a user to provide a PDF of a scholarly article in input and to have, in return, citation data and bibliographic metadata from all the references that are cited by the given article in a format that enables their ingestion in OpenCitations (Peroni & Shotton, 2020).

As a first step, a series of tests have been performed to check if the two software have been recently updated. During the testing phase, some differences emerged comparing the results obtained in the current study to the ones of (Cioffi & Peroni, 2022). With those differences in mind, we are going to modify the evaluation code (Cioffi, 2022) used in the prior study to adapt it to the current version of the tools. Afterwards, we will proceed with the training phase. To train Anystyle, the software documentation makes available a set of instructions for refining the training of the tool against a gold standard (ours, Cioffi, 2022). For what concerns GROBID, a series of instructions are available, too, for training the tool with specific data.

The work is currently ongoing, thus in the presentation we will show the results obtained by mid-May. However, the next steps will consist in the evaluation of the trained versions of Anystyle and Grobid and the creation of a new gold standard, to compare the results of the evaluation and the training phases to the previous version of the standard. The results will be processed in order to integrate the data in the OpenCitations infrastructure.

**References**

- Anystyle, <https://archive.softwareheritage.org/swh:1:snp:92bc79eb31b8e7fd760c985aa62f313ced3976bf;origin=https://github.com/inukshuk/anystyle-cli>.
- Cioffi, A. (2022). Data for Testing and Evaluating References Extraction and Parsing Tools (1.0). Zenodo. [DOI:10.5281/zenodo.6182066](https://doi.org/10.5281/zenodo.6182066).
- Cioffi, A. (2022). Code for converting different formats to TEI XML and evaluating results (1.0). Zenodo. [DOI:10.5281/zenodo.6182128](https://doi.org/10.5281/zenodo.6182128).
- Cioffi, A., & Peroni, S. (2022). Structured References from PDF Articles: Assessing the Tools for Bibliographic Reference Extraction and Parsing. In G. Silvello, O. Corcho, P. Manghi, G. M. Di Nunzio, K. Golub, N. Ferro, & A. Poggi (A c. Di), Linking Theory and Practice of Digital Libraries—26th International Conference on Theory and Practice of Digital Libraries, TPDL 2022, Padua, Italy, September 20–23, 2022, Proceedings (Vol. 13541, pp. 425–432). Springer International Publishing. [DOI:10.1007/978-3-031-16802-4_42](https://doi.org/10.1007/978-3-031-16802-4_42).
- Grobid, <https://archive.softwareheritage.org/swh:1:snp:4f734b61d425809bfd1f1d8d7b8b160edf81ef2b;origin=https://github.com/kermitt2/grobid_client_python>.
- Peroni, S., & Shotton, D. (2020). OpenCitations, an infrastructure organization for open scholarship. Quantitative Science Studies, 1(1), 428–444. [DOI:10.1162/qss_a_00023](https://doi.org/10.1162/qss_a_00023).

{{< /details >}}

Discussion

**15:50-16:15 Coffee Break**

**16:15-18:00 How to go forward?**

**18:00-18:15 Closing**
