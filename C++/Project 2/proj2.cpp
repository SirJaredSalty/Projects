/*****************************************
** File:    proj2.cpp
** Project: CMSC 202 Project 2, Spring 2020
** Author:  Jared Soltas
** Date:    03/7/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file is the main driver for this program. It creates an
** object and starts game. This entire program allows the user
** to play the game of Subnautica. In this game the user can
** search for raw materials and then craft advanced materials.
** Once enough advanced and raw materials are collected the user
** can craft unique which increases the diver's depth. Getting
** to a depth of 1000 wins the game.
**
**
***********************************************/

#include "Game.h"

#include <iostream>
#include <cstdlib>
#include <string>
#include <ctime>
using namespace std;

int main () {
  Game newGame; // Creates a Game object
  newGame.StartGame(); // Starts the game
  return 0;
}
