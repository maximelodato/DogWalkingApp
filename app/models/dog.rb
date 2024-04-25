class Dog < ApplicationRecord
  belongs_to :city
  has_many :stroll_dogs
  has_many :strolls, through: :stroll_dogs
  has_many :dogsitters, through: :strolls
end
