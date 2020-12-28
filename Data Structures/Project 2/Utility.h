/**************************************************************
 * File:    Utility.h
 * Project: CMSC 341 - Project 2 - Index Creator
 * Author:  Jared Soltas
 * Date:    21-June-2020
 * Section: Lecture-01
 * E-mail:  jsoltas1@umbc.edu
 *
 * Utility Class declaration.
 *
 *************************************************************/

#ifndef UTILITY_H
#define UTILITY_H

#include <string>
using namespace std;

class Utility{
public:

    // Name: RemovePunct
    // Desc: Removes punctuations from strings
    // Preconditions: Input data/filter file is read in
    // Postconditions: Input data/filter file punctuations removed
    void RemovePunct(string &fileLines);

    // Name: ToLower
    // Desc: Makes all strings lowercase
    // Preconditions: Input data/filter file is read in
    // Postconditions: Input data/filter file strings are lowercase
    void ToLower(string &fileLines);
};


#endif
