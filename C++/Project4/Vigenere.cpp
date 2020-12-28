/*****************************************
** File:    Vigenere.cpp
** Project: CMSC 202 Project 4, Spring 2020
** Author:  Jared Soltas
** Date:    04/16/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the implementation of the child Vigenere class.
** Child of Cipher.
**
***********************************************/


// Preprocessor directives
#include "Cipher.h"
#include "Vigenere.h"
#include <istream>
#include <string>
using namespace std;


// Vigenere default constructor. Sets default key to test.
// Uses Cipher as a list initializer for the message and encryption type.
Vigenere::Vigenere(): Cipher(){
    string defaultKey = "test";
    m_key = defaultKey;
}


// Vigenere overloaded constructor. Sets the passed message, encryption type
// and the unique key used to encrypt the message.
// Uses Cipher as a list initializer for the message and encryption type.
Vigenere::Vigenere(string message, bool isEncrypted, string key): Cipher(message, isEncrypted){
    m_key = key;
}


// Vigenere destructor which isn't used.
Vigenere::~Vigenere(){}


// Encryption function for Vigenere ciphers. Uses a special key that has
// each index compared to the indices of the decrypted message. The message
// then shifts a certain number to the right.
void Vigenere::Encrypt(){
    string vigenereMessage = GetMessage(); // Gets the current message
    int messageLength = vigenereMessage.length(); // Length of the message
    string encryptedVigenereMessage = ""; // String for new encrypted message
    int keyLength = m_key.length(); // Length of the key
    int keyIndex = 0; // Current index of the key
    int keyShift = 0; // Shift value calculated from the key

    // Enum for total letters in alphabet and the ASCII
    // values of capital A, Z and lowercase a,z
    enum{alphabet = 26, upperA = 65, upperZ = 90, lowerA = 97, lowerZ = 122};

    for(int i = 0; i < messageLength; i++){

        // Resets keyIndex to 0 once entire key has been used
        if(keyIndex > keyLength - 1)
            keyIndex = 0;

        // If the current key index is between captial A and capital Z
        if(m_key[keyIndex] >= upperA && m_key[keyIndex] <= upperZ){
            keyShift = m_key[keyIndex] - upperA;
        }

        // If the current key index is between lowercase A and lowercase Z
        else if(m_key[keyIndex] >= lowerA && m_key[keyIndex] <= lowerZ){
            keyShift = m_key[keyIndex] - lowerA;
        }

        // If the message index is between capital A and capital Z
        if(vigenereMessage[i] >= upperA && vigenereMessage[i] <= upperZ){
            if(vigenereMessage[i] + keyShift > upperZ)
                encryptedVigenereMessage += (vigenereMessage[i] + keyShift - alphabet);
            else
                encryptedVigenereMessage += (vigenereMessage[i] + keyShift);
            keyIndex++;
        }

        // If the message index is between lowercase A and lowercase Z
        else if(vigenereMessage[i] >= lowerA && vigenereMessage[i] <= lowerZ){
            if(vigenereMessage[i] + keyShift > lowerZ)
                encryptedVigenereMessage += (vigenereMessage[i] + keyShift - alphabet);
            else
                encryptedVigenereMessage += (vigenereMessage[i] + keyShift);
            keyIndex++;
        }

        // If the message index isn't a letter
        else
            encryptedVigenereMessage += vigenereMessage[i];
    }

    SetMessage(encryptedVigenereMessage);
}


// Decryption function for Vigenere ciphers. Uses a special key that has
// each index compared to the indices of the encrypted message. The message
// then shifts a certain number to the left.
void Vigenere::Decrypt(){
    string vigenereMessage = GetMessage(); // Current Vigenere message
    int messageLength = vigenereMessage.length(); // Length of message
    string decryptedVigenereMessage = ""; // New decrypted message
    int keyLength = m_key.length(); // Length of key
    int keyIndex = 0; // Current key index
    int keyShift = 0; // Calculated shift value

    // Enum for total letters in alphabet and the ASCII
    // values of capital A, Z and lowercase a,z
    enum{alphabet = 26, upperA = 65, upperZ = 90, lowerA = 97, lowerZ = 122};

    for(int i = 0; i < messageLength; i++){

        // Reset keyIndex to 0 if the entire key has been compared
        if(keyIndex > keyLength - 1)
            keyIndex = 0;

        // If the current key index is between capital A and capital Z
        if(m_key[keyIndex] >= upperA && m_key[keyIndex] <= upperZ){
            keyShift = m_key[keyIndex] - upperA;
        }

        // If the current key index is between lowercase A and lowercase Z
        else if(m_key[keyIndex] >= lowerA && m_key[keyIndex] <= lowerZ){
            keyShift = m_key[keyIndex] - lowerA;
        }

        // If the message index is between capital A and capital Z
        if(vigenereMessage[i] >= upperA && vigenereMessage[i] <= upperZ){
            if(vigenereMessage[i] - keyShift < upperA)
                decryptedVigenereMessage += (vigenereMessage[i] - keyShift + alphabet);
            else
                decryptedVigenereMessage += (vigenereMessage[i] - keyShift);
            keyIndex++;
        }

        // If the message index is between lowercase A and lowercase Z
        else if(vigenereMessage[i] >= lowerA && vigenereMessage[i] <= lowerZ){
            if(vigenereMessage[i] - keyShift < lowerA)
                decryptedVigenereMessage += (vigenereMessage[i] - keyShift + alphabet);
            else
                decryptedVigenereMessage += (vigenereMessage[i] - keyShift);
            keyIndex++;
        }

        // If the message index isn't a letter
        else
            decryptedVigenereMessage += vigenereMessage[i];
    }

    SetMessage(decryptedVigenereMessage);
}


// Returns the subtype of the current cipher (Vigenere).
string Vigenere::ToString(){
    string subtype = "Vigenere";
    return subtype;
}


// Returns a string of a formatted file cipher
// Used to export to a file.
string Vigenere::FormatOutput(){
    stringstream vigenereMessage; // String stream for message

    // Inserts the statement into the string stream
    vigenereMessage << 'v' << DELIMITER << GetIsEncrypted()
    << DELIMITER << GetMessage() << DELIMITER << m_key << endl;

    // Returns string stream as a string
    return vigenereMessage.str();
}
