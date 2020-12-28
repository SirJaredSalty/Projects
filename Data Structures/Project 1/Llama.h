#ifndef _LLAMA_H_
#define _LLAMA_H_

/*
   Name: Jared Soltas
   Class: CMSC 341 Section 01
   Project #1
   File: Llama.h

   This file has the class declaration for the Llama class
   for Project 1.
*/


#include <stdexcept>
#include <string>
#include "LlamaNode.h"

using namespace std ;

class LlamaUnderflow : public std::out_of_range {
public:
  // Name: LlamaUnderflow (Default Constructor)
  // Desc: Used to throw an exception when one occurs
  // Preconditions: Exception is caught with pre-made message
  // Postconditions: Message is "thrown" to the catch
  LlamaUnderflow(const string& what) : std::out_of_range(what) {}

} ;

template <class T, int LN_SIZE>
class Llama {
public:
  // Name: Llama (Default Constructor)
  // Desc: Creates a new empty LlamaNode for the head of the stack
  // and initializes values to default.
  // Preconditions:  None
  // Postconditions: Default values and head node created
  Llama();

  // Name: Llama (Copy Constructor)
  // Desc: Creates a new Llama stack from a pre-existing Llama stack
  // Preconditions:  One Llama stack already exists
  // Postconditions: Creates a new copied Llama stack
  Llama(const Llama<T,LN_SIZE>& other);

  // Name: Llama (Destructor)
  // Desc: Deletes all LlamaNodes in a Llama stack
  // Preconditions:  Llama stack exists
  // Postconditions: Sets the entire Llama stack contents to Null
  ~Llama();

  // Name: Llama (Overloaded Assignment Operator)
  // Desc: Copies a pre-existing Llama stack
  // Preconditions:  Two Llama stack already exist
  // Postconditions: Llama stack has same contents as the source Llama stack
  const Llama<T,LN_SIZE>& operator=(const Llama<T,LN_SIZE>& rhs);

  // Name: size
  // Desc: Returns the size of the stack
  // Preconditions:  Llama stack has been created
  // Postconditions: Returns the stack size
  int size();

  // Name: dump
  // Desc: Dumps the contents of the stack, current stack size,
  // any empty nodes, number of nodes created and deleted.
  // Preconditions:  Llama stack already exists
  // Postconditions: Prints the Llama stack information
  void dump();

  // Name: push
  // Desc: Pushes data onto the Llama stack
  // Preconditions:  Llama stack already exists
  // Postconditions: Llama stack is added to
  void push(const T& data);

  // Name: pop
  // Desc: Pops the top of the Llama stack
  // Preconditions:  Llama stack already exists and has contents
  // Postconditions: Llama stack has data removed
  T pop();

  // Name: dup
  // Desc: Duplicates the top of the stack and adds it to the stack
  // Preconditions:  Llama stack has at least 1 data content
  // Postconditions: Llama stack has data added
  void dup();

  // Name: swap
  // Desc: Swaps the 2 data values on top of the Llama stack
  // Preconditions:  Llama stack has at least 2 data
  // Postconditions: Top 2 data values of the top is swapped
  void swap();

  // Name: rot
  // Desc: Rotates the top 3 data values in the Llama stack
  // Preconditions:  Llama stack has at least 3 data
  // Postconditions: Top 3 data values in stack are rotated around
  void rot();

  // Name: peek
  // Desc: Shows a specific value in the stack given an offset value
  // Preconditions:  Llama stack has at least one data
  // Postconditions: Returns one data value from the Llama stack
  T peek(int offset) const;

  // Name: currentNodeSize
  // Desc: Calculates the number of data values in the current node
  // Preconditions:  Llama stack is created
  // Postconditions: Returns the number of items in a node
  int currentNodeSize() const;


private:
  LlamaNode<T, LN_SIZE>* m_head;  // Points to the head LlamaNode
  LlamaNode<T, LN_SIZE>* m_nextNode; // Points to the LlamaNode after the head
  int stackSize;  // Size of the stack
  bool extraNode; // Bool whether there is an extra node in the Llama stack

};


#include "Llama.cpp"


#endif
