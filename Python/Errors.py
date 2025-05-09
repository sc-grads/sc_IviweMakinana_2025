import sys

import sys

total: int = 0

while True:
    user_input: str = input('Enter a number: ')

    if user_input == '0':
        print(f'Total: {total}')
        sys.exit()

    total += int(user_input)



    #-----------------------------------------------------------
while True:
    try:
        user_input: str = input('Enter a number: ')
        print(f'10 / {user_input} = {10 / float(user_input)}')
    except ZeroDivisionError:
        print('You cannot divide by 0')
    except ValueError:
        print('Please enter a valid number...')
    except Exception as e:
        print(f'Something ELSE went wrong: {e}')



#-----------------------------------------------------#
total: float = 0

while True:
    user_input: str = input('Enter a number: ')

    if user_input == '0':
        print(f'Total: {total}')
        sys.exit()

    try:
        total += float(user_input)
    except ValueError:
        print('Please enter a valid number...')


#-------------------------------------------------------------------#
user_input: str = 'abc'

try:
    result: float = 1 / float(user_input)
    print(f'1 / {user_input} = {result}')
except ValueError:
    print(f'You cannot use: "{user_input}" as a value.')
except ZeroDivisionError:
    print("Don't be silly, you cannot divide by 0.")
else:
    print('Success! There were no exceptions encountered!')
finally:
    print('FINALLY: I am always executed!')