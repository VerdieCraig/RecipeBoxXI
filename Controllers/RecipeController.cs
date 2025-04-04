using Microsoft.AspNetCore.Mvc;
using RecipeBox.DataAccess;
using RecipeBox.Models;
using RouteAttribute = Microsoft.AspNetCore.Mvc.RouteAttribute;


namespace RecipeBox.Controllers
{
    [Route("api/[controller]")]
    [ApiController]

    public class RecipeController : ControllerBase
    {
        private IRecipeRepository _RecipeRepository;

        public RecipeController(IRecipeRepository RecipeRepository)
        {
            _RecipeRepository = RecipeRepository;
        }

        [HttpGet("GetRecipes")]

        public async Task<List<Recipe>> GetAllRecipesAsync()
        {
            return await _RecipeRepository.GetAllRecipesAsync();
        }
    }

}
