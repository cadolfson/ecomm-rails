# frozen_string_literal: true

class Page < ApplicationRecord
  validates :title, :permalink, presence: true
end
