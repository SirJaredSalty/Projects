/**************************************************************
 * File:    Word.cpp
 * Project: CMSC 341 - Project 2 - Index Creator
 * Author:  Jared Soltas
 * Date:    21-June-2020
 * Section: Lecture-01
 * E-mail:  jsoltas1@umbc.edu
 *
 * Word Class implementation. Creates Word objects.
 *
 *************************************************************/

#include "Word.h"
#include <iomanip>
#include <iostream>
using namespace std;


// Default constructor initializes count and wordText.
Word::Word(){
    SetWord("");
    count = 0;
}


// Overloaded constructor initializes wordText, count and
// lineNumber in the queue.
Word::Word(string inWord, int lineNumber){
    SetWord(inWord);
    CountWord(lineNumber);
    count = 1;
}


// Increments the number of times the Word is in the text.
void Word::IncrementCount(){
    count++;
}


// Returns the count of the Word.
int Word::GetCount(){
    return count;
}


// Adds line numbers to the lineNumber queue.
void Word::CountWord(int lineNumber){
    if(lineNumbers.size() == 0 || lineNumber != lineNumbers.back()){
        lineNumbers.push(lineNumber);
    }
}


// Sets the wordText
void Word::SetWord(string word){
    wordText = word;
}


// Returns wordText of the Word.
string Word::GetWord() const{
    return wordText;
}


string Word::PopLineNumbers(){
    string poppedNumbers = "";
    while(!lineNumbers.empty()){
        poppedNumbers.append(to_string(lineNumbers.front()) + " ");
        lineNumbers.pop();
    }

    return poppedNumbers;
}


// Overloaded < operator for comparing within the BST.
bool Word::operator<(const Word &RHS) const{
    return GetWord() < RHS.GetWord();
}


// Overloaded == operator for comparing within the BST.
bool Word::operator==(const Word &RHS) const{
    return GetWord() == RHS.GetWord();
}


// Overloaded << operator for getting ostream returned.
ostream& operator<<(ostream &out, Word &inWord){

    // ostream for the filteredBST
    if(inWord.lineNumbers.front() == -1){
        out << inWord.GetWord();
    }

    // ostream for the indexedBST
    else{
        out << left << setfill('.') << setw(24) << inWord.GetWord()
        << inWord.GetCount() << ": " << inWord.PopLineNumbers();
    }

    return out;
}
