
#Robin Dickson


"""
Overview
-----------------------------------------------------------------------------------------------------
Tic-Tac-Toe is a game in which two players seek in alternate turns to complete a row, a column, or a diagonal with either three x's or three o's drawn in the spaces of a grid of nine squares.

Rules
-----------------------------------------------------------------------------------------------------
Tic-Tac-Toe is played according to the following rules.
    1. The game is played on a grid that is three squares by three squares.
    2. Player one uses x's. Player two uses o's.
    3. Players take turns putting their marks in empty squares.
    4. The first player to get three of their marks in a row (vertically, horizontally, or diagonally) is the winner.
    5. If all nine squares are full and neither player has three in a row, the game ends in a draw.
"""
import os

def main():

    marks = {1 : '1', 2 : '2', 3 : '3', 4 : '4', 5 : '5', 6 : '6', 7 : '7', 8 : '8', 9 : '9'}
    playing = True
    complete = False
    turn = 0
    last_turn = -1

    

    def whos_turn(turn):
        if turn % 2 == 0: return 'O'
        else:
            return 'X'

    def winner(marks):
        # Check the horizontal
        if (marks[1] == marks[2] == marks[3]) \
            or (marks[4] == marks[5] == marks[6]) \
            or (marks[7] == marks[8] == marks[9]):
            return True
        elif (marks[1] == marks[4] == marks[7]) \
            or (marks[2] == marks[5] == marks[8]) \
            or (marks[3] == marks[6] == marks[9]):
            return True
        elif (marks[1] == marks[5] == marks[9]) \
            or (marks[7] == marks[5] == marks[3]):
            return True
        else: return False
    
    def makeboard(marks):
        board = (f"|{marks[1]}|{marks[2]}|{marks[3]}|\n"
                    f"|{marks[4]}|{marks[5]}|{marks[6]}|\n"
                    f"|{marks[7]}|{marks[8]}|{marks[9]}|")
        print(board)

    while playing:
        # Keep the screen clean
        os.system('cls' if os.name == 'nt' else 'clear')
        print('')
        print('Welcome to Tic-Tac-Toe')
        print('')
        makeboard(marks)
        if last_turn == turn:
            print('Oops, that mark has already been placed!')
            print('Please choose a different mark')
        last_turn = turn
        print('')
        # Get User Input
        move = input('Player ' + str((turn % 2) + 1) + "'s turn: Place Your Mark or Press q to Quit: ")
        if move == 'q':
            playing = False
        # Check If Playable Move
        elif str.isdigit(move) and int(move) in marks:
            if not marks[int(move)] in {'X', 'O'}:
                turn += 1
                marks[int(move)] = whos_turn(turn)
        if winner(marks): playing, complete = False, True
        if turn > 8: playing = False
    # Final Board!     
    os.system('cls' if os.name == 'nt' else 'clear')
    makeboard(marks)
    # Who Won
    if complete:
        if whos_turn(turn) == 'X': print('Player 1 Wins!')
        else: print('Player 2 Wins!')
    else: print('Tie Game!')   

if __name__ == "__main__":
    main()