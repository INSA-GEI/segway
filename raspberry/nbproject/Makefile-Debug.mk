#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/control.o \
	${OBJECTDIR}/lib/comgui.o \
	${OBJECTDIR}/lib/comstm32.o \
	${OBJECTDIR}/lib/messages.o \
	${OBJECTDIR}/lib/trace.o \
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/parameters.o \
	${OBJECTDIR}/tasks.o \
	${OBJECTDIR}/wrapper.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-Wno-pmf-conversions
CXXFLAGS=-Wno-pmf-conversions

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L/usr/xenomai/lib -Wl,--no-as-needed -lalchemy -lcopperplate /usr/xenomai/lib/xenomai/bootstrap.o -Wl,--wrap=main -Wl,--dynamic-list=/usr/xenomai/lib/dynlist.ld -lmercury -lpthread

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/segway_supervisor

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/segway_supervisor: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/segway_supervisor ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/control.o: control.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib -I/usr/xenomai/include/mercury -I/usr/xenomai/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/control.o control.cpp

${OBJECTDIR}/lib/comgui.o: lib/comgui.cpp
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib -I/usr/xenomai/include/mercury -I/usr/xenomai/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/comgui.o lib/comgui.cpp

${OBJECTDIR}/lib/comstm32.o: lib/comstm32.cpp
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib -I/usr/xenomai/include/mercury -I/usr/xenomai/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/comstm32.o lib/comstm32.cpp

${OBJECTDIR}/lib/messages.o: lib/messages.cpp
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib -I/usr/xenomai/include/mercury -I/usr/xenomai/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/messages.o lib/messages.cpp

${OBJECTDIR}/lib/trace.o: lib/trace.cpp
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib -I/usr/xenomai/include/mercury -I/usr/xenomai/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/trace.o lib/trace.cpp

${OBJECTDIR}/main.o: main.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib -I/usr/xenomai/include/mercury -I/usr/xenomai/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

${OBJECTDIR}/parameters.o: parameters.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib -I/usr/xenomai/include/mercury -I/usr/xenomai/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/parameters.o parameters.cpp

${OBJECTDIR}/tasks.o: tasks.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib -I/usr/xenomai/include/mercury -I/usr/xenomai/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/tasks.o tasks.cpp

${OBJECTDIR}/wrapper.o: wrapper.c
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/wrapper.o wrapper.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
