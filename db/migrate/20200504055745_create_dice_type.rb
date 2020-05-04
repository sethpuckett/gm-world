# frozen_string_literal: true

class CreateDiceType < ActiveRecord::Migration[5.2]
  def change
    create_table :dice_types do |t|
      t.string :item_type, null: false
      t.integer :sides, null: false

      t.timestamps
    end

    add_index :dice_types, :item_type, unique: true
  end
end
