---
title: Balancing strategic vs tactical work in software engineering
date: 2024-05-19T11:42:31+11:00
tags: ["productivity", "software"]
---

I have been thinking about a sapling of an idea for a while now. It all started when I was helping my team at work with several important projects over the past few months. The basic idea I’ve been playing with is that in software engineering, there is a tension between things that are important in the short term and things that are important in the long term. Switching between these two levels of *mental context* can be (or was for me) challenging. For the sake of simplicity, I call the work to be done for the longer-term “strategic” work and the work to be done for the short-term “tactical” work.

ICs that have progressed far enough in their career are always making a tradeoff between these two abstract levels of work. This results **in a single day** from dealing with strategic concerns such as product direction and architectural fitness to tactical concerns such as our deployment pipeline can’t handle integration tests with a new database. Consequently, one might be in a whirlwind of context shifts daily. There is a similar enough parallel here to the now famous PG Essay on Maker vs Manager Schedule [^1].

However, whilst it’s easy to know the difference between manager vs maker schedule and work around it, this might not always be the case between strategic and tactical work. For example, on a given heavy meetings day I might have a calendar that looks like this:

![Image showing a packed day of meetings](/img/example-packed-calendar.png "Busy meeting day")

and I instantly knew today would be running on a manager’s schedule. Usually, I can anticipate well in advance (I say usually because sometimes things happen, like an incident at work, and the fallout can throw a spanner in everything) and plan around it. I can bunch up admin tasks in between the meetings or small coding tasks like updating a yml file to use a more efficient AWS instance in a region on prod — things that require minimal context loading in my brain and are on auto-pilot for me.

Similarly, during my weekly review, I can identify my core “maker” schedule days, and depending on my top tasks for the day/week, I can schedule things to maximise context and focus.

Now the problem arises within the context of these days and it doesn’t matter whether it’s on a manager or a maker day. I have to be switched on and go from “stratosphere to mantle” on different topics.

> Easy to differentiate and control manager and maker days, hard to do so with strategic and tactical context of thinking

There might be a meeting about our next quarter’s engineering planning where I need to zoom out and look at projects to deliver a coherent vision as Lego blocks. But then there might be a meeting right after that might pull me into the weeds of why the calls on a specific REST endpoint run slower when the same call manages a decent response latency when made via graphql.

In the same way, on my maker days, I might have to think between coming up with answers for a system-wide integration of a new greenfield service and figuring out why the headers sent by service X are not being parsed by the service(s) we run and manage.

Unfortunately, there are no concrete rules to follow (unlike maker vs manager schedule) to allow an easy transition between these two states. And I am trying to figure this out myself.

That said, a few techniques have helped me here in the past. These include:

## Context

Have “context docs” running for everything. This is my top tip. You might be better than me and be able to hold a lot of context, but my brain is a bootleg NVRAM, and not much survives soft resets (a soft reset happens anytime when I have looked away from the problem for > 20 minutes) here. So, I keep context logs of everything so I can quickly return to them when necessary. It can be as simple as a piece of paper or as complicated as an obsidian database, whatever floats your boat.

## Morning vs evening blocks

Even within strategic and tactical work, it can be divided between doing discovery work vs known work. Discovery work involves figuring stuff out before you can put the approach or implementation on paper. Whereas known stuff is what you can derive from your existing knowledge. When possible, I keep any discovery-based strategic or tactical work in the morning vs keeping known work in the evening. I find mornings work better because I am open to more ideas and can spin my gears better. This might be different for you, so do what works. The core idea is to keep discovery-based S/T work at the time when you find most of your creative juices flowing. Planning is critical here.

## Batch, batch, batch

This is an obvious one, but if possible, batch Strategic or Tactical work. This is not quickly done, but based on your specific role or job profile, batching work, similar to a maker vs. manager schedule, can reap huge benefits.

## Acceptance

Finally, but perhaps most importantly, be okay with being interrupted. I think the biggest flaw in over-optimising this flow (which I have done to myself a few times as well) is to over-index too hard on when you need to be doing strategy vs when you need to be deep in the code trenches. Sometimes, shit just happens and you gotta roll with it. Keep that perspective.

[^1]: https://paulgraham.com/makersschedule.html
