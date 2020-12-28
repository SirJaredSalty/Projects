#ifndef _LLAMA_CPP_
#define _LLAMA_CPP_


/*
   Name: Jared Soltas
   Class: CMSC 341 Section 01
   Project #1
   File: Llama.cpp

   This file has the implementations of the Llama class
   for Project 1.
*/


#include <stdexcept>
#include <string>
#include "Llama.h"
using namespace std ;


// Default constructor initializes default values
// and creates an empty head node
template <class T, int LN_SIZE>
Llama<T, LN_SIZE>::Llama(){
    m_head = new LlamaNode<T, LN_SIZE>();
    m_nextNode = NULL;
    stackSize = 0;
    extraNode = false;
}


// Copy constructor creates a new Llama stack from pre-exiting one
template <class T, int LN_SIZE>
Llama<T, LN_SIZE>::Llama(const Llama<T, LN_SIZE>& other){

    // Initializes head and default values
    m_head = new LlamaNode<T, LN_SIZE>();
    extraNode = false;
    stackSize = 0;

    // Head LlamaNode of pre-existing Llama stack
    LlamaNode<T, LN_SIZE>* originalStack = other.m_head;

    // Numbers of nodes needed to traverse
    int nodeCount = (other.stackSize - 1) / LN_SIZE;
    int index = 0;

    // Loops while there are nodes left to traverse
    while(nodeCount != -1 && other.stackSize != 0){

        // Moves to node after the head if an empty node is present
        if(other.extraNode){
            originalStack = other.m_nextNode;
        }

        // Loops to the necessary LlamaNode
        for(int i = 0; i < nodeCount; i++){
            originalStack = originalStack->m_next;
        }

        // Sets index to specific value in case the head node
        // isn't completely full
        if(nodeCount == 0){
            index = (LN_SIZE - other.currentNodeSize()) % LN_SIZE;
        }

        // Pushes all the data values from the current
        // pre-existing LlamaNode
        for(int i = LN_SIZE - 1; i >= index; i--){
            push(originalStack->arr[i]);
        }

        originalStack = other.m_head;
        nodeCount--;
    }

    // Adds an extra empty node to the new Llama stack if the
    // pre-existing Llama stack also had one
    if(other.extraNode){
        LlamaNode<T, LN_SIZE>* newNode = new LlamaNode<T, LN_SIZE>();
        m_nextNode = m_head;   // Next node is now the old head
        m_head = newNode; // Head is now the empty "extra" node
        m_head->m_next = m_nextNode;
        extraNode = true;
    }
}


// Destructor that deletes all dynamically allocated LamaNodes
// from the Llama stack
template <class T, int LN_SIZE>
Llama<T, LN_SIZE>::~Llama(){
    LlamaNode<T, LN_SIZE>* temp = m_head; // Temp pointer to the head

    // Loops while there are still LlamaNodes.
    // Deletes all LlamaNodes
    while(temp != NULL){
        m_head = temp->m_next;
        delete temp;
        temp = m_head;
    }
    m_head = NULL;
    stackSize = 0; // Stack size reset to 0
}


// Overloaded Assignment Operator copies pre-existing Llama stack
// to another pre-existing Llama stack
template <class T, int LN_SIZE>
const Llama<T,LN_SIZE>& Llama<T, LN_SIZE>::operator=(const Llama<T,LN_SIZE>& rhs){

    // Protects against sel-assignment
    if(this != &rhs){
        this->~Llama();  // Calls destructor in case Llama stack has contents

        // Initializes the head and default values
        m_head = new LlamaNode<T, LN_SIZE>();
        extraNode = false;
        stackSize = 0;

        // Head LlamaNode of pre-existing Llama stack
        LlamaNode<T, LN_SIZE>* originalStack = rhs.m_head;

        // Number of nodes in the pre-existing stack
        int nodeCount = (rhs.stackSize - 1) / LN_SIZE;
        int index = 0;

        // Loops while the original stack has nodes to be traversed
        while(nodeCount != -1 && rhs.stackSize != 0){

            // Moves to the node after the head if the head is an empty node
            if(rhs.extraNode){
                originalStack = rhs.m_nextNode;
            }

            // Loops to the desired LlamaNode
            for(int i = 0; i < nodeCount; i++){
                originalStack = originalStack->m_next;
            }

            // Sets index to specified value in case the head LlamaNode
            // isn't a full LN_SIZE.
            if(nodeCount == 0){
                index = (LN_SIZE - rhs.currentNodeSize()) % LN_SIZE;
            }

            // Pushes all contents from the pre-existing Llama stack
            // to the new desired Llama stack
            for(int i = LN_SIZE - 1; i >= index; i--){
                push(originalStack->arr[i]);
            }

            originalStack = rhs.m_head;
            nodeCount--;
        }

        // Makes a new empty node if the original Llama stack also
        // had an empty node
        if(rhs.extraNode){
            LlamaNode<T, LN_SIZE>* newNode = new LlamaNode<T, LN_SIZE>();
            m_nextNode = m_head;   // Next node becomes the old head
            m_head = newNode; // Head node becomes the new empty node
            m_head->m_next = m_nextNode;
            extraNode = true;
        }
    }

    return *this;
}


