namespace DictionaryApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dictionary<int, string> employees= new Dictionary<int, string>();
            employees.Add(101, "Iviwe Makinana ");
            employees.Add(101, "Iviwe Makinana ");
            employees.Add(101, "Iviwe Makinana ");
            employees.Add(101, "Iviwe Makinana ");
            string name = employees[101];
            Console.WriteLine(name );
        }
    }
}
