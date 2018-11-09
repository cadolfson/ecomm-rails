# frozen_string_literal: true

class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.text :description
      t.decimal :cost
      t.string :image
      t.string :breed
      t.boolean :sold
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
