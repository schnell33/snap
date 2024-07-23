#
# Makefile for non-Microsoft compilers
#

ifdef DEBUG
    export CFLAGS += -g
    export CXXFLAGS += -g
endif

all: MakeAll

test: TestAll

MakeAll:
	$(MAKE) -C snap-core
	$(MAKE) -C examples

TestAll:
	$(MAKE) run -C test

clean:
	$(MAKE) clean -C snap-core
	$(MAKE) clean -C examples
	$(MAKE) clean -C test
	$(MAKE) clean -C tutorials
