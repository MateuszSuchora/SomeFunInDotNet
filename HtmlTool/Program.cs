using System;
using System.IO;

namespace HtmlTool
{
    class Program
    {
        static void Main(string[] args)
        {
            /* string workingDirectory = Environment.CurrentDirectory; //test without making exe file
             string path = Path.Combine(Directory.GetParent(workingDirectory).Parent.Parent.FullName, "test.html");
             ReplaceAllHtmlAndPrint(path); */
            foreach (string arg in args)
            {
                Console.WriteLine("File " + arg + ":");
                ReplaceAllHtmlAndPrint(arg);
                Console.WriteLine(String.Empty);
            }
        }

        private static void ReplaceAllHtmlAndPrint(string path)
        {
            try
            {
                string[] lines = File.ReadAllLines(path);
                foreach (string line in lines)
                {
                    string trimedLine = HtmlTools.RemoveHTML(line);
                    if (trimedLine != String.Empty)
                    {
                        Console.WriteLine(trimedLine);
                    }
                }
            }
            catch (System.IO.FileNotFoundException)
            {
                Console.WriteLine("Could not find file: " + path);
            }

        }
    }
}
