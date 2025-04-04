# RecipeBoxXI

A Blazor WebAssembly application for storing, managing, and sharing your favorite recipes. Built with .NET, Entity Framework, and SQLite, this project provides a seamless CRUD experience for handling recipe data.

## Table of Contents
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [Capstone Features Integration](#capstone-features-integration)
- [Testing](#testing)
- [Statement of AI Use](#statement-of-ai-use)

---

## Features
- Add, update, and delete recipes  
- Store recipe details such as name, category, servings, prep time, ingredients, and directions  
- Search and filter recipes  
- Client-side Blazor WebAssembly UI  
- Entity Framework Core with SQLite database  

---

## Technologies Used
- **Blazor WebAssembly** (Frontend UI)  
- **ASP.NET Core** (Backend API)  
- **Entity Framework Core** (ORM for database interactions)  
- **SQLite** (Lightweight database)  
- **JavaScript Runtime (JSRuntime)** (Browser interactions)  

---

## Installation
1. Clone the Repository
git clone https://github.com/VerdieCraig/RecipeBoxXI.git
cd RecipeBoxXI

2. Install Dependencies
Ensure you have .NET SDK installed, then restore dependencies:
dotnet restore

3. Run the Application
dotnet run --project RecipeBox.Server
Then, open the browser and go to:
https://localhost:5001

Note: This project does not use migrations (as it uses "Ensure Created" to create the database).

## Usage
Adding a Recipe
Navigate to the Recipes page and fill out the form to add a new recipe.

Updating a Recipe
Click on a recipe to view details and use the Edit Form to modify the data.

Deleting a Recipe
On the Recipe Details page, click the Delete button to remove the recipe.

## Capstone Features Integration
1. CRUD API
The application exposes a REST API that allows full CRUD (Create, Read, Update, Delete) operations on recipes. This enables interaction with the database via HTTP requests.

Location: RecipeRepository.cs

public async Task UpdateAsync(Recipe recipe)
{
    _RecipeDbContext.Recipes.Update(recipe);
    await _RecipeDbContext.SaveChangesAsync();
}

public async Task DeleteAsync(Recipe recipe)
{
    _RecipeDbContext.Recipes.Remove(recipe);
    await _RecipeDbContext.SaveChangesAsync();
}
This API is used to update and delete recipes from the Blazor UI.

2. Asynchronous Programming
All database interactions are implemented using async/await to ensure non-blocking UI updates, improving responsiveness.

Example: RecipeRepository.cs

public async Task<List<Recipe>> GetAllRecipesAsync()
{
    return await _RecipeDbContext.Recipes.ToListAsync();
}
By making these operations asynchronous, the UI remains responsive while fetching or modifying data.

3. Relationship Between Two Tables
The database contains two related entities:

Recipe (Main entity)

Category (Each recipe belongs to a category)

Location: RecipeDbContext.cs

modelBuilder.Entity<Recipe>()
    .HasOne(r => r.Category)
    .WithMany(c => c.Recipes)
    .HasForeignKey(r => r.CategoryId);
This enables querying recipes by category and ensures database integrity.

## Testing
This project was tested repeatedly throughout development. The following tests were performed:
- Debugging within visual studio.
- Debugging efforts by Code: You mentors.
- Manual testing of the Blazor UI to ensure all features work as expected.
- Testing on windows and android devices to ensure compatibility.

## Statement of AI Use
GitHub Copilot was used to assist in writing code snippets and for debugging purposes. 
ChatGPT was used to untangle difficult debugging issues with dependency injection,
to aid in integrating the c sharp code with the Blazor UI functionality, and to 
structure an initial README file. Overall decisions about architecture and functionality
were made by the developer.

Enjoy managing your recipes with RecipeBoxXI!
Happy Cooking!

