# frozen_string_literal: true

class AddBrandToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :brand, :string
  end
end
