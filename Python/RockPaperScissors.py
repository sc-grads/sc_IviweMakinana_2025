import random
import sys

print('Welcome to RPS')
moves: dict = {'rock':'RRR','paper':'PPP','scissors':'SSS',}
valid_moves: list [str] = list(moves.keys())

while True:
    user_move: str = input ("Rock, Paper, Scissors?>>").lower()

    if user_move == "exist":
        print ("Thank you for playing!!")
        sys.exit()
    ai_move: str = random.choice(valid_moves)
    print('--------')
    print(f'You: {moves[user_move]}')
    print(f'AI: {moves[ai_move]}')
    print('--------')

    if user_move == ai_move:
        print ('Its a Tie')
    elif user_move == 'rock' and ai_move == 'scissors':
        print ('You win!')
    elif user_move == 'scissors' and ai_move == 'paper':
        print ('You win!')
    elif user_move == 'paper' and ai_move == 'rock':
        print ('You win!')
    else:
        print('AI wins...')
