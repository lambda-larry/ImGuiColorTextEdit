CXXFLAGS := -pedantic -Wpedantic -Wall
CPPFLAGS := -Isubprojects/imgui

CXXFLAGS += -Wsequence-point
CXXFLAGS += -Wsign-compare

# The code compiles with C++11, but we might upgrade in the future
CXXFLAGS += -std=c++11
# CXXFLAGS += -std=c++17
# CXXFLAGS += -std=c++23

CXXFLAGS += -Og -g
# CXXFLAGS += -O2 -DNDEBUG


OBJ := TextEditor.o


default: $(OBJ)


clean:
	$(RM) $(OBJ)

clang-format:
	clang-format --verbose -i *.[ch]pp *.[ch]
