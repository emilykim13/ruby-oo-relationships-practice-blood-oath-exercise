class Cult
    attr_reader :founding_year
    attr_accessor :name, :location, :slogan
    @@all = []

    def initialize(name, location, slogan, founding_year)
        @name = name
        @location = location
        @slogan = slogan
        @founding_year = founding_year
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(initiation_date, follower)
        BloodOath.new(initiation_date, self, follower)
    end

    def cult_population
        BloodOath.all.select {|object| object.cult == self}.size
    end

    def self.find_by_name(cult_name)
        all.select {|object| object.name == cult_name}
    end    

    def self.find_by_location(cult_location)
        all.select {|object| object.location == cult_location} #setting up a conditional for cult.location compared to new variable
    end

    def self.find_by_founding_year(year)
        all.select {|object| object.founding_year == year}
    end

end
