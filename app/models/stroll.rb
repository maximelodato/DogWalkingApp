class Stroll < ApplicationRecord
  belongs_to :dogsitter
  has_many :stroll_dogs
  has_many :dogs, through: :stroll_dogs
end
