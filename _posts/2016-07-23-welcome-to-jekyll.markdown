---
layout: post
title:  "Server migration to GitHub/Jekyll!"
date:   2016-07-23 13:55:37 +0100
categories: jekyll update
---

I finally bit the bullet and migrated from BlueHost/WordPress to GitHub/Jekyll.  This made this site literally ten times faster to load.

WordPress uses PHP, which is usually a very slow interpreted language.  Because my site hosts stories with all sorts of complicated cross-references (stories, chapters, subchapters) I was making PHP do a lot of work.  Pingdom.com reports my old site would take 2.31s to load the front page.  I refer to the [Nielsen Norman Group][latency-ref]: < 0.1s is 'instant', < 1s is 'okay', and anything more than 1s is bad.  My own monitoring showed that sometimes BlueHost/Wordpress would take more than 5s to load the front page of my website.  That's awful.

Jekyll does all of the cross-referencing in one go before I upload a change.  This means GitHub has a much simpler job when serving my data (RAM-bound rather than CPU bound).  Jekyll is also more of a 'power tool' than WordPress.  A user of Jekyll is expected to know how to write raw HTML and understand how to write their own sensible data structures for iterating over.  This meant the optimisations that were too hard to do to my WordPress site were 'easy' on my Jekyll site.

('Easy' here means "I wrote a git precommit hook to stat the age of the cached javascript..." etc. etc.)

Now this site loads in 0.255s.  That's almost 'instant'!  Thank you Jekyll!  Thank you GitHub pages!

[latency-ref]: https://www.nngroup.com/articles/powers-of-10-time-scales-in-ux/ 
