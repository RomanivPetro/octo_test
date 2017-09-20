using System.Data.Entity;
using System.Runtime.Remoting.Contexts;
using SampleConsoleProject.Model;

namespace SampleConsoleProject
{
    public class DbContext:System.Data.Entity.DbContext
    {
        public DbContext():base("TestContext")
        {
            Database.SetInitializer<DbContext>(new CreateDatabaseIfNotExists<DbContext>());
        }

        public virtual DbSet<Student> Students { get; set; }
    }
}