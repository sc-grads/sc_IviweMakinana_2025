number: int = 0

def change_number() -> None:
    global number
    print(number)

def inner_func() -> None:
    global number
    number = 10