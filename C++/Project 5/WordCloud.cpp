/*****************************************
** File:    WordCloud.cpp
** Project: CMSC 202 Project 5, Spring 2020
** Author:  Jared Soltas
** Date:    04/28/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the implementation for the WordCloud class. It takes care
** of importing/exporting a file and creating the linked list and it's Nodes.
**
***********************************************/


#include "WordCloud.h"
#include <string>
#include <cstdlib>
#include <vector>
#include <fstream>
#include <iostream>
using namespace std;


// WordCloud default constructor defaults the file to the first test and
// dynamically allocates a new linked list of type string.
WordCloud::WordCloud(){
    m_fileName = "proj5_test1.txt";
    m_cloud = new LL<string>();
}


// WordCloud overloaded constructor initializes the file to the passed string
// and dynamically allocates a new linked list of type string.
WordCloud::WordCloud(string filename){
    m_fileName = filename;
    m_cloud = new LL<string>();
}


// WordCloud destructor deletes the allocated linked list container
// and sets it to nullptr.
WordCloud::~WordCloud(){
    delete m_cloud;
    m_cloud = nullptr;
}


// Loads in a desired file word by word and inserts each word into
// the linked list with a new Node.
void WordCloud::LoadFile(){
    string fileWords = ""; // String holding the words from the file
    ifstream openFile(m_fileName); // Opens the file

    // Loops while the file has words in it
    while(openFile >> fileWords){
        RemovePunct(fileWords); // Calls RemovePunct to remove punctuations
        m_cloud->Insert(fileWords); // Inserts the word in the linked list
    }

    openFile.close();
}


// RemovePunct takes in a string word from the imported file and
// removes punctuations from the beginning and end of it.
void WordCloud::RemovePunct(string& wordCheck){
    string newWord = ""; // New word with end punctuations

    // Loops through the entire string using an iterator
    for(string::iterator it = wordCheck.begin(); it != wordCheck.end(); it++){

        // If the iterator is at the beginning or end of the string
        if(it == wordCheck.begin() || it == wordCheck.end() - 1){

            // If the beginning/end isn't a punctuation add it to the new word
            if(!ispunct(*it))
                newWord += tolower(*it);
        }

        // If the iterator isn't at the beginning/end add it to the new word
        else
            newWord += tolower(*it);
    }

    // Sets the passed word to the new word string
    wordCheck = newWord;
}


// RemoveCommon uses the const string vector and removes every word in it
// from the linked list.
void WordCloud::RemoveCommon(){
    vector<string>::const_iterator it; // Iterator the vector

    // Iterates the entire length of the vector
    for(it = EXCLUDE_LIST.cbegin(); it != EXCLUDE_LIST.cend(); it++){
        m_cloud->RemoveAt(*it); // Removes the word from the linked list
    }
}


// RemoveSingles removes all Nodes from the linked list that have a frequency
// of one. Uses the overloaded [] operator to retrieve data.
void WordCloud::RemoveSingles(){
    int wordsRemoved = 0; // Number of words removed

    // Loops entire length of the linked list
    for(int i = 0; i < m_cloud->GetSize(); i++){

        // If a Node has a frequency of 1 remove it from the linked list
        if((*m_cloud)[i].second == 1){
            m_cloud->RemoveAt((*m_cloud)[i].first);
            i = -1;
            wordsRemoved++;
        }
    }

    // Prints the amount of words removed
    cout << wordsRemoved << " words removed. \n";
}


// Exports a file formatted with data:frequency of every Node in the linked list
void WordCloud::Export(){
    ofstream outputFile; // Output stream variable
    string fileName = ""; // Name of the file

    cout << "What do you want to name your export file? ";
    cin >> fileName;
    outputFile.open(fileName);

    // Uses overloaded << operator to loop entire length of the linked
    // list and inserts each Node's data and frequency in the output stream
    outputFile << *m_cloud;

    outputFile.close();
    cout << m_cloud->GetSize() << " unique words exported.\n\n";
}


// Start calls several functions to begin up the program
void WordCloud::Start(){
    LoadFile(); // Calls LoadFile to load words into the linked list
    RemoveCommon(); // Calls RemoveCommon to remove Nodes of common words
    string removeSingles = ""; // String for if user wants to remove all singles

    // Gets input if the user wants to remove all Nodes with a frequency of 1
    cout << "Do you want to remove all words with frequency of 1? ";
    cin >> removeSingles;
    if(removeSingles == "YES" || removeSingles == "yes" ||
       removeSingles == "y" || removeSingles == "Y")
        RemoveSingles();

    m_cloud->Display(); // Displays all of the Nodes
    cout << "END\n";
    Export(); // Calls the export function
}
