##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Zamasu
ConfigurationName      :=Debug
WorkspacePath          := "/home/rose/ZAMASU-ROOT/CPP"
ProjectPath            := "/home/rose/ZAMASU-ROOT/CPP/Zamasu"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=rose
Date                   :=15/11/16
CodeLitePath           :="/home/rose/.codelite"
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Zamasu.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -lpthread
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall -std=c++0x -lpthread $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/UDPSocket.cpp$(ObjectSuffix) $(IntermediateDirectory)/ClientInfo.cpp$(ObjectSuffix) $(IntermediateDirectory)/ZamasuServer.cpp$(ObjectSuffix) $(IntermediateDirectory)/Attribute.cpp$(ObjectSuffix) $(IntermediateDirectory)/UDPMessage.cpp$(ObjectSuffix) $(IntermediateDirectory)/Utils.cpp$(ObjectSuffix) $(IntermediateDirectory)/ZamasuClient.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZAMASU-ROOT/CPP/Zamasu/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM "main.cpp"

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) "main.cpp"

$(IntermediateDirectory)/UDPSocket.cpp$(ObjectSuffix): UDPSocket.cpp $(IntermediateDirectory)/UDPSocket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZAMASU-ROOT/CPP/Zamasu/UDPSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/UDPSocket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/UDPSocket.cpp$(DependSuffix): UDPSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/UDPSocket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/UDPSocket.cpp$(DependSuffix) -MM "UDPSocket.cpp"

$(IntermediateDirectory)/UDPSocket.cpp$(PreprocessSuffix): UDPSocket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/UDPSocket.cpp$(PreprocessSuffix) "UDPSocket.cpp"

$(IntermediateDirectory)/ClientInfo.cpp$(ObjectSuffix): ClientInfo.cpp $(IntermediateDirectory)/ClientInfo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZAMASU-ROOT/CPP/Zamasu/ClientInfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ClientInfo.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ClientInfo.cpp$(DependSuffix): ClientInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ClientInfo.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/ClientInfo.cpp$(DependSuffix) -MM "ClientInfo.cpp"

$(IntermediateDirectory)/ClientInfo.cpp$(PreprocessSuffix): ClientInfo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ClientInfo.cpp$(PreprocessSuffix) "ClientInfo.cpp"

$(IntermediateDirectory)/ZamasuServer.cpp$(ObjectSuffix): ZamasuServer.cpp $(IntermediateDirectory)/ZamasuServer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZAMASU-ROOT/CPP/Zamasu/ZamasuServer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ZamasuServer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ZamasuServer.cpp$(DependSuffix): ZamasuServer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ZamasuServer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/ZamasuServer.cpp$(DependSuffix) -MM "ZamasuServer.cpp"

$(IntermediateDirectory)/ZamasuServer.cpp$(PreprocessSuffix): ZamasuServer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ZamasuServer.cpp$(PreprocessSuffix) "ZamasuServer.cpp"

$(IntermediateDirectory)/Attribute.cpp$(ObjectSuffix): Attribute.cpp $(IntermediateDirectory)/Attribute.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZAMASU-ROOT/CPP/Zamasu/Attribute.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Attribute.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Attribute.cpp$(DependSuffix): Attribute.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Attribute.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Attribute.cpp$(DependSuffix) -MM "Attribute.cpp"

$(IntermediateDirectory)/Attribute.cpp$(PreprocessSuffix): Attribute.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Attribute.cpp$(PreprocessSuffix) "Attribute.cpp"

$(IntermediateDirectory)/UDPMessage.cpp$(ObjectSuffix): UDPMessage.cpp $(IntermediateDirectory)/UDPMessage.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZAMASU-ROOT/CPP/Zamasu/UDPMessage.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/UDPMessage.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/UDPMessage.cpp$(DependSuffix): UDPMessage.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/UDPMessage.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/UDPMessage.cpp$(DependSuffix) -MM "UDPMessage.cpp"

$(IntermediateDirectory)/UDPMessage.cpp$(PreprocessSuffix): UDPMessage.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/UDPMessage.cpp$(PreprocessSuffix) "UDPMessage.cpp"

$(IntermediateDirectory)/Utils.cpp$(ObjectSuffix): Utils.cpp $(IntermediateDirectory)/Utils.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZAMASU-ROOT/CPP/Zamasu/Utils.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Utils.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Utils.cpp$(DependSuffix): Utils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Utils.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Utils.cpp$(DependSuffix) -MM "Utils.cpp"

$(IntermediateDirectory)/Utils.cpp$(PreprocessSuffix): Utils.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Utils.cpp$(PreprocessSuffix) "Utils.cpp"

$(IntermediateDirectory)/ZamasuClient.cpp$(ObjectSuffix): ZamasuClient.cpp $(IntermediateDirectory)/ZamasuClient.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZAMASU-ROOT/CPP/Zamasu/ZamasuClient.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ZamasuClient.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ZamasuClient.cpp$(DependSuffix): ZamasuClient.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ZamasuClient.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/ZamasuClient.cpp$(DependSuffix) -MM "ZamasuClient.cpp"

$(IntermediateDirectory)/ZamasuClient.cpp$(PreprocessSuffix): ZamasuClient.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ZamasuClient.cpp$(PreprocessSuffix) "ZamasuClient.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


