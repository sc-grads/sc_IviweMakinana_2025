sequence = [1, 3, 5, 9]
doubled = [(lambda x: x * 2)(x) for x in sequence]
# OR
doubled = list(map(lambda x: x * 2, sequence))
print(doubled)  # Output: [2, 6, 10, 18]