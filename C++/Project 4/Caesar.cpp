/*****************************************
** File:    Caesar.cpp
** Project: CMSC 202 Project 4, Spring 2020
** Author:  Jared Soltas
** Date:    04/16/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the implementation of the child Caesar class.
** Child of Cipher.
**
***********************************************/


// Preprocessor directives
#include "Cipher.h"
#include "Caesar.h"
#include <istream>
#include <string>
using namespace std;


// Caesar default constructor sets m_shift to a default of 3.
// Uses Cipher as a list initializer for the message and encryption type.
Caesar::Caesar(): Cipher(){
    int defaultShift = 3;
    m_shift = defaultShift;
}


// Caesar overloaded constructor. Takes in the cipher message, whether it's
// encrypted or not and the shift value special to Caesar ciphers.
// Uses Cipher as a list initializer for the message and encryption type.
Caesar::Caesar(string message, bool isEncrypted, int shift): Cipher(message, isEncrypted){
    m_shift = shift;
}


// Caesar destructor which isn't used.
Caesar::~Caesar(){}


// Encryption function for the Caesar ciphers. Shifts all letters within
// the decrypted message a certain shift number to the right in the alphabet.
void Caesar::Encrypt(){
    string caesarMessage = GetMessage(); // Gets the current Caesar message
    string encryptedCaesarMessage = ""; // String for the new encrypted message
    int messageLength = caesarMessage.length(); // Length of current message

    // Enum for total letters in alphabet and the ASCII
    // values of capital A, Z and lowercase a,z.
    enum{alphabet = 26, upperA = 65, upperZ = 90, lowerA = 97, lowerZ = 122};

    // Mods the shift value if it exceeds the total numbers in the alphabet
    if(m_shift >= alphabet)
        m_shift = m_shift % alphabet;

    // Loops through the current message and shifts every letter forward
    for(int i = 0; i < messageLength; i++){

        // If the message index is a letter between capital A and capital Z
        if(caesarMessage[i] >= upperA && caesarMessage[i] <= upperZ){
            if(caesarMessage[i] + m_shift > upperZ)
                encryptedCaesarMessage += (caesarMessage[i] + m_shift - alphabet);
            else
                encryptedCaesarMessage += (caesarMessage[i] + m_shift);
        }

        // If the message index is a letter between lowercase a and lowercase z
        else if(caesarMessage[i] >= lowerA && caesarMessage[i] <= lowerZ){
            if(caesarMessage[i] + m_shift > lowerZ)
                encryptedCaesarMessage += (caesarMessage[i] + m_shift - alphabet);
            else
                encryptedCaesarMessage += (caesarMessage[i] + m_shift);
            }

        // If the message index isn't a letter
        else
            encryptedCaesarMessage += caesarMessage[i];
    }

    SetMessage(encryptedCaesarMessage);
}


// Decryption function for the Caesar ciphers. Shifts all letters within
// the encrypted message a certain shift number to the left in the alphabet.
void Caesar::Decrypt(){
    string caesarMessage = GetMessage(); // Gets the current Caesar message
    string decryptedCaesarMessage = ""; // String for the new decrypted message
    int messageLength = caesarMessage.length(); // Length of current message

    // Enum for total letters in alphabet and the ASCII
    // values of capital A, Z and lowercase a,z
    enum{alphabet = 26, upperA = 65, upperZ = 90, lowerA = 97, lowerZ = 122};

    // Mods the shift value if it exceeds the total numbers in the alphabet
    if(m_shift >= alphabet)
        m_shift = m_shift % alphabet;

    // Loops through the current message and shifts the letters backwards
    for(int i = 0; i < messageLength; i++){

        // If the message index is a letter between capital A and capital Z
        if(caesarMessage[i] >= upperA && caesarMessage[i] <= upperZ){
            if(caesarMessage[i] - m_shift < upperA)
                decryptedCaesarMessage += (caesarMessage[i] - m_shift + alphabet);
            else
                decryptedCaesarMessage += (caesarMessage[i] - m_shift);
        }

        // If the message index is a letter between lowercase a and lowercase z
        else if(caesarMessage[i] >= lowerA && caesarMessage[i] <= lowerZ){
            if(caesarMessage[i] - m_shift < lowerA)
                decryptedCaesarMessage += (caesarMessage[i] - m_shift + alphabet);
            else
                decryptedCaesarMessage += (caesarMessage[i] - m_shift);
            }

        // If the message index isn't a letter
        else
            decryptedCaesarMessage += caesarMessage[i];
    }

    SetMessage(decryptedCaesarMessage);
}


// Returns the string of the cipher subtype (Caesar).
string Caesar::ToString(){
    string subtype = "Caesar";
    return subtype;
}


// Returns a string of what a file of type Caesar would look like.
// Used to export to a file.
string Caesar::FormatOutput(){
    stringstream caesarMessage; // String stream for Caesar message

    // Inserts the statement into the string stream caesarMessage
    caesarMessage << 'c' << DELIMITER << GetIsEncrypted()
    << DELIMITER << GetMessage() << DELIMITER << m_shift << endl;

    // Returns the string stream as a string
    return caesarMessage.str();
}
