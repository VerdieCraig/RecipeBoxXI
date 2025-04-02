using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RecipeBox.Models;

namespace RecipeBox.DataAccess
{
    public class RecipeRepository
    {
        private readonly RecipeDbContext _RecipeDbContext;

        public RecipeRepository(RecipeDbContext RecipeDbContext)
        {
            _RecipeDbContext= RecipeDbContext;
        }

        public async Task<List<Recipe>> GetRecipes()
        {
            return await Task.FromResult(_RecipeDbContext.Recipes.ToList());
        }
        public async Task<Recipe> GetRecipe(Guid Id)
        {
            return await Task.FromResult(_RecipeDbContext.Recipes.FirstOrDefault(x => x.Recipe_Id == Id));
        }
    }
}
