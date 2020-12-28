/*****************************************
** File:    Game.cpp
** Project: CMSC 202 Project 2, Spring 2020
** Author:  Jared Soltas
** Date:    03/7/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the first major class (Game) that reads in the
** materials txt file. It also contains the game title, main menu,
** material searching the logic for combining materials together.
** Is responsible for printing out what the user sees.
**
***********************************************/


#include "Material.h"
#include "Diver.h"
#include "Game.h"


//Default Constructor for Game
Game::Game()
{
    GameTitle();
    LoadMaterials();
    string name;
    cout << "What is your diver's name?\n";
    // Gets diver's name and calls the setter
    getline(cin, name);
    m_myDiver.SetName(name);

    // Adds materials to the Diver class
    for(int i = 0; i < PROJ2_SIZE; i++)
        m_myDiver.AddMaterial(m_materials[i]);

}

// Prints out the Subnautica game title
// Given nothing, returns nothing
void GameTitle()
{
cout << "*****************************************************************" << endl;
cout << " SSSS  U   U  BBBB   N    N   AAA   U   U  TTTTT  II  CCCC   AAA " << endl;
cout << " S     U   U  B   B  NN   N  A   A  U   U    T    II  C     A   A" << endl;
cout << " S     U   U  B   B  N N  N  A   A  U   U    T    II  C     A   A" << endl;
cout << " SSSS  U   U  BBBB   N  N N  AAAAA  U   U    T    II  C     AAAAA" << endl;
cout << "    S  U   U  B   B  N  N N  A   A  U   U    T    II  C     A   A" << endl;
cout << "    S  U   U  B   B  N   NN  A   A  U   U    T    II  C     A   A" << endl;
cout << " SSSS  UUUUU  BBBB   N    N  A   A  UUUUU    T    II  CCCC  A   A" << endl;
cout << "*****************************************************************" << endl;
}


// Loads in the materials from the txt file into the m_materials array
// Given nothing, returns nothing
void Game::LoadMaterials()
{
    ifstream openFile(PROJ2_DATA);
    for(int i = 0; i < PROJ2_SIZE; i++)
    {
        // Inserts a name, type, depth and materials for each
        // index and uses delimeter to stop at commas
        getline(openFile, m_materials[i].m_name, ',');
        getline(openFile, m_materials[i].m_type, ',');
        getline(openFile, m_materials[i].m_material1, ',');
        getline(openFile, m_materials[i].m_material2, ',');
        openFile >> m_materials[i].m_depth;
        // Ignores newlines from being added to the array
        openFile.ignore(256, '\n');
    }

    cout << "50 materials loaded.\n";
}

// Starts the game by calling the main menu until the user wins/quits
// Given nothing, returns nothing
void Game::StartGame()
{
    int depthScore = 0;
    int menuChoice = 0;
    // Continuously calls the main menu until the player
    // quits or wins
    while(depthScore < MAX_DEPTH && menuChoice != 5)
    {
        menuChoice = MainMenu();
        depthScore = m_myDiver.CalcDepth();
    }

    // Prints if the diver gets to 1000 depth
    if(depthScore >= MAX_DEPTH)
        cout << "\nCongratulations! You won!";
}

// Calls the DisplaysMaterials in the Diver class to print
// Given nothing, returns nothing
void Game::DisplayMaterials()
{
    // Calls the DisplayMaterials in the Diver class
    m_myDiver.DisplayMaterials();
}

// Prints out the main menu interface and gets user input for their choice
// Given nothing, returns an int of the menu choice
int Game::MainMenu()
{
    int menuChoice = 0;
    cout << endl;
    // Menu choices for the user
    cout << "What would you like to do?\n";
    cout << "1. Display your Diver's Materials\n";
    cout << "2. Search for Raw Materials\n";
    cout << "3. Attempt to Merge Materials\n";
    cout << "4. See score\n";
    cout << "5. Quit\n";
    cin >> menuChoice;

    // Switch case for the menu options
    switch(menuChoice) {
        case 1:
            // Calls the function which displays all materials/quantities
            DisplayMaterials();
            return menuChoice;
            break;
        case 2:
            // Calls the function to search for raw materials
            SearchMaterials();
            return menuChoice;
            break;
        case 3:
            // Calls the function to combine materials
            CombineMaterials();
            return menuChoice;
            break;
        case 4:
            // Calls the function to show the diver's score
            CalcScore();
            return menuChoice;
            break;
        case 5:
            // If the user decides to quit
            cout << "Thanks for playing!\n";
            return menuChoice;
            break;
        default:
            // If the user enter invalid input
            cout << "Error. Invalid Input\n";
            return 0;
            break;
    }
}

// Searches for raw materials randomly and adds it to the diver's m_myMaterials
// Given noting, returns nothing
void Game::SearchMaterials()
{
    // Uses rand() and mod 17 to get a number between 0 - 16 to use as an
    // index and add the raw material at that index to the diver's materials
    int randomMaterial = rand() % NUM_OF_RAW_MATERIALS;
    cout << m_materials[randomMaterial].m_name << " Found!\n";
    m_myDiver.IncrementQuantity(m_materials[randomMaterial]);
}

