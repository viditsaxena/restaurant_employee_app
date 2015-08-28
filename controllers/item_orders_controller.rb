class ItemOrdersController < ApplicationController


  get '/' do
    @item_orders = ItemOrder.all
    @parties = Party.all
    @dishes = Dish.all
    erb :'item_orders/index'
  end


  get '/new' do
    @parties = Party.all
    @dishes = Dish.all
    erb :'item_orders/new'
  end


  post '/' do

    party = params[:party]
    dishes = params[:dish]


    dishes.each do |dish|
      ItemOrder.create({
        party_id: party[:id],
        dish_id: dish[:id]
        })
    end
    byebug
    redirect '/parties/<%= party[:id] %>'
  end


end
