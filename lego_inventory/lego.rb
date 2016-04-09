require 'sinatra'
require './lego_json'

set :port, 4567

get '/' do
   "<h1>Lego Inventory</h1>"
end

#new item
post '/inventory' do
  new_item = { name: params[:name], quantity: params[:quantity], id: params[:id], bricks: params[:bricks] }
  items = read_item
  items << new_item
  write_item ( items )

  i = items.length - 1

  redirect "/inventory/#{i}"
end


#edit item
get '/inventory/:i/edit' do
  @i = params[:i].to_i
  items = read_item
  @item = items[@i]
  erb :'iventory/edit'
end


#delete item
get 'inventory/:i/delete' do
  i = params[:i].to_i
  items = read_item
  items.delete_at( i )
  write_item ( items )

  redirect "/inventory"
end


#update item
post '/inventory/:i/update' do
  i = params[:i].to_i
  updated_item = { name: params[:name], quantity: params[:quantity], id: params[:id], bricks: params[:bricks] }
  items = read_item
  items[i] = updated_item
  write_item ( items )

  redirect "/inventory/#{i}"
end


get '/inventory' do
  erb :'inventory/new'
end


get '/inventory' do
  @item = read_item
  erb :'inventory/index'
end


get 'inventory/:i' do
  @i = params[:i].to_i
  items = read_item
  @item = items[@i]
  erb :'inventory/show'
end
