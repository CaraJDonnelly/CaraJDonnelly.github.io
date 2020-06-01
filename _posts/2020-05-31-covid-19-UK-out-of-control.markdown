---
title: COVID-19 and the loss of control in the UK
date: 2020-05-31
author: Cara Donnelly
layout: post
categories:
  - personal
tags:
  - covid-19
  - lockdown
  - coronavirus
---

I'm going to share my understanding of the current state of the UK.
Epidemiology is not my specialty.
So please understand that I am writing this post only as a member of the public.
It certainly does not represent the views of my employer.

I am concerned by inconsistencies in the data published by the UK Government.
I am concerned as well by current UK Government policy.
In this post I express concern that it is too soon to ease the UK lockdown.

## The current state

Today (2020-05-31) I estimate there are 29,500 people in the UK currently
infectious with COVID-19.
I make this estimate as follows:

*  I have noted the current total from coronavirus.data.gov.uk daily;
*  I subtract the current total from the total 14 days ago.

This is my estimate because a case of COVID-19 lasts around 14 days.
Any cases that started before then will have recovered or sadly died.
Some cases last longer, but this would only make my estimate larger. 
So I'm comfortable saying there are at least 29,500 people currently infectious in the UK.

This number of 29,500 is lower than the UK peak of 69,500 of infectious people.
I estimate this to have been on 2020-04-20.
Halving the number of infectious cases took until 2020-05-27 or five weeks.
This is called the halving time.
However, before lockdown, cases were growing.
The time it was taking before lockdown for cases to double was three days.

Together, three days spent out of lockdown costs five extra weeks of lockdown.
This is a simple and rough approximation and I am not an epidemiologist.
In particular if people maintain social distancing the spread will be slowed.
If there is an effective track and trace system the spread may be slowed.

I am concerned that it will take two weeks to determine whether UK policy has been effective.
If not, we may need an extra 23 weeks of lockdown to regain our **current** position.
This is because we will have had 4.7 doublings, and so need 4.7 halvings.
A halving takes five weeks, so 4.7 halvings is 23 weeks. 


## Inconsistencies in published data

### Missing regional data

Different regions evolve differently.
A more dense region might see a faster spread of COVID-19.
However, we can estimate the currently infectious cases in all regions.
Here's an estimate for all of the UK and for London on the same graph.

