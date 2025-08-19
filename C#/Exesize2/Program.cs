// See https://aka.ms/new-console-template for more information
Console.WriteLine("Enter the first number:");
int num1 = int.Parse(Console.ReadLine());

Console.WriteLine("Enter the second number:");
int num2 = int.Parse(Console.ReadLine());

Console.WriteLine("Choose an operation: +, -, *, /");
string operation = Console.ReadLine();

int result;

switch (operation)
{
    case "+":
        result = num1 + num2;
        Console.WriteLine("Result: " + result);
        break;

    case "-":
        result = num1 - num2;
        Console.WriteLine("Result: " + result);
        break;

    case "*":
        result = num1 * num2;
        Console.WriteLine("Result: " + result);
        break;

    case "/":
        if (num2 == 0)
        {
            Console.WriteLine("Error: Division by zero is not allowed.");
        }
        else
        {
            result = num1 / num2;
            Console.WriteLine("Result: " + result);
        }
        break;

    default:
        Console.WriteLine("Invalid operation. Please choose +, -, *, or /.");
        break;
}
Console.ReadKey();
