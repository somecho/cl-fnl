# cl-fnl

Common Lisp bindings for [FastNoiseLite](https://github.com/Auburn/FastNoiseLite) generated with [cl-autowrap](https://github.com/rpav/cl-autowrap).

## Usage 

This project is as yet not on Quicklisp. Using these bindings require a few steps.

### Step 1 - Cloning Repository

Clone this repo to your a place where you like. 
```sh
git clone https://github.com/somecho/cl-fnl
```

### Step 2 - Loading cl-fnl

You can quickly add cl-fnl to your project like so:
```cl
(load "/path/to/cl-fnl.asd")
(ql:quickload :cl-fnl)
(asdf:load-system :cl-fnl) ;; if you do not use Quicklisp
```

### Step 3 - Loading libFastNoiseLite 

You need to have FastNoiseLite built on your system. As the C implementation FastNoiseLite is a header only library, you will need a `.c` file to compile it. A `.c` implementation file is provided at `./src/spec/FastNoiseLite.c`. Then you can build it (on Linux) with `gcc -fPIC -shared -o libFastNoiseLite.so FastNoiseLite.c`. Once the shared library is built, you can add this line to your project:

```cl
(cffi:load-foreign-library "/path/to/libFastNoiseLite.so")
```

Make sure to adjust the extension name of the shared library to your specific platform.

### Examples

An example of how to use the bindings are found [here](./src/examples/usage.lisp).
