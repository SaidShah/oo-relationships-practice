require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tom = Guest.new("Tom")
mike = Guest.new("Mike")
john = Guest.new("John")
alex = Guest.new("Alex")
joe = Guest.new("Joe")

france = Listing.new("France")
japan = Listing.new("Japan")
ny = Listing.new("NY")
cali = Listing.new("California")
texas = Listing.new("Texas")


joe.add_a_trip(france)
alex.add_a_trip(ny)
john.add_a_trip(texas)
mike.add_a_trip(cali)
mike.add_a_trip(ny)
alex.add_a_trip(france)
joe.add_a_trip(texas)
tom.add_a_trip(japan)

# france.type_of_listing = "House"
# ny.type_of_listing = "Abode"
# cali.type_of_listing = "Building"
# texas.type_of_listing = "Farm"

pry.start
