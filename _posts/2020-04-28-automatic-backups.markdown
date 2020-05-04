---
title: Automatic local backups
date: 2020-04-28
author: Cara Donnelly
layout: post
categories:
  - personal
tags:
  - backups
  - raspberry pi
---


I'm between jobs right now so am finally sorting out my automatic backups.
I started this process two hard drive crashes ago.
This means I lost a bunch of photos and old story drafts and music backups.
Some part of me thinks that this is not so bad; it can be healthy to forget.
But I didn't intend to forget those things, so here is what I'm finally doing.
I wrote up what I've done below, but you shouldn't do any of it.

The reason you shouldn't do any of this is that I did completely the wrong thing.
I wrote my own solution using low-level tools rather than using the robust tooling available.
I have raised [a feature request on Launchpad to prompt to set up automatic backups](https://bugs.launchpad.net/ubuntu/+source/ubiquity/+bug/1876751).

A fresh Ubuntu install has to make choices about what software it includes.
I assume the target user wants a personal computer with an office suite and nothing else.
LibreOffice is installed by default, as is Rhythmbox and Totem.
It doesn't have `vim` nor `emacs`, `git`, `ssh`, or `python`, so it's not targeting software engineers.
It also doesn't have `[glimpse](https://glimpse-editor.org)`, `inkscape`, or `audacity`, so it's not targeting visual or audio artists.
I think this is an area where Ubuntu could make improvements with a few extra prompts during install.

# Hardware

My backups need the following hardware.

*  Linux computers to be backed up linked to --
*  A home network linked to --
*  A Raspberry Pi linked to --
*  A powered USB hub linked to --
*  Two external drives.

Last time I tried to set this up I missed out the powered USB hub.
This meant I corrupted the drive I was trying to backup onto.
This deleted some data I couldn't replace!
This time I'm using a USB Hub and two drives.
I hope that I can't corrupt them both simultaneously.
There are lots of common components that could still fail.

# Method -- Hardware

Plug the hardware in as above.

# Method -- Software

The goal is to get the Raspberry Pi to copy backups periodically.

## SSH keys

I followed [a short guide to let my Raspberry Pi access my laptop without a password](https://superuser.com/questions/555799/how-to-setup-rsync-without-password-with-ssh-on-unix-linux).
I needed to do this for both solutions I ended up with.

## Backups with deja-dup

This is what I should have done from the start.
Ubuntu has a pre-installed backup manager.
It would have cut out about half of the steps.
I have raised a feature request to [prompt to set up backups on install](https://bugs.launchpad.net/ubuntu/+source/ubiquity/+bug/1876751).

## Backups with cron

I'm going to run two backups: one daily, and one weekly.
I'm going to do this using `cron`, a program used for scheduling tasks like this.
I considered using `anacron` which is for tasks when you don't mind when they run.
My Raspberry Pi is always on, so I don't need the extra functionality from `anacron`.
I'd like to have two backups in case I accidentally delete a lot of files.

I created a script `/usr/bin/backups` that could copy files using `rsync` if you gave it the right arguments.
Then I created another script `/etc/cron.daily/backups` to invoke this first script.
Actually I created two invocations: one to do daily backups, and one to do weekly backups.

I'd rather all of the actuation happen on the Raspberry Pi side.
This is because if a problem develops it's more likely to develop with the computer I use every day.
This step was frustrating.
`rsync` would give an error message requesting to be run as a daemon (a background process).
I did not need to run `rsync` as a daemon.
The problem was that I had inline comments on each `--exclude` and my script was failing to parse correctly.

### Monitoring with sendmail

I want to know if my backups stop working.
This is because if something isn't monitored it eventually breaks.
I made the backup script above write a timestamp to a file if it succeeds.
If the timestamp in that file gets too old, that means my backups have stopped.
I wrote a short script to compare that timestamp with the current time.

If the backups get too old I've set up my Raspberry Pi to email me.
This was incredibly frustrating.
There are too many options for sending email from the command line on Unix.
Most of them seem to have some severe limitations as well.
I tried using `mailx` and `exim`.
The solution that worked for me was to [set up SSMTP to send emails](https://www.howtogeek.com/51819/how-to-setup-email-alerts-on-linux-using-gmail/).
SSMTP allows you to specify SMTP servers to send your emails through.
Sending emails directly from my machines were rejected by my recipients.

Setting up SSMTP was frustrating.
The mail clients I used would freeze at the point of sending email.
There was no debug logging from these mail clients.
Eventually I found I had specified the wrong port on my SMTP provider.
After setting up SSMTP with the correct port, using the `sendmail` command Just Worked.
I do not know why it worked; I am surprised it knew to read the SSMTP config without being told.
This is still frustrating.

Email handling on Linux seems to be user-hostile.
If you are maintaining an email client on Linux, please consider deprecating your project.
There are too many and none of them work very well.

### Monitoring with sendmail again

While I'd rather all actuation happen on the Raspberry Pi, I don't want to only monitor from there.
If a problem with the Raspberry Pi develops, I want to learn about that too.
So I'll also run my monitoring script from my desktop.
I wouldn't tolerate duplicate alerts in a production environment.
I guess it's fine here.
I've set the remote monitoring script to be less sensitive than the local one.

## Summary

Now I have two backup hard drives that automatically pull data from my main personal computer.
If my cron backups stop working, I'll get an email.
If deja-dup stops working, I assume it will tell me.

## Retrospective

What went well?

*  Achieved goal of regular automatic backups,
*  Re-familiarized myself with various \*nix tooling. 
*  Didn't spin up a minicluster.

What could have gone better?

*  Should have asked for advice about how to do this easily, then [read Ubuntu's documentation about backups](https://help.ubuntu.com/community/BackupYourSystem), then just used [Déjà Dup](https://wiki.gnome.org/Apps/DejaDup/Details).  Ths would have saved me 2-3 effort days.  It's not exactly how I'd like things to be structured, but the right choice here was definitely to use the provided tooling.
*  Ubuntu installation should prompt for installing most popular packages or setting up backups.
*  Unclear on cost/benefit of how robust all this needs to be.  Are memories a good thing?
*  Didn't spin up a minicluster.

Alternatives considered:

*  Could have used `sshfs` rather than `rsync`; would still use `rsync` for backups, though.
*  Could push to some external cloud-based storage.

