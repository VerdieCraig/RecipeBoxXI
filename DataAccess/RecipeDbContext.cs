using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Sqlite;
using Microsoft.Extensions.Configuration;
using RecipeBox.Models;
using Bogus;

namespace RecipeBox.DataAccess
{
    public class RecipeDbContext : DbContext
    {
        private readonly IConfiguration _configuration;

        public RecipeDbContext(DbContextOptions<RecipeDbContext> options,
            IConfiguration configuration) : base(options)
        {
            _configuration = configuration;
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            // Specify the path for the database file in the user's local application data directory
            var dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "RecipeBox.db");
            optionsBuilder.UseSqlite($"Data Source={dbPath}");
        }

        public DbSet<Recipe> Recipes { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Recipe>().ToTable("Recipe");
            modelBuilder.Entity<Recipe>().HasKey(p => p.Recipe_Id);
            var recipes = GenerateRecipeData();
            modelBuilder.Entity<Recipe>().HasData(recipes);
        }

        private Recipe[] GenerateRecipeData()
        {
            var recipeFaker = new Faker<Recipe>()
                .RuleFor(x => x.Recipe_Id, f => Guid.NewGuid())
                .RuleFor(x => x.Recipe_Name, f => f.Commerce.Product())
                .RuleFor(x => x.Recipe_Ingredients, f => f.Commerce.ProductDescription())
                .RuleFor(x => x.Recipe_Directions, f => f.Commerce.ProductDescription())
                .RuleFor(x => x.Recipe_Category, f => f.Commerce.Categories(1).First())
                .RuleFor(x => x.Recipe_Servings, f => f.Random.Int(2, 12))
                .RuleFor(x => x.Recipe_PrepTime, f => f.Random.Int(10, 90))
                .RuleFor(x => x.Created_At, f => f.Date.Past())
                .RuleFor(x => x.Modified_At, f => f.Date.Recent());

            return recipeFaker.Generate(count: 5).ToArray();
        }
    }

}

