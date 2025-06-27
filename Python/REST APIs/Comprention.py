users = [
    ("Bob", "password"),
    ("Rolf", "bob123"),
    ("Jose", "longp4ssword"),
    ("username", "1234"),
]

username_mapping = {user[0]: user for user in users}
print(username_mapping)