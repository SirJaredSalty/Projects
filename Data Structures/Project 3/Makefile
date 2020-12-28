CXX = g++
CXXFLAGS = -Wall
DATA1 = input1.txt
DATA2 = input2.txt
DATA3 = none.txt

Driver: Node.o SplayTree.o Util.o HashedSplays.o Driver.cpp
	$(CXX) $(CXXFLAGS) Node.o SplayTree.o Util.o HashedSplays.o Driver.cpp -o Driver.out

HashedSplays.o: Util.o SplayTree.o Exceptions.h Node.o HashedSplays.h HashedSplays.cpp
	$(CXX) $(CXXFLAGS) -c HashedSplays.cpp

Util.o: Util.h Util.cpp
	$(CXX) $(CXXFLAGS) -c Util.cpp

SplayTree.o: Node.o dsexceptions.h SplayTree.h
	$(CXX) $(CXXFLAGS) -c -x c++ SplayTree.h

Node.o: Node.h Node.cpp
	$(CXX) $(CXXFLAGS) -c Node.cpp

run1:
	./Driver.out $(DATA1)

run2:
	./Driver.out $(DATA2)

run3:
	./Driver.out $(DATA3)

val1:
	valgrind ./Driver.out $(DATA1)

val2:
	valgrind ./Driver.out $(DATA2)

clean:
	rm -rf *.o
	rm -f *.out
	rm -f *~ *.h.gch *#

