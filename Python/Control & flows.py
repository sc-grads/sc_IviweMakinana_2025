age: int = 30

if age >= 21:
    print ('you may enter the club! ')
else:
    print('you are not allowed enter the club! ')


number: int = 10

if number > 0:
    result: str = "Above 0"
else :
    result: str = " 0 and below"
result: str = "Above 0" if number >0 else " 0 and below"
print(result)

# For Loop

Text: str = 'Hello, world!'

for i in range(3):
    print(f'{i}: {Text}')

people: list[str] = ['Bob','James','Maria']

for person in people :
    if len(person) > 4 :

        print(f'{person} has a long name')
else:
    print(f'{person} has a short  name ')
# while loop
i: int = 5

while i > 0:
    print (f'Helow: {i}')
    i -=1
connection: bool =True

while connection 