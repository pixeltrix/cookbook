class Recipe::StepIngredient < ActiveRecord::Base

  belongs_to :step
  belongs_to :ingredient

  accepts_nested_attributes_for :ingredient, :reject_if => :all_blank

  validates_numericality_of :amount, :only_integer => true, :allow_blank => true

  delegate :name, :to => :ingredient

end
