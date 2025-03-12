# 1. Simple Function
def greet():
    print("Hello! Welcome to Python programming.")

# 2. Function with Parameters
def add_numbers(a, b):
    return a + b

# 3. Function with Default Parameters
def greet_person(name="Guest"):
    print(f"Hello, {name}!")

# 4. Function with Keyword Arguments
def person_info(name, age):
    print(f"Name: {name}, Age: {age}")

# 5. Function with Variable-Length Arguments (*args)
def multiply(*numbers):
    result = 1
    for num in numbers:
        result *= num
    return result

# 6. Function with Keyword Arguments (**kwargs)
def display_details(**details):
    for key, value in details.items():
        print(f"{key}: {value}")

# 7. Lambda Function
square = lambda x: x ** 2
multiply_lambda = lambda a, b: a * b

# 8. Recursive Function (Factorial)
def factorial(n):
    if n == 0 or n == 1:
        return 1
    return n * factorial(n - 1)

# Calling all functions
greet()
print("Sum:", add_numbers(10, 5))
greet_person("Makinana")
greet_person()
person_info(age=25, name="Iviwe")
print("Multiplication:", multiply(2, 3, 4))
display_details(name="Makinana", age=25, country="South Africa")
print("Square of 5:", square(5))
print("Multiplication (Lambda):", multiply_lambda(4, 3))
print("Factorial of 5:", factorial(5))
