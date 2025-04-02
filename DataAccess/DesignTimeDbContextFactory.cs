using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;
using System;
using System.IO;

namespace RecipeBox.DataAccess
{
    public class DesignTimeDbContextFactory : IDesignTimeDbContextFactory<RecipeDbContext>
    {
        public RecipeDbContext CreateDbContext(string[] args)
        {
            var configuration = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json")
                .Build();

            var optionsBuilder = new DbContextOptionsBuilder<RecipeDbContext>();
            var dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "RecipeBox.db");
            optionsBuilder.UseSqlite($"Data Source={dbPath}");

            return new RecipeDbContext(optionsBuilder.Options, configuration);
        }
    }
}
