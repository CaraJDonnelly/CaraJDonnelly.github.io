---
id: 407
title: 'Daydream: Marooned on the other side of the Galaxy'
date: 2015-03-15T23:38:11+00:00
author: Cara Donnelly
layout: post
guid: http://www.toadworld.co.uk/?p=407
permalink: /daydream-marooned-on-the-other-side-of-the-galaxy/
categories:
  - Uncategorized
---
Let&#8217;s imagine you drop me on the other side of the Galaxy with a well-equipped starship. It can travel faster than light, even! What should I do?  The ship is well equipped with food-dispensers and oxygen and scientific equipment, but nothing intelligent &#8211; no ship&#8217;s computer that will understand the command &#8220;Take us out of orbit, computer&#8221;, no snazzy visualisations.  You drop me off with a pamphlet that explains this paragraph and nothing else.

Firstly, I suppose I might sit down and have a bit of a huge meal.  Pizza, with thick, thick cheese on top.  Nothing in life is worse after eating a big, thick pizza, (like Costco sells!).  Except when you&#8217;re trying to improve fitness, I suppose, and even then.

Second, I would define some goals.  I&#8217;d like to get home: I&#8217;m intensely social and being alone in a spaceship would be awful.

Third, I would try to remember everything I know about the Sun.  From memory, it&#8217;s not particularly special &#8211; a G-type main-sequence star that fuses hydrogen and helium.  Two ringed gas giants, neither of them Hot Jupiters &#8211; that is unusual.  The eight planets &#8211; &#8220;MVEMJSUN&#8221;, with a big gap between Mars and Jupiter with some rocky bits in.  I remember that Monty Python song&#8230; &#8220;Whenever life gets you down, Mrs Brown, and things seem hard or tough.  When people are stupid, obnoxious, or daft, and you feel that you&#8217;ve had quite enough&#8230;&#8221; gives the following figures:

  * The Earth is revolving at 900 miles per hour (relative to what?)
  * The Earth is orbiting at 90 miles per second &#8211; I can cross-reference this with the knowledge that the Earth is 8 light-minutes from the Sun and takes 365.25 days to complete an orbit.  I think lightspeed is 2.93e8m/s.
  * The Sun is moving at a million miles per day (relative to what?)
  * By the Sun the Milky Way is just 3000 LY wide.  Can&#8217;t remember how wide it is.

I remember also that the Milky Way doesn&#8217;t really move in Keplerian rotation (Omega ~ R^(-3/2)) but is something much slower than that, something like Omega ~ R^(-1/2).  That memory is suspect, so I&#8217;d want to try and cross-reference that. The Earth&#8217;s moon is about eight light _seconds_ away from the Earth, I think, and has one face pointing towards the Earth.  The Sun is also 10^30 grammes, I remember that much.  The mass of the Sun, together with the distance of the Earth and the Earth&#8217;s orbital period will let me work out G, the gravitational constant that appears in F = -GM/R^2.  No idea if that will be useful.  I remember that the surface temperature of the Sun is about 3 million degrees Kelvin, and that the specific heat capacity of water at STP is 4.2 joules/kelvin/gram &#8211; but the Sun&#8217;s corona isn&#8217;t acting like a black body so that might not be so useful.  I remember that the inner planets follow some nice integer series &#8211; something like the biggest planets have radii that go up as squares, something like 4, 9, 16, 25 for the larger planets, can&#8217;t remember which ones.  There are elements like Barium which have detectable signatures which can act like clocks.

OK.  I convert everything to metres and seconds; I think the spacecraft is using those units, but that&#8217;s something I&#8217;ll want to check when I come to plot a course or similar.

Can I recognise the Sun?  No idea.  I&#8217;m going to have to work out what &#8216;G-type&#8217; means from scratch.  OK.  Suns emit radiation in two ways: as part of a black-body spectrum (proportional to e^(-T^4), if I remember rightly &#8211; I&#8217;d know the spectrum if I saw it) and as part of electrons moving between shells which gives out peaks in the spectrum.  I remember astronomers use Gaussians to fit these peaks; the peaks will be Doppler shifted; I&#8217;ll need to take some observations and try to work out how fast the stars around me are moving.  I&#8217;ll need to work out Hubble&#8217;s law again (all I remember is that H = d/dt(log a), where a is the &#8216;size&#8217; of the fabric of the universe) and use this to work out which of the stars I see around me are actually inside the Galaxy &#8211; probably I can just throw away any stars which look like they&#8217;re retreating too fast.

I&#8217;ll want to automate all of this; the computer should be able to look at all stars around me and estimate their temperature (from the black-body radiation) and speed (from the Doppler shift &#8211; this will be kludgy because I&#8217;ll need to make assumptions about hydrogen and helium abundance, which I know nothing about).  For stars with large planets near them there will be a wobble in the axis because of the planet&#8217;s gravity as it orbits; I can eliminate any star that looks wobbly.  I can vaguely draw the Hertzprung-Russell diagram of temperature against mass; not sure that will help since I can&#8217;t remember any of the axes.

