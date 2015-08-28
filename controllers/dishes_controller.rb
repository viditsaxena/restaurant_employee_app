class DishesController < ApplicationController


  get '/' do
    @dishes = Dish.all
    erb :'dishes/index'
  end


  get '/new' do
    erb :'dishes/new'
  end


  post '/' do
    Dish.create(params[:dish])
    redirect '/dishes'  # Normally we'd direct to the SHOW
  end


    # '/dishes'*******SHOW
    get '/:id' do
      @dish = Dish.find(params[:id])
      erb :'dishes/show'
    end

    # --FORM for UPDATING edit -
    get '/:id/edit' do
      @dish = Dish.find(params[:id])
      erb :'/dishes/edit'
    end

    # - UPDATE STAND - update
    put '/:id' do
      dish = Dish.find(params[:id])
      dish.update(params[:dish])
      redirect "/dishes"
    end



    # '/dishes'
    delete '/:id' do
      dish = Dish.find(params[:id])
      # dish.item_orders.each {|item_order| item_order.delete }
      dish.delete()
      redirect '/dishes'
    end

  end
