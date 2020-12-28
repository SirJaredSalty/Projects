/**************************************************************
 * File:    Utility.cpp
 * Project: CMSC 341 - Project 2 - Index Creator
 * Author:  Jared Soltas
 * Date:    21-June-2020
 * Section: Lecture-01
 * E-mail:  jsoltas1@umbc.edu
 *
 * Utility Class implementation. Modifies strings.
 *
 *************************************************************/

#include "Utility.h"
#include <iostream>
using namespace std;


// Removes all punctuations from each word in the string
void Utility::RemovePunct(string &fileLines){
    unsigned int stringLen = fileLines.size();

    // Loops for the length of the string and removes punctuations
    for(unsigned int i = 0; i < stringLen; i++){

        // Removes any digits in the string
        if(isdigit(fileLines[i])){
            fileLines[i] = ' ';
        }

        else if(ispunct(fileLines[i])){

            // Removes all punctuations that aren't a hyphen
            if(fileLines[i] != '-'){
                fileLines[i] = ' ';
            }

            // Removes hyphens that aren't between 2 letters
            else if(!isalpha(fileLines[i - 1]) || !isalpha(fileLines[i + 1])){
                fileLines[i] = ' ';
            }
        }
    }
}


// Loops through the file string and makes all strings lowercase
void Utility::ToLower(string &fileLines){
    for(unsigned int i = 0; i < fileLines.size(); i++){
        if(isupper(fileLines[i])){
            fileLines[i] = tolower(fileLines[i]);
        }
    }
}
