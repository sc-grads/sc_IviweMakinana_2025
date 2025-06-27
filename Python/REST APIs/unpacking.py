def multiply(*args):
    print(args)
    total = 1
    for arg in args:
        total = total * arg
    return total

def apply(*args, operator):
    if operator == "*":
        return multiply(*args)
    elif operator == "+":
        total = 0
        for arg in args:
            total = total + arg
        return total
    else:
        return "No valid operator provided to apply()."

print(apply(1, 3, 6, operator="*"))