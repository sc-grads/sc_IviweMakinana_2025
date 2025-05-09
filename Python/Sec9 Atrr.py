class Animal:
    tricks: list[str] = []

    def __init__(self, name) -> None:
        self.name = name

    def teach_trick(self, trick_name: str) -> None:
        self.tricks.append(trick_name)


def main() -> None:  # 1 usage
        cat: Animal = Animal('Helios')
        dog: Animal = Animal('Boomer')

        cat.teach_trick('Wash dishes')
        cat.teach_trick('Get a job')

        print(cat.tricks)

if __name__ == '__main__':
    main()