CXX = g++
CXXFLAGS = -Wall
FILTER = gsl.txt
DATA1 = input1.txt
DATA2 = input2.txt
DATA3 = none.txt

Driver: Word.o BinarySearchTree.o Utility.o Indexer.o Driver.cpp
	$(CXX) $(CXXFLAGS) Word.o BinarySearchTree.o Utility.o Indexer.o Driver.cpp -o Driver.out

Indexer.o: Utility.o BinarySearchTree.o Exceptions.h Word.o Indexer.h Indexer.cpp
	$(CXX) $(CXXFLAGS) -c Indexer.cpp

Utility.o: Utility.h Utility.cpp
	$(CXX) $(CXXFLAGS) -c Utility.cpp

BinarySearchTree.o: Word.o dsexceptions.h BinarySearchTree.h
	$(CXX) $(CXXFLAGS) -c -x c++ BinarySearchTree.h

Word.o: Word.h Word.cpp
	$(CXX) $(CXXFLAGS) -c Word.cpp

run1:
	./Driver.out $(FILTER) $(DATA1)

run2:
	./Driver.out $(FILTER) $(DATA2)

run3:
	./Driver.out $(FILTER) $(DATA3)

val1:
	valgrind ./Driver.out $(FILTER) $(DATA1)

val2:
	valgrind ./Driver.out $(FILTER) $(DATA2)

clean:
	rm -rf *.o
	rm -f *.out
	rm -f *~ *.h.gch *#

