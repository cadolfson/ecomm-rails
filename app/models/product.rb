# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category
  has_many :orders, through: :order_item
end
