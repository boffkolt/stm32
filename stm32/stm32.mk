##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=stm32
ConfigurationName      :=Debug
WorkspacePath          :=/home/engineer/GIT/stm32
ProjectPath            :=/home/engineer/GIT/stm32/stm32
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=engineer
<<<<<<< 32e4174c85119403cb8aec3ec4ec6a75f24b77d1
Date                   :=22/10/16
=======
Date                   :=21/10/16
>>>>>>> 1d2071743bda4b83607dcd63469fa900c6322999
CodeLitePath           :=/home/engineer/.codelite
LinkerName             :=/usr/bin/arm-none-eabi-g++
SharedObjectLinkerName :=/usr/bin/arm-none-eabi-g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=./$(ProjectName).elf
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="stm32.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -static  -mcpu=cortex-m3  -mthumb  -mthumb-interwork  -Wl,--start-group -L/usr/bin/lib/gcc/arm-none-eabi/5.2.1/thumb2  -L/usr/bin/arm-none-eabi/lib/thumb2  -nostdlib  -lg  -lstdc++  -lsupc++  -lgcc  -lm  -Ttext=0x8000000 -Wl,--end-group  -Xlinker  -Map  -Xlinker $(ProjectName).map  -Xlinker  -T ./sys/stm32f100rb_flash.ld -o $(ProjectName).elf
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)./ $(IncludeSwitch)./src $(IncludeSwitch)./inc $(IncludeSwitch)./sys 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/arm-none-eabi-ar rcu
CXX      := /usr/bin/arm-none-eabi-g++
CC       := /usr/bin/arm-none-eabi-gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -c  -mcpu=cortex-m3  -mthumb  -Wall  -O0  -mapcs-frame  -D__thumb2__=1  -msoft-float  -gdwarf-2  -mno-sched-prolog  -fno-hosted  -mtune=cortex-m3  -march=armv7-m  -mfix-cortex-m3-ldrd  -ffunction-sections  -fdata-sections  -I./src  -I. $(Preprocessors)
ASFLAGS  := -mcpu=cortex-m3  -I./sys   -gdwarf-2  -gdwarf-2
AS       := /usr/bin/arm-none-eabi-as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/sys_startup_stm32f10x_md_vl.S$(ObjectSuffix) $(IntermediateDirectory)/src_main.c$(ObjectSuffix) $(IntermediateDirectory)/src_system_stm32f10x.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/sys_startup_stm32f10x_md_vl.S$(ObjectSuffix): sys/startup_stm32f10x_md_vl.S $(IntermediateDirectory)/sys_startup_stm32f10x_md_vl.S$(DependSuffix)
	$(AS) "/home/engineer/GIT/stm32/stm32/sys/startup_stm32f10x_md_vl.S" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/sys_startup_stm32f10x_md_vl.S$(ObjectSuffix) -I$(IncludePath)
$(IntermediateDirectory)/sys_startup_stm32f10x_md_vl.S$(DependSuffix): sys/startup_stm32f10x_md_vl.S
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/sys_startup_stm32f10x_md_vl.S$(ObjectSuffix) -MF$(IntermediateDirectory)/sys_startup_stm32f10x_md_vl.S$(DependSuffix) -MM sys/startup_stm32f10x_md_vl.S

$(IntermediateDirectory)/sys_startup_stm32f10x_md_vl.S$(PreprocessSuffix): sys/startup_stm32f10x_md_vl.S
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/sys_startup_stm32f10x_md_vl.S$(PreprocessSuffix)sys/startup_stm32f10x_md_vl.S

$(IntermediateDirectory)/src_main.c$(ObjectSuffix): src/main.c $(IntermediateDirectory)/src_main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/engineer/GIT/stm32/stm32/src/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main.c$(DependSuffix): src/main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main.c$(DependSuffix) -MM src/main.c

$(IntermediateDirectory)/src_main.c$(PreprocessSuffix): src/main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main.c$(PreprocessSuffix)src/main.c

$(IntermediateDirectory)/src_system_stm32f10x.c$(ObjectSuffix): src/system_stm32f10x.c $(IntermediateDirectory)/src_system_stm32f10x.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/engineer/GIT/stm32/stm32/src/system_stm32f10x.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_system_stm32f10x.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_system_stm32f10x.c$(DependSuffix): src/system_stm32f10x.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_system_stm32f10x.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_system_stm32f10x.c$(DependSuffix) -MM src/system_stm32f10x.c

$(IntermediateDirectory)/src_system_stm32f10x.c$(PreprocessSuffix): src/system_stm32f10x.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_system_stm32f10x.c$(PreprocessSuffix)src/system_stm32f10x.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


