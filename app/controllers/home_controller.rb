class HomeController < ApplicationController
  def top
    @categories_1 = Category.find(1)
    @categories_2 = Category.find(2)
    @categories_3 = Category.find(3)
  end

  def about
  end
end
