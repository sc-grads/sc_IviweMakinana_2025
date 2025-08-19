// See https://aka.ms/new-console-template for more information
Console.WriteLine("Welcome to the Adventour Game ");
Console.WriteLine("Enter Your Name  ");
string player = Console.ReadLine();
Console.WriteLine("Choose your Charector type (Worrior , Wizard, Archer)");
string Charector  = Console.ReadLine();

Console.WriteLine($"You . {player} the  {Charector} find your self in the forest ");
Console.WriteLine("do you enter the forest or camp outside ( Enter / Camp ) ");
string Choise = Console.ReadLine();

if (Choise.ToLower() == "enter")
{
    Console.WriteLine("You are bravely enter the forest ");
}
else
{
    Console.WriteLine("You decided to camp Out and wait for Day life ");
}
bool gameContinues = true;

while (gameContinues)
{
    Console.WriteLine("you come to a fork in the road. Go left or rigth ? ");
    string direction = Console.ReadLine();
    if (direction.ToLower() == "left")
    {
        Console.WriteLine("you find a treasure chest!");
        gameContinues = false;
    }
    else
    {
        Console.WriteLine("You encounter a wild beast!");
        Console.WriteLine("Figth or Run (figth/run)");
        string fightChoice = Console.ReadLine();
        if (fightChoice.ToLower() == "figth")
        {
            Random random = new Random();
            int luck = random.Next(1, 11);
            if (luck > 5)
            {
                Console.WriteLine("You beat the wild beast ");
                if (luck > 8)
                {
                    Console.WriteLine("The beat  droped a treasure chest! ");

                }
            }
            else
            {
                Console.WriteLine("You are dead ");
                gameContinues = false;

            }
        }
    }
}
Console.ReadKey();  






