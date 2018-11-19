# frozen_string_literal: true

class AnimalsController < ApplicationController
  def index
    @animals = Animal.order(:name).page(params[:page]).per(5)
  end

  def show
    @animal = Animal.find(params[:id])
  end
end
