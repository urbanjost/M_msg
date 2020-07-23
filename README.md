# NAME
## M_msg - convert any scalar type to a string using unlimited polymorphic variables

## DESCRIPTION
This is a small module that can convert a list of variables of any of
the most common default types to a string.

It performs such a low-level operation that it is likely to be a
dependency of other larger modules so it is in its own module to prevent
circular dependencies.

## BUILDING THE MODULE
A conventional *nix install:

```bash
     git clone https://github.com/urbanjost/M_msg.git
     cd M_msg/src
     # change Makefile if not using gfortran(1)
     make
```
This will compile the Fortran module and basic test
program and run the test and display the manpage for the routine.


## SUPPORTS FPM (registered at the [fpm(1) registry](https://github.com/fortran-lang/fpm-registry) )

Alternatively, download the github repository and build it with 
fpm ( as described at [Fortran Package Manager](https://github.com/fortran-lang/fpm) )

```bash
     git clone https://github.com/urbanjost/M_msg.git
     cd M_msg
     fpm build
     fpm test
```

or just list it as a dependency in your fpm.toml project file.

     [dependencies]
     M_msg        = { git = "https://github.com/urbanjost/M_msg.git" }


## INSTALLATION


## USER DOCUMENTATION
   - a simple [manpage](https://urbanjost.github.io/M_msg/str.3.html) in HTML form


## ADDITIONAL DIRECTORY DESCRIPTIONS
There are 

   - source for the M_msg(3f) module in src/
   - manpages in the man/man3 directory 
   - HTML documentation in the docs/ directory.
   - test/ contains a simple test program
   - build/ contains files generated by the fpm(Fortran Package Mananger)

## UNIT TESTS
The unit test runs with

```bash
    # typical *nix installation
    cd src;make
    # if you have fpm(1) installed
    fpm test
```


## FUTURE
   Ultimately the goal is to release this as an fpm(1) package
   as described at [https://fortran-lang.org](https://fortran-lang.org)
   when there is a production version of fpm(1) available.

   In the mean time it is my first first and simplest module set up using
   fpm(1); in an attempt to explore the use of fpm(1). The initial goal
   is to set up all the seperate modules needed by the FUNIX repository
   with fpm(1) and then change the FUNIX repository to build entirely
   using fpm(1) as an experiment.
