from greetings import *
import connections

greet('Luigi')
print(AUTHOR)
print(VERSION)



if __name__ == '__main__':
    connections.connect()