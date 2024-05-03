class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :country
      t.integer :rating
      t.integer :people_served
      t.string :ingredients

      t.timestamps
    end
  end
end
