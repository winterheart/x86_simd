all: x86_simd

CXXFLAGS += -msse2

x86_simd: main.o
	$(CXX) $(LDFLAGS) -o x86_simd main.o

main.o: main.cpp
	$(CXX) -c $(CXXFLAGS) -o main.o main.cpp

clean:
	rm -fr main.o x86_simd
