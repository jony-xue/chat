# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_SOURCE_DIR = /home/xyg/Desktop/xygchat

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xyg/Desktop/xygchat/build

# Include any dependencies generated for this target.
include src/server/CMakeFiles/Chatserver.dir/depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/Chatserver.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/Chatserver.dir/flags.make

src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o: ../src/server/UserModel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xyg/Desktop/xygchat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chatserver.dir/UserModel.cpp.o -c /home/xyg/Desktop/xygchat/src/server/UserModel.cpp

src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/UserModel.cpp.i"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xyg/Desktop/xygchat/src/server/UserModel.cpp > CMakeFiles/Chatserver.dir/UserModel.cpp.i

src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/UserModel.cpp.s"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xyg/Desktop/xygchat/src/server/UserModel.cpp -o CMakeFiles/Chatserver.dir/UserModel.cpp.s

src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o.requires:

.PHONY : src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o.requires

src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o.provides: src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/Chatserver.dir/build.make src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o.provides

src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o.provides.build: src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o


src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o: ../src/server/chatservice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xyg/Desktop/xygchat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chatserver.dir/chatservice.cpp.o -c /home/xyg/Desktop/xygchat/src/server/chatservice.cpp

src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/chatservice.cpp.i"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xyg/Desktop/xygchat/src/server/chatservice.cpp > CMakeFiles/Chatserver.dir/chatservice.cpp.i

src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/chatservice.cpp.s"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xyg/Desktop/xygchat/src/server/chatservice.cpp -o CMakeFiles/Chatserver.dir/chatservice.cpp.s

src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o.requires:

.PHONY : src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o.requires

src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o.provides: src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/Chatserver.dir/build.make src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o.provides

src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o.provides.build: src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o


src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o: ../src/server/friendmodel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xyg/Desktop/xygchat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chatserver.dir/friendmodel.cpp.o -c /home/xyg/Desktop/xygchat/src/server/friendmodel.cpp

src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/friendmodel.cpp.i"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xyg/Desktop/xygchat/src/server/friendmodel.cpp > CMakeFiles/Chatserver.dir/friendmodel.cpp.i

src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/friendmodel.cpp.s"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xyg/Desktop/xygchat/src/server/friendmodel.cpp -o CMakeFiles/Chatserver.dir/friendmodel.cpp.s

src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o.requires:

.PHONY : src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o.requires

src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o.provides: src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/Chatserver.dir/build.make src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o.provides

src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o.provides.build: src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o


src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o: ../src/server/groupmodel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xyg/Desktop/xygchat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chatserver.dir/groupmodel.cpp.o -c /home/xyg/Desktop/xygchat/src/server/groupmodel.cpp

src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/groupmodel.cpp.i"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xyg/Desktop/xygchat/src/server/groupmodel.cpp > CMakeFiles/Chatserver.dir/groupmodel.cpp.i

src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/groupmodel.cpp.s"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xyg/Desktop/xygchat/src/server/groupmodel.cpp -o CMakeFiles/Chatserver.dir/groupmodel.cpp.s

src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o.requires:

.PHONY : src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o.requires

src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o.provides: src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/Chatserver.dir/build.make src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o.provides

src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o.provides.build: src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o


src/server/CMakeFiles/Chatserver.dir/main.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/main.cpp.o: ../src/server/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xyg/Desktop/xygchat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/server/CMakeFiles/Chatserver.dir/main.cpp.o"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chatserver.dir/main.cpp.o -c /home/xyg/Desktop/xygchat/src/server/main.cpp

src/server/CMakeFiles/Chatserver.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/main.cpp.i"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xyg/Desktop/xygchat/src/server/main.cpp > CMakeFiles/Chatserver.dir/main.cpp.i

src/server/CMakeFiles/Chatserver.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/main.cpp.s"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xyg/Desktop/xygchat/src/server/main.cpp -o CMakeFiles/Chatserver.dir/main.cpp.s

src/server/CMakeFiles/Chatserver.dir/main.cpp.o.requires:

.PHONY : src/server/CMakeFiles/Chatserver.dir/main.cpp.o.requires

src/server/CMakeFiles/Chatserver.dir/main.cpp.o.provides: src/server/CMakeFiles/Chatserver.dir/main.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/Chatserver.dir/build.make src/server/CMakeFiles/Chatserver.dir/main.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/Chatserver.dir/main.cpp.o.provides

src/server/CMakeFiles/Chatserver.dir/main.cpp.o.provides.build: src/server/CMakeFiles/Chatserver.dir/main.cpp.o


src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o: ../src/server/offlineMessageModel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xyg/Desktop/xygchat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o -c /home/xyg/Desktop/xygchat/src/server/offlineMessageModel.cpp

src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.i"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xyg/Desktop/xygchat/src/server/offlineMessageModel.cpp > CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.i

src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.s"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xyg/Desktop/xygchat/src/server/offlineMessageModel.cpp -o CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.s

src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o.requires:

.PHONY : src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o.requires

src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o.provides: src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/Chatserver.dir/build.make src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o.provides

src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o.provides.build: src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o


src/server/CMakeFiles/Chatserver.dir/server.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/server.cpp.o: ../src/server/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xyg/Desktop/xygchat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/server/CMakeFiles/Chatserver.dir/server.cpp.o"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chatserver.dir/server.cpp.o -c /home/xyg/Desktop/xygchat/src/server/server.cpp

src/server/CMakeFiles/Chatserver.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/server.cpp.i"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xyg/Desktop/xygchat/src/server/server.cpp > CMakeFiles/Chatserver.dir/server.cpp.i

