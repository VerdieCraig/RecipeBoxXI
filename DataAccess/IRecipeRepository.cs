using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RecipeBox.Models;

namespace RecipeBox.DataAccess
{
    public interface IRecipeRepository
    {
        public Task<List<Recipe>> GetAllRecipesAsync();

        public Task<Recipe> GetRecipeByIdAsync(Guid id);

        public Task CreateAsync(Recipe Recipe);

        public Task UpdateAsync(Recipe Recipe);

        public Task DeleteAsync(Recipe Recipe);
    }
}
