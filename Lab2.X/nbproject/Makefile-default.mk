#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/os_dbg_r.c" "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/ucos_ii.c" "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/os_cpu_c.c" "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/vectors.c" "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/code_lab2_2.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1784956295/os_dbg_r.o ${OBJECTDIR}/_ext/1784956295/ucos_ii.o ${OBJECTDIR}/_ext/1784956295/os_cpu_c.o ${OBJECTDIR}/_ext/1784956295/vectors.o ${OBJECTDIR}/_ext/1784956295/code_lab2_2.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1784956295/os_dbg_r.o.d ${OBJECTDIR}/_ext/1784956295/ucos_ii.o.d ${OBJECTDIR}/_ext/1784956295/os_cpu_c.o.d ${OBJECTDIR}/_ext/1784956295/vectors.o.d ${OBJECTDIR}/_ext/1784956295/code_lab2_2.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1784956295/os_dbg_r.o ${OBJECTDIR}/_ext/1784956295/ucos_ii.o ${OBJECTDIR}/_ext/1784956295/os_cpu_c.o ${OBJECTDIR}/_ext/1784956295/vectors.o ${OBJECTDIR}/_ext/1784956295/code_lab2_2.o

# Source Files
SOURCEFILES=C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/os_dbg_r.c C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/ucos_ii.c C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/os_cpu_c.c C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/vectors.c C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/code_lab2_2.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F452
MP_PROCESSOR_OPTION_LD=18f452
MP_LINKER_DEBUG_OPTION=-r=ROM@0x7DC0:0x7FFF -r=RAM@GPR:0x5F4:0x5FF -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1784956295/os_dbg_r.o: C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/Lab2.X/os_dbg_r.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784956295" 
	@${RM} ${OBJECTDIR}/_ext/1784956295/os_dbg_r.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784956295/os_dbg_r.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -Ls -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1784956295/os_dbg_r.o   "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/os_dbg_r.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1784956295/os_dbg_r.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784956295/os_dbg_r.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1784956295/ucos_ii.o: C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/Lab2.X/ucos_ii.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784956295" 
	@${RM} ${OBJECTDIR}/_ext/1784956295/ucos_ii.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784956295/ucos_ii.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -Ls -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1784956295/ucos_ii.o   "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/ucos_ii.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1784956295/ucos_ii.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784956295/ucos_ii.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1784956295/os_cpu_c.o: C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/Lab2.X/os_cpu_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784956295" 
	@${RM} ${OBJECTDIR}/_ext/1784956295/os_cpu_c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784956295/os_cpu_c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -Ls -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1784956295/os_cpu_c.o   "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/os_cpu_c.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1784956295/os_cpu_c.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784956295/os_cpu_c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1784956295/vectors.o: C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/Lab2.X/vectors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784956295" 
	@${RM} ${OBJECTDIR}/_ext/1784956295/vectors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784956295/vectors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -Ls -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1784956295/vectors.o   "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/vectors.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1784956295/vectors.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784956295/vectors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1784956295/code_lab2_2.o: C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/Lab2.X/code_lab2_2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784956295" 
	@${RM} ${OBJECTDIR}/_ext/1784956295/code_lab2_2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784956295/code_lab2_2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -Ls -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1784956295/code_lab2_2.o   "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/code_lab2_2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1784956295/code_lab2_2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784956295/code_lab2_2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1784956295/os_dbg_r.o: C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/Lab2.X/os_dbg_r.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784956295" 
	@${RM} ${OBJECTDIR}/_ext/1784956295/os_dbg_r.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784956295/os_dbg_r.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -Ls -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1784956295/os_dbg_r.o   "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/os_dbg_r.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1784956295/os_dbg_r.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784956295/os_dbg_r.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1784956295/ucos_ii.o: C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/Lab2.X/ucos_ii.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784956295" 
	@${RM} ${OBJECTDIR}/_ext/1784956295/ucos_ii.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784956295/ucos_ii.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -Ls -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1784956295/ucos_ii.o   "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/ucos_ii.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1784956295/ucos_ii.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784956295/ucos_ii.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1784956295/os_cpu_c.o: C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/Lab2.X/os_cpu_c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784956295" 
	@${RM} ${OBJECTDIR}/_ext/1784956295/os_cpu_c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784956295/os_cpu_c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -Ls -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1784956295/os_cpu_c.o   "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/os_cpu_c.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1784956295/os_cpu_c.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784956295/os_cpu_c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1784956295/vectors.o: C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/Lab2.X/vectors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784956295" 
	@${RM} ${OBJECTDIR}/_ext/1784956295/vectors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784956295/vectors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -Ls -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1784956295/vectors.o   "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/vectors.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1784956295/vectors.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784956295/vectors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1784956295/code_lab2_2.o: C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/Lab2.X/code_lab2_2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1784956295" 
	@${RM} ${OBJECTDIR}/_ext/1784956295/code_lab2_2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1784956295/code_lab2_2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -Ls -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1784956295/code_lab2_2.o   "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/Lab2.X/code_lab2_2.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1784956295/code_lab2_2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1784956295/code_lab2_2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/Lab2.X/uc-18f452i.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "C:\Users\Daniel Phillips\Documents\UWI\Year 3\ECNG 3006\Projects\Lab2.X\uc-18f452i.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/Lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/Lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/Lab2.X/uc-18f452i.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "C:\Users\Daniel Phillips\Documents\UWI\Year 3\ECNG 3006\Projects\Lab2.X\uc-18f452i.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/Lab2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
