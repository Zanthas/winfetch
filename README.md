###History
---
This is version 3.0.0 of CMDFetch. CMDFetch is a clone of screenfetch/screenfo for Windows written in Lua. CMDFetch was written as a batch file and distributed with proprietary binaries until version 2.0.0. Version 2.1.5 was re-written from the bottom up as version 3.0.0 with several new features. Version 2.1.5 can be obtained at http://sourceforge.net/projects/cmdfetch/ and versions 2.1.4 and under can be obtained at http://cmdfetch.inb4u.com/. CMDFetch was originally written before screenfetch supported Cygwin, to this day it retains features that screenfetch doesn't have. Version 3.0.0 is source independant of versions predating 2.0.0 like Winfetch, but is a continuation of the project and contains fragments of code from versions after 2.0.0. 

###Arguments:
---
```
  -h, --help            Write what you're looking at to the output
  -c, --color COLOR     Change the color of the logo
                             red, yellow, green, blue, violet
                             black, white, none, cyan, rainbow
  -l, --logo LOGO       Change the logo
                             windows8, windows7, none
  -b, --bright          Use only bright colors
  -d, --dull            Use only dull colors
      --showWarning     Show the Ansicon/Cygwin PTY warning.
  -a, --align           Align the lines
  -s, --stripe [4>#>-1] stripe the colors for the logo in the manner of screenfo
                            Argument: 0: do not stripe (auto)
                                      1: stripe vertically
                                      2: stripe horizontally
                                      3: stripe diagonally
  -B, --block [#>0]     use a stripe step as high and/or as wide as the argument
                            Default: 1
  -L, --lefty           Flip the logo and information
  -C, --center          Center information vertically relative to logo
  -2, --256color        Use 256 colors
  -1, --18color         Force use of 18 colors, do not allow automatic switching
  -D, --down            Position the logo at the bottom of the information
```
###Requires:
---
+  A lua interpreter:
   https://code.google.com/p/luaforwindows/
   This will install Lua in Windows.
   After installation you can use "lua source.lua" to run cmdfetch
   in your favorite shell or CMD.
   [ http://www.mediafire.com/?eku77kh2i9f14pm ] 
   This is a packaged Lua binary, keeps the footprint ultra small.
   Unzip it into this directory, and you can start it
   with "lua source.lua" from your favorite shell or CMD.
+  A method of ANSI escape codes:
   http://adoxa.3eeweb.com/ansicon/
   This is an application that adds ANSI escape codes to CMD
   After you download it, run it and you can use it as you would CMD

>NOTE: Any Cygwin PTY will do instead of this, and you can use
>another shell. The Cygwin Terminal or "Mintty" is installed with
>the Cygwin base and works fine, you can use a Cygwin built Lua, too
###Screenshots:
---

<p align="center">
	CMDFetch with all lines enabled in the config and the help page
	<img src="http://goput.it/u29z.png" alt="CMDFetch"/>
</p>
<p align="center">
	CMDFetch in bash in cmd, plain config and no arguments
	<img src="http://goput.it/g3kw.png" alt="CMDFetch"/>
</p>
<p align="center">
	CMDFetch in cmd with ansicon, plain config and no arguments
	<img src="http://goput.it/h3po.png" alt="CMDFetch"/>
</p>
<p align="center">
	CMDFetch in urxvt, plain config and a few arguments
	<img src="http://goput.it/2jvh.png" alt="CMDFetch"/>
</p>
<p align="center">
	CMDFetch in mintty with a Windows 8 logo and a few arguments. 256 color support visible.
	<img src="http://goput.it/5lal.png" alt="CMDFetch"/>
</p>
<p align="center">
	CMDFetch in urxvt with all lines enabled in the config and several arguments. 256 color support visible
	<img src="http://goput.it/0miy.png" alt="CMDFetch"/>
</p>