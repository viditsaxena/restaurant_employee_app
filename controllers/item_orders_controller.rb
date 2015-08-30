class ItemOrdersController < ApplicationController


  get '/' do
    @parties = Party.where(has_paid: false)
    @time_now = Time.now
    erb :'item_orders/index'
  end


  get '/new' do
    @parties = Party.where(has_paid: false)
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

    redirect "/parties/#{party[:id]}"
  end

  delete '/:id' do

    item_order = ItemOrder.find(params[:id])
    party = item_order.party

    item_order.delete()
    redirect "/parties/#{party.id}"
  end



end
