# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hoel/Documents/VIVOE-project/openvivoe/mib_module

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hoel/Documents/VIVOE-project/openvivoe/mib_module

# Include any dependencies generated for this target.
include CMakeFiles/mib_module.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mib_module.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mib_module.dir/flags.make

CMakeFiles/mib_module.dir/src/deviceMode.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/deviceMode.c.o: src/deviceMode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mib_module.dir/src/deviceMode.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/deviceMode.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceMode.c

CMakeFiles/mib_module.dir/src/deviceMode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/deviceMode.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceMode.c > CMakeFiles/mib_module.dir/src/deviceMode.c.i

CMakeFiles/mib_module.dir/src/deviceMode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/deviceMode.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceMode.c -o CMakeFiles/mib_module.dir/src/deviceMode.c.s

CMakeFiles/mib_module.dir/src/deviceMode.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/deviceMode.c.o.requires

CMakeFiles/mib_module.dir/src/deviceMode.c.o.provides: CMakeFiles/mib_module.dir/src/deviceMode.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/deviceMode.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/deviceMode.c.o.provides

CMakeFiles/mib_module.dir/src/deviceMode.c.o.provides.build: CMakeFiles/mib_module.dir/src/deviceMode.c.o


CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o: src/deviceFirmwareVersion.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceFirmwareVersion.c

CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceFirmwareVersion.c > CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.i

CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceFirmwareVersion.c -o CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.s

CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o.requires

CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o.provides: CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o.provides

CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o.provides.build: CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o


CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o: src/ethernetIfNumber.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/ethernetIfNumber.c

CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/ethernetIfNumber.c > CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.i

CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/ethernetIfNumber.c -o CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.s

CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o.requires

CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o.provides: CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o.provides

CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o.provides.build: CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o


CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o: src/deviceManufacturer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceManufacturer.c

CMakeFiles/mib_module.dir/src/deviceManufacturer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/deviceManufacturer.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceManufacturer.c > CMakeFiles/mib_module.dir/src/deviceManufacturer.c.i

CMakeFiles/mib_module.dir/src/deviceManufacturer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/deviceManufacturer.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceManufacturer.c -o CMakeFiles/mib_module.dir/src/deviceManufacturer.c.s

CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o.requires

CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o.provides: CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o.provides

CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o.provides.build: CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o


CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o: src/ethernetIfTable.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/ethernetIfTable.c

CMakeFiles/mib_module.dir/src/ethernetIfTable.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/ethernetIfTable.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/ethernetIfTable.c > CMakeFiles/mib_module.dir/src/ethernetIfTable.c.i

CMakeFiles/mib_module.dir/src/ethernetIfTable.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/ethernetIfTable.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/ethernetIfTable.c -o CMakeFiles/mib_module.dir/src/ethernetIfTable.c.s

CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o.requires

CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o.provides: CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o.provides

CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o.provides.build: CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o


CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o: src/deviceHardwareVersion.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceHardwareVersion.c

CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceHardwareVersion.c > CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.i

CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceHardwareVersion.c -o CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.s

CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o.requires

CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o.provides: CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o.provides

CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o.provides.build: CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o


CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o: src/deviceSoftwareVersion.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceSoftwareVersion.c

CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceSoftwareVersion.c > CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.i

CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceSoftwareVersion.c -o CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.s

CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o.requires

CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o.provides: CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o.provides

CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o.provides.build: CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o


CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o: src/deviceNatoStockNumber.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceNatoStockNumber.c

CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceNatoStockNumber.c > CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.i

CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceNatoStockNumber.c -o CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.s

CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o.requires

CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o.provides: CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o.provides

CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o.provides.build: CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o


CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o: src/deviceSerialNumber.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceSerialNumber.c

CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceSerialNumber.c > CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.i

CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceSerialNumber.c -o CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.s

CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o.requires

CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o.provides: CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o.provides

CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o.provides.build: CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o


CMakeFiles/mib_module.dir/src/devicePartNumber.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/devicePartNumber.c.o: src/devicePartNumber.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/mib_module.dir/src/devicePartNumber.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/devicePartNumber.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/devicePartNumber.c

