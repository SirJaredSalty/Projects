/*****************************************
** File:    PokemonList.cpp
** Project: CMSC 202 Project 3, Spring 2020
** Author:  Jared Soltas
** Date:    03/23/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the PokemonList class that creates 3 different Pokemon
** lists for the master list, player list and enemy list. It takes care of
** inserting, transferring, removing, swapping and displaying Pokemon. It
** also checks to make sure Pokemon exist and takes care of the fighting
** between 2 Pokemon.
**
***********************************************/

// Imports class headers
#include "Pokemon.h"
#include "PokemonList.h"

// Imports libraries
#include <iostream>
#include <string>
using namespace std;


// PokemonList default constructor. Initializes m_head to nullptr and m_size to 0
PokemonList::PokemonList()
{
    m_head = nullptr;
    m_size = 0;
}


// PokemonList destructor. Used to delete the Pokemon node pointers
PokemonList::~PokemonList()
{
    // Sets the current pointer to the head and iterates through each node
    Pokemon *curr = m_head;
    while(curr != nullptr)
    {
        //sets m_head to curr
        m_head = curr;
        //moves curr to next node
        curr = curr->GetNext();
        //delete m_head;
        delete m_head;
    }

    //Resets all of the static linked list pointers
    m_head = nullptr;
    m_size = 0;
}


// InsertEnd function takes a Pokemon node and inserts it into the end of a linked list.
// Given a Pokemon node and returns nothing
void PokemonList::InsertEnd(Pokemon *pokemonNode)
{
    // Checks if the linked list is currently empty
    if(m_head == nullptr)
    {
        // If the linked list is empty it sets the head to the passed node
        pokemonNode->SetNext(nullptr);
        m_head = pokemonNode;
    }

    // If the linked list isn't empty
    else
    {
        // Sets a temporary pointer to the head to iterate through the linked list
        Pokemon *temp = m_head;
        // Loops while the current node's m_next pointer isn't null
        while(temp->GetNext() != nullptr)
        {
            temp = temp->GetNext();
        }

        // Sets the new node pointer to null
        pokemonNode->SetNext(nullptr);
        // Links the last node pointer to the new node
        temp->SetNext(pokemonNode);
    }

    // Increases the size integer of the linked list
    m_size++;
}


// Display function displays all the Pokemon nodes of a particular linked list.
// Given nothing and returns nothing
void PokemonList::Display()
{
    // Sets a temporary pointer to head to iterates through linked list
    Pokemon *temp = m_head;
    while(temp != nullptr)
    {
        // Dereferences the Pokemon node pointer to print properly
        cout << *temp;
        temp = temp->GetNext();
    }
}


// Transfer function takes a Pokemon from m_list and transfers it to either
// m_userPocket or m_enemyPocket.
// Given the Pokemon's index and the Pokemon linked list where the Pokemon
// will be transfered to. Returns nothing.
void PokemonList::Transfer(int pokeIndex, PokemonList *userPokeList)
{
    // Creates a temporary pointer to start iterating through m_list
    Pokemon *temp = m_head;

    // Loops until the temporary Pokemon pointer finds the Pokemon
    // with the desired pokeIndex argument
    while(temp->GetIndex() != pokeIndex)
        temp = temp->GetNext();

    // Creates a new Pokemon Node for the userPokeList
    Pokemon *newPokemon = new Pokemon(temp->GetIndex(), temp->GetName(), temp->GetType(), temp->GetStrong());
    newPokemon->SetHealth(MAX_HEALTH);
    userPokeList->InsertEnd(newPokemon);

    // Calls the Remove function to remove the transfered Pokemon from m_list
    Remove(pokeIndex);
}


// Remove function removes a Pokemon node from a particular linked list.
// Given the removed Pokemon's index and returns nothing
void PokemonList::Remove(int pokeIndex)
{
    // Initializes 2 different temporary Pokemon pointers
    Pokemon *curr = m_head;
    Pokemon *prev = m_head;

    // Checks if the head Pokemon node's index is the index that needs to be removed
    if(m_head->GetIndex() == pokeIndex)
    {
        // Moves the head Pokemon to the next in the linked list
        m_head = m_head->GetNext();
        delete prev;
    }

    // If the head Pokemon isn't the one being removed
    else
    {
        // Iterates to find the Pokemon node with the desired pokeIndex
        while(curr->GetIndex() != pokeIndex)
        {
            // Keeps track of the previous Pokemon node
            prev = curr;
            curr = curr->GetNext();
        }

        // If the last Pokemon node in the linked list has the same index as pokeIndex
        if(curr->GetNext() == nullptr)
        {
            // Sets the previous Pokemon node to nullptr and deletes the last node
            prev->SetNext(nullptr);
            delete curr;
        }

        // If the Pokemon node being removed is in the middle of the linked list
        else
        {
            // Links the previous Pokemon node to node after the current
            prev->SetNext(curr->GetNext());
            delete curr;
        }
    }

    m_size--;
}


// GetSize function returns the integer size of a particular linked list
int PokemonList::GetSize()
{
    return m_size;
}


