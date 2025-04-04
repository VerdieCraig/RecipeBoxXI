using Microsoft.EntityFrameworkCore;
using RecipeBox.Models;

namespace RecipeBox.DataAccess
{
    public class RecipeDbContext : DbContext
    {
        public RecipeDbContext(DbContextOptions<RecipeDbContext> options)
            : base(options)
        {
        }

        // Required for `IDbContextFactory<RecipeDbContext>`
        public RecipeDbContext()
        {
        }

        public DbSet<Recipe> Recipes { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Recipe>().ToTable("Recipe");

            // Ensure primary key is configured
            modelBuilder.Entity<Recipe>().HasKey(r => r.Recipe_Id);

            // ✅ Remove seed data from here (handled in MauiProgram.cs)
        }
    }
}
