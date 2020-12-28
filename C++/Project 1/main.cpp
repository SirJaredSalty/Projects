/*****************************************
** File:    proj1.cpp
** Project: CMSC 202 Project 1, Spring 2020
** Author:  Jared Soltas
** Date:    02/16/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file will allow the user to play the game of Fifteen.
** In this game the user can pick their own board or the default
** board. The user then chooses a tile to slide into the empty
** space marked by a 0. Once all the tiles are in the proper
** order the user wins the game.
**
**
***********************************************/


#include <iostream> // Library for I/O
#include <fstream>  // Library for file input
using namespace std; // Namespace for this program

const int TOTAL_ROWS = 4;    // Constant for rows in the board
const int TOTAL_COLUMNS = 4; // Constant for columns in the board


//-------------------------------------------------------
// Name: startGame
// PreCondition:  None
// PostCondition: Default board or custom board is chosen
//---------------------------------------------------------
void startGame();

//-------------------------------------------------------
// Name: generateBoard
// PreCondition:  An empty array of all zeros
// PostCondition: Generates a complete array from a text file
//---------------------------------------------------------
void generateBoard(int playerBoard[][TOTAL_COLUMNS]);

//-------------------------------------------------------
// Name: selectTile
// PreCondition:  Array of the board the user has chosen
// PostCondition: User has chosen a tile from the board/array
//---------------------------------------------------------
void selectTile(int currentBoard[][TOTAL_COLUMNS]);

//-------------------------------------------------------
// Name: findEmptyTile
// PreCondition:  Valid Row/column from the user chose and array of the board
// PostCondition: Finds the empty tile labeled 0 in relation to selected tile
//---------------------------------------------------------
bool findEmptyTile(int rowSlide, int columnSlide, int currentBoard[][TOTAL_COLUMNS]);

//-------------------------------------------------------
// Name: printTileSlide
// PreCondition:  The type of move, valid row/column, array of the board
// PostCondition: Prints direction the tile moved, returns false for invalid moves
//---------------------------------------------------------
bool printTileSlide(int playerMove, int rowSlide, int columnSlide, int currentBoard[][TOTAL_COLUMNS]);

//-------------------------------------------------------
// Name: switchTile
// PreCondition:  Valid row/column from user and array of the board
// PostCondition: Switches the selected and empty tile in the array, returns true/false
//---------------------------------------------------------
void switchTile(int rowSlide, int columnSlide, int currentBoard[][TOTAL_COLUMNS]);

//-------------------------------------------------------
// Name: printBoard
// PreCondition:  Array of the board
// PostCondition: Prints out the contents of the board
//---------------------------------------------------------
void printBoard(int currentBoard[][TOTAL_COLUMNS]);

//-------------------------------------------------------
// Name: checkForWinner
// PreCondition:  Array of the board
// PostCondition: Returns true or false if the board matches the winning board
//---------------------------------------------------------
bool checkForWinner(int currentBoard[][TOTAL_COLUMNS]);


int main()
{
    startGame();
    return 0;
}


/*
** startGame function
** Given nothing and returns nothing.
*/
void startGame()
{

    int loadBoard = 0;  // Number which determines the board to use.
    int defaultBoard[TOTAL_ROWS][TOTAL_COLUMNS] =
    {{1,2,3,4}, {5,6,7,8}, {9,10,11,12}, {13,14,0,15}};  // Default board array.
    int playerBoard[TOTAL_ROWS][TOTAL_COLUMNS] = {0};  // Empty array for player board.


    // Loops until user picks a 1 (custom board) or 2 (default board).
    cout << "Welcome to the Fifteen board game \n";
    do {
        cout << "Would you like to load a board?" << endl;
        cout << "1. Yes" << endl << "2. No" << endl;
        cin >> loadBoard;
    }while(loadBoard != 1 && loadBoard != 2);


    // Switch case calls different functions with the chosen user's board.
    switch(loadBoard) {
        case 1:
            generateBoard(playerBoard);
            printBoard(playerBoard);
            selectTile(playerBoard);
            break;
        // Case if user wants to load the default board.
        case 2:
            printBoard(defaultBoard);
            selectTile(defaultBoard);
            break;
        default:
            cout << "An error has occurred";
    }

}


