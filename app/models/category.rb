# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :animals, dependent: :destroy
  validates :name, presence: true
end
