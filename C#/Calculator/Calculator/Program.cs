using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;

namespace Calculator
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter Your Whole Number");
            // variables 
            int Number = 0;
            Number = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter Your Whole Number");
            // variables 
            int Number2 = 0;
            Number2 = int.Parse(Console.ReadLine());
            Console.WriteLine("You Enterd : " + Number2);
            // Console.ReadKey();

            int sum = Number + Number2;
            Console.WriteLine("The sum of " + Number + "and " + Number2 + "is " + sum);
            Console.ReadKey();
        }
    }
}
