class Recipe < ActiveRecord::Base

  has_many :steps
  accepts_nested_attributes_for :steps, :allow_destroy => true,
    :reject_if => lambda { |step| step[:instructions].blank? }

  validates_presence_of :name

end
