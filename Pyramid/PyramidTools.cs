using System;
using System.Collections.Generic;
using System.Text;

namespace Pyramid
{
    class PyramidTools
    {
        public static int CountElements(int n)
        {
            int sumOfBlocks = 0;
            while (n >= 1)
            {
                sumOfBlocks += n * n;
                n--;
            }
            return sumOfBlocks;
        }

        public static int GetBlockNumber(int n, int row, int column, int level)
        {
            if (n <= 0 || row <= 0 || column <= 0 || level <= 0) { return -1; } // incorrect values
            int blockNumber = 0;
            if (level > n) { return -1; } // level cant be higher than n
            while (level > 1)
            {
                blockNumber += n * n;
                n--;
                level--;
            }
            if (row > n || column > n) { return -1; } // row or column cant be bigger than numbers of n on current level
            blockNumber += (row - 1) * n + column; // first add rows and then add column  
            return blockNumber;
        }
    }
}
