---
title: Code Review Principles
date: 2022-01-25T14:55:31+11:00
tags: ["software"]
---

I have been thinking a lot about code reviews lately and the impact it can have on delivery for teams. Whilst not a topic that has never been touched before, I found the existing material either was too verbose or too much geared towards how to raise a PR rather than how to review them. In light of that, I have compiled a small set of principles to guide them for myself and I am sharing them here.

## Tag them

In principle, all comments should have a tag. A popular strategy is:

* nit ⚠️ - optional, feel free to ignore (e.g. [**nit**]: there is an extra space between these lines)
* followup ♻️ - not optional, let's ticket it, ship and come back (e.g. [**followup**]: Let's clean this file once xyz team finishes project abc)
* blocker 🛑 - fix it right now (e.g. [**blocker**]: this will make the code here run in O(n^2) instead of O(n) - let's discuss on zoom)

It's important to strike the right balance between code correctness and delivery, otherwise it can lead to unfortunate build - comment - fix - build - comment -build again purgatory. Following this approach not only makes the intention of the comments clearer to the PR owner, it makes you as a reviewer think aware of your comment. In several cases, you may find that the thing you were about to write off as a blocker is more of a follow up and that follow up is more of a nit.

## Avoid being vague

In general avoid making vague and *maybe* style comments (this is especially true for comments tagged as blocker). If you have an alternative to authors approach mention that, but hand wavy comments help no one. Whilst at it, I have noticed greater engagement when reviewers qualify their comment and think about the pros and cons of their suggestion - it implies that you're not simply ivory towering your way through the review.

## Confirm, then suggest

For most non-trivial suggestions (which should be all of them since we don't like nits so much) try to validate the proposed solution locally before suggesting. This is not a blanket rule and depends a lot on individual comfort with language, framework, tools etc. But, it's usually better to conserve the collective mental brainwidth of the team and wrong solution can end up wasting the reviewer and code owners time. Having a seperate copy of the project checked out and use that for code reviews. This approach simplifies separating dev environment from review environment.=

## Nit as an exception

Nits end up crowding the review. If it's a nit, it should appear if it adds value above and beyond adding it to a linter or the company/team code guidelines page would add. Yet, in saying that, there are grey areas. Not all languages lend themselves to a good automated linter and team guidelines can sometimes go stale. In these situations, having a social contract of sorts within the team where people acknowledge that nits are **optional** . Instead of adding 20 nits on a PR, grab the person who owns the change and walk them through the team code guidelines and add new ones where they don't exist.

## Prior Art

[Feedback Ladders: The Code Review System We Follow at Netlify](https://www.netlify.com/blog/2020/03/05/feedback-ladders-how-we-encode-code-reviews-at-netlify/)

[The (written) unwritten guide to pull requests - Work Life by Atlassian](https://www.atlassian.com/blog/git/written-unwritten-guide-pull-requests)

[How to do a code review](https://google.github.io/eng-practices/review/reviewer/)