CMakeFiles/mib_module.dir/src/devicePartNumber.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/devicePartNumber.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/devicePartNumber.c > CMakeFiles/mib_module.dir/src/devicePartNumber.c.i

CMakeFiles/mib_module.dir/src/devicePartNumber.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/devicePartNumber.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/devicePartNumber.c -o CMakeFiles/mib_module.dir/src/devicePartNumber.c.s

CMakeFiles/mib_module.dir/src/devicePartNumber.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/devicePartNumber.c.o.requires

CMakeFiles/mib_module.dir/src/devicePartNumber.c.o.provides: CMakeFiles/mib_module.dir/src/devicePartNumber.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/devicePartNumber.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/devicePartNumber.c.o.provides

CMakeFiles/mib_module.dir/src/devicePartNumber.c.o.provides.build: CMakeFiles/mib_module.dir/src/devicePartNumber.c.o


CMakeFiles/mib_module.dir/src/deviceType.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/deviceType.c.o: src/deviceType.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/mib_module.dir/src/deviceType.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/deviceType.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceType.c

CMakeFiles/mib_module.dir/src/deviceType.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/deviceType.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceType.c > CMakeFiles/mib_module.dir/src/deviceType.c.i

CMakeFiles/mib_module.dir/src/deviceType.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/deviceType.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceType.c -o CMakeFiles/mib_module.dir/src/deviceType.c.s

CMakeFiles/mib_module.dir/src/deviceType.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/deviceType.c.o.requires

CMakeFiles/mib_module.dir/src/deviceType.c.o.provides: CMakeFiles/mib_module.dir/src/deviceType.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/deviceType.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/deviceType.c.o.provides

CMakeFiles/mib_module.dir/src/deviceType.c.o.provides.build: CMakeFiles/mib_module.dir/src/deviceType.c.o


CMakeFiles/mib_module.dir/src/deviceReset.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/deviceReset.c.o: src/deviceReset.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/mib_module.dir/src/deviceReset.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/deviceReset.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceReset.c

CMakeFiles/mib_module.dir/src/deviceReset.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/deviceReset.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceReset.c > CMakeFiles/mib_module.dir/src/deviceReset.c.i

CMakeFiles/mib_module.dir/src/deviceReset.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/deviceReset.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceReset.c -o CMakeFiles/mib_module.dir/src/deviceReset.c.s

CMakeFiles/mib_module.dir/src/deviceReset.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/deviceReset.c.o.requires

CMakeFiles/mib_module.dir/src/deviceReset.c.o.provides: CMakeFiles/mib_module.dir/src/deviceReset.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/deviceReset.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/deviceReset.c.o.provides

CMakeFiles/mib_module.dir/src/deviceReset.c.o.provides.build: CMakeFiles/mib_module.dir/src/deviceReset.c.o


CMakeFiles/mib_module.dir/src/main.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/main.c.o: src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/mib_module.dir/src/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/main.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/main.c

CMakeFiles/mib_module.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/main.c > CMakeFiles/mib_module.dir/src/main.c.i

CMakeFiles/mib_module.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/main.c -o CMakeFiles/mib_module.dir/src/main.c.s

CMakeFiles/mib_module.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/main.c.o.requires

CMakeFiles/mib_module.dir/src/main.c.o.provides: CMakeFiles/mib_module.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/main.c.o.provides

CMakeFiles/mib_module.dir/src/main.c.o.provides.build: CMakeFiles/mib_module.dir/src/main.c.o


CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o: src/deviceMibVersion.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceMibVersion.c

CMakeFiles/mib_module.dir/src/deviceMibVersion.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/deviceMibVersion.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceMibVersion.c > CMakeFiles/mib_module.dir/src/deviceMibVersion.c.i

CMakeFiles/mib_module.dir/src/deviceMibVersion.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/deviceMibVersion.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceMibVersion.c -o CMakeFiles/mib_module.dir/src/deviceMibVersion.c.s

CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o.requires

CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o.provides: CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o.provides

CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o.provides.build: CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o


CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o: src/deviceUserDesc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceUserDesc.c

CMakeFiles/mib_module.dir/src/deviceUserDesc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/deviceUserDesc.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceUserDesc.c > CMakeFiles/mib_module.dir/src/deviceUserDesc.c.i

