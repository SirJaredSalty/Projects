/**************************************************************
 * File:    Exceptions.h
 * Project: CMSC 341 - Project 3 - Word Frequency Splay Tree
 * Author:  Jared Soltas
 * Date:    7-July-2020
 * Section: Lecture-01
 * E-mail:  jsoltas1.@umbc.edu
 *
 * Exceptions Class definition and implementation. Makes exception objects.
 *
 *************************************************************/

#ifndef MYEXCEPTIONS_H
#define MYEXCEPTIONS_H

#include <string>

class Exceptions {
public:
    /**********************************************************************
     * Name: MyExceptions (Constructor)
     * PreCondition: String containing error description.
     *
     * PostCondition:  Error object
     *********************************************************************/
    Exceptions(std::string message): m_message(message) {}

    /**********************************************************************
     * Name: GetMessage
     * PreCondition: None.
     *
     * PostCondition:  Returns error message.
     *********************************************************************/
    const std::string GetMessage() { return m_message; }

private:

    std::string m_message; //Error message.
};

#endif
