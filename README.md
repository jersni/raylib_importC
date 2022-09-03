# raylib_importC
Figured out how to build Ki Rill's importC example on Windows

https://www.youtube.com/watch?v=1BrvRkZdGOA

Things that weren't obvious to me:

* Use sppn from the Digital Mars C compiler to preprocess raylib.c (how do I tell sppn where to look for raylib.h?)
* Compile, then link with raylibdll.lib and the generated obj files (can I do this in one step?)
* raylib.dll must be available to the exe file for the thing to run