CMakeFiles/mib_module.dir/src/deviceUserDesc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/deviceUserDesc.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceUserDesc.c -o CMakeFiles/mib_module.dir/src/deviceUserDesc.c.s

CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o.requires

CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o.provides: CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o.provides

CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o.provides.build: CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o


CMakeFiles/mib_module.dir/src/deviceDesc.c.o: CMakeFiles/mib_module.dir/flags.make
CMakeFiles/mib_module.dir/src/deviceDesc.c.o: src/deviceDesc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/mib_module.dir/src/deviceDesc.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mib_module.dir/src/deviceDesc.c.o   -c /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceDesc.c

CMakeFiles/mib_module.dir/src/deviceDesc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mib_module.dir/src/deviceDesc.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceDesc.c > CMakeFiles/mib_module.dir/src/deviceDesc.c.i

CMakeFiles/mib_module.dir/src/deviceDesc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mib_module.dir/src/deviceDesc.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/src/deviceDesc.c -o CMakeFiles/mib_module.dir/src/deviceDesc.c.s

CMakeFiles/mib_module.dir/src/deviceDesc.c.o.requires:

.PHONY : CMakeFiles/mib_module.dir/src/deviceDesc.c.o.requires

CMakeFiles/mib_module.dir/src/deviceDesc.c.o.provides: CMakeFiles/mib_module.dir/src/deviceDesc.c.o.requires
	$(MAKE) -f CMakeFiles/mib_module.dir/build.make CMakeFiles/mib_module.dir/src/deviceDesc.c.o.provides.build
.PHONY : CMakeFiles/mib_module.dir/src/deviceDesc.c.o.provides

CMakeFiles/mib_module.dir/src/deviceDesc.c.o.provides.build: CMakeFiles/mib_module.dir/src/deviceDesc.c.o


# Object files for target mib_module
mib_module_OBJECTS = \
"CMakeFiles/mib_module.dir/src/deviceMode.c.o" \
"CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o" \
"CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o" \
"CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o" \
"CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o" \
"CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o" \
"CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o" \
"CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o" \
"CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o" \
"CMakeFiles/mib_module.dir/src/devicePartNumber.c.o" \
"CMakeFiles/mib_module.dir/src/deviceType.c.o" \
"CMakeFiles/mib_module.dir/src/deviceReset.c.o" \
"CMakeFiles/mib_module.dir/src/main.c.o" \
"CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o" \
"CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o" \
"CMakeFiles/mib_module.dir/src/deviceDesc.c.o"

# External object files for target mib_module
mib_module_EXTERNAL_OBJECTS =

bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/deviceMode.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/devicePartNumber.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/deviceType.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/deviceReset.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/main.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/src/deviceDesc.c.o
bin/Debug/mib_module: CMakeFiles/mib_module.dir/build.make
bin/Debug/mib_module: CMakeFiles/mib_module.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking C executable bin/Debug/mib_module"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mib_module.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mib_module.dir/build: bin/Debug/mib_module

.PHONY : CMakeFiles/mib_module.dir/build

CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/deviceMode.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/deviceFirmwareVersion.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/ethernetIfNumber.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/deviceManufacturer.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/ethernetIfTable.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/deviceHardwareVersion.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/deviceSoftwareVersion.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/deviceNatoStockNumber.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/deviceSerialNumber.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/devicePartNumber.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/deviceType.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/deviceReset.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/main.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/deviceMibVersion.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/deviceUserDesc.c.o.requires
CMakeFiles/mib_module.dir/requires: CMakeFiles/mib_module.dir/src/deviceDesc.c.o.requires

.PHONY : CMakeFiles/mib_module.dir/requires

CMakeFiles/mib_module.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mib_module.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mib_module.dir/clean

CMakeFiles/mib_module.dir/depend:
	cd /home/hoel/Documents/VIVOE-project/openvivoe/mib_module && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hoel/Documents/VIVOE-project/openvivoe/mib_module /home/hoel/Documents/VIVOE-project/openvivoe/mib_module /home/hoel/Documents/VIVOE-project/openvivoe/mib_module /home/hoel/Documents/VIVOE-project/openvivoe/mib_module /home/hoel/Documents/VIVOE-project/openvivoe/mib_module/CMakeFiles/mib_module.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mib_module.dir/depend

