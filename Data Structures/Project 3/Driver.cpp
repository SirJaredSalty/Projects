/**************************************************************
 * File:    Driver.cpp
 * Project: CMSC 341 - Project 3 - Word Frequency Splay Tree
 * Author:  Jared Soltas
 * Date:    7-July-2020
 * Section: Lecture-01
 * E-mail:  jsoltas1@umbc.edu
 *
 * Driver for the Word Frequency project.
 *
 *************************************************************/

#include "HashedSplays.h"  // Includes constants
const int ALPHABET_SIZE = 26;

using namespace std;

int main(int argc, char *argv[]) {

    try {
        // Instatiate the main object
        HashedSplays wordFrequecy(ALPHABET_SIZE);
        // Build the trees
        wordFrequecy.FileReader(argv[1]);

        // Test methods to show hashed splay trees work
        wordFrequecy.PrintHashCountResults();
        wordFrequecy.PrintTree(19); // Prints the "T" tree
        wordFrequecy.PrintTree("F");
        wordFrequecy.PrintTree("K"); // should be mpty running input1
        wordFrequecy.FindAll("The"); // should find all the's (ignoring case)
        cout << endl;
    }
    // Error catching
    catch (Exceptions &cException) {
        cout << "EXCEPTION: " << cException.GetMessage() << endl;
        return 1;
    }

    //Uncomment for number of seconds running.
    //cout << clock() / (float)(CLOCKS_PER_SEC) << endl;
    return 0;
}