/*
** generateBoard function
** Given the empty playerBoard array, returns nothing.
*/
void generateBoard(int playerBoard[][TOTAL_COLUMNS])
{
    char boardName[80];  // C-string that holds the name of the custom board.
    ifstream openFile;  // Sets variable openFile to the ifstream.

    // Stores the file name into boardName, and openFile opens that file.
    cout << "What is the name of the file?" << endl;
    cin >> boardName;
    openFile.open(boardName);

    /*
    ** Loops through the entire length of the playerBoard array
    ** and adds the contents of openFile into the playerBoard.
    */
    for(int i = 0; i < TOTAL_ROWS; i++)
    {
        for(int j = 0; j < TOTAL_COLUMNS; j++)
        {
            // Extracts the contents from openFile and inserts into playerBoard.
            openFile >> playerBoard[i][j];
        }
    }

    openFile.close();
}


/*
** selectTile function
** Given the filled currentBoard array which is either
** the default board or the custom board, returns nothing.
*/
void selectTile(int currentBoard[][TOTAL_COLUMNS])
{
    char playAgain;  // Char for when player decides to play again or not.
    int rowSlide = 0;  // Row of the desired tile the user wants to slide.
    int columnSlide = 0;  // Column of the desired tile the user wants to slide.
    bool winner = false;  // Boolean which says the player hasn't won yet.

    // Gets the row and column of the tile the player wants to move.
    do {
        cout << "Choose a row and column to slide (1 - 4):" << endl;
        cin >> rowSlide;
        cin >> columnSlide;
        if(!(rowSlide < 1 || rowSlide > 4) && !(columnSlide < 1 || columnSlide > 4))
                winner = findEmptyTile(rowSlide, columnSlide, currentBoard);
    // Iterates until all conditions are true.
    }while(rowSlide < 1 || rowSlide > 4 || columnSlide < 1 || columnSlide > 4 || !winner);

    cout << endl << "Congratulations, you won!" << endl;

    // Asks if user wants to play again and stores it in playAgain.
    do {
        cout << "Play again? (y/n) ";
        cin >> playAgain;
    } while(playAgain != 'y' && playAgain != 'n');

    cout << endl;

    // Calls the startGame function if they choose yes.
    if(playAgain == 'y')
        startGame();

}

/*
** findEmptyTile function
** Given the filled currentBoard array which is either
** the default board or the custom board and the row/column
** of the tile the user wants to move, returns true or false.
*/
bool findEmptyTile(int rowSlide, int columnSlide, int currentBoard[][TOTAL_COLUMNS])
{
    int playerMove = 0;  // Integer representing the move the player made.

    /*
    ** Finds where the empty tile is and where the desired tile
    ** is in relation to the empty tile.
    */
    for(int i = 0; i < TOTAL_ROWS; i++)
    {
        for(int j = 0; j < TOTAL_COLUMNS; j++)
        {
            if(currentBoard[i][j] == 0)
            {
                // Increment by 1 so that i and j match the numbers on the printed board
                i++;
                j++;
                if(rowSlide == i && (columnSlide - j) == 1)
                    playerMove = 1;
                else if(rowSlide == i && (columnSlide - j) == -1)
                    playerMove = 2;
                // If the desired tile is in the same row and the column left of the empty tile
                else if(columnSlide == j && (rowSlide - i) == 1)
                    playerMove = 3;
                else if(columnSlide == j && (rowSlide - i) == -1)
                    playerMove = 4;
                // If the desired and empty tile are in the same exact spot
                else if(rowSlide == i && columnSlide == j)
                    playerMove = 5;
                else
                    playerMove = 6;
            }
        }
    }

    // Returns true or false depending if the player won
    return printTileSlide(playerMove, rowSlide, columnSlide, currentBoard);
}


