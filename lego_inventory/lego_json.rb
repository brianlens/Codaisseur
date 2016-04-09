require 'json'

def read_item
   json = File.read( 'inventory.json' )
   array = JSON.parse( json, { :symbolize_names => true } )
end

def write_item( items )
   File.open( "inventory.json", "w" ) do |f|
      json = JSON.pretty_generate( items )
      f.write( json  )
  end
end
