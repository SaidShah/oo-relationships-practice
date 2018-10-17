require "pry"
class Listing

  attr_accessor :city
  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    trips.map {|a| a.guest}
  end


  def trips
    Trip.all.select do |each_trip|
      each_trip.listing == self
    end
  end

  def self.find_all_by_city(city_name)
    Trip.all.select do |each_city|
      each_city.listing.city == city_name
    end
  end

  def trip_count
    trips.count
  end

  def self.most_popular
    counter = 0
    Trip.all.select do |each_trip|
      
    end
  end




end
