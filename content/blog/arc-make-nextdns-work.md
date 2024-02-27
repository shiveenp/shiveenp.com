---
title: Make Next DNS work with Arc Browser
date: 2024-01-29T13:59:31+11:00
tags: ["tools"]
---

I recently jumped on the bandwagon (again) for [Arc](https://arc.net/), as I'm really not feeling Chrome's changes to shovel more ads down
users throats.

One of the little pieces of set and forget software that I really like is [NextDNS](https://nextdns.io/). I have been using
them for coming up to 3 years now. The way I use it on my Mac is via profiles, which means it should be available
to any app that uses system dns. Chrome doesn't follow system dns but the setting is easily avaiable in preference. However,
I couldn't find anything that allowed me to change this setting readily in Arc, since their settings panel is kinda sparse. which resulted in:

<img src="/img/no-next-dns.png" alt="Image showing no next dns configured for ARC">

However, you can override the macos system dns settings to make it work. Just run:

```shell
defaults write company.thebrowser.Browser BuiltInDnsClientEnabled -boolean false
```

and just like that, my boi is back again

<img src="/img/yes-next-dns.png">
