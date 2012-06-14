**installation instructions:**

Go to [http://nodejs.org/#download](http://nodejs.org/#download) and download the installer.  
open a command prompt and type `npm install -g coffee-script`  
type `coffee` to start the repl.

About this workshop:

* Get a good text editor! You'll need an editor where you can use tabs as spaces, and
preferably see where the tabs are. I use TextMate, but Sublime Text 2 is free and
should suffice.
* As hinted above, in coffeescript, white space is very important. If you use tabs
the compiler will produce incorrect output. So switch your editor to use spaces instead
of tabs.
* You don't need to install node.js to use coffeescript. The compiler is written in 
coffeescript, which means you'll need a javascript runtime to compile your code. 
The official compiler uses node.js however, and so does the repl so i'd advise you
to install it. The installation steps above will do this for you.

**useful commands**
`coffee` - start the interactive repl
`coffee [filename]` - run the provided coffeescript file
`coffee -p [filename]` - print out the compiled javascript from the provided coffescript file
`coffee -c [filename]` - compile the provided coffeescript file and write it out to a similarly named file