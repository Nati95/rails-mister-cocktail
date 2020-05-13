class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.text :description
      t.references :ingredient, foreign_key: { to_table: :ingredients }
      t.references :cocktail, foreign_key: { to_table: :cocktails }

      t.timestamps
    end
  end
end
