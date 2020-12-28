/**************************************************************
 * File:    HashedSplays.h
 * Project: CMSC 341 - Project 3 - Word Frequency Splay Tree
 * Author:  Jared Soltas
 * Date:    7-July-2020
 * Section: Lecture-01
 * E-mail:  jsoltas1@umbc.edu
 *
 * HashedSplays Class definition.
 *
 *************************************************************/

#ifndef HASHEDSPLAYS_H
#define HASHEDSPLAYS_H

#include "Exceptions.h"
#include "Node.h"
#include "SplayTree.h"
#include <vector>


class HashedSplays{
public:

    // Name: HashedSplays (Overloaded constructor)
    // Desc: Sizes the vectors for the tree
    // Preconditions: Size of tree is passed
    // Postconditions: Size of tree is initialized
    HashedSplays(int size);

    // Name: ~HashedSplays (destructor)
    // Desc: Deletes any allocated memory
    // Preconditions: All splay trees have been built
    // Postconditions: Allocated memory deleted
    ~HashedSplays();

    // Name: FileReader
    // Desc: Builds the splay tree from the input file
    // Preconditions: File is passed and vector initialized
    // Postconditions: Splay tree is built
    void FileReader(string inFileName);

    // Name: PrintTree (int)
    // Desc: Prints a splay tree from the passed index
    // Preconditions: All splay trees are built
    // Postconditions: Splay tree at certain index is printed
    void PrintTree(int index);

    // Name: PrintTree (string)
    // Desc: Prints a splay tree from the passed string
    // Preconditions: All splay trees are built
    // Postconditions: Prints splay tree beginning with string letter
    void PrintTree(string letter);

    // Name: PrintHashResults
    // Desc: Prints the root node and # of nodes of every tree
    // Preconditions: All splay trees are built
    // Postconditions: Prints the root node and # of nodes
    void PrintHashCountResults();

    // Name: FindAll
    // Desc: Prints all Nodes that contain the passed substring
    // Preconditions: All splay trees are built
    // Postconditions: Prints the Nodes with the substring
    void FindAll(string inPart);

    // Name: GetIndex
    // Desc: Finds the index of the passed string for the table vector
    // Preconditions: Vectors have been initialized
    // Postconditions: Returns the index corresponding to the string
    int GetIndex (string inLetter);

private:
    int m_trees;  // Number of trees in the table vector
    int modValue; // Number that mods the first letter of words
    vector <SplayTree<Node>> table;  // Holds a splay tree at each index
};

#endif
