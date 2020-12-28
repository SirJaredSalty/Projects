/**************************************************************
 * File:    Util.h
 * Project: CMSC 341 - Project 3 - Word Frequency Splay Tree
 * Author:  Jared Soltas
 * Date:    7-July-2020
 * Section: Lecture-01
 * E-mail:  jsoltas1@umbc.edu
 *
 * Util Class definition.
 *
 * This class provides some support functions to other classes.
 *
 * Lower() - Returns a string in lower case.
 * Strip() - Removes all nonalpha characters except ' and -
 * FileExisits() - Verifes a file exists.
 *
 *************************************************************/

#ifndef UTIL_H
#define UTIL_H

#include <string>
#include <fstream>

class Util{

public:
/**********************************************************************
 * Name: Lower (Static)
 * PreCondition: String.
 *
 * PostCondition:  Lower case version of string.
 *********************************************************************/
static std::string Lower(std::string inString);


/**********************************************************************
 * Name: Strip (Static)
 * PreCondition: String.
 *
 * PostCondition:  Returns string of just alpha characters.
 *********************************************************************/
static std::string Strip(std::string inString);


/**********************************************************************
 * Name: FileExisits (Static)
 * PreCondition: Name of file to check for.
 *
 * PostCondition:  Bool True if the file is available.
 *********************************************************************/
static bool FileExists(const char* filename);
};


#endif
