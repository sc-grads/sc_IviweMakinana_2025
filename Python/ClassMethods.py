class Connection:
    def __init__(self, connection_type: str) -> None:
        self.connection_type = connection_type

    def connect(self) -> None:
        print(f'Connecting to {self.connection_type}!')

def main() -> None:  # 1 usage
    internet: Connection = Connection('Internet')
    internet.connect()

if __name__ == '__main__':
    main()