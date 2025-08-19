using System.Collections.Generic;

namespace ListApp
{

    public class Products
    {
        public string  Name { get; set; }
        public double price { get; set; }   
    }
    internal class Program
    {




        static void Main(string[] args)
        {
            List<Products> products = new List<Products> {
                new Products { Name = "Appl", price = 2.99 },
                new Products { Name = "banana", price = 1.99 },
                new Products { Name = "Cherry", price = 0.99 },


                };
            products.Add(new Products { Name = "Potato", price = 70.99 });
            Console.WriteLine(" Avelabble products ");

            foreach (Products p in products)
            {
                Console.WriteLine($"  the products : {p.Name} for {p.price}");
            }
            List<Products> ChepperProducts = products.Where(x => x.price < 1.00).ToList();

            foreach (Products p in ChepperProducts)
            {
                Console.WriteLine($"  the products : {p.Name} for {p.price}");
            }
            Console.ReadKey();
            }
        }
}
