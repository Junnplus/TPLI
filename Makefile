
# Makefile to build all programs in all subdirectories
#
# DIRS is a list of all subdirectories containing makefiles
# (The library directory is first so that the library gets built first)
#

DIRS = 	lib \
		fileio


BUILD_DIRS = ${DIRS}

all:
	@ echo ${BUILD_DIRS}
	@ for dir in ${BUILD_DIRS}; do (cd $${dir}; ${MAKE}); \
		if test $$? -ne 0; then break; fi; done

allgen: 
	@ for dir in ${BUILD_DIRS}; do (cd $${dir}; ${MAKE} allgen) ; done

clean: 
	@ for dir in ${BUILD_DIRS}; do (cd $${dir}; ${MAKE} clean) ; done
