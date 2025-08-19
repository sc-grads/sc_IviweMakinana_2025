using System.Net.Http.Headers;

namespace OldStyle
{
    internal class Program
    {  




        static void Main(string[] args)
        {
            Console.WriteLine("Enter the number of days to similate: ");
            int day = int .Parse(Console.ReadLine());   
            

            int[] temperature = new int[day];
            string[] conditipons = { "Sunny ", "Rainy", "Cloudy ", "Snowy" };
            string[] weatherConditios = new string[day];

            Random rand = new Random();

            for (int i = 0; i < day; i++) {
                temperature[i] = rand.Next(-10, 40);
                weatherConditios[i] = conditipons[rand.Next (conditipons.Length)];
            
            }

            Console.WriteLine("Hello, World!");
        }
        static double CalAver(int[] temperature)
        {
            int sum = 0;
            for (int i = 0; i < temperature.Length; i++)
            {

                sum += temperature[i];

            }
            double ave = sum / temperature.Length;
            return ave;
        }
    }
}
