class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      
      t.string :name
      t.string :country
      t.integer :rating
      t.integer :people_served
      t.string :ingredients

      t.timestamps
    end
  end
end
