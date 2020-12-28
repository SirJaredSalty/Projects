/**************************************************************
 * File:    Word.h
 * Project: CMSC 341 - Project 2 - Index Creator
 * Author:  Jared Soltas
 * Date:    21-June-2020
 * Section: Lecture-01
 * E-mail:  jsoltas1@umbc.edu
 *
 * Word Class declaration.
 *
 *************************************************************/

#ifndef WORD_H
#define WORD_H

#include <queue>
#include <string>
using namespace std;

class Word{
public:

    // Name: Word (Default Constructor)
    // Desc: Initializes Word's count and text
    // Preconditions: Input data/filter file is read in
    // Postconditions: New Word object is made
    Word();

    // Name: Word (Overloaded Constructor)
    // Desc: Initializes Word's count, text and lineNumber queue
    // Preconditions: Input data/filter file is read in
    // Postconditions: New Word object is made
    Word(string inWord, int lineNumber = 0);

    // Name: CountWord
    // Desc: Adds line number of the word to the lineNumber queue
    // Preconditions: Word exists
    // Postconditions: Word's lineNumber queue is updated
    void CountWord(int lineNumber);

    // Name: IncrementCount
    // Desc: Increments the Word's occurrence in the text
    // Preconditions: Word exists
    // Postconditions: Word's count incremented by 1
    void IncrementCount();

    // Name: GetCount
    // Desc: Returns count of the Word
    // Preconditions: Word exists
    // Postconditions: Returns count int
    int GetCount();

    // Name: SetWord
    // Desc: Sets the wordText private variable
    // Preconditions: File read in
    // Postconditions: Word's text element set
    void SetWord(string word);

    // Name: GetWord
    // Desc: Returns text of the Word
    // Preconditions: Word exists
    // Postconditions: Returns wordText string
    string GetWord() const;

    // Name: PopLineNumbers
    // Desc: Returns all popped line numbers from the queue
    // Preconditions: BST is built
    // Postconditions: Returns popped queue lineNumbers
    string PopLineNumbers();

    // Name: Overloaded < operator
    // Desc: Used to compare Word's in the BST
    // Preconditions: Word exists
    // Postconditions: Word's sorted in the BST
    bool operator<(const Word &RHS) const;

    // Name: Overloaded == operator
    // Desc: Used to compare Word's in the BST
    // Preconditions: Word exists
    // Postconditions: Word's sorted in the BST
    bool operator==(const Word &RHS) const;

    // Name: Overloaded << operator
    // Desc: Used to return an ostream of the Word's contents
    // Preconditions: BST is built
    // Postconditions: Returns ostream of Word's contents
    friend ostream& operator<<(ostream &out, Word &inWord);

private:
    int count; // Number of appearances in text file
    queue<int> lineNumbers; // Line number where the Word appeared
    string wordText; // String text of the Word
};

#endif
