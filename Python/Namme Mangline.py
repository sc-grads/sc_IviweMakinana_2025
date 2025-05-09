class Car:
    _YEAR: int = 2000

    def __init__(self, brand: str, fuel_type: str) -> None:
        self._brand = brand
        self._fuel_type = fuel_type
        self._var: str = 'red'

    def drive(self) -> None:
        print(f'Driving: {self._brand}!')

    def _get_description(self) -> None:
        print(f'{self._brand}: {self._fuel_type}!')

    def display_colour(self) -> None:  # 1 usage
        print(f'{self._brand} is "{self._var.capitalize()}"!')

class Toyota(Car):  # 2 usages
    def __init__(self, fuel_type: str) -> None:
        super().__init__('Toyota', fuel_type)
        self._var = 100

    def get_year(self) -> int:
        return self._YEAR

def main() -> None:  # 1 usage
    toyota: Toyota = Toyota('Electric')
    toyota.display_colour()
    print(toyota.get_year())