OK.  I think I can probably build enough of a(n automated) mental model of the Galaxy to program the computer to warp into an area, see if there are planets, and warp out again if not.  At least I can try.

&#8230;So, now what?  Do I just program in a list of all stars in some decreasing order of probability and visit them all as fast as I can?  I remember that Carl Sagan said in Contact that the Galaxy has four hundred billion stars in &#8211; that&#8217;s not _that_ many if I can get it down, to, say, ten billion stars from an estimate of what I can remember of the Sun.  If I can warp-in-check-the-star-and-warp-out in five minutes I could actually cover ten billion stars within a year.

&#8230;Is that safe?  I&#8217;m playing with an FTL drive, here, and all I learned about Special and General Relativity was undergrad and really not my forte.  I remember that for GR effects to be important for the Sun it&#8217;d have to be compressed to a really small thing, about a teaspoon&#8217;s worth, and I remember galactic simulations often neglect GR.  So let&#8217;s forget GR &#8211; except for black holes?  Damn, don&#8217;t want to crash into one of those&#8230; in fact, I don&#8217;t want to accidentally get anywhere _near_ one of those, or you get catapulted into the far future because of time dilation.

See, I want to not just get home, but get home no later than, say, two years of Earth-time.  Getting too close to a black hole and being flung into the future could really cramp my style.

So&#8230; let&#8217;s worry a bit about time travel.  Moving faster than light means you can travel in time, and it&#8217;s vital that you not interact with your past self: any interactions could do weird quantum shit that subtly change outcomes in a chaotic time-loop kinda fashion that will presumably eventually become stable.  Dead is stable.  So, whatever course I plot I need to make sure that I never arrive in my relative past, which is a lot harder than it sounds; if I&#8217;m in some location for ten minutes then that&#8217;s an expanding cone of light going backwards into that location&#8217;s past that I can never enter.  Sounds okay, but that location&#8217;s past is bound up in its _speed (I could never quite grok this)_, and so I&#8217;ll need to carefully make sure my computer keeps track of all this stuff for me and never lets me set a course which will intersect with my own past.  That&#8217;s probably six months of work right there.

So, so far I&#8217;m looking at spending a year not even moving, just programming my instruments to know what space and time are, and what stars are, and how not to blow up immediately when I set a course.

It gets worse.  Let&#8217;s imagine that I do all of this without making a fatal mistake and without going badly insane.  I arrive in the Solar system&#8230;

&#8230;and then what?  If I&#8217;m not careful, and depending on how my FTL drive works, I could have arrived in the very distant past of the Solar system.  Stable time loop, my ship might go boom because the universe hates such things (it doesn&#8217;t, you say?  How would you test this, with only one spaceship that you are currently sitting inside?).  I can never, ever interact with the Solar system&#8217;s relative past without running a risk of just exploding immediately.  It&#8217;s fine if the Solar system&#8217;s light hits _me_ &#8211; that&#8217;s time flowing forwards and is all well and good.  But because I don&#8217;t know which system is the Solar system to start with I don&#8217;t know how fast it&#8217;s initially travelling relative to me and so I don&#8217;t _know_ how much faster than light I&#8217;m allowed to travel without running in to possible go-boom-itude.

_At this point I threw this question at my housemate, CH, and she pointed out that the question depends on what &#8216;FTL&#8217; means.  If it means something like a Holly Hop drive &#8211; you can appear anywhere with any speed &#8211; that&#8217;s very different from accelerating to faster than light and then slowing down again &#8211; if the latter you will presumably fall afoul of the Twins Paradox and everyone you know on Earth will be dead by the time you get home because you&#8217;ve accelerated too much and your personal time has slowed down too much.  She also pointed out you could_ test _how the FTL drive worked by dropping preprogrammed beacons that try screwing with their own timelines and retreating to a safe distance &#8211; something that just hadn&#8217;t occurred to me._

So&#8230; let&#8217;s imagine I&#8217;ve managed to locate Earth.  It&#8217;s taken a while but here I am.  I turn on my radio and I hear&#8230; nothing.  The whole planet is a smouldering radioactive ruin. What should I do?  Should I work out when the apocalypse happened, add on a nice big safety margin and jump back to there?  Live out my life in peace in my own time and say nothing about the future?   Try deliberately to avert it?  What if I jump back and find myself in the midst of a nuclear war?

I would, at this point, eat a second pizza.

**Put yourself in this situation.  I maroon you somewhere in the galaxy with a spaceship with advanced enough controls that you can fly it.  What do you do?**