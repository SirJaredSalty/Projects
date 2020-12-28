/*****************************************
** File:    Game.cpp
** Project: CMSC 202 Project 3, Spring 2020
** Author:  Jared Soltas
** Date:    03/23/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the Game class that take care of the game operating.
** It loads in the Pokemon file, allows the user to choose their Pokemon,
** creates the CPU's Pokemon team, displays the main menu and checks to see
** if the CPU/user won.
**
***********************************************/

// Imports class header files
#include "Pokemon.h"
#include "PokemonList.h"
#include "Game.h"

// Imports necessary libraries
#include <string>
#include <fstream>
#include <iostream>
using namespace std;


// Game default constructor that's passed a string for the Pokemon file data
// and initializes m_list, m_userPocket, m_enemyPocket to new PokemonLists
Game::Game(string file)
{
    m_filename = file;

    // Initializes 3 new PokemonList pointers
    m_list = new PokemonList();
    m_userPocket = new PokemonList();
    m_enemyPocket = new PokemonList();
}


// Game destructor that calls the Pokemon node destructor for each pocket
// and then destructs the PokemonList pockets themselves
Game::~Game()
{
    // Calls the PokemonList destructor to delete all Pokemon nodes
    m_list->~PokemonList();
    m_userPocket->~PokemonList();
    m_enemyPocket->~PokemonList();

    // Deletes the PokemonList pockets
    delete m_list;
    delete m_userPocket;
    delete m_enemyPocket;

    // Sets the PokemonList pocket to null
    m_list = nullptr;
    m_userPocket = nullptr;
    m_enemyPocket = nullptr;
}


// LoadFile function loads the data from the Pokemon file and creates
// new Pokemon nodes to be inserted into the master list m_list.
// Takes nothing and returns nothing
void Game::LoadFile()
{
    // Initializes the variables that make up a Pokemon node
    int index = 0;
    string name = "";
    string type = "";
    string strong = "";

    // Opens the file and loops while a Pokemon index is found in the file
    ifstream openFile(m_filename);
    while(openFile >> index)
    {
        // Ignores the comma after the index number
        openFile.ignore(1, ',');

        // Gets the name, type and strong with a comma delimiter
        getline(openFile, name, ',');
        getline(openFile, type, ',');
        openFile >> strong;

        // Ignores newlines from being added
        openFile.ignore(1, '\n');

        // Creates the new Pokemon node and inserts it into m_list
        Pokemon *newPokemon = new Pokemon(index, name, type, strong);
        newPokemon->SetHealth(MAX_HEALTH);
        m_list->InsertEnd(newPokemon);

    }

    // Closes the file
    openFile.close();
}


// ChooseTeam function allows the user to choose Pokemon for their pocket.
// Given nothing and returns nothing
void Game::ChooseTeam()
{
    // Initializes the Pokemon index the user wants to add and the number
    // of Pokemon left the user can still add
    int pokeIndex = 0;
    int pokemonChoices = NUM_TEAM;

    // Loops while the user still has Pokemon left to choose
    while(pokemonChoices > 0)
    {
        // Displays all Pokemon from the m_list
        cout << "Here is the list of Pokemon to choose from:" << endl;
        cout << LINE_SPACER;
        m_list->Display();
        cout << LINE_SPACER;

        cout << "Pick a Pokemon by entering its index (" << pokemonChoices << " left): ";
        cin >> pokeIndex;
        cout << LINE_SPACER;

        // Loops until the user enters a valid Pokemon index 1-151
        while(pokeIndex > 151 || pokeIndex < 1)
        {
            cout << "Enter a valid Pokemon with an index 1-151 (" << pokemonChoices << " left): ";
            cin >> pokeIndex;
        }

        // Loops until the user enters a Pokemon index that wasn't already chosen
        while(!m_list->Exist(pokeIndex))
        {
            // Special display message for Pokemon index not 1-151
            if(pokeIndex > 151 || pokeIndex < 1)
                cout << "Enter a valid Pokemon with an index 1-151 (" << pokemonChoices << " left): ";

            // Message for when the user entered a valid Pokemon index but it was already Chosen
            else
                cout << "That Pokemon has already been chosen (" << pokemonChoices << " left): ";
            cin >> pokeIndex;
        }

        // Calls the transfer function to remove the Pokemon from the master list
        // m_list and add it to the user's list m_userPocket
        m_list->Transfer(pokeIndex, m_userPocket);
        cout << endl;
        pokemonChoices -= 1;
    }
}


// Menu function displays all the menu options to the user.
// Given nothing and returns an integer of the user's choice
int Game::Menu()
{
    // Displays all the menu options
    int menuChoice = 0;
    cout << LINE_SPACER;
    cout << "Menu:" << endl;
    cout << "1. Attack" << endl;
    cout << "2. Swap" << endl;
    cout << "3. Forfeit" << endl;

    // Display tweaks to make the program look nicer
    cout << LINE_SPACER;
    cout << "Menu Choice: ";
    cin >> menuChoice;

    // Loops until the user enters a valid menu option
    while(menuChoice != 1 && menuChoice != 2 && menuChoice != 3)
    {
        cout << "Enter a valid menu choice: ";
        cin >> menuChoice;
    }

    // Returns the menu choice back to the Start function
    return menuChoice;
}


