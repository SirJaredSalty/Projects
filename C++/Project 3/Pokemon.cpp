/*****************************************
** File:    Pokemon.cpp
** Project: CMSC 202 Project 3, Spring 2020
** Author:  Jared Soltas
** Date:    03/23/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the Pokemon class node with their index, name, type
** strength, health and pointer to the next Pokemon in the linked list.
**
***********************************************/

// Imports the Pokemon class header
#include "Pokemon.h"

// Imports the necessary libraries
#include <iostream>
#include <iomanip>
#include <string>
using namespace std;


// Pokemon default constructor
Pokemon::Pokemon()
{
    // Default Pokemon values
    m_index = 0;
    m_name = "";
    m_type = "";
    m_strong = "";
    m_health = 0;
}

// Pokemon overloaded constructor
Pokemon::Pokemon(int index, string name, string type, string strong)
{
    m_index = index;
    m_name = name;
    m_type = type;
    m_strong = strong;
}


// Returns the m_next pointer for the next Pokemon in the linked list
Pokemon* Pokemon::GetNext()
{
    return m_next;
}


// Returns a string of the Pokemon's name in a particular node
string Pokemon::GetName()
{
    return m_name;
}


// Returns an integer of the Pokemon's index in a particular node
int Pokemon::GetIndex()
{
    return m_index;
}


// Returns a string of the Pokemon's type in a particular node
string Pokemon::GetType()
{
    return m_type;
}


// Returns an integer of the Pokemon's health in a particular node
int Pokemon::GetHealth()
{
    return m_health;
}


// Returns a string of what a Pokemon is strong against in a particular node
string Pokemon::GetStrong()
{
    return m_strong;
}


// Given the health of a particular Pokemon in a node
// Returns nothing
void Pokemon::SetHealth(int health)
{
    m_health = health;
}


// Given the next Pokemon in the linked list to be set to m_next
// Returns nothing
void Pokemon::SetNext(Pokemon* nextPokemon)
{
    m_next = nextPokemon;
}


// Overloaded << insertion operator to print out Pokemon node pointers
ostream& operator<<(ostream &output, Pokemon &P)
{
    // Format the output to have the columns aligned straight
    output << left << setw(WIDTH_SIZE_ONE) << "Index: " << setw(WIDTH_SIZE_ONE) << P.m_index;
    output << setw(WIDTH_SIZE_ONE) << " Name: " << setw(WIDTH_SIZE_TWO) << P.m_name;
    output << setw(WIDTH_SIZE_ONE) << " Type: " << setw(WIDTH_SIZE_TWO) << P.m_type;
    output << setw(WIDTH_SIZE_ONE) << " Health: " << P.m_health << endl;
    return output;
}
