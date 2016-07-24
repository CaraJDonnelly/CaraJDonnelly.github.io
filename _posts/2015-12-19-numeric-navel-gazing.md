---
id: 575
title: Numeric Navel Gazing
date: 2015-12-19T11:13:07+00:00
author: Cara Donnelly
layout: post
guid: http://www.toadworld.co.uk/?p=575
permalink: /numeric-navel-gazing/
categories:
  - fiction
  - software
tags:
  - adwords
  - adwords express
  - analytics
  - bounce
  - cloudflare
  - wordpress
  - writing
---
I&#8217;m still fiddling with my website, trying to get my bounce rate down so people read my stories.  Here it is rate again after adding caching to WordPress, cutting down my blurb, and making my advert more direct, all on the 6th of December:

[<img class="aligncenter wp-image-576 size-medium" src="http://www.toadworld.co.uk/wp-content/uploads/2015/12/bounce_again-300x155.png" alt="Spiky graph of bounce rate over time showing decrease in bounce rate around 6th December." width="300" height="155" srcset="http://www.toadworld.co.uk/wp-content/uploads/2015/12/bounce_again-300x155.png 300w, http://www.toadworld.co.uk/wp-content/uploads/2015/12/bounce_again.png 498w" sizes="(max-width: 300px) 100vw, 300px" />](http://www.toadworld.co.uk/wp-content/uploads/2015/12/bounce_again.png)(I think Monday 14th December, where bounce rate goes to zero, is nonsense data caused by me running a speed test against toadworld.co.uk &#8212; a speed test loads your page a lot of times to take the average to work out how fast it is.)

I decided [last time](http://www.toadworld.co.uk/bounce-write-wiggle-wiggle/) I wanted my bounce rate, my rate of disinterest in my stories, to approach 60%.  To put it another way, that would be 40% of people who clicked on my advert then deciding to click on another page on my website, presumably the first chapter.  Looking at this graphs makes me want another thing, too: less spiky graphs.  Spiky graphs are really hard to read.  At least, I want graphs without days where absolutely every new visitor clicks once then leaves.

Right now my average bounce rate is about 88%, so if, say, I decide I want there to be only about one day a month where every user bounces, I&#8217;d need about 26 new visitors a day, and I have about 15 new visitors a day.  I could rewrite my advertising copy again (or run an A/B experiment on Google AdWords, where you run two adverts at the same time and see which one is more popular) or I could increase my advertising spend.  I&#8217;ll not just throw money at something if there&#8217;s a more nuanced approach.

Today I also activated CloudFlare, which is a service which mirrors your website across many servers worldwide.  Previously my servers were only in North America, so visitors from the UK, _where my advert runs_, were getting load times of about 4.5 seconds, which is _really slow and frustrating_ given that the content is a story i.e. just text.  Activating CloudFlare has reduced that to about two seconds, and a lot of the tail of that is loading my logo.  My logo is 200kB, and for comparison Google&#8217;s logo on their search page today for me was 13kB, fifteen times smaller.  HSBC&#8217;s was an astonishing 1.13kB, almost 200x smaller than mine.

(If I reduced my bounce rate to 78%, I&#8217;d only need 14 visitors a day to only get one completely washed-out day a month.)

So, my current plans:

  * Wait to see the effect of CloudFlare&#8217;s speed-up.
  * Make a new, smaller, logo.
  * Run an A/B experiment on AdWords (this step is quite labour intensive, since currently I use AdWords Express, which handles all of the bidding etc. for me).
  * Tweak the appearance of the landing page, because currently the header looks weird.

and my new, revised goals:

  * Increase number of new visitors to a minimum of 14/day.
  * Reduce bounce rate to 70%.

(To put that another way, that&#8217;s four people each day reading my blurb and clicking on a link to read a bit of my writing &#8212; the point of the whole thing!)