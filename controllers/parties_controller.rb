class PartiesController < ApplicationController

  # '/parties'
  get '/' do
    @parties = Party.all
    erb :'parties/index'
  end

  # '/parties/new'
  get '/new' do
    erb :'parties/new'
  end

  # '/parties'
  post '/' do
    Party.create(params[:party])
    redirect '/item_orders/new'  # Normally we'd direct to the SHOW
  end

  # '/parties'*******SHOW
  get '/:id' do
    @party = Party.find(params[:id])
    @dishes= @party.dishes
    sub_total = []
    @dishes.each do |dish|
      sub_total.push(dish.price)
    end
    @total = sub_total.sum
    erb :'parties/show'
  end

  # --FORM for UPDATING edit -
  get '/:id/edit' do
    @party = Party.find(params[:id])
    erb :'/parties/edit'
  end

  # - UPDATE STAND - update
  put '/:id' do
    party = Party.find(params[:id])
    party.update(params[:party])
    redirect "/parties/#{party.id}"
  end



  # '/parties'
  delete '/:id' do
    party = Party.find(params[:id])
    # party.item_orders.each {|item_order| item_order.delete }
    party.delete()
    redirect '/parties'
  end

end
