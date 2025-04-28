Documentation {#mainpage}
=============

# About

This text belongs to mainpage. It serves as main (index) page of the generated documentation.

I haven't explored yet much of the things that can be done from this file, but as a cover page is good for now.

# Some details about my choices in Doxyfile

I followed the recommentation to `OPTIMIZE_OUTPUT_FOR_FORTRAN`, edited the `EXTENSION_MAPPING` and specified where my `INPUTS` are, that is, the sources that are parsed to extract the documentation.

Additionally I find the graphs Doxygen generates helpful, so I installed `graphviz` before generating the `Doxyfile`, if graphviz is found (dot is the name of the executable), then this is activated. With `HAVE_DOT` active one can generate different types of graphs. For Fortran I use `CALLER_GRAPH` and `CALLING_GRAPH`.

`TREE_VIEW` is another feature I like, to see the navigation tree on the left of the documentation. 