src/server/CMakeFiles/Chatserver.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/server.cpp.s"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xyg/Desktop/xygchat/src/server/server.cpp -o CMakeFiles/Chatserver.dir/server.cpp.s

src/server/CMakeFiles/Chatserver.dir/server.cpp.o.requires:

.PHONY : src/server/CMakeFiles/Chatserver.dir/server.cpp.o.requires

src/server/CMakeFiles/Chatserver.dir/server.cpp.o.provides: src/server/CMakeFiles/Chatserver.dir/server.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/Chatserver.dir/build.make src/server/CMakeFiles/Chatserver.dir/server.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/Chatserver.dir/server.cpp.o.provides

src/server/CMakeFiles/Chatserver.dir/server.cpp.o.provides.build: src/server/CMakeFiles/Chatserver.dir/server.cpp.o


src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o: ../src/server/database/db.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xyg/Desktop/xygchat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chatserver.dir/database/db.cpp.o -c /home/xyg/Desktop/xygchat/src/server/database/db.cpp

src/server/CMakeFiles/Chatserver.dir/database/db.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/database/db.cpp.i"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xyg/Desktop/xygchat/src/server/database/db.cpp > CMakeFiles/Chatserver.dir/database/db.cpp.i

src/server/CMakeFiles/Chatserver.dir/database/db.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/database/db.cpp.s"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xyg/Desktop/xygchat/src/server/database/db.cpp -o CMakeFiles/Chatserver.dir/database/db.cpp.s

src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o.requires:

.PHONY : src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o.requires

src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o.provides: src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/Chatserver.dir/build.make src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o.provides

src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o.provides.build: src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o


src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o: ../src/server/redis/redis.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xyg/Desktop/xygchat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chatserver.dir/redis/redis.cpp.o -c /home/xyg/Desktop/xygchat/src/server/redis/redis.cpp

src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/redis/redis.cpp.i"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xyg/Desktop/xygchat/src/server/redis/redis.cpp > CMakeFiles/Chatserver.dir/redis/redis.cpp.i

src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/redis/redis.cpp.s"
	cd /home/xyg/Desktop/xygchat/build/src/server && /bin/x86_64-linux-gnu-g++-6 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xyg/Desktop/xygchat/src/server/redis/redis.cpp -o CMakeFiles/Chatserver.dir/redis/redis.cpp.s

src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o.requires:

.PHONY : src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o.requires

src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o.provides: src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o.requires
	$(MAKE) -f src/server/CMakeFiles/Chatserver.dir/build.make src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o.provides.build
.PHONY : src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o.provides

src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o.provides.build: src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o


# Object files for target Chatserver
Chatserver_OBJECTS = \
"CMakeFiles/Chatserver.dir/UserModel.cpp.o" \
"CMakeFiles/Chatserver.dir/chatservice.cpp.o" \
"CMakeFiles/Chatserver.dir/friendmodel.cpp.o" \
"CMakeFiles/Chatserver.dir/groupmodel.cpp.o" \
"CMakeFiles/Chatserver.dir/main.cpp.o" \
"CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o" \
"CMakeFiles/Chatserver.dir/server.cpp.o" \
"CMakeFiles/Chatserver.dir/database/db.cpp.o" \
"CMakeFiles/Chatserver.dir/redis/redis.cpp.o"

# External object files for target Chatserver
Chatserver_EXTERNAL_OBJECTS =

../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/main.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/server.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/build.make
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xyg/Desktop/xygchat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable ../../../bin/Chatserver"
	cd /home/xyg/Desktop/xygchat/build/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Chatserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/Chatserver.dir/build: ../bin/Chatserver

.PHONY : src/server/CMakeFiles/Chatserver.dir/build

src/server/CMakeFiles/Chatserver.dir/requires: src/server/CMakeFiles/Chatserver.dir/UserModel.cpp.o.requires
src/server/CMakeFiles/Chatserver.dir/requires: src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o.requires
src/server/CMakeFiles/Chatserver.dir/requires: src/server/CMakeFiles/Chatserver.dir/friendmodel.cpp.o.requires
src/server/CMakeFiles/Chatserver.dir/requires: src/server/CMakeFiles/Chatserver.dir/groupmodel.cpp.o.requires
src/server/CMakeFiles/Chatserver.dir/requires: src/server/CMakeFiles/Chatserver.dir/main.cpp.o.requires
src/server/CMakeFiles/Chatserver.dir/requires: src/server/CMakeFiles/Chatserver.dir/offlineMessageModel.cpp.o.requires
src/server/CMakeFiles/Chatserver.dir/requires: src/server/CMakeFiles/Chatserver.dir/server.cpp.o.requires
src/server/CMakeFiles/Chatserver.dir/requires: src/server/CMakeFiles/Chatserver.dir/database/db.cpp.o.requires
src/server/CMakeFiles/Chatserver.dir/requires: src/server/CMakeFiles/Chatserver.dir/redis/redis.cpp.o.requires

.PHONY : src/server/CMakeFiles/Chatserver.dir/requires

src/server/CMakeFiles/Chatserver.dir/clean:
	cd /home/xyg/Desktop/xygchat/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/Chatserver.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/Chatserver.dir/clean

src/server/CMakeFiles/Chatserver.dir/depend:
	cd /home/xyg/Desktop/xygchat/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xyg/Desktop/xygchat /home/xyg/Desktop/xygchat/src/server /home/xyg/Desktop/xygchat/build /home/xyg/Desktop/xygchat/build/src/server /home/xyg/Desktop/xygchat/build/src/server/CMakeFiles/Chatserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/Chatserver.dir/depend

