class CreateThings < ActiveRecord::Migration[7.0]
  def change
    create_table :things do |t|
      t.timestamps
      t.string :name
      t.boolean :yes_or_no
    end
  end
end
