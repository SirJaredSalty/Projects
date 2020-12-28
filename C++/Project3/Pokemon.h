/*****************************************
** File:    Pokemon.h
** Project: CMSC 202 Project 3, Spring 2020
** Author:  Jared Soltas
** Date:    03/23/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the Pokemon class prototype declaration.
**
***********************************************/

// File header guards
#ifndef POKEMON_H
#define POKEMON_H

// Imports libraries
#include <iostream>
#include <vector>
#include <cstdlib>
#include <iomanip>
#include <string>
#include <fstream>
using namespace std;


//**Constants**
const int MAX_HEALTH = 9; //Starting health for each Pokemon
const int WIDTH_SIZE_ONE = 4; // Width size of first column format
const int WIDTH_SIZE_TWO = 11; // Width size of second column format

class Pokemon {
public:
  // Name: Pokemon
  // Desc - Default Constructor
  // Preconditions - None
  // Postconditions - Creates Pokemon with default values
  Pokemon();
  // Name: Pokemon(int, string, string, string)
  // Desc - Overloaded Constructor
  // Preconditions - Have index, name, type, and what the Pokemon is strong against
  // Postconditions - Creates Pokemon using passed values
  Pokemon(int, string, string, string);
  // Name: GetNext
  // Desc - Returns pointer to the next pokemon
  // Preconditions - Pokemon exists
  // Postconditions - Returns pointer to next pokemon in linked list
  Pokemon* GetNext();
  // Name: GetName
  // Desc - Returns Name
  // Preconditions - Pokemon exists
  // Postconditions - Returns name of Pokemon
  string GetName();
  // Name: GetIndex
  // Desc - Returns index
  // Preconditions - Pokemon exists
  // Postconditions - Returns index of Pokemon
  int GetIndex();
  // Name: GetType
  // Desc - Returns type
  // Preconditions - Pokemon exists
  // Postconditions - Returns type of Pokemon
  string GetType();
  // Name: GetHealth
  // Desc - Returns health
  // Preconditions - Pokemon exists
  // Postconditions - Returns health of Pokemon
  int GetHealth();
  // Name: GetStrong
  // Desc - Returns type of Pokemon this Pokemon is strong against
  // Preconditions - Pokemon exists
  // Postconditions - Returns type of Pokemon this Pokemon is strong against
  string GetStrong();
  // Name: SetHealth
  // Desc - Sets health of pokemon
  // Preconditions - Pokemon exists
  // Postconditions - Updates health of Pokemon
  void SetHealth(int);
  // Name: SetNext
  // Desc - Sets the pointer to the next Pokemon in the list
  // Preconditions - Pokemon exists
  // Postconditions - Sets the pointer to the next Pokemon
  void SetNext(Pokemon*);
  // Name: Overloaded << Operator
  // Desc - Allows us to cout a Pokemon object
  // Preconditions - Pokemon exists
  // Postconditions - When a Pokemon object is cout, shows name, health, and type
  friend ostream &operator<<( ostream &output, Pokemon &P);
private:
  string m_name; //Name of Pokemon
  int m_index; //Index of Pokemon
  string m_type; //Type of Pokemon
  string m_strong; //Type of Pokemon this Pokemon is strong against (5 damage)
  int m_health; //Health of Pokemon
  Pokemon *m_next = nullptr; //Pointer to next Pokemon in list
};
#endif