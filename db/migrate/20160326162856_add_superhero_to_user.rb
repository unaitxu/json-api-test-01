class AddSuperheroToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :superhero, :boolean
  end
end
