using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleConsoleProject
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var context = new DbContext())
            {
                foreach (var student in context.Students)
                {
                    Console.WriteLine(student.Name);
                }
            }
        }
    }
}
