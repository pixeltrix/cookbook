class CreateRecipeStepIngredients < ActiveRecord::Migration
  def self.up
    create_table :recipe_step_ingredients do |t|
      t.references :step
      t.references :ingredient
      t.integer :amount
      t.string :unit

      t.timestamps
    end
  end

  def self.down
    drop_table :recipe_step_ingredients
  end
end
