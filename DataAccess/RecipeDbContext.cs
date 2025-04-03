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

        public RecipeDbContext(DbContextOptions<RecipeDbContext> options, IConfiguration configuration)
            : base(options)
        {
            _configuration = configuration;
        }

        public DbSet<Recipe> Recipes { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            Console.WriteLine("Seeding database...");  // Debugging message

            modelBuilder.Entity<Recipe>().ToTable("Recipe");

            // Ensure primary key is configured
            modelBuilder.Entity<Recipe>().HasKey(r => r.Recipe_Id);

            // Seed Data with STATIC values
            modelBuilder.Entity<Recipe>().HasData(
                new Recipe
                {
                    Recipe_Id = Guid.Parse("11111111-1111-1111-1111-111111111111"), // Static GUID
                    Recipe_Name = "Spaghetti Bolognese",
                    Recipe_Ingredients = "Pasta, Ground Beef, Tomato Sauce, Garlic",
                    Recipe_Directions = "1. Cook pasta. 2. Prepare sauce. 3. Mix and serve.",
                    Recipe_Category = "Italian",
                    Recipe_Servings = 4,
                    Recipe_PrepTime = 30,
                    Created_At = new DateTime(2024, 01, 01), // Static DateTime
                    Modified_At = new DateTime(2024, 01, 02)
                },
                new Recipe
                {
                    Recipe_Id = Guid.Parse("22222222-2222-2222-2222-222222222222"),
                    Recipe_Name = "Chicken Stir-Fry",
                    Recipe_Ingredients = "Chicken, Bell Peppers, Soy Sauce, Rice",
                    Recipe_Directions = "1. Sauté chicken. 2. Add vegetables. 3. Serve over rice.",
                    Recipe_Category = "Asian",
                    Recipe_Servings = 2,
                    Recipe_PrepTime = 20,
                    Created_At = new DateTime(2024, 01, 01),
                    Modified_At = new DateTime(2024, 01, 02)
                }
            );
        }

    }

    // Seed data
    //global::Bogus.Faker.GlobalUniqueIndex = 0;

    //var recipeFaker = new Faker<Recipe>()
    //    .RuleFor(r => r.Recipe_Id, f => Guid.NewGuid())
    //    .RuleFor(r => r.Recipe_Name, f => f.Commerce.ProductName())
    //    .RuleFor(r => r.Recipe_Ingredients, f => f.Lorem.Sentence())
    //    .RuleFor(r => r.Recipe_Directions, f => f.Lorem.Paragraph())
    //    .RuleFor(r => r.Recipe_Category, f => f.Commerce.Categories(1).First())
    //    .RuleFor(r => r.Recipe_Servings, f => f.Random.Int(1, 10))
    //    .RuleFor(r => r.Recipe_PrepTime, f => f.Random.Int(10, 60))
    //    .RuleFor(r => r.Created_At, f => f.Date.Past())
    //    .RuleFor(r => r.Modified_At, f => f.Date.Recent());

    //var recipes = recipeFaker.Generate(10);


}
        
    



