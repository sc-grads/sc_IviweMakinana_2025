import string
from datetime import datetime
import time

print(f'{"text"} is letters-only, good job!')

def main() -> None:  # usage
    while True:
        try:
            user_input: str = input('Check text: ')
            is_letters_only(user_input)
        except ValueError as e:
            print('Please only enter English letters...')
        except Exception as e:
            print(f'Encountered and unknown exception: {type(e)} {e}')

def is_letters_only(text: str) -> None:
    alphabet: str = string.ascii_letters + ' '
    for char in text:
        if char not in alphabet:
            raise ValueError('Text can only contain letters from the alphabet!')
    print(f'"{text}" is letters-only, good job!')

def connect_to_internet(signal: bool, delay: int) -> None:  # 2 usages
    if delay > 5:
        signal = True
    if signal:
        print('Connected!')
    else:
        print(f'Connection failed. Trying again in: {delay}s...')
        time.sleep(delay)
        connect_to_internet(signal, delay + 2)

connect_to_internet(False, 0)

main()