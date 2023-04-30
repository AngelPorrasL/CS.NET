using System;
using System.Threading;


namespace MultiThreading
{
    class Program
    {
        static void Main()
        {
            Thread thread = new Thread(Contar);

            thread.Start();


            for (int i = 0; i < 5; i++)
            {
                Console.WriteLine("Hilo principal: " + i);
                Thread.Sleep(1000);
            }
        }

        static void Contar()
        {
            for (int i = 0; i < 5; i++)
            {
                Console.WriteLine("Hilo secundario: " + i);
                Thread.Sleep(1000);
            }
        }
    }
}
