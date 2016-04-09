require 'sinatra'
require './contacts_file'

set :port, 4567

get '/' do
   "<h1>Tacta Contact Manager</h1>"
end

# New contact
post '/contacts' do
   new_contact = { name: params[:name], phone: params[:phone], email: params[:email] }

   contacts = read_contacts
   contacts << new_contact
   write_contacts( contacts )

   i = contacts.length - 1

   redirect "/contacts/#{i}"
end

#edit contact
get '/contacts/:i/edit' do
  @i = params[:i].to_i

  contacts = read_contacts
  @contact = contacts[@i]
  erb :'contacts/edit'
end

#delete contact
get '/contacts/:i/delete' do
   i = params[:i].to_i

   contacts = read_contacts
   contacts.delete_at( i )
   write_contacts( contacts )

   redirect "/contacts"
end

#update contact
post '/contacts/:i/update' do
   i = params[:i].to_i
   updated_contact = { name: params[:name], phone: params[:phone], email: params[:email] }
   contacts = read_contacts
   contacts[i] = updated_contact
   write_contacts( contacts )

   redirect "/contacts/#{i}"
end

#new contact
get '/contacts/new' do
   erb :'contacts/new'
end


get '/contacts' do
   @contacts = read_contacts
   erb :'contacts/index'
end


get '/contacts/:i' do
   @i = params[:i].to_i
   contacts = read_contacts
   @contact = contacts[@i]
   erb :'contacts/show'
end

# #define ask for search
# def ask(prompt)
#   print prompt
#   gets.chomp
# end
#
# #search
# def action_search(contacts)
#    puts
#    pattern = ask "Search for? "
#    puts
#
#    contacts.each do |contact|
#       if contact[:name] =~ /contacts.json\b#{pattern}/i
#          show( contact )
#          puts
#       end
#    end
# end