// GetHead returns a Pokemon node pointer that is the head of a particular
// linked list
Pokemon* PokemonList::GetHead()
{
    return m_head;
}


// Attack function controls the damage dealt to each Pokemon in battle.
// Given the m_enemyPocket PokemonList and returns an integer
int PokemonList::Attack(PokemonList* enemyPocket)
{
    // If the user's head Pokemon is strong against the enemy's head Pokemon type
    if(m_head->GetStrong() == enemyPocket->GetHead()->GetType())
    {
        // Updates the Pokemon's health
        enemyPocket->GetHead()->SetHealth(enemyPocket->GetHead()->GetHealth() - STRONG_DAMAGE);
        cout << "CPU's Pokemon took 5 damage" << endl;
    }

    // If the user's head Pokemon isn't strong against the enemy's head Pokemon type
    else
    {
        enemyPocket->GetHead()->SetHealth(enemyPocket->GetHead()->GetHealth() - DAMAGE2ENEMY);
        cout << "CPU's Pokemon took 2 damage" << endl;
    }

    // Checks if the enemy's head Pokemon fainted
    if(enemyPocket->GetHead()->GetHealth() < 1)
    {
        // Removes that Pokemon from it's pocket
        enemyPocket->Remove(enemyPocket->GetHead()->GetIndex());
        cout << "CPU's Pokemon has been defeated" <<endl;

        // Displays the Pokemon that was changed out for the CPU only if they have more
        if(enemyPocket->GetSize() > 0)
        {
            cout << "CPU changed its Pokemon to " << enemyPocket->GetHead()->GetName() << " ("
            << enemyPocket->GetHead()->GetType() << ": " << enemyPocket->GetHead()->GetHealth() << " health)" << endl;
        }

        return 2;
    }


    // If the enemy's head Pokemon is strong against the user's head Pokemon type
    if(m_head->GetType() == enemyPocket->GetHead()->GetStrong())
    {
        m_head->SetHealth(m_head->GetHealth() - STRONG_DAMAGE);
        cout << "Your Pokemon took 5 damage" << endl;
    }

    // If the enemy's head Pokemon isn't strong against the user's head Pokemon type
    else
    {
        m_head->SetHealth(m_head->GetHealth() - DAMAGE2USER);
        cout << "Your Pokemon took 3 damage" << endl;
    }

    // Checks if the user's head Pokemon fainted
    if(m_head->GetHealth() < 1)
    {
        // Removes that Pokemon from the user's pocket
        Remove(m_head->GetIndex());
        cout << "Your Pokemon has been defeated" <<endl;
        return 1;
    }

    return 0;
}


// SwapPokemon function swaps 2 Pokemon that the user chooses.
// Given nothing and returns nothing
void PokemonList::SwapPokemon()
{
    // If the user has no more Pokemon to swap out
    if(GetSize() == 1)
    {
        cout << "This is your last Pokemon! You have none left to swap!" << endl;
    }

    // If the user still has Pokemon to swap
    else
    {
        int swapIndex = 0;
        cout << "What Pokemon do you want to swap?" << endl;
        Display();
        cout << "Swap Pokemon Index: ";
        cin >> swapIndex;

        // Checks if the Pokemon index the user wants to swap exists in their pocket
        while(!Exist(swapIndex))
        {
            cout << "Enter a valid index: ";
            cin >> swapIndex;
        }

        // Special message when the user chooses their head Pokemon
        if(m_head->GetIndex() == swapIndex)
        {
            cout << "You chose the head Pokemon, " << m_head->GetName() << " ("
            << m_head->GetType() << ": " << m_head->GetHealth() << " health)" << endl;
        }

        // If the user chooses a Pokemon that isn't their head Pokemon
        else
        {
            // Initializes 2 temporary Pokemon pointers
            Pokemon *prev = m_head;
            Pokemon *curr = m_head;

            // Loops until the Pokemon node with the swapIndex is found
            while(curr->GetIndex() != swapIndex)
            {
                prev = curr;
                curr = curr->GetNext();
            }

            // Pokemon pointer to keep track of the Pokemon after the current pointer
            Pokemon *currNext = curr->GetNext();

            // Swaps the desired Pokemon with swapIndex to the head Pokemon
            prev->SetNext(m_head);
            curr->SetNext(m_head->GetNext());
            m_head->SetNext(currNext);
            m_head = curr;

            // Displays the Pokemon that was chosen/swapped
            cout << "You chose " << m_head->GetName() << " (" << m_head->GetType()
            << ": " << m_head->GetHealth() << " health)" << endl;
        }
    }
}


// Exist function determines if a Pokemon node exists in a particular linked list.
// Given an integer Pokemon index and returns true is that index is found.
bool PokemonList::Exist(int pokeIndex)
{
    // Temporary Pokemon pointer
    Pokemon *temp = m_head;

    // Loops until the end of the linked list
    do{
        // Returns true if a Pokemon node's index matches pokeIndex
        if(temp->GetIndex() == pokeIndex)
            return true;
        temp = temp->GetNext();
    }while(temp != nullptr);

    // Returns false if no Pokemon node's index equals pokeIndex
    return false;
}
