/*****************************************
** File:    CipherTool.cpp
** Project: CMSC 202 Project 4, Spring 2020
** Author:  Jared Soltas
** Date:    04/16/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the implementation for the child CipherTool class.
** Child of Cipher, Caesar, Vigenere and Ong.
**
***********************************************/

// Preprocessor directives
#include "Caesar.h"
#include "Vigenere.h"
#include "Ong.h"
#include "CipherTool.h"
#include <fstream>
#include <vector>
#include <iostream>
#include <string>
using namespace std;


// CipherTool overloaded constructor sets m_filename to the passed
// string filename.
CipherTool::CipherTool(string filename){
    m_filename = filename;
}


// CipherTool destructor deletes all dynamically allocated cipher pointers
// in the vector and sets them to null.
CipherTool::~CipherTool(){
    for(int i = 0; i < int(m_ciphers.size()); i++){
         delete m_ciphers.at(i);
         m_ciphers.at(i) = nullptr;
    }
}


// Loads all the ciphers in from the designated file and creates dynamically
// allocated ciphers. The ciphers are then added to the m_ciphers vector.
void CipherTool::LoadFile(){
    char cipherType; // Type of cipher
    bool isEncrypted; // 1 or 0 if encrypted/decrypted
    string message; // Message of the cipher
    string key; // Key of Vigenere cipher
    int shift; // Shift of Caesar cipher

    ifstream openFile(m_filename);

    // Loops while there's a cipherType on a newline to be inserted
    while(openFile >> cipherType){
        openFile.ignore(1, '|');
        openFile >> isEncrypted;
        openFile.ignore(1, '|');
        getline(openFile, message, '|');
        getline(openFile, key);

        // If the cipherType is 'c' then make a new Caesar cipher and add
        // it to the m_cipher vector
        if(cipherType == 'c'){
            shift = stoi(key);
            Cipher* newCaesar = new Caesar(message, isEncrypted, shift);
            m_ciphers.push_back(newCaesar);
        }

        // If the cipherType is 'v' then make a new Vigenere cipher and add
        // it to the m_cipher vector
        else if (cipherType == 'v'){
            Cipher* newVigenere = new Vigenere(message, isEncrypted, key);
            m_ciphers.push_back(newVigenere);
        }

        // If the cipherType is 'o' then make a new Ong cipher and add
        // it to the m_cipher vector
        else{
            Cipher* newOng = new Ong(message, isEncrypted);
            m_ciphers.push_back(newOng);
        }
    }

    openFile.close();
}


// Displays all the current messages of all ciphers in the m_ciphers vector.
void CipherTool::DisplayCiphers(){
    char cipherSubtype; // Character of the cipher's subtype

    for(int i = 0; i < int(m_ciphers.size()); i++){

        // Gets the subtype for the cipher at the current index
        cipherSubtype = GetType(m_ciphers.at(i));

        cout << i + 1 << ". ";
        if(cipherSubtype == 'C')
            cout << *m_ciphers.at(i) << "(Caesar)\n";

        // If the subtype is 'V' then it's a Vigenere cipher
        else if(cipherSubtype == 'V')
            cout << *m_ciphers.at(i) << "(Vigenere)\n";

        else
            cout << *m_ciphers.at(i) << "(Ong)\n";
    }

    cout << endl;
}


// Encrypts or Decrypts all ciphers in the m_ciphers vector. If the argument
// encryptMessage is true then encrypt all messages and if encryptMessage is
// false then decrypt all messages.
void CipherTool::EncryptDecrypt(bool encryptMessage){
    int changedMessages = 0; // Count of messages encrypted/decrypted
    string encryptionType; // String of encrypted or decrypted

    for(int i = 0; i < int(m_ciphers.size()); i++){

        // If the bool argument is true then encrypt all ciphers
        if(encryptMessage){
            encryptionType = "encrypted";

            // Only encrypts if they're not already encrypted
            if(m_ciphers.at(i)->GetIsEncrypted() == false){
                m_ciphers.at(i)->Encrypt();
                m_ciphers.at(i)->ToggleEncrypted();
                changedMessages++;
            }
        }

        // If the bool argument is false then decrypt all ciphers
        else{
            encryptionType = "decrypted";

            // Only decrypts if they're not already decrypted
            if(m_ciphers.at(i)->GetIsEncrypted() == true){
                m_ciphers.at(i)->Decrypt();
                m_ciphers.at(i)->ToggleEncrypted();
                changedMessages++;
            }
        }
    }

    // Prints out how many ciphers were encrypted/decrypted
    cout << changedMessages << " ciphers " << encryptionType << ".\n\n";
}


// Exports all current ciphers in the m_ciphers vector to a text file.
void CipherTool::Export(){
    ofstream outputFile; // Output stream variable
    string fileName = ""; // Name of the file

    cout << "What do you want to name your file? ";
    cin >> fileName;
    outputFile.open(fileName);

    // Loops entire length of m_ciphers and inserts into output stream variable
    for(int i = 0; i < int(m_ciphers.size()); i++)
        outputFile << m_ciphers.at(i)->FormatOutput();

    outputFile.close();

    cout << m_ciphers.size() << " ciphers exported.\n\n";
}


// Displays the main menu and options for the user.
int CipherTool::Menu(){
    cout << "1. Display All Ciphers\n2. Encrypt All Ciphers\n\
    \b\b\b\b3. Decrypt All Ciphers\n4. Export All Ciphers\n5. Quit\n";

    bool encrypt = true; // Encrypting is set as true
    bool decrypt = false; // Decrypting is set as false
    int menuChoice = 0; // Current menu choice

    cin >> menuChoice;

    // Switch statements controls user input
    switch(menuChoice){

        // Case when the user wants to display all ciphers
        case 1:
            DisplayCiphers();
            return 1;
            break;

        // Case when the user wants to encrypt all ciphers
        case 2:
            EncryptDecrypt(encrypt);
            return 2;
            break;

        // Case when the user wants to decrypt all ciphers
        case 3:
            EncryptDecrypt(decrypt);
            return 3;
            break;

        // Case when the user wants to export all ciphers to a text file
        case 4:
            Export();
            return 4;
            break;

        // Case for when the user wants to quit
        case 5:
            return 5;
            break;

        // Default case for when the user doesn't enter valid input
        default:
            cout << "Enter a valid menu choice.\n\n";
            return 0;
    }
}


// Returns the character subtype of the cipher passed in.
char CipherTool::GetType(Cipher* cipher){
    string cipherSubtype = cipher->ToString();
    return cipherSubtype[0];
}


// Starts the program by calling LoadFile() and Menu().
void CipherTool::Start(){
    int menuChoice = 0; // Current menu choice
    LoadFile(); // Calls LoadFile() function

    // Calls the menu function until the user quits
    while(menuChoice != 5)
        menuChoice = Menu();

    cout << "Thanks for using UMBC Encryption.\n";
}
