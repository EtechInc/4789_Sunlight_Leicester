SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\130\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\140\Tools\Binn\;C:\Program Files\Microsoft SQL Server\140\Tools\Binn\;C:\Program Files\Microsoft SQL Server\140\DTS\Binn\;C:\Program Files\Azure Data Studio\bin;C:\Program Files\Git\cmd;C:\Program Files\TortoiseGit\bin;C:\Program Files\dotnet\;C:\Program Files (x86)\Danfoss Drives\Communication Module\bin;C:\Users\Kevin.Cunnane\AppData\Local\Microsoft\WindowsApps;C:\Program Files\Azure Data Studio\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\Kevin.Cunnane\AppData\Local\GitHubDesktop\bin;C:\Users\Kevin.Cunnane\AppData\Local\Microsoft\WindowsApps;C:\Program Files\Azure Data Studio\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\Kevin.Cunnane\AppData\Local\GitHubDesktop\bin;C:\BrAutomation\AS410\bin-en\4.10;C:\BrAutomation\AS410\bin-en\4.9;C:\BrAutomation\AS410\bin-en\4.8;C:\BrAutomation\AS410\bin-en\4.7;C:\BrAutomation\AS410\bin-en\4.6;C:\BrAutomation\AS410\bin-en\4.5;C:\BrAutomation\AS410\bin-en\4.4;C:\BrAutomation\AS410\bin-en\4.3;C:\BrAutomation\AS410\bin-en\4.2;C:\BrAutomation\AS410\bin-en\4.1;C:\BrAutomation\AS410\bin-en\4.0;C:\BrAutomation\AS410\bin-en
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.10.2.37
export AS_WORKINGVERSION := 4.10
export AS_COMPANY_NAME :=  
export AS_USER_NAME := Kevin.Cunnane
export AS_PATH := C:/BrAutomation/AS410
export AS_BIN_PATH := C:/BrAutomation/AS410/bin-en
export AS_PROJECT_PATH := C:/JOB/S/Sunlight\ Leicester/Soiled_PLCxxx
export AS_PROJECT_NAME := Soiled_PLC
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS410/AS/VC
export AS_TEMP_PATH := C:/JOB/S/Sunlight\ Leicester/Soiled_PLCxxx/Temp
export AS_CONFIGURATION := Supertrack
export AS_BINARIES_PATH := C:/JOB/S/Sunlight\ Leicester/Soiled_PLCxxx/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS410/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := C:/BrAutomation/AS410/AS/GnuInst/V4.1.2/4.9/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS410/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := C:/BrAutomation/AS410/AS/GnuInst/V4.1.2/4.9/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS410
export WIN32_AS_PATH := "C:\BrAutomation\AS410"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS410\bin-en"
export WIN32_AS_PROJECT_PATH := "C:\JOB\S\Sunlight Leicester\Soiled_PLCxxx"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS410\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\JOB\S\Sunlight Leicester\Soiled_PLCxxx\Temp"
export WIN32_AS_BINARIES_PATH := "C:\JOB\S\Sunlight Leicester\Soiled_PLCxxx\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS410\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS410"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/4.9/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/Soiled_PLC.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndTransfer'   

