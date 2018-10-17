class Guest

    attr_accessor :name, :trip_count
    @@all = []

    def initialize(name)
      @name = name
      @trip_count = 0
      self.class.all << self
    end

    def self.all
      @@all
    end

    def add_a_trip(given_city)
      Trip.new(self, given_city)
      @trip_count += 1
    end

    def get_my_trips
      Trip.all.select do |each_trip|
        each_trip.guest == self
      end
    end

    def listings
      get_my_trips.map {|a| a.listing.city}
    end

    def trip_count
      get_my_trips.count
    end

    def self.pro_traveller
      Trip.all.select do |each_traveler|
        each_traveler.guest.trip_count > 1
      end
    end


end
