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
OBJS := $(addsuffix .o, $(SRCS))
	
# defines entrypoints: all and clean
.PHONY: all clean 
all: $(PROG)

$(PROG): $(OBJS)
	$(LD) -o $@ $^

$(OBJS): %.o: %
	$(FC) -c -o $@ $<

# define dependencies between object files
tabulate.f90.o: functions.f90.o user_functions.mod

# rebuild all object files in cas this make file changes
$(OBJS): $(MAKEFILE_LIST)

clean:
	$(RM) $(filter %.o, $(OBJS)) $(wildcard *.mod) $(PROG)

debug: 
	echo $(SRCS)
	echo $(addsuffix .o, hello.f90)
	echo $(OBJS)
