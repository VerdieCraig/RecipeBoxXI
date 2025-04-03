using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RecipeBox.Models;

namespace RecipeBox.DataAccess
{
    public class RecipeRepository : IRecipeRepository
    {
        private readonly RecipeDbContext _RecipeDbContext;

        public RecipeRepository(RecipeDbContext RecipeDbContext)
        {
            _RecipeDbContext= RecipeDbContext;
        }

        public async Task<List<Recipe>> GetAllRecipesAsync()
        {
            return await Task.FromResult(_RecipeDbContext.Recipes.ToList());
        }
        public async Task<Recipe> GetRecipeByIdAsync(Guid id)
        {
            return await Task.FromResult(_RecipeDbContext.Recipes.FirstOrDefault(x => x.Recipe_Id == id));
        }
        public async Task CreateAsync(Recipe Recipe)
        {
            await _RecipeDbContext.Recipes.AddAsync(Recipe);
            await _RecipeDbContext.SaveChangesAsync();
        }
        public async Task UpdateAsync(Recipe Recipe)
        {
            _RecipeDbContext.Recipes.Update(Recipe);
            await _RecipeDbContext.SaveChangesAsync();
        }

        public async Task DeleteAsync(Recipe Recipe)
        {
            _RecipeDbContext.Recipes.Remove(Recipe);
            await _RecipeDbContext.SaveChangesAsync();
        }
    }
}
