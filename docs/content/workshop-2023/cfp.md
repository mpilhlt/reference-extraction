---
title: "Call for Papers"
date: 2023-01-23T15:33:25+01:00
draft: false
---

Hybrid Workshop at the [Max Planck Institute for Legal History and Legal Theory (mpilhlt)](https://www.lhlt.mpg.de/en/), 15/16 May, 2023

**Organized by:**
- [Christian Boulanger](https://www.lhlt.mpg.de/boulanger/en), [mpilhlt Frankfurt](https://www.lhlt.mpg.de/en)
- [Robin Haunschild](https://www.fkf.mpg.de/person/37778/921030), [mpgivs-cpt Stuttgart](https://www.fkf.mpg.de/ivs)
- [Malte Vogl](https://www.mpiwg-berlin.mpg.de/users/mvogl), [mpiwg Berlin](https://www.mpiwg-berlin.mpg.de/)
- [Andreas Wagner](https://www.lhlt.mpg.de/wagner/en), [mpilhlt Frankfurt](https://www.lhlt.mpg.de/en)

**in cooperation with:**
- [Anastasiia Iurshina](https://www.ipvs.uni-stuttgart.de/institute/team/Iurshina/), [Excite/Outcite, University of Stuttgart](https://excite.informatik.uni-stuttgart.de/)
- [Clemens Neudecker](https://cneud.net/), [SBB Berlin](https://staatsbibliothek-berlin.de/)
- [Silvio Peroni](https://essepuntato.it), [OpenCitations.net](https://opencitations.net/)
- [Matteo Romanello](https://mromanello.github.io/), [University of Lausanne](https://unil.ch/)

## Summary

Extracting heterogeneous references from texts, in particular from historical documents and humanities or legal scholarship is an unresolved problem. Yet, there is currently no coordinated effort to develop solutions. We therefore invite scholars and practitioners from the social sciences, the humanities and the informational and computational disciplines to join us in a workshop in which we want to define the problem(s), establish the state of the art and share resources. The overarching aim of the event is to find ways for jointly developing new tools and workflows which are able to unlock previously untapped reference/citation data in the humanities, law and the social sciences. A particular focus lies on newly emerging technologies that are based on (pre-trained) language models.

## Problem Outline

With masses of historical and contemporary digitized texts becoming available, the task of computationally extracting scholarly references comes to the focus of many research disciplines. The core challenge for reference data extraction is to identify and extract messy and fragmentary bibliographic information encoded in a multitude of ways from a lot of noise. While there are well-established reference extraction tools, most of them have been developed for and evaluated on a particular genre of literature only: English-language texts that have their bibliographies at the end as a list of references, following a somewhat consistent citation style. These tools may thus work well enough for some typical use cases. However, they are hardly fit for extracting literature references from texts that organise their references differently, as are common in humanities, law, and parts of the social sciences:[^1]

[^1]: See for the state of the art [Cioffi/Peroni 2022](https://arxiv.org/abs/2205.14677), who cover some humanities samples.

- **Citation Style:** Complete reference information is often using referencing terms like "ibid.", "op.cit." or other forms of abbreviations, and in general is rarely fully consistent. Historical documents are frequently referring to their sources with just an abbreviation of the author's name, sometimes an incipit of the passage, or other canonical ways of referencing "classic works".
- **Dispersed References:** References are found in footnotes as well as in the main text. In many cases, references are stretched over one or several sentences with the author name and the title of the referenced work being interspersed with comment or criticism. Sometimes several references are listed sequentially without a standard separation of one reference from the next one.
- **Language:** Finally, the processing of texts in languages other than English (or in historical variants/stages of otherwise well-resourced languages like English, German, Spanish, Italian) has not been tested extensively and is likely to suffer from a lack of training material.

These features of the target documents (plus other ambiguities, inconsistencies and OCR noise) derail document segmentation, reference recognition, and reference parsing algorithms expecting homogenous textual data, neatly separated, mostly English-language references and self-contained, consistently styled reference information.

In principle, the current state of technological development may be able to cope with this, however: With language processing technologies being revolutionized by transformer-based ([2017](https://arxiv.org/abs/1706.03762)), pre-trained language models since [2018](https://arxiv.org/abs/1810.04805), and with the recent investment of lots of resources into building really huge language models,[^2] the tools seem to have acquired some abstract "understanding" of texts and some capacity to perform tasks they have not explicitly been trained for ("transfer learning").[^3] In fact, an ad hoc experiment we did with the [OpenAI API](https://beta.openai.com/overview), a commercial tool based on one of the mentioned large language models, shows stunning performance when prompted to extract and segment references from a footnote of a German scholarly work.[^4]

[^2]: See, e.g. [GPT-3](https://doi.org/10.48550/arXiv.2005.14165) (2020) or [Bloom](https://doi.org/10.48550/arXiv.2211.05100) (2022), both using a number of parameters several orders of magniture greater than earlier models: While the first successful transformer-based language model - [BERT](https://arxiv.org/abs/1810.04805) (2018) - was using 340M parameters in its large variant, both GPT-3 and Bloom use more than 175B parameters. In both cases, training efforts have also covered multiple languages, in the case of Bloom even an intentionally diverse set of languages (cf. the ["Training"/"Languages"](https://huggingface.co/bigscience/bloom#languages) section of the model card).

[^3]: In the related domain of extraction of named entities (places, persons, organizations, events) from historical documents or texts in little-resourced languages, the consensus since the late 2010s seemed to be that the main limiting factor in comparison to standard scenarios was the scarcity of training data. See, for example, [Rodrigues Alves/Colavizza/Kaplan 2018](https://doi.org/10.3389/frma.2018.00021), [Colavizza/Romanello 2019](https://doi.org/10.21825/jeps.v4i1.10120), [Cioffi/Peroni 2022](https://arxiv.org/abs/2205.14677). This is precisely the point where pre-trained (large) language models come in and decisively improve the latent "understanding" of the language within the tools. The remaining challenge has shifted to "fine-tuning" the models, i.e. teaching the tool what kind of output it should produce based on its latent understanding of the source texts (cf. [Ruder 2021](http://ruder.io/recent-advances-lm-fine-tuning)).

[^4]: See <https://pad.gwdg.de/CDSuiiyLTpmi5LUfxxX2Qg#>. We are in the process of enhancing this proof-of-concept experiment and will post a link to an updated - perhaps interactive - version of it here when it's ready.

However, the established tools for reference extraction do not make use of this latest available language technology. And workflows using the large language models have not been developed yet or, as is the case with our ad-hoc experiment, it is unclear if/how long these models will remain free and open for research purposes. Plus, the (current) APIs have token limits and processing speeds that hinder their use in real-world scenarios. Finally, the fitness for historical and less-resourced languages remains to be addressed.

Thus, in order to develop suitable tools and workflows, there is a current need of charting available models and APIs with their respective strengths and limitations, assessing and finding the necessary computing power, and understanding what kind of finetuning is necessary (and what resources this in turn requires).

## Call for Participation

For the hybrid workshop on 15/16 May, 2023, we invite contributions to the following topics/questions:

### Problem/task definition
- What are use cases and current projects, in which the issue of extracting heterogeneous reference data arises?
- Can we define different (sub-)tasks, like parsing of references vs. just finding them vs. identifying what they refer to (linking)? In the main text vs. in footnotes? In which languages?

### State of the art

- What is the performance of up-to-date approaches (be it OpenAI, other large language models, or approaches based on other technology like [AnyStyle](https://anystyle.io/) or [GROBID](https://github.com/kermitt2/grobid))?
- What are their respective limitations, and how do we go about evaluating them?
- How can the newly emerging technologies be leveraged to improve upon existing solutions?

### Pooling of tools and resources

- What training corpora are available? Which are needed?
- What format of [training data](#2-resources-and-standards) is best (annotation schema, file format, convertibility etc.)?
- What workflows/toolchains are best suited to process the available data?

### Future work
- What infrastructure is required/available for continuing work in this regard (repositories, communication channels, computing platforms etc.)?
- Should we establish a [Shared Task](#1-organization-of-a-shared-task)? Write a whitepaper? Hold a hackathon?

Please also consider contributing if:
- you have **data** that would be suitable as training data
- your previous or future work contributes to **related tasks** like preparation of datasets (incl. normalization/tokenization etc.), linking of references, classification of citation contexts, long-term storage and reuse of generated citation data etc. (See [annex, section "Related tasks"](#3-related-tasks).)

As submissions, we expect a short abstract of your presentation which also references previous work in the subject area (papers and code, if applicable). The presentations on the workshop should not exceed 20 minutes each.

While the workshop will be organized in a hybrid format, we hope to be able to meet you in person. Participation is free of charge. Travel and accomodation cannot be reimbursed.

Please send your submission to wagner@lhlt.mpg.de. Deadline for submissions is Feb 28th 2023. All submitters will be notified of their status by March 13th 2023.

## Literature

- Christian Boulanger, and Anastasiia Iurshina (2022): "Extracting Bibliographic References from Footnotes with EXcite-Docker", in: Tobias Backes, Anastasiia Iurshina, and Philipp Mayr (eds.): *Proceedings of the Workshop on Understanding Literature References in Academic Full Text*. CEUR Workshop Proceedings 3220, pp. 26–33. <http://ceur-ws.org/Vol-3220/#paper3>
- Alessia Cioffi, and Silvio Peroni (2022): "Structured references from PDF articles: assessing the tools for bibliographic reference extraction and parsing". [DOI:10.48550/arXiv.2205.14677](https://doi.org/10.48550/arXiv.2205.14677)
- Giovanni Colavizza, and Matteo Romanello (2019): "Citation Mining of Humanities Journals. The Progress to Date and the Challenges Ahead", in: *Journal of European Periodical Studies* 4/1, pp. 36-53. [DOI:10.21825/jeps.v4i1.10120](https://doi.org/10.21825/jeps.v4i1.10120)
- Maud Ehrmann, Matteo Romanello, Alex Flückinger, and Simon Clematide (2020): "Extended Overview of CLEF HIPE 2020. Named Entity Processing on Historical Newspapers", in: Conference and Labs of the Evaluation Forum (eds.): *Proceedings of the Working Notes of CLEF 2020 - Conference and Labs of the Evaluation Forum*. [DOI:10.5281/zenodo.4117565](https://doi.org/10.5281/zenodo.4117565)
- Maud Ehrmann, Matteo Romanello, Antoine Doucet, and Simon Clematide (2022a): "HIPE 2022. Participation Guidelines. Identifying Historical People, Places and Other Entities. Shared Task on Named Entity Recognition and Linking in Multilingual Historical Documents." v1.0. [DOI: 10.5281/zenodo.6045662](https://doi.org/10.5281/zenodo.6045662)
- Maud Ehrmann, Matteo Romanello, Sven Najem-Meyer, Antoine Doucet, and Simon Clematide (2022b): "Extended Overview of HIPE-2022: Named Entity Recognition and Linking in Multilingual Historical Documents", in: Guglielmo Faggioli, Nicola Ferro, Allan Hanbury, and Martin Potthast (eds.): *Proceedings of the Working Notes of CLEF 2022 - Conference and Labs of the Evaluation Forum*. CEUR Workshop Proceedings 3180. [DOI:10.5281/zenodo.6979577](https://doi.org/10.5281/zenodo.6979577)
- Sehrish Iqbal, Saeed-Ul Hassan, Naif Radi Aljohani, Salem Alelyani, Raheel Nawaz, and Lutz Bornmann (2021): "A Decade of In-Text Citation Analysis Based on Natural Language Processing and Machine Learning Techniques: An Overview of Empirical Studies", in: *Scientometrics* 126/8, pp. 6551–6599. [DOI:10.1007/s11192-021-04055-1](https://doi.org/10.1007/s11192-021-04055-1)
- Danny Rodrigues Alves, Giovanni Colavizza, and Frédéric Kaplan (2018): "Deep Reference Mining From Scholarly Literature in the Arts and Humanities", in: *Frontiers in Research Metrics and Analytics* 3/21. [DOI:10.3389/frma.2018.00021](https://doi.org/10.3389/frma.2018.00021)

### Other web resources

- Cristian Arteaga (2022), "Understand BLOOM, the Largest Open-Access AI, and Run It on Your Local Computer", Blog entry on *Towards Data Science* Blog from 2022-08-06, <https://towardsdatascience.com/run-bloom-the-largest-open-access-ai-model-on-your-desktop-computer-f48e1e2a9a32> (accessed 2023-01-10)
- BigLAM (2022): "BigLAM: BigScience Libraries, Archives and Museums. 🤗 Hugging Face x 🌸 BigScience initiative to create open source community resources for LAMs." <https://huggingface.co/biglam>
- Duke Libraries Center for Data and Visualization Sciences (2020): "Automated Tagging of Historical, Non-English Sources with Named Entity Recognition (NER): A Resource", 31. August 2020. <http://blogs.library.duke.edu/data/2020/08/31/automated-tagging-of-historical-non-english-sources-with-named-entity-recognition-ner-a-resource/>.
- Embeddia project (2022). Embeddia is a European Union H2020 project ended in March 2022 that created NLP tools focusing on European under-represented languages and that had for objective to improve the accessibility of these tools to the general public and to media enterprises. <http://embeddia.eu/>
- Sebastian Ruder (2021), "Recent Advances in Language Model Fine-tuning", <http://ruder.io/recent-advances-lm-fine-tuning>.

See also the [zotero bibliography](https://www.zotero.org/groups/4370759/digital_research_in_law/collections/6BG736M8)

## Annexes

### 1. Organization of a Shared Task

*Shared Tasks* are an event framework popular in natural language processing (NLP), in which a challenge is published and different participant teams develop systems, competing to solve the task in the best way. Due to previously defined standards and evaluation data sets, the performance results are directly comparable. (On the format as such, cf. <https://academia.stackexchange.com/questions/69429/what-is-a-shared-task-and-what-is-the-purpose-of-it>. For shared tasks being used in humanities, cf. <https://sharedtasksinthedh.github.io/>.) However, organizing a Shared Task involves some preconditions that are presently not met, like precise task definitions, evaluation routines, training and evaluation data corpora etc. We would like to discuss during the workshop if the preconditions can be met and if it's something that a sufficiently large community of interested persons wants to pursue.

### 2. Resources and standards

The generation of a well-perfoming extraction model critically depends on the availability of high-quality training data.

- For a possible hackathon/shared task, we would be able to provide a relatively small set of (non open access, i.e. not publishable) training data in German and English, based on footnoted scholarship from the [Legal Theory Graph project](https://www.lhlt.mpg.de/2515344/03-boulanger-legal-theory-graph). The AnyStyle-based annotation corpus contains 60+ documents with ~6000 annotations ("text", "reference", "metadata" etc.), 2500+ reference sequences with ~17.000 annotated segments ("author", "title", "date", etc.). Participants are encouraged to contribute their own training datasets, in particular if they involve other languages or are from open access sources (so that they can be freely used).
- Deep learning algorithms can use the [500 GB "GIANT" dataset](https://isg.beel.org/blog/2019/12/10/giant-the-1-billion-annotated-synthetic-bibliographic-reference-string-dataset-for-deep-citation-parsing-pre-print/), which includes 1 billion synthetically generated annotated bibliographic reference strings.
- The extremely-powerful-but-slow nature of the openai\.com API could be leveraged to generate training material from a sample of the literature from which references are to be extracted.

In order to promote the exchangeability of annotated training material across implementations, standard annotation and serialization formats are needed. Some formats that have seen some adoption in the field of reference extraction are:

- The [GROBID training annotation format](https://pad.gwdg.de/ENW7NLJ8SPCpdNXynojcFw?both#Corpora-and-training-data) ([examples](https://github.com/kermitt2/grobid/tree/master/grobid-trainer/resources/dataset)) encodes layout information and document semantics. It is based on [TEI XML](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/CO.html#COBITY) and in the case of GROBID is processed by a layered set of  models.
- The more lightweight, [BILOU format](https://spacy.io/usage/linguistic-features#accessing-ner) common in NLP and suitable for processing with spaCy.
- The bipartite, line-based annotation format of [AnyStyle](https://github.com/inukshuk/anystyle). Like GROBID, AnyStyle operates with two distinct models, one for the extraction of whole reference strings from the text ([example](https://github.com/inukshuk/anystyle/blob/master/res/finder/bj581pc8202.ttx)) and one for the segmentation of these strings into the constitutent parts of a reference ([example](https://github.com/inukshuk/anystyle/blob/master/res/parser/core.xml)). The current set of labels can be expanded to extract additional information from the target documents.

Besides the format, contributions to the workshop could address the set of relevant labels for the various (sub-)tasks. They should cover the most relevant use cases in law, the humanities and the social sciences. Some orientation could be established in comparison to the [CSL](https://citationstyles.org)/[CSL-M](https://citeproc-js.readthedocs.io/en/latest/csl-m/index.html) language and the [DCTerms](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/) vocabulary.

### 3. Related tasks

While the primary focus of the workshop is on the extraction of dispersed reference information from text documents, there are a few other closely related problem domains for which we also accept submissions:

#### Standardization in File formats, Metadata profiles, and APIs
- Identification/discussion of open standards for training data (see above), bibliographic/bibliometric data (CSL-JSON, MODS, RIS, WOS/ISI, BibTeX, Zotero etc), and of web service APIs for matching, normalization etc.

#### Training data creation
- Standards of annotation for bibliographic data as a special case of NLP annotation for machine learning
- Evaluation of open source [annotation tools](https://pad.gwdg.de/eQtgt_J6SxiWArOjQXT20w#Text-annotation-for-machine-learning) suitable for quickly producing new training data, ideally in an iterative, semi-automated workflow that integrates extraction and export of annotations in the agreed-upon format.
- Conversion of training data between different formats (so as to be able to use the LM/tool of one's choice with some data that happens to be available)
- Conversion of training data from non-Open Access sources to freely usable formats that preserve the relevant training information without being covered by copyright, i.e., formats that do not allow to fully reverse-engineer the original text (see <https://zfdg.de/2022_007> for a recent discussion).

#### Pre-processing tasks
- Correction of post-OCR results
- Tokenization of historical texts
- Normalization of historical texts
- Improvement of the TEI-NLP-TEI pipeline

#### Post-processing tasks
- Prediction of quality of extracted reference data to avoid costly lookups of false positives
- Matching/Reconciliation of extracted reference data with existing open and proprietary bibliographic datasources (crossref.org, opencitation.net, wikidata.org, openalex.org, semanticscholar.org, worldcat.org, lobid.org, viaf.org, app.dimensions.ai, webofscience.com, scopus.com etc.)
- Entity normalization/disambuiguation: replacing abbreviations with full journal names, disambiguation of authors, institutions, etc. and linking them to unique ids/authority files  
- Normalization of intra-footnote (back)references such as "ibid."/"loc.cit."/"a.a.O."/"ders." in extracted reference data
- Context analysis for extracting information on reference commentary ("See the excellent contribution of...", "Ganz abwegig hier der Beitrag von...")
- Publication of output in open repositories, such as opencitations.net or wikidata.org
