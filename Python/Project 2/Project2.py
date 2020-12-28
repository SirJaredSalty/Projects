"""
File:    proj2.py
Author:  Jared Soltas
Date:    10/26/19
Section: 11
E-mail:  jsoltas1@umbc.edu
Description:  This program simulates the SIM pencil game
              with 2 players. The goal of the game is
              to not make a triangle.
"""

# Imports the print_board function from proj2_ui.
from proj2_ui import print_board


def check_triangle(total_moves):
    """
    This function checks the list of the total
    previous moves to see if they form a triangle.
    :param total_moves: 2D list of all previous moves
    :return: True/False if triangle is formed
    """

    # Compares the first index of all the the player's total moves and
    # if there is a move that shares both of their second indices.
    for i in range(len(total_moves)):
        for j in range(i + 1, len(total_moves)):
            if total_moves[i][0] == total_moves[j][0]:
                for k in range(len(total_moves)):
                    for m in range(len(total_moves[k]) - 1):
                        if total_moves[k][m] == total_moves[i][1]:
                            if total_moves[k][m + 1] == total_moves[j][1]:
                                return True
                        if total_moves[k][m] == total_moves[j][1]:
                            if total_moves[k][m + 1] == total_moves[i][1]:
                                return True

    return False


def moves_remaining(current_move, p1_moves, p2_moves):
    """
    This function stores all of the used moves
    from both players. It makes sure no player
    draws an already used line.
    :param p1_moves: All of player one's previous moves
    :param p2_moves: All of player two's previous moves
    :param current_move: Current move the player wants to make
    :return: List of current line points or False
    """

    used_moves = [p1_moves, p2_moves]

    # Checks to see if the first and second index of a
    # used move is the in the current move's indices.
    for i in range(len(used_moves)):
        for j in range(len(used_moves[i])):
            for k in range(len(used_moves[i][j]) - 1):
                if used_moves[i][j][k] in current_move:
                    if used_moves[i][j][k + 1] in current_move:
                        return False

    return current_move


def organize_index(moves):
    """
    This function will organize each of the line's
    points with the first index being the smallest.
    :param moves: List of the current player move
    :return: List with the new organized line points
    """

    # Orders the moves index from lowest to highest value.
    if moves[0] > moves[1]:
        low_index = moves[1]
        moves[1] = moves[0]
        moves[0] = low_index

    return moves


def num_move(player_move):
    """
    This function will convert the user
    input into ints and store them in a list.
    :param player_move: Two points of the user's desired line
    :return: The list with the ints of the line points
    """

    move_list = []
    blank_list = []
    for i in player_move:
        if i == " ":
            blank_list.append(i)
        else:
            move_list.append(int(i))

    return move_list


def valid_num(player_move, p1_moves, p2_moves):
    """
    This function will verify that the line entered
    is actually an integer. It will also look to see
    if the line contains two points and isn't drawn to itself.
    Calls num_move, organize_index, and moves_remaining functions.
    :param player_move: Two points of the user's current desired line
    :param p1_moves: All of player one's previous moves
    :param p2_moves: All of player two's previous moves
    :return: List containing the verified line points or False.
    """

    # Checks if the player's move is in the valid list of user input.
    valid_list = ["1", "2", "3", "4", "5", "6", " "]
    for i in player_move:
        if i not in valid_list:
            return False

    # Verify that the user entered a move that
    # has exactly 2 points that aren't to itself.
    move_attempt = num_move(player_move)
    if len(move_attempt) != 2:
        return False
    elif move_attempt[0] == move_attempt[1]:
        return False

    sort_move = organize_index(move_attempt)
    valid_move = moves_remaining(sort_move, p1_moves, p2_moves)
    return valid_move


def board_move(p1_symbol, p2_symbol):
    """
    This is the main function that will keep getting
    input from the user for which lines they want to draw.
    Calls valid_num and check_triangle functions.
    :param p1_symbol: Symbol of player one
    :param p2_symbol: Symbol of player two
    """

    game_over_p1 = False
    game_over_p2 = False
    # Stores all of player 1 and 2's moves.
    p1_total_moves = []
    p2_total_moves = []

    # Loops until a player has formed a triangle and lost.
    while not (game_over_p1 or game_over_p2):
        p1_move = valid_num(input("Enter a line for player 1: "),
                            p1_total_moves, p2_total_moves)
        while not p1_move:
            p1_move = valid_num(input("Enter a valid line for player 1: "),
                                p1_total_moves, p2_total_moves)
        p1_total_moves.append(p1_move)
        game_over_p1 = check_triangle(p1_total_moves)
        print_board(p1_total_moves, p1_symbol, p2_total_moves, p2_symbol)

        if not game_over_p1:
            p2_move = valid_num(input("Enter a line for player 2: "),
                                p1_total_moves, p2_total_moves)
            while not p2_move:
                p2_move = valid_num(input("Enter a valid line for player 2: "),
                                    p1_total_moves, p2_total_moves)
            p2_total_moves.append(p2_move)
            game_over_p2 = check_triangle(p2_total_moves)

        print_board(p1_total_moves, p1_symbol, p2_total_moves, p2_symbol)

    if game_over_p1:
        print("Player one loses")
    else:
        print("Player two loses")


