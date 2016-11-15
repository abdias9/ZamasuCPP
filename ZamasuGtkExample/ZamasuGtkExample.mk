##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=ZamasuGtkExample
ConfigurationName      :=Debug
WorkspacePath          := "/home/rose/ZamasuCPP"
ProjectPath            := "/home/rose/ZamasuCPP/ZamasuGtkExample"
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
ObjectsFileList        :="ZamasuGtkExample.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  $(shell pkg-config --libs gtkmm-2.4) -lpthread
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
CXXFLAGS :=  -g -Wall -O0 $(shell pkg-config --cflags gtkmm-2.4) -std=c++0x -lpthread $(Preprocessors)
CFLAGS   :=  -g -Wall -O0 $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Win.cpp$(ObjectSuffix) $(IntermediateDirectory)/Zamasu_Attribute.cpp$(ObjectSuffix) $(IntermediateDirectory)/Zamasu_ClientInfo.cpp$(ObjectSuffix) $(IntermediateDirectory)/Zamasu_ZamasuServer.cpp$(ObjectSuffix) $(IntermediateDirectory)/Zamasu_UDPSocket.cpp$(ObjectSuffix) $(IntermediateDirectory)/Zamasu_UDPMessage.cpp$(ObjectSuffix) $(IntermediateDirectory)/Zamasu_ZamasuClient.cpp$(ObjectSuffix) $(IntermediateDirectory)/Zamasu_Utils.cpp$(ObjectSuffix) 



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
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZamasuCPP/ZamasuGtkExample/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM "main.cpp"

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) "main.cpp"

$(IntermediateDirectory)/src_Win.cpp$(ObjectSuffix): src/Win.cpp $(IntermediateDirectory)/src_Win.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZamasuCPP/ZamasuGtkExample/src/Win.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Win.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Win.cpp$(DependSuffix): src/Win.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Win.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Win.cpp$(DependSuffix) -MM "src/Win.cpp"

$(IntermediateDirectory)/src_Win.cpp$(PreprocessSuffix): src/Win.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Win.cpp$(PreprocessSuffix) "src/Win.cpp"

$(IntermediateDirectory)/Zamasu_Attribute.cpp$(ObjectSuffix): Zamasu/Attribute.cpp $(IntermediateDirectory)/Zamasu_Attribute.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZamasuCPP/ZamasuGtkExample/Zamasu/Attribute.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Zamasu_Attribute.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Zamasu_Attribute.cpp$(DependSuffix): Zamasu/Attribute.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Zamasu_Attribute.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Zamasu_Attribute.cpp$(DependSuffix) -MM "Zamasu/Attribute.cpp"

$(IntermediateDirectory)/Zamasu_Attribute.cpp$(PreprocessSuffix): Zamasu/Attribute.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Zamasu_Attribute.cpp$(PreprocessSuffix) "Zamasu/Attribute.cpp"

$(IntermediateDirectory)/Zamasu_ClientInfo.cpp$(ObjectSuffix): Zamasu/ClientInfo.cpp $(IntermediateDirectory)/Zamasu_ClientInfo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZamasuCPP/ZamasuGtkExample/Zamasu/ClientInfo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Zamasu_ClientInfo.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Zamasu_ClientInfo.cpp$(DependSuffix): Zamasu/ClientInfo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Zamasu_ClientInfo.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Zamasu_ClientInfo.cpp$(DependSuffix) -MM "Zamasu/ClientInfo.cpp"

$(IntermediateDirectory)/Zamasu_ClientInfo.cpp$(PreprocessSuffix): Zamasu/ClientInfo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Zamasu_ClientInfo.cpp$(PreprocessSuffix) "Zamasu/ClientInfo.cpp"

