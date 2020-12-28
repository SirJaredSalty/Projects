CXX = g++
CXXFLAGS = -Wall

proj1: OvCoInt.o LlamaNode.o Llama.o Driver.cpp
	$(CXX) $(CXXFLAGS) OvCoInt.o LlamaNode.o Llama.o Driver.cpp -o proj1

OvCoInt.o: OvCoInt.h OvCoInt.cpp
	$(CXX) $(CXXFLAGS) -c OvCoInt.cpp

Llama.o: LlamaNode.o Llama.h Llama.cpp
	$(CXX) $(CXXFLAGS) -c Llama.cpp

LlamaNode.o: LlamaNode.h LlamaNode.cpp
	$(CXX) $(CXXFLAGS) -c LlamaNode.cpp

run:
	./proj1

val:
	valgrind ./proj1

clean:
	rm *.o
	rm *~
	rm *output*
