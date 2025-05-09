def outer_func() -> None:  # 1 usage
    name: str = ''
    value: int = 0

    def inner_func() -> None:
        nonlocal name, value
        name = 'Tom'
        value = 100

        inner_func()
        print(name, value)