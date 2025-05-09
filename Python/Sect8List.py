numbers: list[int] = [1, 2, 4, 6, 7, 10]
even_numbers: list[int] = []

for number in numbers:
    if number % 2 == 0:
        even_numbers.append(number)

even_numbers_lc: list[int] = [number for number in numbers if number % 2 == 0]
print(even_numbers_lc)

#------------------------------------------------------#
numbers: list[int] = [1, 2, 3, 4, 5, 6]
print(numbers[::3])

#------------------------------------------------------#
people: list[str] = ['Anna', 'Bob', 'Chris', 'David', 'Fred']
new_people: list[str] = []

for person in people:
    print(f'- {person}, {people.index(person)}!')

    if person == 'Bob':
        print(f'- REMOVING: {person}!')
        continue

    new_people.append(person)

print(new_people)

#--------------------------------------------------------#