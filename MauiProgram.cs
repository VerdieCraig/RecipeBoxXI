using Microsoft.Extensions.Logging;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Controls.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Sqlite;
using Microsoft.Extensions.Configuration;
using RecipeBox.Models;
using RecipeBox.DataAccess;
namespace RecipeBox;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();

        builder.Services.AddDbContextFactory<RecipeDbContext>(options =>
        {
            var dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "RecipeBox.db");
            Console.WriteLine($"Using database at: {dbPath}");  // Add this for debugging
            options.UseSqlite($"Data Source={dbPath}");
        });


        //builder.Services.AddScoped<RecipeDbContext>(sp =>
        //{
        //    var factory = sp.GetRequiredService<IDbContextFactory<RecipeDbContext>>();
        //    return factory.CreateDbContext();
        //});

        builder.Services.AddScoped<IRecipeRepository, RecipeRepository>();


        using (var scope = builder.Services.BuildServiceProvider().CreateScope())
        {
            var dbContextFactory = scope.ServiceProvider.GetRequiredService<IDbContextFactory<RecipeDbContext>>();
            using var context = dbContextFactory.CreateDbContext();

            // Ensure database is created
            context.Database.EnsureCreated();

            // Check if data already exists
            if (!context.Recipes.Any())
            {
                context.Recipes.AddRange(new List<Recipe>
        {
            new Recipe
            {
                Recipe_Id = Guid.NewGuid(),
                Recipe_Name = "Spaghetti Bolognese",
                Recipe_Ingredients = "Pasta, Ground Beef, Tomato Sauce, Garlic",
                Recipe_Directions = "1. Cook pasta. 2. Prepare sauce. 3. Mix and serve.",
                Recipe_Category = "Italian",
                Recipe_Servings = 4,
                Recipe_PrepTime = 30,
                Created_At = DateTime.Now,
                Modified_At = DateTime.Now
            },
            new Recipe
            {
                Recipe_Id = Guid.NewGuid(),
                Recipe_Name = "Chicken Stir-Fry",
                Recipe_Ingredients = "Chicken, Bell Peppers, Soy Sauce, Rice",
                Recipe_Directions = "1. Sauté chicken. 2. Add vegetables. 3. Serve over rice.",
                Recipe_Category = "Asian",
                Recipe_Servings = 2,
                Recipe_PrepTime = 20,
                Created_At = DateTime.Now,
                Modified_At = DateTime.Now
            }
        });

                // Save changes to the database
                context.SaveChanges();
            }
        }


        builder
     .UseMauiApp<App>()
     .ConfigureFonts(fonts =>
     {
         fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
     });

        builder.Services.AddMauiBlazorWebView();

#if DEBUG
        builder.Services.AddBlazorWebViewDeveloperTools();
        builder.Logging.AddDebug();
#endif
        return builder.Build();
    }
}
