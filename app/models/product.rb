# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category
  has_many :orders, through: :order_item, dependent: :destroy
  validates :cost, :name, :quantity, presence: true
  validates :quantity, numericality: { only_integer: true }
end
