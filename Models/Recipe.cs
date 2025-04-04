using System.ComponentModel.DataAnnotations;

namespace RecipeBox.Models
{
    public record Recipe
    {
        [Key]
        public Guid Recipe_Id { get; set; }

        public string Recipe_Name { get; set; } = default!;

        public string Recipe_Ingredients { get; set; } = default!;

        public string Recipe_Directions { get; set; } = default!;

        public string Recipe_Category { get; set; } = default!;

        public int Recipe_Servings { get; set; } = default!;

        public int Recipe_PrepTime { get; set; } = default!;

        public DateTime Created_At { get; set; } = DateTime.Now;

        public DateTime Modified_At { get; set; } = DateTime.Now;
    }
}
