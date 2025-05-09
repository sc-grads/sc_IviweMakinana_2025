import Connection
from my_package import website,internnet
if __name__ == '__main__':
    Connection.connect()

internnet.connect()
website.loud('www.google.com')