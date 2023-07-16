---
title: Contributor vs Maintainer Mentality
date: 2023-07-16T14:41:31+11:00
tags: ["software", "engineering"]
---

One of the main things I have been chewing on over the last few weeks is the quality of technical decisions made by different people working on a shared codebase. The thoughts then led me to think about the contributor vs maintainer mentality.

Although the terminology has been used extensively in the context of open source software (OSS) [^1] - the writing here is more focused in terms of proprietary software written in SaaS-based companies (both startup and enterprise). This is because, unlike OSS, where there are one or few people that own and guide the repo, in software-based companies, that's different. In these companies, you'll have a team or a set of teams owning a service domain, which could be powered by one more service. Hence, the distinction becomes more nuanced and less obvious than in OSS, where code repositories directly promote the code owner/maintainer vs contributor designations. This in turn, means that the distinction is more of a mentality than designations.

One set of people has the **contributor** mentality. They see their job as coming in and making changes for a well-defined end goal, i.e., adding more features, fixing bugs, and patching security vulnerabilities. This set of people, however, will only care about moving the needle forwards within their local concern. They might optimise the software just in time to a local maxima that serves their current need but rarely go the extra mile. However, this is not to say that this group of people have the wrong engineering motivations or can't be trusted to help evolve the code. More often than not, people with a contributor mindset are also the "*get shit done*" types and view software as a means to an end.

The other set of individuals fall in the camp of **maintainer** mentality. These are the individuals who not only look at the codebase as a means to an end but instead as an evolving machine that needs to be curated and tended to routinely. For many companies, these are individuals in a tech lead or architect role (not always true). This particular set of people is always striving to improve the software's quality which benefits them and anyone else working in the system.

It's hard to say which one is better. The chances of your software lasting over 3-5 years [^2] without a huge rewrite are slim. Hence, *is it worth it for maintainers to expend time and energy in curating the software instead of focusing on a collaborator mentality?*

For the most part, and most software (especially enterprise) it pays to be a contributor. Being a maintainer is usually low visibility and low payoff. Your PM does not care that you added architecture unit tests or cleaned up the packages in the repo to improve future code changes. Or they may care, but overall the memory of the effort of these changes is low. However, they notice when you can get that next whizz-bang feature out.

On top of that, as a maintainer, you will most likely have the same amount of work and duties as anyone else, which means you not only have to optimise locally to deliver but also have to constantly use up focus, energy and time to think of how you could evolve the software better. The problem gets exacerbated by the fact more often than not, the kind of changes that help everyone or move the needle on maintaining the software to be more robust is usually medium-big changes that can't be done in a day or two.

However, there are distinct advantages to adopting a maintainer mentality. The chief benefit, in my opinion, is that it's a great way to break through the monotony of the current state of software engineering, which is just yet another flavour of a
CRUD app. Unless you're in a true deep engineering discipline (think quantum computing, building machine learning models from scratch etc.). Not only that, being in *maintainer mode* creates a great intuition for reviewing PRs and system designs, allowing you to spot potential future problems in both without needing to wait for things to play out in production. This will give you the confidence to make technical decisions that don't sacrifice the health of the software or the service to reach a local maxima since it's not a zero-sum game.

To sum up, both choices are good. I think in most instances people can mould their behaviour to either mentality based on the current needs of their productπ and team.

[^1]: [How open source maintainers keep contributors—and themselves—happy](https://github.com/readme/featured/contributor-relations)
[^2]: [Software evolution: the lifetime of fine-grained elements](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7959608/)


