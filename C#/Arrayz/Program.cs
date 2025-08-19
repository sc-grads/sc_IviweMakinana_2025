// See https://aka.ms/new-console-template for more information

string[] weekdays = ["Monday ", "Tusday", "Wensday ", "Thersday ", "Friday "];
Console.WriteLine("the length of array is " +weekdays.Length );
/*for (int i = 0; i < weekdays.Length; i++)
{
    Console.WriteLine("the day : " + weekdays[i]);
}
*/
foreach (var iterm in weekdays)
{
    Console.WriteLine(iterm);
}

int[] x = [1, 2, 3, 4, 5];

foreach (var num in x)
{   
    Console.WriteLine(num);
}

Console.ReadKey();  

