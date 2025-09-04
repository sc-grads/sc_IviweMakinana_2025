// See https://aka.ms/new-console-template for more information
/*Console.WriteLine("Hello, World!");
String rocket = "Rocket";
for (int i = 10; i >= 0; i--)
{
    Console.Clear();
    Console.WriteLine("I IS : " + i);
    Console.WriteLine(rocket);
    rocket =   "\n"+ rocket;
    Thread.Sleep(1000);
}
Console.WriteLine(" The  Has Landed");
*/

Random random = new Random();

int SecNumb = random.Next (1,101);
int gessedNum = 0;
 int count = 0; 
while (SecNumb != gessedNum)
{
    count++;
    Console.WriteLine("Enter the number ");
    gessedNum = int.Parse(Console.ReadLine());  
    if (SecNumb > gessedNum)
    {
        Console.WriteLine("It I too lowe ");
    }
    if (SecNumb < gessedNum)
    {
        Console.WriteLine("It I too High ");
    }
    if (SecNumb == gessedNum)
    {
        Console.WriteLine("You got it This time \n It took you "+ count);
    }
}

Console.ReadKey();