!["A log plot showing both the UK and London increasing exponentially then both
peaking.  London's graph then exponentially decays while the UK's graph almost
constant"](/images/2020-Q2/2020-05-31-slow-uk-decay.png "UK and London currently
infectious")


You might expect that if we could add up all these regional lines, we would get
the UK line.
However, this is not what we get.
This is because **one third** of cases are not accounted to a country in the UK.

!["A screenshot of coronavirus.data.gov.uk with the UK total cases highlighted,
and the total cases for each natino highlighted. The sum of the nations
adds up to only two thirds of the total UK number."](/images/2020-Q2/2020-05-31-dashboard-inconsistent.png "UK Government
Coronavirus dashboard annotated")

You can see that as of today there have been 274,762 confirmed cases in the UK.
In England there have been 34,272 confirmed cases.
In Northern Ireland there have been 4,716 confirmed cases.
In Scotland there have been 15,400 confirmed cases.
In Wales there have been 13,995 confirmed cases.
These four national numbers sum to 186,287 which is far short of 274,762.

The dashboard notes that the larger number includes tests "carried out by commercial partners".
I am concerned that each region appears to be recovering, but one third of the data is missing.
This missing data seems to be the contribution that means the UK's cases are decreasing very slowly.
I have written to the dashboard maintainers and received no response.


### Incorrect 'new cases' number

The coronavirus.data.gov.uk publishes a new total number of cases each day.
It also publishes the change in the total number of cases that day.
However, I have noticed that these data disagree.
On 2020-05-26 there were 265,227 cases reported, of which 2,004 were new.
However, the day before the reported cases was 261,184.
`261,184 + 2,004` does not equal `265,227`.
There are around 2000 extra cases.

2000 extra cases is not a small number.
We went from 100 cases to 10,000 cases in 21 days in March.


## No trust in the UK Government

### Excess deaths

Excess deaths are deaths that are 'excess' or extra compared to the previous
five years.
The Financial Times reports that [the UK has had 59,500 excess
deaths](https://www.ft.com/content/a26fbf7e-48f8-11ea-aeb3-955839e06441) during
the COVID-19 crisis.
In comparson, Germany has had 7,300 excess deaths.
France has had 24,400 excess deaths.
The UK is handling this crisis worse than our near neighbours and allies.

### Rule of Law

There is low trust in the UK Government due to Prime Minister Johnson's senior
political advisor [Dominic Cummings appearing to have broken the law by breaking
the lockdown policy he helped draft and impose by driving over 500 miles whilst
sick with a deadly virus, having then refused to resign, and the Prime Minister
Mr Johnson having refusing to fire
him](https://www.bbc.co.uk/news/uk-politics-52784290) despite [45 Tory
MPs calling for him to
resign](https://www.theguardian.com/politics/2020/may/27/list-grows-of-tory-mps-calling-for-cummings-to-resign).

### Muddled Communications

[Matt Hancock, the current Health Secretary, today
announced](https://twitter.com/MattHancock/status/1266995931439943683) the following:

> Now we’ve flattened the curve & reduced new infections, from tomorrow
> [2020-06-01], the 2.2 million people who have been shielding can safely go
> outside
>
> I know how much those shielding have sacrificed. Thank you to everyone who has
> protected our NHS & saved lives

The most vulnerable in the UK have been told to 'shield' i.e. self-isolate.
This is because that they are at high risk of death if infected.

Mr Hancock's guidance here directly [contradicts the UK Government
advice](https://www.gov.uk/government/publications/guidance-on-shielding-and-protecting-extremely-vulnerable-persons-from-covid-19/guidance-on-shielding-and-protecting-extremely-vulnerable-persons-from-covid-19).
This advice states shielding should continue until 2020-06-30 and that those shielding

> stay at home at all times and avoid any face-to-face contact

This is troubling as Mr Hancock is the Health Secretary. 
There is no reason why his announcements should differ from Government advice.
Recall a disrepancy of four weeks in dates represents *nine* doubling periods.
Every day is important.
It is also misleading to say that someone extremely vulnerable is now 'safe'.

## Summary

I am concerned that the UK lockdown is being eased when:

*  cases are still higher than when we entered lockdown (see above),
*  33% of the data has no location data (see above),
*  [the track-and-trace system is struggling to
   launch](https://www.ft.com/content/a9f53bf8-7fac-45b6-b5d3-805d903b4044),
*  [the expert group SAGE says it is too soon to ease
   lockdown](https://www.bbc.co.uk/news/uk-52858392),
*  [an independent expert group "Independent SAGE" has
   formed](http://www.independentsage.org/who-is-on-the-independent-sage/),
*  [the independent SAGE says it is too soon to ease
   lockdown](http://www.independentsage.org/read-the-key-recommendations/),

and trust in the UK Government is so low.
Low trust means that if the UK Government needs to re-tighten lockdown it might be ignored by the population.
A [YouGov poll regarding Mr
Cummings](https://yougov.co.uk/topics/politics/articles-reports/2020/05/29/how-dominic-cummings-lockdown-travels-changed-publ) reports that

> 70 per cent of the public think this debacle will make life harder for the
> Government to get across any future lockdown messaging. Just 18 per cent say
> that it won’t make any difference. This feeling isn’t just constrained to
> those with an axe to grind against the Government either – majorities across
> all regions, ages, political persuasions and social grades polled by YouGov
> showed that they think that the Cummings row has worsened the Government’s
> hand when the next change in messages comes.

When the Health Minister contradicts his own department's advice;
when the expert group warns against the Government's plan;
when another expert group forms despite the confusion it will cause;
when a senior advisor to Prime Minister Johnson flouts the lockdown;
when the Government refuses to enforce its own rules and keeps him on;
when track-and-trace isn't yet ready;
when the data are inconsistent;
when infectious cases are still high;
it is clearly not the time to ease the UK's lockdown.

What needs to happen:

*  The track-and-trace app needs to be deployed and be shown to be working;
*  Dominic Cummings needs to apologise and resign;
*  The UK Government needs urgently to clarify its instructions to the public.

## Postscript

In this post I have avoided talking about devolution.
However, I am aware that health is a devolved matter.
I believe I have used 'UK' accurately throughout throughout.
For simplicity, I have not been more specific about what parts of UK Government policy apply only to England.

