.PHONY: all clean

CXX = g++
CXXFLAGS = -Wall -g -O3
INCLUDES := -Iinclude -Iassets
LIBS  = -lGL -lGLU -lglut -lpng
TARGET = particle

SRCDIR := src
SRCS = $(wildcard $(SRCDIR)/*.cpp)
OBJS := ${SRCS:.cpp=.o}

all: $(TARGET)

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
	LIBS = -framework OpenGL -framework GLUT -lpng
	CXXFLAGS += -Wno-deprecated-declarations
endif

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -o $(TARGET) $(OBJS) $(LIBS)

$(OBJS): %.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) $< -c -o $@

clean:
	rm -f $(SRCDIR)/*.o $(SRCDIR)/*.d *~ $(SRCDIR)/*.bak $(TARGET)

# Generate a list of dependencies for each cpp file
%(SRCDIR)/.d: $(SRCS)
	@ $(CXX) $(CPPFLAGS) -MM $*.cpp | sed -e 's@^\(.*\)\.o:@\1.d \1.o:@' > $@

# At the end of the makefile
# Include the list of dependancies generated for each object file
# unless make was called with target clean
ifneq "$(MAKECMDGOALS)" "clean"
-include ${SRCS:.cpp=.d}
endif