// Returns the number of items in the node currently being worked on.
template <class T, int LN_SIZE>
int Llama<T, LN_SIZE>::currentNodeSize() const{
    return stackSize % LN_SIZE;
}


// Returns the current Llama stack size
template <class T, int LN_SIZE>
int Llama<T, LN_SIZE>::size(){
    return stackSize;
}


// Shows all the data values in the Llama stack, is there is an
// empty node, number of created and destroyed nodes
template <class T, int LN_SIZE>
void Llama<T, LN_SIZE>::dump(){

    // Prints out the stack size and number of nodes created/destroyed
    cout << "\n***** Llama Stack Dump ******\n";
    cout << "LN_SIZE = " << LN_SIZE << endl;
    cout << "# of items in the stack = " << stackSize << endl;
    LlamaNode<T, LN_SIZE>::report();

    // Prints out the extra node's address in memory if there is one
    if(extraNode || stackSize == 0){
        cout << "\nThis stack has an extra node: " << m_head << "\n";
    }
    else{
        cout << "\nThis stack does not have an extra node\n";
    }
    cout << "\nStack contents, top to bottom\n";

    if(stackSize != 0){
        LlamaNode<T, LN_SIZE>* temp = m_head; // Temporary pointer to head

        // Special index value in case the head node
        // doesn't have a full LN_SIZE
        int index = (LN_SIZE - currentNodeSize()) % LN_SIZE;

        // Moves to the node after the head if the head is
        // an empty "extra" node
        if(extraNode){
            temp = m_nextNode;
        }

        // Loops until there are no more LlamaNodes
        while(temp != NULL){

            // Prints the data values and the LlamaNode address they live in
            cout << "----- " << temp << " -----\n";
            for(int i = index; i < LN_SIZE; i++){
                cout << temp->arr[i] << endl;
            }
            index = 0;
            temp = temp->m_next; // Moves to next LlamaNode
        }
    }

    cout << "----- bottom of stack ----\n\n";
    cout << "*****************************\n";
}


// Pushes passed data on the top of the stack
template <class T, int LN_SIZE>
void Llama<T, LN_SIZE>::push(const T& data){
    if(LN_SIZE <= 0){
        cout << "The stack can't have anything pushed onto it!\n";
    }

    else{
        // When the current stack is empty
        if(stackSize == 0){
            m_head->arr[LN_SIZE - 1] = data;
        }

        else{
            // If the node is full then a new node must be created
            if(currentNodeSize() == 0 && !extraNode){
                LlamaNode<T, LN_SIZE>* newNode = new LlamaNode<T, LN_SIZE>();
                m_nextNode = m_head;   // Next node becomes the old head
                m_head = newNode; // Head node becomes the new node
                m_head->m_next = m_nextNode;
                m_head->arr[LN_SIZE - 1] = data; // Adds data to the new head
            }

            // If the current node isn't full yet
            else{

                // Next index available in the current node
                int nextIndex = LN_SIZE - 1 - (currentNodeSize());

                // Adds to the next node if there is room and
                // the head node is empty
                if(extraNode && currentNodeSize() != 0){
                    m_nextNode->arr[nextIndex] = data;
                }

                // If the head node isn't empty
                else{
                    m_head->arr[nextIndex] = data;
                }

                // Extra node no longer exists if the head was empty
                // and is having a data value added to it
                if(extraNode && currentNodeSize() == 0){
                    extraNode = false;
                }
            }
        }

        stackSize++;
    }
}


// Removes the data value on top of the Llama stack
template <class T, int LN_SIZE>
T Llama<T, LN_SIZE>::pop(){

    // Throws exception if the Llama stack is 0
    if(stackSize == 0){
        LlamaUnderflow throwException("Can't pop an empty stack");
        throw throwException;
    }

    else{

        // Special index of where the head data value is
        int headIndex = (LN_SIZE - currentNodeSize()) % LN_SIZE;
        T poppedValue;

        // Moves to the next node if the head is empty
        if(extraNode){
            poppedValue = m_nextNode->arr[headIndex];
        }

        // Uses the head if it isn't empty
        else{
            poppedValue = m_head->arr[headIndex];
        }

        stackSize--;

        // If an extra node exists and enough of the current node's
        // data values have been deleted
        if(currentNodeSize() == LN_SIZE / 2 && extraNode){
            delete m_head;  // Empty head node is deleted
            m_head = m_nextNode; // Head becomes the next node
            m_nextNode = m_nextNode->m_next;
            extraNode = false;
        }

        // If all data values are deleted from the head then
        // an empty node now exists
        if(stackSize != 0 && currentNodeSize() == 0){
            extraNode = true;
        }

        return poppedValue;
    }
}