// Battle function maintains the battle outcome and checks if the user or CPU lost/won.
// Given nothing and returns an integer of the outcome, 1 the CPU lost, 2 the
// user lost, 0 otherwise
int Game::Battle()
{
    // Creates an integer for the outcome return of the Attack function
    int pokemonBattle = m_userPocket->Attack(m_enemyPocket);

    // If the outcome of the Attack was the enemy Pokemon fainted
    if(pokemonBattle == 2)
    {
        // Checks if the enemy has no Pokemon left in their pocket
        if(m_enemyPocket->GetSize() == 0)
            return 1;
    }

    // If the outcome of the Attack was the user Pokemon fainted
    if(pokemonBattle == 1)
    {
        // Checks if the user has no more Pokemon in their pocket
        if(m_userPocket->GetSize() == 0)
            return 2;

        // Calls the SwapPokemon function if user's pocket isn't empty
        else
        {
            cout << LINE_SPACER;
            m_userPocket->SwapPokemon();
        }

    }

    return 0;
}


// Start function calls the LoadFile, ChooseTeam and Menu functions. Generates
// the CPU's team and keeps track if the CPU or user lost the game.
// Given nothing and returns an integer of who won back to proj3 main, a 2 means
// the CPU won and  a 1 means the user won
int Game::Start()
{
    // Calls LoadFile and ChooseTeam
    LoadFile();
    ChooseTeam();

    // Generates the CPU's team with the remaining Pokemon in m_list
    for(int i = 0; i < NUM_TEAM; i++)
    {
        // Generates a random Pokemon index 1-151
        int randomPokeIndex = rand() % (m_list->GetSize() + m_userPocket->GetSize() + m_enemyPocket->GetSize()) + 1;

        // If that Pokemon index doesn't exist in m_list anymore then
        // a new one is generated until it does exist
        while(!m_list->Exist(randomPokeIndex))
            randomPokeIndex = rand() % (m_list->GetSize() + m_userPocket->GetSize() + m_enemyPocket->GetSize()) + 1;

        // Calls the transfer function to add the Pokemon to the CPU's pocket
        m_list->Transfer(randomPokeIndex, m_enemyPocket);
    }

    // Integer keeps track of the round number
    int roundNumber = 1;

    // Displays all of the user's pocket Pokemon they picked
    cout << "Your Pokemon:" << endl;
    m_userPocket->Display();
    cout << LINE_SPACER;

    // Displays all the CPU's randomly picked Pokemon
    cout << "Enemy CPU Pokemon:" << endl;
    m_enemyPocket->Display();
    cout << LINE_SPACER;

    // Displays the first round of the CPU and user's head Pokemon and their stats
    cout << "Round " << roundNumber << endl;

    // CPU's head Pokemon
    cout << "CPU's Pokemon: " << m_enemyPocket->GetHead()->GetName() << " ("
    << m_enemyPocket->GetHead()->GetType() << ": " << m_enemyPocket->GetHead()->GetHealth() << " health)" << endl;

    // User's head Pokemon
    cout << "Your Pokemon: " << m_userPocket->GetHead()->GetName() << " ("
    << m_userPocket->GetHead()->GetType() << ": " << m_userPocket->GetHead()->GetHealth() << " health)" << endl;

    // Initializes an integer for who the winner is and loops while there's no winner
    int pokemonWinner = 0;
    while(pokemonWinner != 1 && pokemonWinner != 2)
    {
        // Switch case for the return value of the Menu function call
        int menuChoice = Menu();
        switch(menuChoice)
        {
            // Case where the user wants to attack the enemy Pokemon
            case 1:

                // Calls the Battle function and checks if the user/CPU won
                pokemonWinner = Battle();
                if(pokemonWinner != 1 && pokemonWinner != 2)
                {
                    roundNumber += 1;
                    cout << LINE_SPACER;

                    // Displays the round number and both head Pokemon's stats only if no one won
                    cout << "Round " << roundNumber << endl;
                    cout << "CPU's Pokemon: " << m_enemyPocket->GetHead()->GetName() << " ("
                    << m_enemyPocket->GetHead()->GetType() << ": " << m_enemyPocket->GetHead()->GetHealth() << " health)" << endl;
                    cout << "Your Pokemon: " << m_userPocket->GetHead()->GetName() << " ("
                    << m_userPocket->GetHead()->GetType() << ": " << m_userPocket->GetHead()->GetHealth() << " health)" << endl;
                }
                break;

            // Case when the user wants to swap their Pokemon positions
            case 2:

                // Calls the SwapPokemon function with the user's pocket
                m_userPocket->SwapPokemon();
                roundNumber += 1;
                cout << LINE_SPACER;

                // Displays the updated round number and the new head Pokemon that was swapped out
                cout << "Round " << roundNumber << endl;
                cout << "CPU's Pokemon: " << m_enemyPocket->GetHead()->GetName() << " ("
                << m_enemyPocket->GetHead()->GetType() << ": " << m_enemyPocket->GetHead()->GetHealth() << " health)" << endl;
                cout << "Your Pokemon: " << m_userPocket->GetHead()->GetName() << " ("
                << m_userPocket->GetHead()->GetType() << ": " << m_userPocket->GetHead()->GetHealth() << " health)" << endl;
                break;

            // Case when the user decides to forfeit the game
            case 3:

                // Sets pokemonWinner to 2 indicating the CPU won
                pokemonWinner = 2;
                break;
            default:
                cout << "Error" << endl;
                break;
        }
    }

    cout << LINE_SPACER;

    // Returns pokemonWinner back to the proj3 main
    return pokemonWinner;
}
