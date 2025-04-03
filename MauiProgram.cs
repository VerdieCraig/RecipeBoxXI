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
            using var dbContext = dbContextFactory.CreateDbContext();
            dbContext.Database.EnsureCreated();
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
