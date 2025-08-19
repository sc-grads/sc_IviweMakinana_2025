namespace ClassesApp
{
    internal class Program
    {
      
        Customer earl = new Customer("Earl");
        Customer frankTheTank = new Customer("FrankTheTank", "Mainstreet 1", "5551234567");
        //Console.WriteLine("Name of Customer is " + earl.Name);
        // Default Customer with no Arguments given
        Customer myCustomer = new Customer();

        myCustomer.SetDetails("Frank", "Mainstreet 2", "555121312");

            Console.WriteLine("MyCustomer is: " + myCustomer.Name 
                + " and he lives in " + myCustomer.Address
                );

            Console.WriteLine("earl is: " + earl.Name
                + " and he lives in " + earl.Address
                );


            //Console.WriteLine("Details about customer: " + myCustomer.Name);
            Console.ReadKey();
    }
}
