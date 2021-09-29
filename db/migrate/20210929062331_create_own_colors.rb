class CreateOwnColors < ActiveRecord::Migration[6.1]
  def change
    create_table :own_colors do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :color1, null: false
      t.integer :color2, null: false
      t.integer :color3, null: false
      t.integer :color4, null: false
      t.integer :color5, null: false
      t.integer :color6, null: false
      t.integer :color7, null: false
      t.integer :color8, null: false
      t.integer :color9, null: false
      t.integer :color10, null: false
      t.integer :color11, null: false

      t.timestamps
    end
  end
end