$(IntermediateDirectory)/Zamasu_ZamasuServer.cpp$(ObjectSuffix): Zamasu/ZamasuServer.cpp $(IntermediateDirectory)/Zamasu_ZamasuServer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZamasuCPP/ZamasuGtkExample/Zamasu/ZamasuServer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Zamasu_ZamasuServer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Zamasu_ZamasuServer.cpp$(DependSuffix): Zamasu/ZamasuServer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Zamasu_ZamasuServer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Zamasu_ZamasuServer.cpp$(DependSuffix) -MM "Zamasu/ZamasuServer.cpp"

$(IntermediateDirectory)/Zamasu_ZamasuServer.cpp$(PreprocessSuffix): Zamasu/ZamasuServer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Zamasu_ZamasuServer.cpp$(PreprocessSuffix) "Zamasu/ZamasuServer.cpp"

$(IntermediateDirectory)/Zamasu_UDPSocket.cpp$(ObjectSuffix): Zamasu/UDPSocket.cpp $(IntermediateDirectory)/Zamasu_UDPSocket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZamasuCPP/ZamasuGtkExample/Zamasu/UDPSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Zamasu_UDPSocket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Zamasu_UDPSocket.cpp$(DependSuffix): Zamasu/UDPSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Zamasu_UDPSocket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Zamasu_UDPSocket.cpp$(DependSuffix) -MM "Zamasu/UDPSocket.cpp"

$(IntermediateDirectory)/Zamasu_UDPSocket.cpp$(PreprocessSuffix): Zamasu/UDPSocket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Zamasu_UDPSocket.cpp$(PreprocessSuffix) "Zamasu/UDPSocket.cpp"

$(IntermediateDirectory)/Zamasu_UDPMessage.cpp$(ObjectSuffix): Zamasu/UDPMessage.cpp $(IntermediateDirectory)/Zamasu_UDPMessage.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZamasuCPP/ZamasuGtkExample/Zamasu/UDPMessage.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Zamasu_UDPMessage.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Zamasu_UDPMessage.cpp$(DependSuffix): Zamasu/UDPMessage.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Zamasu_UDPMessage.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Zamasu_UDPMessage.cpp$(DependSuffix) -MM "Zamasu/UDPMessage.cpp"

$(IntermediateDirectory)/Zamasu_UDPMessage.cpp$(PreprocessSuffix): Zamasu/UDPMessage.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Zamasu_UDPMessage.cpp$(PreprocessSuffix) "Zamasu/UDPMessage.cpp"

$(IntermediateDirectory)/Zamasu_ZamasuClient.cpp$(ObjectSuffix): Zamasu/ZamasuClient.cpp $(IntermediateDirectory)/Zamasu_ZamasuClient.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZamasuCPP/ZamasuGtkExample/Zamasu/ZamasuClient.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Zamasu_ZamasuClient.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Zamasu_ZamasuClient.cpp$(DependSuffix): Zamasu/ZamasuClient.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Zamasu_ZamasuClient.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Zamasu_ZamasuClient.cpp$(DependSuffix) -MM "Zamasu/ZamasuClient.cpp"

$(IntermediateDirectory)/Zamasu_ZamasuClient.cpp$(PreprocessSuffix): Zamasu/ZamasuClient.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Zamasu_ZamasuClient.cpp$(PreprocessSuffix) "Zamasu/ZamasuClient.cpp"

$(IntermediateDirectory)/Zamasu_Utils.cpp$(ObjectSuffix): Zamasu/Utils.cpp $(IntermediateDirectory)/Zamasu_Utils.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rose/ZamasuCPP/ZamasuGtkExample/Zamasu/Utils.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Zamasu_Utils.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Zamasu_Utils.cpp$(DependSuffix): Zamasu/Utils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Zamasu_Utils.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Zamasu_Utils.cpp$(DependSuffix) -MM "Zamasu/Utils.cpp"

$(IntermediateDirectory)/Zamasu_Utils.cpp$(PreprocessSuffix): Zamasu/Utils.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Zamasu_Utils.cpp$(PreprocessSuffix) "Zamasu/Utils.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


