/*****************************************
** File:    Ong.cpp
** Project: CMSC 202 Project 4, Spring 2020
** Author:  Jared Soltas
** Date:    04/16/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the implementation of the child Ong class.
** Child of Cipher.
**
***********************************************/


// Preprocessor directives
#include "Cipher.h"
#include "Ong.h"
#include <istream>
#include <string>
#include <vector>
using namespace std;

// Ong default constructor.
// Uses Cipher as a list initializer for the message and encryption type.
Ong::Ong(): Cipher(){}


// Ong overloaded constructor. Sets the cipher's message and encryption type.
// Uses Cipher as a list initializer for the message and encryption type.
Ong::Ong(string message, bool isEncrypted): Cipher(message, isEncrypted){}


// Ong destructor which isn't used.
Ong::~Ong(){}


// Returns true or false if the character argument is a
// vowel/space/punctuation or not.
bool Ong::IsVowel(char messageChar){
    const string ongCharacters = "aeiouAEIOU .;()"; // Characters with no ong
    for(int i = 0; i < int(ongCharacters.length()); i++){

        // Returns true if argument character is in ongCharacters
        if(ongCharacters[i] == messageChar)
            return true;
    }

    // Return false if argument character isn't in ongCharacters
    return false;
}


// Encryption function for Ong ciphers. Adds "ong" after every consonant.
void Ong::Encrypt(){
    string ongMessage = GetMessage(); // Current Ong message
    string encryptedOngMessage = ""; // New encrypted Ong message
    int messageLength = ongMessage.length(); // Length of current message

    for(int i = 0; i < messageLength; i++){

        // If the current index isn't a vowel/space/punctuation
        if(!IsVowel(ongMessage[i])){
            encryptedOngMessage += ongMessage[i];
            if(ongMessage[i + 1] != ' ' && i + 1 != messageLength)
                encryptedOngMessage += "ong-";

            // Adds "ong" if next character in the message is a space
            else
                encryptedOngMessage += "ong";
        }

        // If the current index is a vowel/space/punctuation
        else{
            encryptedOngMessage += ongMessage[i];
            if(ongMessage[i] != ' ' && ongMessage[i + 1] != ' ' && i + 1 != messageLength)
                encryptedOngMessage += '-';
        }
    }

    // Sets the new encrypted Ong message
    SetMessage(encryptedOngMessage);
}


// Decryption function for Ong ciphers. Removes the "ong" in the
// encrypted messages.
void Ong::Decrypt(){
    string ongMessage = GetMessage(); // Gets current Ong message
    string decryptedOngMessage = ""; // New decrypted Ong message
    int messageLength = ongMessage.length(); // Length of current message
    int index = 0; // Current index in the message
    int ongSkip = 4; // Characters needed to skip past "ong" in message

    while(index < messageLength){

        // when at the first index
        if(index == 0){
            decryptedOngMessage += ongMessage[index];
            index += ongSkip;
        }

        // When the index of the message is a dash
        if(ongMessage[index] == '-')
            index++;

        // If the index isn't a vowel/space/punctuation
        if(!IsVowel(ongMessage[index])){
            decryptedOngMessage += ongMessage[index];
            index += ongSkip;
        }

        // If the current index is a vowel/space/punctuation
        else{
            decryptedOngMessage += ongMessage[index];
            index++;
        }
    }

    // Sets the new decrypted Ong message
    SetMessage(decryptedOngMessage);
}


// Returns the subtype of the current cipher (Ong).
string Ong::ToString(){
    string subtype = "Ong";
    return subtype;
}


// Returns a formatted string output used in cipher files.
// Used to export to a file.
string Ong::FormatOutput(){
    stringstream ongMessage; // String stream for Ong message

    // Inserts output in ongMessage stream
    ongMessage << 'o' << DELIMITER << GetIsEncrypted()
    << DELIMITER << GetMessage() << DELIMITER << endl;

    // Returns ongMessage as a string
    return ongMessage.str();
}
