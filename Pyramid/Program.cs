using System;

namespace Pyramid
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                int n = Convert.ToInt32(args[0]);
                if (n < 0)
                {
                    Console.WriteLine("Incorrect value of n");
                    return;
                }
                int elements = PyramidTools.CountElements(n);
                Console.WriteLine("For n={0}  we need {1} elements", n, elements);
                int row = Convert.ToInt32(args[1]);
                int column = Convert.ToInt32(args[2]);
                int level = Convert.ToInt32(args[3]);
                int blockNumber = PyramidTools.GetBlockNumber(n, row, column, level);
                if (blockNumber == -1)
                {
                    Console.WriteLine("Such a pyramid cannot be built");
                    return;
                }
                Console.WriteLine("For n={0}, row={1}, column={2}, level={3} block number is: {4}", n, row, column, level, blockNumber);
            }
            catch(System.IndexOutOfRangeException)
            {
                Console.WriteLine("Incorrect values");
            }
        }
    }
}
