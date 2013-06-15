# Ruvy

Experimental FFI bindings for Libuv

## Goal

Create a ruby version of node.js :D

## Why FFI Bindings?

[Libuv](https://github.com/joyent/libuv) is a project that move very very fast and write a C wrapper
will require a big amount of time. So instead I did a custom version [this great project](https://github.com/neelance/ffi-gen)
[here](https://github.com/daddye/ffi-gen) in order to generate easily an updated wrapper around 
[ruby ffi](https://github.com/ffi/ffi) to provide a direct interface to [Libuv](https://github.com/joyent/libuv).
Future more I'll provide an higher level API in [node.js](http://nodejs.org).

## Author

DAddYE, you can follow me on twitter [@daddye](http://twitter.com/daddye) or take a look at my site [daddye.it](http://www.daddye.it)

## Copyright

Copyright (C) 2011 Davide D'Agostino - [@daddye](http://twitter.com/daddye)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

