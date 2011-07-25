class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @step = @recipe.steps.build
    @step_ingredient = @step.step_ingredients.build
    @ingredient = @step_ingredient.build_ingredient
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @step = @recipe.steps.build
    @step_ingredient = @step.step_ingredients.build
    @ingredient = @step_ingredient.build_ingredient
  end

  def create
    @recipe = Recipe.new(params[:recipe])

    if @recipe.save
      redirect_to edit_recipe_url(@recipe), :notice => 'Recipe was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update_attributes(params[:recipe])
      redirect_to edit_recipe_url(@recipe), :notice => 'Recipe was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_url, :notice => 'Recipe was successfully deleted.'
  end
end
