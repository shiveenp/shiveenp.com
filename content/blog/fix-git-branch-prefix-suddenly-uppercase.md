---
title: Fix Git Branch Prefix Uppercasing
date: 2024-01-29T13:59:31+11:00
tags: ["software", "git"]
---

## Context

Sometimes git gets confused and uppercases the branch names. This happened to me today while I was working on a bug and
on git checkout `issue/*` prefix kept getting renamed to `ISSUE/*` and this usually breaks the auto build mechanism at work for me, since we have
it configured to look for a particular regex. This is not a particularly complex or even a unique problem, but I encounter it so infrequently (second time now),
that I thought its worth just writing about even if for my own reference.

## How to fix
First step is to fix the refs. This is taken from this [thread](https://stackoverflow.com/questions/15371866/why-is-git-capitalizing-my-branch-name-prefix):

```shell
cd .git/refs/heads
mv ISSUE issue
```

the command above should fix the issue ref (folder) name so new issues don’t have the uppercased prefix.

Now, we tackle existing branches. If a branch has been created but not pushed do:

```shell
git branch -m <old_name> <new_name>
```

My git complained that there was already a branch with an existing name when all i did was change the branch name from `ISSUE/existing-branch-name` to `issue/existing-branch-name` so I renamed it as `issue/existing-branch-name-2` (same name but with a prefix).

however, if a branch has been pushed, after the previous step do the following:

```shell
git push origin -d <old_name>
git push origin <new_name>
```

this will fix up any broken branch names already pushed, whilst preserving the changes.

That should fix it up nicely ✅
