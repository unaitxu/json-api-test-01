# The user model
class User < ApplicationRecord
  scope :superhero, -> { where(superhero: true) }
  scope :starwars, -> { where(superhero: false) }
end
