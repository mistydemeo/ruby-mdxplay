ruby-mdxplay
============

Introduction
------------

ruby-mdxplay is a simple Ruby player for the Japanese X68000 computer's MDX music format. It's based on BouKiCHi's libmdxmini library and Daisuke "Breeze" Nagano's mdxplay.

MDX?
----
The X68k had a powerful FM synthesizer (YM2151 to the geeks), which was capable of some amazing synthy tones. Think of it as the big brother to the Sega Genesis. It is sweet, my friends.

If you need some tunes, you can grab the (almost) complete set at MDXOnline: http://www42.tok2.com/home/mdxoarchive/

Requirements
------------

Not many.

* Mac OS X. ruby-mdxplay only supports CoreAudio right now
* Ruby 1.9.3
* The following gems: ansi coreaudio ffi slop
* mdxmini (using Homebrew, `brew install mdxmini`) - https://github.com/BouKiCHi/mdxplayer/

Usage
-----

mdxplay songname [opts]

Options:

    -l, --loops        Number of song loops
    -q, --quiet        Don't print song name or show visualizer
    -h, --help         Display help
    -v, --version      Display version information

TODO (AKA: How can I help?)
---------------------------

This player won't see substantial revisions from hereon out. I wrote ruby-mdxplay as a way to learn FFI. I'm starting work soon on a new, cleaner, more awesome chiptune player that will support many more formats, more OSs, and all around be a greater experience. I recommend you try it when it exists.

Known issues:

* Certain song names can't be decoded, presumably because they use X68k-specific additions to the Shift JIS character set. If you wanted to help out, adding an X68k SJIS encoding would not go amiss.
* Certain songs (such as the _Nostalgia 1907_ soundtrack) cause CoreAudio errors. I'm unsure whether this is a bug in ruby-mdxplay, libmdxmini, or in the ruby-coreaudio gem.

FAQ
---

Q: That ASCII piano is awesome.<br>
A: Why thank you!

Q: That ASCII piano sucks.<br>
A: Use -q to silence printing of song names, playtime, and the piano.

Q: This song says it's going to play for 20 minutes. That seems like a long time.<br>
A: Some songs have buggy loop handling. Try adding `-l 1` to your commandline arguments.

Thanks
------

* Breeze Nagano, for the original Unix mdxplay (http://homepage3.nifty.com/StudioBreeze/software/mdxplay-e.html)
* @BouKiCHi, for the excellent libmdxmini (https://github.com/BouKiCHi/mdxplayer/)
* Ruby-FFI, for making linking to C libraries from Ruby not painful (https://github.com/ffi/ffi)

License
-------

ruby-mdxplay is licensed under the GPL v2 or later.