// Asks the user for which materials they want to combine and attempts to do so.
// Goes through several different checks to see if the entered materials are valid.
// Given nothing, returns nothing
void Game::CombineMaterials()
{
    int material1 = 1;
    int material2 = 1;
    // Loops and calls the RequestMaterial function until the user enters valid input 1- 50
    do {
        RequestMaterial(material1);
        RequestMaterial(material2);
    }while(material1 < 1 || material1 > 50 || material2 < 1 || material2 > 50);

    // Gets the index of the material the user is trying to crate through combining
    int recipeIndex = SearchRecipes(m_materials[material1 - 1].m_name, m_materials[material2 - 1].m_name);

    if(recipeIndex == -1)
        cout << "There is no recipe with those materials\n";

    // Goes into this else block if a recipe exists
    else
    {
        // Gets the material the user wants to create
        Material desiredMaterial = m_myDiver.GetMaterial(recipeIndex);

        if(desiredMaterial.m_type == "unique" && desiredMaterial.m_quantity > 0)
            cout << "You already have that unique item. You cannot make another\n";

        // Else block if the desired material isn't an unique material with a quantity > 0
        else
        {
            bool diverHasMaterials = m_myDiver.CheckQuantity(m_materials[material1 - 1], m_materials[material2 - 1]);

            // If diverHasMaterials returns as true, meaning the diver has all the needed materials
            if(diverHasMaterials)
            {
                cout << m_materials[material1 - 1].m_name << " and " << m_materials[material2 - 1].m_name
                << " combined to make " << m_materials[recipeIndex].m_name << "!\n";
                m_myDiver.IncrementQuantity(m_materials[recipeIndex]);
            }

            // If the diver doesn't have the required materials to craft
            else
            {
                int hasMaterial1 = m_myDiver.CheckMaterial(m_materials[material1 - 1]);
                int hasMaterial2 = m_myDiver.CheckMaterial(m_materials[material2 - 1]);

                // If the base materials are the same and are quantity of 1, missing 1 material
                if(hasMaterial1 == hasMaterial2 && hasMaterial1 != -1)
                {
                    Material sameMaterial = m_myDiver.GetMaterial(material1 - 1);
                    cout << "You don't have enough " << sameMaterial.m_name
                    <<" to make " << m_materials[recipeIndex].m_name << endl;
                }

                // If the first material's quantity is > 0 but the second's is 0
                else if(hasMaterial1 != -1 && hasMaterial2 == -1)
                {
                    cout << "You don't have enough " << m_materials[material2 - 1].m_name
                    << " to make " << m_materials[recipeIndex].m_name << endl;
                }

                // If the second material's quantity is > 0 but the first is 0
                else if(hasMaterial2 != -1 && hasMaterial1 == -1)
                {
                    cout << "You don't have enough " << m_materials[material1 - 1].m_name
                    << " to make " << m_materials[recipeIndex].m_name << endl;
                }

                // If the first and second material's quantities are both 0
                else
                {
                    cout << "You don't have enough " << m_materials[material1 - 1].m_name << " or " <<
                    m_materials[material2 - 1].m_name <<  " to make " << m_materials[recipeIndex].m_name << endl;
                }
            }
        }
    }
}


// Asks the user which materials they wants to merge
// Given an int address, returns nothing
void Game::RequestMaterial(int &choice)
{
    cout << "Which materials would you like to merge?\n";
    cout << "To list know materials enter -1\n";
    cin >> choice;

    // Loops until the user decides to not display the materials
    while(choice == -1)
    {
        DisplayMaterials();
        cout << endl;
        // Prompts the user to enter the merging materials until -1 isn't entered
        cout << "Which materials would you like to merge?\n";
        cout << "To list know materials enter -1\n";
        cin >> choice;
    }
}

// Searches the entire m_materials to see if there is a material that can be
// made with the two materials the user wants to combine.
// Given two material name strings, returns the index of the to be created material
int Game::SearchRecipes(string material1, string material2)
{
    // Searches for a recipe which has the desired materials to be combined
    for(int i = 0; i < PROJ2_SIZE; i++)
    {
        // If a material has a recipe of material 1 in slot 1 and material 2 in slot 2
        if(m_materials[i].m_material1 == material1)
        {
            if(m_materials[i].m_material2 == material2)
                return i;
        }
        // If a material has a recipe of material 2 in slot 1 and material 1 in slot 2
        if(m_materials[i].m_material1 == material2)
        {
            if(m_materials[i].m_material2 == material1)
                return i;
        }
    }

    // Returns -1 if there isn't a recipe found
    return -1;
}

// Prints the diver's name, current depth and max depth. Calls CalcDepth in Diver class
// Given nothing, returns nothing
void Game::CalcScore()
{
    // Displays the diver's name, max depth and current depth
    cout << "The great diver " << m_myDiver.GetName() << endl;
    cout << "Maximum Depth: " << MAX_DEPTH << endl;
    cout << "Current Depth: " << m_myDiver.CalcDepth();
    cout << endl;
}
