class CreateColors < ActiveRecord::Migration[6.1]
  def change
    create_table :colors do |t|
      t.references :sender, null: false, foreign_key: { to_table: :users }
      t.references :receiver, null: false, foreign_key: { to_table: :users }
      t.boolean :color1_flag
      t.boolean :color2_flag
      t.boolean :color3_flag
      t.boolean :color4_flag
      t.boolean :color5_flag
      t.boolean :color6_flag
      t.boolean :color7_flag
      t.boolean :color8_flag
      t.boolean :color9_flag
      t.boolean :color10_flag
      t.boolean :color11_flag

      t.timestamps
    end
  end
end
