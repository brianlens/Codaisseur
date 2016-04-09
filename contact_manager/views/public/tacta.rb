require 'json'

def read_contacts
   json = File.read( 'contacts.json' )
   array = JSON.parse( json, { :symbolize_names => true } )
end

def write_contacts( contacts )
   File.open( "contacts.json", "w" ) do |f|
      json = JSON.pretty_generate( contacts )
      f.write( json  )
   end
end

##############################################################################


def index(contacts)
  contacts.each_with_index do |contact, i|
    puts "#{i+1}: #{contact[:name]}"
  end
end

def show(contact)
  puts "#{contact[:name]}"
  puts "phone: #{contact[:phone]}"
  puts "email: #{contact[:email]}"
end

def ask(prompt)
  print prompt
  gets.chomp
end

def create_new_contact
  contact = {}

    puts
    puts "Enter your new contact info :"
      contact[:name]   = ask "Name?"
      contact[:phone]  = ask "Phone number?"
      contact[:email] = ask "Email address?"
  contact
end

def action_new(contacts)
   contact = create_new_contact
   contacts << contact
   write_contacts(contacts)
     puts
     puts "New contact created:"
     puts
     show(contact)
     puts
end

def action_show(contacts, i)
   contact = contacts[i-1]

   puts
   show( contact )
   puts
end

def action_delete(contacts)
  puts
  response = ask "delete which contact?"
  i = response.to_i
  puts
  puts "Contact #{contacts[i-1][:name]} is deleted"
    contacts.delete_at(i-1)
  puts
  write_contacts( contacts )
  puts
end

def action_error
   puts
   puts "Sorry, I don't recognize that command."
   puts
end

def action_search(contacts)
   puts
   pattern = ask "Search for? "
   puts

   contacts.each do |contact|
      if contact[:name] =~ /\b#{pattern}/i
         show( contact )
         puts
      end
   end
end


loop do
  contacts = read_contacts

  index(contacts)

  puts
    response = ask "Who would you like to see (press n to add a new contact, d to delete one, s to search and q to quit)? "
      break if response == "q"

      if response == "n"
        action_new(contacts)
      elsif response == "d"
        action_delete( contacts )
      elsif response =~ /[0-9+]/
        action_show(contacts, response.to_i)
      elsif response == "s"
      action_search( contacts )
      else
        action_error
     end
  end

puts
puts "Bye!"