def board_symbol():
    """
    Function gets the symbols which will be used
    for the player's lines. Calls the board_move
    function.
    """

    p1_symbol = input("Hello, what character would player 1 like to use? ")
    p2_symbol = input("Hello, what character would player 2 like to use? ")
    # Makes sure there are two unique symbols for each player
    while p2_symbol == p1_symbol:
        p2_symbol = input("Please enter a different character than player 1: ")

    p1_start = []
    p2_start = []
    print_board(p1_start, p1_symbol, p2_start, p2_symbol)
    board_move(p1_symbol, p2_symbol)


if __name__ == '__main__':
    board_symbol()


"""
Hard mode with no crossing lines allowed

def check_triangle(total_moves):
    # Checks if completed moves form a triangle
    for i in range(len(total_moves)):
        for j in range(i + 1, len(total_moves)):
            if total_moves[i][0] == total_moves[j][0]:
                for k in range(len(total_moves)):
                    for m in range(len(total_moves[k]) - 1):
                        if total_moves[k][m] == total_moves[i][1]:
                            if total_moves[k][m + 1] == total_moves[j][1]:
                                return True
                        if total_moves[k][m] == total_moves[j][1]:
                            if total_moves[k][m + 1] == total_moves[i][1]:
                                return True

    return False


def organize_index(moves):
    # Orders the move index from lowest to highest value
    if moves[0] > moves[1]:
        low_index = moves[1]
        moves[1] = moves[0]
        moves[0] = low_index

    return moves


def crossing_lines(current_move, current_player, p1_moves, p2_moves):
    if current_player == 1:
        player_moves = p1_moves
    if current_player == 2:
        player_moves = p2_moves
    for i in range(len(player_moves)):
        for j in range(len(player_moves[i]) - 1):
            for k in range(current_move[0] + 1, current_move[1]):
                if player_moves[i][j] == k or player_moves[i][j + 1] == k:
                    for z in range(current_move[0] - 1, current_move[1] - 6, -1):
                        z += 6
                        if z > 6:
                            z -= 6
                        if player_moves[i][j] == z or player_moves[i][j + 1] == z:
                            return False
    return current_move


def moves_remaining(current_move, current_player, p1_moves, p2_moves):
    used_moves = [p1_moves, p2_moves]

    for i in range(len(used_moves)):
        for j in range(len(used_moves[i])):
            for k in range(len(used_moves[i][j]) - 1):
                if used_moves[i][j][k] in current_move:
                    if used_moves[i][j][k + 1] in current_move:
                        return False

    allow_move = crossing_lines(current_move, current_player, p1_moves, p2_moves)
    return allow_move


def num_move(player_move):
    move_list = []
    blank_list = []
    for i in player_move:
        if i == " ":
            blank_list.append(i)
        else:
            move_list.append(int(i))

    return move_list


def valid_num(player_move, current_player, p1_moves, p2_moves):
    valid_list = ["1", "2", "3", "4", "5", "6", " "]
    for i in player_move:
        if i not in valid_list:
            return False

    move_attempt = num_move(player_move)
    if len(move_attempt) != 2:
        return False
    elif move_attempt[0] == move_attempt[1]:
        return False

    sort_move = organize_index(move_attempt)
    valid_move = moves_remaining(sort_move, current_player, p1_moves, p2_moves)
    return valid_move


def board_move(p1_symbol, p2_symbol):
    game_over_p1 = False
    game_over_p2 = False
    p1_total_moves = []
    p2_total_moves = []
    player_1 = 1
    player_2 = 2

    while not (game_over_p1 or game_over_p2):
        p1_move = valid_num(input("Enter a line for player 1: "),
                            player_1, p1_total_moves, p2_total_moves)
        while not p1_move:
            p1_move = valid_num(input("Enter a valid line for player 1: "),
                                player_1, p1_total_moves, p2_total_moves)
        p1_total_moves.append(p1_move)
        game_over_p1 = check_triangle(p1_total_moves)

        if not game_over_p1:
            p2_move = valid_num(input("Enter a line for player 2: "),
                                player_2, p1_total_moves, p2_total_moves)
            while not p2_move:
                p2_move = valid_num(input("Enter a valid line for player 2: "),
                                    player_2, p1_total_moves, p2_total_moves)
            p2_total_moves.append(p2_move)
            game_over_p2 = check_triangle(p2_total_moves)

        print_board(p1_total_moves, p1_symbol, p2_total_moves, p2_symbol)

    if game_over_p1:
        print("Player one loses")
    else:
        print("Player two loses")


def board_symbol():
    p1_symbol = input("Hello, what character would player 1 like to use? ")
    p2_symbol = input("Hello, what character would player 2 like to use? ")
    while p2_symbol == p1_symbol:
        p2_symbol = input("Please enter a different character than player 1: ")

    p1_start = []
    p2_start = []
    print_board(p1_start, p1_symbol, p2_start, p2_symbol)
    board_move(p1_symbol, p2_symbol)


if __name__ == '__main__':
    board_symbol()
"""