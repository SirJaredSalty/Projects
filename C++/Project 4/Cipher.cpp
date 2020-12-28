/*****************************************
** File:    Cipher.cpp
** Project: CMSC 202 Project 4, Spring 2020
** Author:  Jared Soltas
** Date:    04/16/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the implementation of the parent Cipher class.
**
***********************************************/


// Preprocessor directives
#include "Cipher.h"
#include <sstream>
#include <iostream>
#include <string>
using namespace std;


// Cipher default constructor. Sets default values.
Cipher::Cipher(){
    SetMessage("");
    m_isEncrypted = false;
}


// Cipher overloaded constructor. Takes in a cipher message and
// boolean saying if the message is encrypted or not.
Cipher::Cipher(string message, bool isEncrypted){
    SetMessage(message);
    m_isEncrypted = isEncrypted;
}


// Cipher destructor which isn't used.
Cipher::~Cipher(){}


// Returns the message of a child class cipher.
string Cipher::GetMessage(){
    return m_message;
}


// Returns the encryption type of a child class cipher.
bool Cipher::GetIsEncrypted(){
    return m_isEncrypted;
}


// Takes a cipher message and sets the message of a child class cipher.
void Cipher::SetMessage(string message){
    m_message = message;
}


// Toggles the encryption type of a child class cipher.
void Cipher::ToggleEncrypted(){
    if(m_isEncrypted == true)
        m_isEncrypted = false;
    else
        m_isEncrypted = true;
}


// Overloaded << operator to print out child class cipher messages.
ostream &operator<<( ostream &output, Cipher &C){
    output << C.m_message;
    return output;
}
