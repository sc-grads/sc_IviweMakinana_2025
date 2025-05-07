name: str = input('Enter a name: ')
noun_a: str = input('Enter a name: ')
verb_a: str = input('Enter a name: ')
noun_b: str = input('Enter a name: ')
verb_b: str = input('Enter a name: ')
number_a: str = input('Enter a name: ')
number_b: str = input('Enter a name: ')

story: str = f"""
-----------------------------------------------------------------------------------------------------------
This is a story about {name}, a strong (and beautiful){noun_a} who loved to {verb_a}.

{name} once {verb_b} and  won a {noun_b}as a prize.
Isn't that incredible?

Today 
------------------------------------------------------------------------------------------------------------
"""
print (story)