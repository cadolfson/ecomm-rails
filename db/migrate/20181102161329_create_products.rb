# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :cost
      t.string :image
      t.integer :quantity
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
