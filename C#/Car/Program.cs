namespace Car
{
    internal class Program
    {
        static void Main(string[] args)
        {

            List<string> colors = [
                "red", 
                "Blue", 
                "Green", 
                "Yellow ", 
                "red",
                "red"
                ];

            Console.WriteLine("The colors we have are !");

            foreach (string color in colors) {
                Console.WriteLine(color);
            

            }
            Console.WriteLine("The colors we have  are !");
            colors.Remove("red");

            foreach (string color in colors)
            {
                Console.WriteLine(color);

            }
            Console.WriteLine("The colors we have  are !");
            bool isDeletingSuccessful = colors.Remove("red");
            while (isDeletingSuccessful)
            {
                isDeletingSuccessful = colors.Remove("red");
            }

                foreach (string color in colors)
            {
                Console.WriteLine(color);

            }
            List<int > mynumber = [1,15,174,5,0,2,3];
            mynumber.Sort();
            foreach (int number in mynumber)
            {
                Console.WriteLine(number);
            }
            Console.WriteLine("Numbers Higher than 10  !");
            Predicate<int> isGraterThanTen = x => x >= 10;
            List<int> HigherThanTen = mynumber.FindAll(isGraterThanTen);
            foreach (int number in HigherThanTen) { Console.WriteLine(number); }


            bool HasLagerNumber = mynumber.Any(x => x >= 100);
            if (HasLagerNumber) { Console.WriteLine("There are lareg numbers in the list"); }
            else { Console.WriteLine("No large numbers "); }
            Console.ReadKey();

        }
    }
}
