---
layout: default
---
# Ethics and Politics of Data Curation"
**Original Author: Sebastian Karcher** 

So far we have treated data curation principally as a technical task. You may face certain trade-offs based on the decisions you make, you may make the data more or less usable for given groups, but all-in-all we've treated the curator as a neutral figure trying to do their best. This is a myth. Curation is rarely, if ever neutral. Since the early 2010, an entire subfield of ["Critical Data Studies"](https://knowingmachines.org/reading-list) (with some variations on the name) has emerged that investigates and foregrounds the power relations, politics, and ethics in collecting, curating, and using data. This has grown to be an immense field that could be (and is) the subject of a course by itself. While we won't be able to remotely do it justice in one week, an awareness of the ethics and politics of data curation is essential for a curator.

Although nominally about feminism, Catherine D'Ignazio and Lauren F. Klein's [_Data Feminism_](https://doi.org/10.7551/mitpress/11805.001.0001) is a wonderful introduction to how critical data science operates more generally, with lots of examples of applied critical data science. They organize their book around seven principles:

1. Examine Power. Data feminism begins by analyzing how power operates in the world.
2. Challenge Power. Data feminism commits to challenging unequal power structures and working toward justice.
3. Elevate Emotion and Embodiment. Data feminism teaches us to value multiple forms of knowledge, including the knowledge that comes from people as living, feeling bodies in the world.
4. Rethink Binaries and Hierarchies. Data feminism requires us to challenge the gender binary, along with other systems of counting and classification that perpetuate oppression.
5. Embrace Pluralism. Data feminism insists that the most complete knowledge comes from synthesizing multiple perspectives, with priority given to local, Indigenous, and experiential ways of knowing.
6. Consider Context. Data feminism asserts that data are not neutral or objective. They are the products of unequal social relations, and this context is essential for conducting accurate, ethical analysis.
7. Make Labor Visible. The work of data science, like all work in the world, is the work of many hands. Data feminism makes this labor visible so that it can be recognized and valued. 

Even without reading the book (which you should), the relationship of some of these principles to many of the aspects of data curation should become obvious: For example, "considering context" reflects on practices of documentation and metata; rethinking binaries and hierarchies closely relates to how we apply categories during data curation (and whether we take categories in existing data as 'given'); embracing pluralism closely relates to principles of data collection: which data (and by extension -- whose experiences) warrant inclusion in your data? Other principles highlight what guides the decisions you make during curation, e.g., being aware of power relations and openness to different perspectives.

Rather than trying to develop a full-scale model of critical data curation, we'll look at three case studies: The rights of disabled people to access data; Indigenous data and the politics of metadata; and race, gender and the ethics of facial recognition datasets.

## What Does "Accessible" Mean? The Platform Is Political

You will recall FAIR Data, the omnipresent acronym that says data should be "Findable, Accessible, Interoperable, and Re-usable." The "Accessible" of FAIR is [operationalized by two principles](https://www.go-fair.org/fair-principles/): 
1. A1. (Meta)data are retrievable by their identifier using a standardised communications protocol
2. A2. Metadata are accessible, even when the data are no longer available

But this use of "accessible" leaves out a meaning of the term that long predates it. [_Digital accessibility_](https://www.w3.org/WAI/fundamentals/accessibility-intro/#what) "means that websites, tools, and technologies are designed and developed so that disabiled people can use them." Data science and data curation have long all but ignored this sense of accessibility. (A note on language: it used to be quite common to advocate for "people first" language -- so "people with disabilities." Especially in the US, many disability advocates, however, prefer "identity first" language: "disabled people," "blind users," "autistic patrons" and I (Karcher) will use that language here. When working with or writing about disabled individuals, you should inquire about their preferences for terminology.)

At the most basic level, data should be accessible through repositories that are suitable for disabled users. Repositories do have clear guidance on how to do this: The Web Content Accessibility Guidlines (WCAG) describe a set of "success criteria" that outline compliance with good practices for applications and websites to be usable by disabled people. WCAG includes making sites navigable by keyboard only, working well with screen readers, describing images using 'alt' text, having sufficiently high contrast for written text, ensuring that videos have good captioning, and more. US (and many other countries') laws on digital accessibility have effectively codified compliance with WCAG into national legislation. In spite of this overall compliance with WCAG on the web is low. The organization Web Accessibility in Mind (WebAIM) runs automated checks on the homepages of the one million most popular websites every year and publishes the [WebAIM Million](https://webaim.org/projects/million/) report. In 2024, more than 95% of websites had detectable WCAG failure, with an average of more than 60 per home page.

But back to data and curation: surely data repositories would do better on this? In many cases they are not. When we used two automated tools ([AXE](https://www.deque.com/axe/) and [WAVE](https://wave.webaim.org/)) for an [article about accessibility and research data](https://www.iastatedigitalpress.com/jlsc/article/id/15449/), which check for a subset of the WCAG success criteria on seven prominent data repositories, none were fully compliant and some showed significant accessibility issues.
<img src="/_images/repository-accessibility.png" alt ="Table showing web accessibility tests for 7 repositories using 2 different tools. Zenodo and GESIS show more than 100 issues, all other repositories have between 1 and 25 depending on the tool"/>

Data files themselves can also pose significant accessibility issues. For example, when documentation and data is included in PDFs, they may be hard or even impossible to access for researchers using a screen reader. Repositories have started to become more aware of such issues. For example, the Data Curation Network (which you encountered in DC I) has created a dedicated "[Accessibility Data Primer](https://github.com/DataCurationNetwork/data-primers/blob/main/Accessibility%20Data%20Curation%20Primer/accessibility-data-curation-primer.md)" that covers coming issues with accessibility in data files.

A critical focus on accessibility and disability rights shows us that even the most basic decisions such as the choice of a repository platform or a file format for storing data can have massive political implication: it is a choice who can access data and who can not, about which users matter.

## Indigenous Data Sovereignty: Metadata Matters

Another reaction to the publication of the FAIR principles in 2016 came from Indigenous scholars. Whereas the FAIR principles offer a vision of easy access to data, the [CARE principles](https://datascience.codata.org/articles/10.5334/dsj-2020-043) (first published in 2019 as the output of a Research Data Alliance working group) center a vision of their responsible sharing and re-use based on Collective benefit, Authority to Control, Reponsibility, and Ethics. The CARE principles are rooted in a growing literature on Indigenous data sovereignty -- the principle that Indigenous peoples have the right to control data create by them as well as data about them collected by others (including governments). (Again, as a note on usage: Indigenous, when used to describe an identity, should always be capitalized).

Initial implementations considerations around CARE were based mostly on the handling of data, e.g., ensuring that Indigenous data are not used against the interest or priniciples of Indigenous groups. Once the focus shifted to implementing CARE, however, the importance of metadata became important. In an "[Indigenous Metadata Bundle](https://indigenousdatalab.org/wp-content/uploads/2023/12/indigenous-metadata-bundle-communique-final.pdf)" released in 2023, several of the originators of the CARE principles developed a set of metadata categories that allow for the implementation of care: 

- **Governance**, which concerns permissions to access, use, and edit data;
- **Provenance**, which documents the connection to data origins and the relationships that are part of the data;
- **Protocols**, which describe relevant Indigenous laws and preferences for the care fo the data; and
- **Local Context Notices and Labels**, connect data to labels (managed by Indigenous communities) and notices (applied by settler institutions to mark Indigenous content) managed through the [local context hub](https://localcontexts.org/).

Notably, among these only provenance would appear in most existing metadata schemas. Metadata that respects Indigenous data sovereignty thus requires additional metadatafields: metadata schemas are political.

> "At this point in history, libraries, museums, and archives, and the cataloging and classification systems promulgated therein, are designed around a Western European orientation to texts, reading, and the categorical particularization of knowledge." ([Duarte & Belarde-Lewis, 2015](https://doi.org/10.1080/01639374.2015.1018396), p. 683).

But the politics don't stop there. Even standard metadata fields can be political, especially when controlled vocabularies are included.  For example, repositories using the Dataverse platform (including the Harvard Dataverse, QDR, and several national repositories in Europe) use a controlled vocabulary to describe the languages used in a dataset. The languages available follow the [ISO 639-2 standard](https://www.loc.gov/standards/iso639-2/php/code_list.php), which only captures a very small number of known Indigenous languages. Given the centrality of language for Indigenous identity, the inability to assign correct languages to Indigenous data is highly problematic. Similarly problematic categories exist in other controlled vocabularies: the Library of Congress's subject headings, to take another example, are profoundly problematic in their treatment of Indigenous peoples in the Americas, starting with the fact that they're confined to the "History of the United States" section, with the latest entry in the lat 19th century. (The Library of Congress is currently [working on a significant update](https://www.loc.gov/aba/cataloging/subject/indigenous-interim.html)). These headings are profoundly influential not just in the organization of knowledge in libraries (most academic libraries in the US rely on them), but also beyond -- e.g., several data repositories, including QDR, rely on them as a general purpose controlled vocabulary for keywords.

This brief look at the politics of Indigenous data show that metadata -- which fields are included in a metadata schema, which are required, and what values they can take -- is profoundly political. The assigned reading by Belarde-Lewis and other more deeply investigates the complex politics of Indigenous data. 

## Intersectional Data Feminism: Data Collection Policies and Bias

> While Googling things on the Internet that might be interesting to my stepdaughter and nieces, I was overtaken by the results. My search on the keywords “black girls” yielded HotBlackPussy.com as the first hit. ([Noble, 2018](https://safiyaunoble.com/research-writing/), p. 3)

In the evocative first pages of her book _Algorithms of Opression_, Safiya Noble describes her first encounter with what she calls "algorithmic oppression": the search results google produced (in 2011) for the search term "black girls." Algorithmic bias has since become a widely recognized issue and a large field of research. Noble identifies several interacting causes of algorithmic oppression; at the core of many examples, however, are the training datasets used to calibrate the behavior of algorithms.

An influential [early paper on algorithmic bias](http://proceedings.mlr.press/v81/buolamwini18a.html?mod=article_inline&ref=akusion-ci-shi-dai-bizinesumedeia), Joy Buolamwini and Timnit Gebru show that most datasets used to test ('benchmark') facial recognition technology significantly underrepresent darker skinned faces and introduce a more balanced benchmark dataset.

![Bar graph showing two datasets with 80% lighter skinned individuals, one with an almost 50/50 distribution](/_images/facial-recognition-benchmarks.png)

They then use that dataset to test the accuracy of three commercial tools that claim to detect gender using facial recognition technology: the commercial tools were impressively accurate (>99%) for light-skinned men, error rates for darker-skinned women were as high as 35%! What I like about this paper is that it uses careful data curation as a tool for algorithmic justice (read the paper to see how carefully they assemble the new benchmark dataset) and also how it embodies intersectional thinking: prior studies had shown that gender classification is less accurate for women generally. Intersectional analysis shows that algorithmic bias affects darker skinned women significantly more than lighter-skinned women.

## Conclusion

We have looked at some examples of how critical data studies can affect data curation, looking at example of platform, metadata, and data acquisition/collection as they apply to disability rights, Indigenous data sorvereignty, and discrimination based on the intersection of gender and race. The goal of these case studies is not to serve as templates for your curation work, but to sharpen your ethical and political sensibilities as a data curator: politics and power relations are rarely far afoot when you're handling data, certainly when the data describes the social world with all its existing biases. 


## Lecture

To come


## Readings

### Required Readings
From an ongoing research project at the iSchool, this is a rich discussion of the complex ethics and politics of Indigenous data, written accessibly enough to simulataneously serve as a good introduction.
Belarde-Lewis, M., Littletree, S., Braine, I. R., Srader, K., & Palmer, C. (2024). [Centering Relationality and CARE for Stewardship of Indigenous Research Data. SocArXiv. https://doi.org/10.31235/osf.io/k2j47](https://doi.org/10.31235/osf.io/k2j47)

I found this chapter from _Data Feminism_ especially relevant for thinking about curating data, taking into account different perspectives:
D’Ignazio, C., & Klein, L. F. (2020).[ Data Feminism: Chater 5: Unicorns, Janitors, Ninjas, Wizards, and Rock Stars. The MIT Press. https://doi.org/10.7551/mitpress/11805.003.0007](https://doi.org/10.7551/mitpress/11805.003.0007)


### Suggested Readings
This modern classic isn't relevant here in its entirety so I'm not requiring for this class, but if you have not read it yet, consider it a quasi-requirement. You can't graduate from iSchool (certainly not at UW) without having read this. It does end with a plea for the careful curation of datasets for machine learning.
Bender, E. M., Gebru, T., McMillan-Major, A., & Shmitchell, S. (2021). [On the Dangers of Stochastic Parrots: Can Language Models Be Too Big? 🦜. Proceedings of the 2021 ACM Conference on Fairness, Accountability, and Transparency, 610–623. https://doi.org/10.1145/3442188.3445922](https://doi.org/10.1145/3442188.3445922)


I learned a lot about Indigenous/decolonizing perspectives on ontologies from this piece, co-authored by iSchool professor Miranda Belarde-Lewis
Duarte, M. E., & Belarde-Lewis, M. (2015). [Imagining: Creating Spaces for Indigenous Ontologies. Cataloging & Classification Quarterly, 53(5–6), 677–702. https://doi.org/10.1080/01639374.2015.1018396](https://doi.org/10.1080/01639374.2015.1018396)

There is not a lot of literature about data curation and disability, so if you're interested in the topic, my (Karcher's) co-authored piece is a good place to start
Colón, R. D., Goben, A., & Karcher, S. (2023). [Actually Accessible Data: An Update and a Call to Action. Journal of Librarianship and Scholarly Communication, 11(1), Article 1. https://doi.org/10.31274/jlsc.15449](https://doi.org/10.31274/jlsc.15449)



## Exercise

### Repository Mini Accessibilty Audit

Your goal in this exercise is to get a sense of common issues in the digital accessibility of websites and data repositories and to familiarize yourself with tools and strategies for doing some initial assessment. 

1. Download the [WAVE browser extension](https://wave.webaim.org/), available for Chrome, Edge, and Firefox.
2. Optional: The tool is pretty self explanator, but do watch the introduction video on the page if you would like an introduction
3. Find a data repository or other data-related site that you're interested in (this can, but need not be related to your curation protocol). If you don't have a good idea, search or browse the [Re3Data directory of data repositories](https://www.re3data.org/).
4. Use the WAVE tool to identify any issues with WCAG compliance on the repository. Test the homepage and a dataset landing page (or something comparable). If WAVE identifies any issues, try to understand what the most common 1-2 issues mean and what users they would affect and how
5. Finally, take your hand off the mouse(pad) and try to navigate the page using only the keyboard (you'll use the Tab, arrows, Space, and Return keys). How well does that work?
6. [On the Canvas board](https://canvas.uw.edu/courses/1724350/discussion_topics/8922012), write a very brief (1 paragraph or 3-5 bullet points) informal summary of what you found. Feel free to include bullet points.



_Note_: This is not an actual accessibility audit: Full accessibility testing requires significant expertise and should always include disabled users: one of the mantras of the disability rights movements is "Nothing about us without us."