// Duplicates the top data value in the stack
template <class T, int LN_SIZE>
void Llama<T, LN_SIZE>::dup(){

    // Throws an exception if the Llama stack size is 0
    if(stackSize == 0){
        LlamaUnderflow throwException("Can't duplicate an empty stack");
        throw throwException;
    }
    else{

        // Index of where the head data value resides
        int headIndex = (LN_SIZE - currentNodeSize()) % LN_SIZE;

        // Pushes the next node's index if the head is empty
        if(extraNode){
            push(m_nextNode->arr[headIndex]);
        }

        // Pushes the head node's index if the head isn't empty
        else{
            push(m_head->arr[headIndex]);
        }
    }
}


// Swaps the top two data values on the stack
template <class T, int LN_SIZE>
void Llama<T, LN_SIZE>::swap(){

    // Throws exception if the stack size isn't at least two
    if(stackSize < 2){
        LlamaUnderflow throwException("The stack size is less than 2");
        throw throwException;
    }

    else{

        // Index of where the head data value resides
        int headIndex = (LN_SIZE - currentNodeSize()) % LN_SIZE;
        LlamaNode<T, LN_SIZE>* curr = m_head;
        LlamaNode<T, LN_SIZE>* next = m_nextNode;
        T tempVariable;

        // If the head node is empty change the current the next
        // temporary pointers
        if(extraNode){
            curr = m_nextNode;
            next = m_nextNode->m_next;
        }

        // If the top two data values on the stack live in
        // two different LlamaNodes
        if(currentNodeSize() == 1 || LN_SIZE == 1){
            tempVariable = curr->arr[headIndex];
            curr->arr[headIndex] = next->arr[0];
            next->arr[0] = tempVariable;
        }

        // If the top two data values live in the same LlamaNode
        else{
            tempVariable = curr->arr[headIndex];
            curr->arr[headIndex] = curr->arr[headIndex + 1];
            curr->arr[headIndex + 1] = tempVariable;
        }
    }
}


// Rotates the top three data values on the stack.
// Bottom becomes top, middle becomes bottom, top becomes middle
template <class T, int LN_SIZE>
void Llama<T, LN_SIZE>::rot(){

    // Throws an exception if the stack size is less than three
    if(stackSize < 3){
        LlamaUnderflow throwException("The stack size is less than 3");
        throw throwException;
    }

    else{

        // Index of the head data value in the stack
        int headIndex = (LN_SIZE - currentNodeSize()) % LN_SIZE;
        LlamaNode<T, LN_SIZE>* curr = m_head;
        LlamaNode<T, LN_SIZE>* next = m_nextNode;
        T tempVariable;

        // Changes the current and next temporary pointers
        // if the head node is empty
        if(extraNode){
            curr = m_nextNode;
            next = m_nextNode->m_next;
        }

        // If all three data values live in three different LlamaNodes
        if(LN_SIZE == 1){
            tempVariable = curr->arr[0];
            curr->arr[0] = next->m_next->arr[0];
            next->m_next->arr[0] = next->arr[0];
            next->arr[0] = tempVariable;
        }

        // If the three data values live in two different LlamaNodes.
        // One lives in the head node and two in the node below it
        else if(currentNodeSize() == 1){
            tempVariable = curr->arr[headIndex];
            curr->arr[headIndex] = next->arr[1];
            next->arr[1] = next->arr[0];
            next->arr[0] = tempVariable;
        }


        // If the three data values live in two different LlamaNodes.
        // Two live in the head node and one in the node below it
        else if(currentNodeSize() == 2 || LN_SIZE == 2){
            tempVariable = curr->arr[headIndex];
            curr->arr[headIndex] = next->arr[0];
            next->arr[0] = curr->arr[headIndex + 1];
            curr->arr[headIndex + 1] = tempVariable;
        }

        // If the three data values live in the same LlamaNode
        else{
            tempVariable = curr->arr[headIndex];
            curr->arr[headIndex] = curr->arr[headIndex + 2];
            curr->arr[headIndex + 2] = curr->arr[headIndex + 1];
            curr->arr[headIndex + 1] = tempVariable;
        }
    }
}


// Returns a specific value in the stack according to the passed offset
template <class T, int LN_SIZE>
T Llama<T, LN_SIZE>::peek(int offset) const {

    // Throw an exception if the offset is larger than the stack size
    if(offset >= stackSize){
        LlamaUnderflow throwException("That index doesn't exist in the stack");
        throw throwException;
    }

    else{
        LlamaNode<T, LN_SIZE>* temp = m_head; // Temporary pointer to head

        // Special index value of the head data value index.
        // Tells us where to start when iterating through the Llama stack
        int index = (LN_SIZE - currentNodeSize()) % LN_SIZE;
        int counter = 0;

        // Moves to the next node if the head is empty
        if(extraNode){
            temp = m_nextNode;
        }

        // Loops until the counter catches up to the offset
        while(counter < offset){

            // Goes to the next LlamaNode when the all of the indexes
            // have been traversed
            if((index != 0 && index % (LN_SIZE - 1) == 0) || LN_SIZE == 1){
                temp = temp->m_next;
                index = -1;
            }

            counter++;
            index++;
        }

        return (temp->arr[index]); // Returns the desired data value
    }
}


#endif

