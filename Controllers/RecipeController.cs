using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Mvc;
using RouteAttribute = Microsoft.AspNetCore.Mvc.RouteAttribute;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RecipeBox.Models;
using RecipeBox.DataAccess;


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
