/**************************************************************
 * File:    HashedSplays.cpp
 * Project: CMSC 341 - Project 3 - Word Frequency Splay Tree
 * Author:  Jared Soltas
 * Date:    7-July-2020
 * Section: Lecture-01
 * E-mail:  jsoltas1@umbc.edu
 *
 * HashedSplays Class implementation.
 *
 *************************************************************/

#include "HashedSplays.h"
#include <iostream>
#include <sstream>
#include <fstream>


// Initializes the private variables.
HashedSplays::HashedSplays(int size){
    modValue = 97;
    m_trees = size;
    table.resize(m_trees);
}


// Destructor
HashedSplays::~HashedSplays(){}


// Reads in the file and creates the splay trees.
void HashedSplays::FileReader(string inFileName){
    char *fileName = &inFileName[0];
    Util utility;

    // Throws an exception if the file doesn't exist.
    if(!utility.FileExists(fileName))
        throw Exceptions("File does not exist");

    int hashIndex = 0;     // Index of the hash table
    string word = "";      // Holds the words
    string fileLines = ""; // Holds each line of text
    string textFile = "";  // Holds modified text
    ifstream openFile(inFileName); // Opens the text file

    // Inserts each line of text from the file into textFile.
    // String fileLines is used as a temporary holder for getline.
    while(getline(openFile, fileLines)){
        textFile.append(fileLines + "\n");
    }

    fileLines = "";

    // Removes any unnecessary punctuations from the textFile
    stringstream textStream(textFile);
    while(textStream >> word){
        fileLines.append(utility.Strip(word) + "\n");
    }

    word = "";


    // Loops while words can be inserted into the word string from fileLines
    cout << "Building hashed splay...\n";
    stringstream lineStream(fileLines);
    while(lineStream >> word){
        Node *newNode = new Node(word, 1); // Creates a Node object
        hashIndex = GetIndex(word);  // Index in the hash table


        // Pointer to specific splay tree corresponding to the hashIndex
        SplayTree<Node> *tableIndex = &table.at(hashIndex);

        // Insert newNode into the tree
        tableIndex->insert(newNode);

        delete newNode;
        newNode = NULL;
    }

    openFile.close();
}


// Prints a splay tree corresponding to the passed index
void HashedSplays::PrintTree(int index){
    SplayTree<Node> *tableIndex = &table.at(index);
    tableIndex->printTree();
    cout << "This tree has had " << tableIndex->getSplayCount() << " splays\n";
}


// Prints a splay tree corresponding to the first letter of the passed string
void HashedSplays::PrintTree(string letter){
    PrintTree(GetIndex(letter));
}


// Prints the root node, its frequency and number of total nodes in each tree
void HashedSplays::PrintHashCountResults(){
    for(vector<SplayTree<Node>>::iterator it = table.begin(); it != table.end(); ++it){
       (*it).printRoot();
    }
}


// Prints all Nodes that contain the passed substring
void HashedSplays::FindAll(string inPart){

    // Create a new Node with the inPart string to be compared to other Nodes
    Node *subString = new Node(inPart, 1);

    int hashIndex = GetIndex(inPart);  // Hash table's index

    // Pointer to specific splay tree corresponding to the hashIndex
    SplayTree<Node> *tableIndex = &table.at(hashIndex);

    cout << "Printing the results of nodes that start with '"
    << inPart << "'\n";

    // Compares the subString Node to all other Nodes in the tree and prints
    tableIndex->printSubString(*subString);

    delete subString;
    subString = NULL;
}


// Calculates and returns the index for the hash table
int HashedSplays::GetIndex(string inLetter){
    return tolower(inLetter[0]) % modValue;
}
