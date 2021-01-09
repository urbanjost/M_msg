# NAME

## DESCRIPTION
This is a collection of modules useful for creating messages, logfiles and
performing unit tests, 

 + **M_msg** is is a small module that can convert a list of variables of any of
   the most common default types to a string.

   It performs low-level operations that are often used by other larger
   modules so it is in its own module to prevent circular dependencies.

 + **M_verify** contains procedures useful for generating unit tests

 + **M_journal** allows for creating log and journal files


## BUILDING THE MODULE
A conventional GNU/Linux or Unix install:

```bash
     git clone https://github.com/urbanjost/M_msg.git
     cd M_msg/src
     # change Makefile if not using one of the listed compilers
     
     # for gfortran
     make clean
     make F90=gfortran gfortran
     
     # for ifort
     make clean
     make F90=ifort ifort

     # for nvfortran
     make clean
     make F90=nvfortran nvfortran
```
This will compile the Fortran module and basic test
programs 

Optionally
```bash
```

## SUPPORTS FPM

Alternatively, download the github repository and
build it with fpm ( as described at [Fortran Package
Manager](https://github.com/fortran-lang/fpm) )

```bash
     git clone https://github.com/urbanjost/M_msg.git
     cd M_msg
     fpm test
```

or just list it as a dependency in your fpm.toml project file.

```toml
     [dependencies]
     M_msg        = { git = "https://github.com/urbanjost/M_msg.git" }
```

#### (registered at the [fpm(1) registry](https://github.com/fortran-lang/fpm-registry) )

## USER DOCUMENTATION
   
 - manpages in 
    + [manpages.zip](https://urbanjost.github.io/M_msg/manpages.zip) 
    + [manpages.tgz](https://urbanjost.github.io/M_msg/manpages.tgz) 

 - An [index](https://urbanjost.github.io/M_msg/man3.html) to HTML versions
   of the manpages 

 - A single page that uses javascript to combine all the HTML descriptions
   of the manpages is at
   [BOOK_FORTRAN](https://urbanjost.github.io/M_msg/BOOK_M_strings.html).

## ADDITIONAL DIRECTORY DESCRIPTIONS
There are 

   - src/ is where the source for the M_msg(3f) modules resides 
   - docs/ contains HTML documentation and the manpage archives 
   - test/ contains a simple test program 
   - example/ has demos
