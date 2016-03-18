### MP4v2 overview ###
The MP4v2 library provides an API to create and modify mp4 files as defined by ISO-IEC:14496-1:2001 MPEG-4 Systems. This file format is derived from Apple's QuickTime file format that has been used as a multimedia file format in a variety of platforms and applications. It is a very powerful and extensible format that can accommodate practically any type of media.

MP4v2 was originally bundled with [mpeg4ip](http://mpeg4ip.sourceforge.net/) library, but has been moved into its own maintained library due to a combination of the cessation of support of mpeg4ip and the usefulness of this library on its own.

### IRC ###
We haven't been using Internet Relay Chat much, and I'm open to alternatives that might be easier for everyone to use/monitor (e.g. something like hipchat?)  That said, if you still want IRC, discussions usually happen on **irc.freenode.net** (freenode network), channel **#mp4v2** . No spam please, and be reasonable; this is a free project worked on by volunteers in their spare time.


---

<a href='Hidden comment: BLOGS FOLLOW THIS POINT'></a>

<font size='3'><b>2.0.0 Release</b></font>

Major release that includes many, many bugfixes, new APIs for dealing with metadata, much better logging, improved performance and more.

<font size='3'><b>trunk-r479 snapshot</b></font>

Latest trunk snapshot. Documentation is available [here](http://mp4v2.googlecode.com/svn/doc/trunk/index.html). Overall, this is the best version to use [due to some compatibility issues with 1.9.0 and 1.9.1](http://groups.google.com/group/mp4v2/browse_thread/thread/c19e8203ac2a27f0/1192d9fac9ffcd87?lnk=gst&q=noring#1192d9fac9ffcd87). Users interested in iTMF Generic and Tags APIs should use this snapshot as there have been significant improvements in metadata support.  This version also contains a new logging interface, many bug fixes, compatibility improvements and significant performance gains.

<font size='3'><b>1.9.1 release</b></font>

Point release that fixes a minor issue with the build system and folks who add -ggdb3 to their CFLAGS. The reason for an actual release was more to test the release system - which appears to have worked great thanks to the wonderful documentation from KonaBlend.