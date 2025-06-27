def named(**kwargs):
    print(kwargs)

def print_ni_kwargs(kwargs):
    named(**kwargs)
    for arg, value in kwargs.items():
        print(f"{arg}: {value}")

print_ni_kwargs(name="Bob", age=25)