/*
** printTileSlide function
** Given the filled currentBoard array which is either
** the default board or the custom board, the row/column
** of the tile the user wants to move and the slide
** position, returns true or false
*/
bool printTileSlide(int playerMove, int rowSlide, int columnSlide, int currentBoard[][TOTAL_COLUMNS])
{
    /*
    ** Switch case that prints out direction the tile slid represented by playerMove.
    ** All cases call the printBoard function and print where the tile moved. If the move
    ** is valid it will also call the switchTile and checkForWinner functions. Non-valid
    ** moves return false immediately.
    */
    switch(playerMove) {
        // Case for tile sliding left
        case 1:
            cout << "\nThe tile slid left\n";
            switchTile(rowSlide, columnSlide, currentBoard);
            printBoard(currentBoard);
            return checkForWinner(currentBoard);
            break;
        // Case for tile sliding right
        case 2:
            cout << "\nThe tile slid right\n";
            switchTile(rowSlide, columnSlide, currentBoard);
            printBoard(currentBoard);
            return checkForWinner(currentBoard);
            break;
        // Case for tile sliding up
        case 3:
            cout << "\nThe tile slid up\n";
            switchTile(rowSlide, columnSlide, currentBoard);
            printBoard(currentBoard);
            return checkForWinner(currentBoard);
            break;
        // Case for tile sliding down
        case 4:
            cout << "\nThe tile slid down\n";
            switchTile(rowSlide, columnSlide, currentBoard);
            printBoard(currentBoard);
            return checkForWinner(currentBoard);
            break;
        // Case when the empty space is chosen
        case 5:
            cout << "\nYou chose the empty space\n";
            printBoard(currentBoard);
            return false;
            break;
        // Case when a non-movable tile is chosen
        case 6:
            cout << "\nThat tile cannot slide\n";
            printBoard(currentBoard);
            return false;
            break;
        default:
            cout << "\nAn error has occurred\n";
            return false;
    }
}

/*
** switchTile function
** Given the filled currentBoard array which is either
** the default board or the custom board and the row/column
** of the tile the user wants to move, returns true or false.
*/
void switchTile(int rowSlide, int columnSlide, int currentBoard[][TOTAL_COLUMNS])
{
    int *ptrBoard = &currentBoard[0][0];  // Pointer to the address of the first index in currentBoard array.
    int playerTile = currentBoard[rowSlide - 1][columnSlide - 1];  // Value of the tile the user wants to slide

    /*
    ** Loops through until the 0 or desired tile is found.
    ** The tiles are then swapped by the pointer.
    */
    for(int i = 0; i < TOTAL_ROWS; i++)
    {
        for(int j = 0; j < TOTAL_COLUMNS; j ++)
        {
            // Swaps the desired tile and 0 once the loop finds either one.
            if(*ptrBoard == playerTile || *ptrBoard == 0)
            {
                if(*ptrBoard == 0)
                    *ptrBoard = playerTile;
                else
                    *ptrBoard = 0;
            }

            // Increments pointer's address to next index of currentBoard array.
            ptrBoard++;
        }
    }
}


/*
** printBoard function
** Given the filled currentBoard array which is either
** the default board, returns true or false.
*/
void printBoard(int currentBoard[][TOTAL_COLUMNS])
{
    const char columnNumbers[] = "\t1 \t2 \t3 \t4";  // Number of the columns.
    const int singleDigit = 9;  // Last number that is single digit.

    // Loops through to print every index of the currentBoard array.
    cout << columnNumbers << endl;
    for(int i = 0; i < 4; i++)
    {
        cout << "  " << i + 1 << "|\t";
        for(int j = 0; j < 4; j++)
        {
            /*
            ** When the numbers get into double digits the board
            ** needs to be adjusted to make the columns line up.
            */
            if(currentBoard[i][j] > singleDigit)
                cout << "\b" << currentBoard[i][j] << "|\t";
            else
                cout << currentBoard[i][j] << "|\t";
        }

        cout << endl;
    }
}

/*
** checkForWinner function
** Given the filled currentBoard array which is either
** the default board or the custom board, returns true or false.
*/
bool checkForWinner(int currentBoard[][TOTAL_COLUMNS])
{
    int winningBoard[TOTAL_ROWS][TOTAL_COLUMNS] =
    {{1,2,3,4}, {5,6,7,8}, {9,10,11,12}, {13,14,15,0}};  // Array of the winning board.

    /*
    ** Loops through and compares each index from the currentBoard to the
    ** winningBoard. If a difference is found it returns false, otherwise
    ** it returns true.
    */
    for(int i = 0; i < TOTAL_ROWS; i++)
    {
        for(int j = 0; j < TOTAL_COLUMNS; j++)
        {
            // If both indexes don't match return false.
            if(winningBoard[i][j] != currentBoard[i][j])
                return false;
        }
    }

    return true;
}

