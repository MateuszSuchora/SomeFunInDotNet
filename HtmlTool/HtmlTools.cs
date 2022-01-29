using System;
using System.Text.RegularExpressions;

namespace HtmlTool
{
    public class HtmlTools
    {
        public HtmlTools() { }

        public static string RemoveHTML(string input)
        {
            string stripedString = Regex.Replace(input, "<.*?>", String.Empty);
            return stripedString.Replace("<!---", String.Empty).Replace("-->", String.Empty).Trim();
        }
    }
}
