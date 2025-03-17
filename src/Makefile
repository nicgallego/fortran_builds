:: Disable all of make's built-in rules (similar to fortran implicit none)
MAKEFLAGS += --no-builtin-rules --no-builtin-variables
# configuration
FC := gfortran
LD := $(FC)
RM := rm -f

# list all source files
SRCS := tabulate.f90 functions.f90
PROG := my_prog

# append .o instead of substituiting it
OBJS := $(addsufix .o, $(SRCS))

# defines entrypoints: all and clean
.PHONY: all clean 
all: $(PROG)

$(PROG): $(OBJS)
	$(LD) -o $@ $^

$(OBJS): %.o: %
	$(FC) -c -o $@ $<


