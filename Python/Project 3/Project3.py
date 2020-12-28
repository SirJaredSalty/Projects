import os

"""
File:    proj3.py
Author:  Jared Soltas
Date:    11/26/19
Section: 11
E-mail:  jsoltas1@umbc.edu
Description: This program will color a Go game board
             depending on whether X or O owns that territory.
"""


# Different types of characters on the board.
EMPTY_SPACE = '+'
X_CHAR = 'X'
O_CHAR = 'O'


def count_score(board):
    """
    This function will count and print the number
    of Xs and Os on the colored board.
    :param board: List of the colored board.
    """
    x_count = 0
    o_count = 0
    for i in range(len(board)):
        if board[i] == X_CHAR:
            x_count += 1
        elif board[i] == O_CHAR:
            o_count += 1
    print("\nBlack scored:", x_count)
    print("White scored:", o_count)


def color_board(i, j, board, char_pos):
    """
    This function will color the board wherever there is an empty spot.
    :param i: Row where an empty spot was found.
    :param j: Column where an empty spot was found.
    :param board: Uncolored board.
    :param char_pos: Column index where an X or O was found.
    :return: The new character to the emtpy space.
    """
    # Base case returns an X or O if an empty space isn't found.
    if board[i][j] != EMPTY_SPACE:
        return board[i][j]
    # Goes down a row to keep looking for the next character
    # if the entire row is empty.
    if O_CHAR not in board[i] and X_CHAR not in board[i]:
        i += 1
        j -= 1
    # Base case returns the last character found in that row
    # once the end of the row is reached.
    if j == len(board[i]) - 2 or j == len(board[i]) - 1:
        return board[i][char_pos]
    else:
        return color_board(i, j + 1, board, char_pos)


def find_spots(board):
    """
    This function will loop through the board to find an emtpy spot.
    :param board: Uncolored board.
    """
    new_board = []
    char_pos = 0
    for i in range(len(board)):
        for j in range(len(board[i])):
            if board[i][j] == EMPTY_SPACE:
                # Stores the colored list in a new list.
                new_board += color_board(i, j, board, char_pos)
            else:
                new_board += board[i][j]
                # Marks the index where an X or O was found.
                char_pos = j
    print('\n')
    print("Here is the colored board:")
    print_board(new_board)
    count_score(new_board)


def print_board(board):
    """
    This function will print each line of the board.
    :param board: Uncolored and colored board.
    """
    for line in board:
        print(line, end = '')


def open_file():
    """
    This function will open the Go game board file and store it as a list.
    """
    file_input = input("Which go board do you want to use? ")
    file = file_input
    os.chdir(r'C:\Users\Jared\Desktop\School\UMBC\Fall 2019\CMSC 201\Project 3')
    board_file = open(file, "r")
    board = board_file.readlines()
    board_file.close()
    print_board(board)
    find_spots(board)


if __name__ == '__main__':
    open_file()
