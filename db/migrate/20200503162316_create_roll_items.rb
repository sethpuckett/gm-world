# frozen_string_literal: true

class CreateRollItems < ActiveRecord::Migration[5.2]
  def change
    create_table :roll_items do |t|
      t.string :item_type, null: false
      t.jsonb :content, null: false, default: '{}'
      t.integer :range_min, null: false
      t.integer :range_max, null: false
    end

    add_index :roll_items, :content, using: :gin
    add_index :roll_items, %i[item_type range_min range_max]
  end
end
