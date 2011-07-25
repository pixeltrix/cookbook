class CreateRecipeSteps < ActiveRecord::Migration
  def self.up
    create_table :recipe_steps do |t|
      t.references :recipe
      t.text :instructions

      t.timestamps
    end
  end

  def self.down
    drop_table :recipe_steps
  end
end
