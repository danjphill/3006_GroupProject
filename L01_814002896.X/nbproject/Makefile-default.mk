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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/L01_814002896.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/L01_814002896.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED="C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/busyxlcd.c" "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/openxlcd.c" "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/putrxlcd.c" "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/putsxlcd.c" "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/readaddr.c" "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/readdata.c" "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/setcgram.c" "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/setddram.c" "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/wcmdxlcd.c" "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/writdata.c" "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/lab3_test.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2036465099/busyxlcd.o ${OBJECTDIR}/_ext/2036465099/openxlcd.o ${OBJECTDIR}/_ext/2036465099/putrxlcd.o ${OBJECTDIR}/_ext/2036465099/putsxlcd.o ${OBJECTDIR}/_ext/2036465099/readaddr.o ${OBJECTDIR}/_ext/2036465099/readdata.o ${OBJECTDIR}/_ext/2036465099/setcgram.o ${OBJECTDIR}/_ext/2036465099/setddram.o ${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o ${OBJECTDIR}/_ext/2036465099/writdata.o ${OBJECTDIR}/_ext/2036465099/lab3_test.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2036465099/busyxlcd.o.d ${OBJECTDIR}/_ext/2036465099/openxlcd.o.d ${OBJECTDIR}/_ext/2036465099/putrxlcd.o.d ${OBJECTDIR}/_ext/2036465099/putsxlcd.o.d ${OBJECTDIR}/_ext/2036465099/readaddr.o.d ${OBJECTDIR}/_ext/2036465099/readdata.o.d ${OBJECTDIR}/_ext/2036465099/setcgram.o.d ${OBJECTDIR}/_ext/2036465099/setddram.o.d ${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o.d ${OBJECTDIR}/_ext/2036465099/writdata.o.d ${OBJECTDIR}/_ext/2036465099/lab3_test.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2036465099/busyxlcd.o ${OBJECTDIR}/_ext/2036465099/openxlcd.o ${OBJECTDIR}/_ext/2036465099/putrxlcd.o ${OBJECTDIR}/_ext/2036465099/putsxlcd.o ${OBJECTDIR}/_ext/2036465099/readaddr.o ${OBJECTDIR}/_ext/2036465099/readdata.o ${OBJECTDIR}/_ext/2036465099/setcgram.o ${OBJECTDIR}/_ext/2036465099/setddram.o ${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o ${OBJECTDIR}/_ext/2036465099/writdata.o ${OBJECTDIR}/_ext/2036465099/lab3_test.o

# Source Files
SOURCEFILES=C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/busyxlcd.c C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/openxlcd.c C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/putrxlcd.c C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/putsxlcd.c C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/readaddr.c C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/readdata.c C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/setcgram.c C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/setddram.c C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/wcmdxlcd.c C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/writdata.c C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/lab3_test.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/L01_814002896.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/2036465099/busyxlcd.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/busyxlcd.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/busyxlcd.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/openxlcd.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/openxlcd.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/openxlcd.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/putrxlcd.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/putrxlcd.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/putrxlcd.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/putsxlcd.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/putsxlcd.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/putsxlcd.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/readaddr.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/readaddr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/readaddr.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/readaddr.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/readdata.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/readdata.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/readdata.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/readdata.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/setcgram.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/setcgram.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/setcgram.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/setcgram.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/setddram.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/setddram.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/setddram.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/setddram.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/wcmdxlcd.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/writdata.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/writdata.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/writdata.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/writdata.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/lab3_test.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/lab3_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/lab3_test.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/lab3_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/lab3_test.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/lab3_test.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/lab3_test.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/lab3_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/2036465099/busyxlcd.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/busyxlcd.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/busyxlcd.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/openxlcd.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/openxlcd.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/openxlcd.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/putrxlcd.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/putrxlcd.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/putrxlcd.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/putsxlcd.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/putsxlcd.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/putsxlcd.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/readaddr.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/readaddr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/readaddr.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/readaddr.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/readdata.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/readdata.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/readdata.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/readdata.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/setcgram.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/setcgram.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/setcgram.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/setcgram.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/setddram.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/setddram.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/setddram.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/setddram.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/wcmdxlcd.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/writdata.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/writdata.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/writdata.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/writdata.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2036465099/lab3_test.o: C:/Users/Daniel\ Phillips/MPLABXProjects/L01_814002896.X/lab3_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036465099" 
	@${RM} ${OBJECTDIR}/_ext/2036465099/lab3_test.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036465099/lab3_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ml -oa- -o-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2036465099/lab3_test.o   "C:/Users/Daniel Phillips/MPLABXProjects/L01_814002896.X/lab3_test.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2036465099/lab3_test.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036465099/lab3_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/L01_814002896.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/L01_814002896.X/lab1.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "C:\Users\Daniel Phillips\Documents\UWI\Year 3\ECNG 3006\Projects\L01_814002896.X\lab1.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/L01_814002896.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/L01_814002896.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/Daniel\ Phillips/Documents/UWI/Year\ 3/ECNG\ 3006/Projects/L01_814002896.X/lab1.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "C:\Users\Daniel Phillips\Documents\UWI\Year 3\ECNG 3006\Projects\L01_814002896.X\lab1.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/L01_814002896.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
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
