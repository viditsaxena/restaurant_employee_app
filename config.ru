require 'bundler'
Bundler.require()

# MODELS
require './models/party'
require './models/dish'
require './models/item_order'


# CONTROLLERS
require './controllers/application_controller'
require './controllers/parties_controller'
require './controllers/dishes_controller'
require './controllers/item_orders_controller'
require './controllers/welcome_controller'

# ROUTING
map('/parties') { run PartiesController }
map('/dishes') { run DishesController }
map('/item_orders'){ run ItemOrdersController }
map('/'){ run WelcomeController }
