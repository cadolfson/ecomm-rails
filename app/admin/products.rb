# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :name, :description, :cost, :quantity
end
