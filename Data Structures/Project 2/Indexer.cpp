/**************************************************************
 * File:    Indexer.cpp
 * Project: CMSC 341 - Project 2 - Index Creator
 * Author:  Jared Soltas
 * Date:    21-June-2020
 * Section: Lecture-01
 * E-mail:  jsoltas1@umbc.edu
 *
 * Indexer Class implementation. Creates both BSTs.
 *
 *************************************************************/

#include "Indexer.h"
#include <iostream>
#include <sstream>
#include <fstream>
using namespace std;


// Overloaded constructor with both file names passed.
Indexer::Indexer(string filterName, string dataFile){
    filterfile = filterName;
    datafile = dataFile;
}


// Calls various functions to verify files exist.
// If they exist the BSTs are made.
void Indexer::DoIndex(){
    char *filterText = &filterfile[0];
    char *dataText = &datafile[0];

    FileExists(filterText);
    FileExists(dataText);
    OutputResults();

}


// Verifies the files exists and throws an exception if not.
bool Indexer::FileExists(char* filename){
    ifstream openFile(filename);
    if(openFile.fail()){
        throw Exceptions("Error. File does not exist.");
        return false;
    }

    return true;
}


// Creates the filteredBST from the passed file
BinarySearchTree<Word> Indexer::FileFilterReader(string filename){
    string word = "";      // Holds the words from the file
    string fileLines = ""; // Holds the lines of words from the file
    string textFile = "";  // Temporary holder for getline()
    ifstream openFile(filename); // Opens the file
    Utility modifyWord;  // Utility object to modify strings

    // Appends each line from the file into fileLines string
    while(getline(openFile, textFile)){
        fileLines.append(textFile + "\n");
    }

    // Removes all punctuations and converts all words to lowercase
    modifyWord.RemovePunct(fileLines);
    modifyWord.ToLower(fileLines);

    // Stringstream of modified fileLines
    stringstream lineStream(fileLines);

    // Loops and inserts the stringstream into the word string
    while(lineStream >> word){
        Word *newWord = new Word(word, -1); // Creates a new Word object
        filteredBST.insert(*newWord);
        delete newWord;
        newWord = NULL;
    }

    openFile.close();
    return filteredBST;
}


// Creates the indexedBST from the filename and previously made filteredBST.
BinarySearchTree<Word> Indexer::FileWordReader(string filename){
    string word = "";      // Holds the words
    string fileLines = ""; // Holds each line of text
    string textFile = "";  // Holds modified text
    ifstream openFile(filename); // Opens the text file
    Utility modifyWord;  // Utility object to modify words
    int lineNumber = 0;  // Keeps track of the line number

    // Inserts each line of text from the file into textFile.
    // String fileLines is used as a temporary holder for getline.
    while(getline(openFile, fileLines)){
        textFile.append(fileLines + "\n");
    }

    // Removes all punctuations and makes words lowercase
    modifyWord.RemovePunct(textFile);
    modifyWord.ToLower(textFile);

    // Stringstream of the modified text file is read and "@"
    // is placed at the beginning of each line into fileLines.
    // String word is used as a temporary holder for getline.
    stringstream textStream(textFile);
    while(getline(textStream, word)){
        fileLines.append("@" + word + "\n");
    }

    // Stringstream of ready to be parsed text.
    stringstream lineStream(fileLines);

    // Loops while words can be inserted into the word string
    while(lineStream >> word){

        // If "@" is found then a new line has occurred
        if(word[0] == '@'){
            lineNumber++;
            word.erase(word.begin());
        }

        Word *newWord = new Word(word, lineNumber); // Creates a Word object

        // Either NULL or a Word object depending
        // if the indexedBST has the Word already.
        Word *indexedWord = &indexedBST.GetNode(*newWord);

        // indexedBST won't add Word's from the filteredBST
        if(!filteredBST.contains(*newWord)){

            // Increments the Word's frequency and adds to lineNumber queue
            if(indexedWord){
                indexedWord->CountWord(lineNumber);
                indexedWord->IncrementCount();
            }

            // Makes sure blank characters aren't inserted
            else if(!word.empty()){
                indexedBST.insert(*newWord);
            }
        }

        delete newWord;
        newWord = NULL;
    }

    openFile.close();
    return indexedBST;
}


// Outputs both BSTs to text files
void Indexer::OutputResults(){
    FileFilterReader(filterfile);
    FileWordReader(datafile);

    // Creating output stream for the filteredBST
    ofstream filterFile("filterResults.txt");
    filterFile << filteredBST;
    filterFile.close();

    // Creating output stream for the indexedBST
    ofstream dataFile("indexResults.txt");
    dataFile << indexedBST;
    dataFile.close();
    cout << "Done!\n";
}
