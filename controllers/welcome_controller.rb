class WelcomeController < ApplicationController

  get '/' do
    @parties = Party.where(has_paid: false)
    @dishes = Dish.all
    @item_orders = ItemOrder.all
    erb :index
  end

end
