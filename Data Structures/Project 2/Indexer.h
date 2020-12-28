/**************************************************************
 * File:    Indexer.h
 * Project: CMSC 341 - Project 2 - Index Creator
 * Author:  Jared Soltas
 * Date:    21-June-2020
 * Section: Lecture-01
 * E-mail:  jsoltas1@umbc.edu
 *
 * Indexer Class definition.
 *
 *************************************************************/

#ifndef INDEXER_H
#define INDEXER_H

#include "Exceptions.h"
#include "BinarySearchTree.h"
#include "Utility.h"
#include "Word.h"
using namespace std;

class Indexer{
public:

    // Name: Indexer (Overloaded Constructor)
    // Desc: Initializes filter and data file names
    // Preconditions: Filter and data files are passed
    // Postconditions: Initializes private variables
    Indexer(string filterName, string dataFile);

    // Name: DoIndex
    // Desc: Passes file names to start building BSTs
    // Preconditions: Filter and data files exist
    // Postconditions: File names passed to check existence
    void DoIndex();

    // Name: FileExists
    // Desc: Verifies both files exists
    // Preconditions: Filter and data files exist
    // Postconditions: Program stops or BSTs are built
    bool FileExists(char* filename);

    // Name: FileFilterReader
    // Desc: Builds the filteredBST from filter file
    // Preconditions: Filter file exists
    // Postconditions: filteredBST is built
    BinarySearchTree<Word> FileFilterReader(string filename);

    // Name: FileWordReader
    // Desc: Builds indexedBST from data file
    // Preconditions: Data file exists
    // Postconditions: indexedBST is built
    BinarySearchTree<Word> FileWordReader(string filename);

    // Name: OutputResults
    // Desc: Outputs indexedBST and filteredBST to text files
    // Preconditions: Both BSTs are built
    // Postconditions: Text files are created from sorted BST
    void OutputResults();

private:
    BinarySearchTree<Word> filteredBST; // Holds BST of filtered words
    BinarySearchTree<Word> indexedBST; // Holds BST of indexed words
    string datafile;   // File name for building indexedBST
    string filterfile; // File name for building filteredBST
};

#endif
