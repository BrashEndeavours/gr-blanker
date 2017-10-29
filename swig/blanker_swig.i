/* -*- c++ -*- */

#define BLANKER_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "blanker_swig_doc.i"

%{
#include "blanker/blanker_ff.h"
%}


%include "blanker/blanker_ff.h"
GR_SWIG_BLOCK_MAGIC2(blanker, blanker_ff);
