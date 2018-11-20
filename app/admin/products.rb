# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :name, :brand, :description, :cost, :quantity, :category_id, :image
end
