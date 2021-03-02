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

    def cult_follower
        BloodOath.all.select {|object| object.cult == self} # .size can be added to sufficed the cult_population deliverble but i took it off to use this method more often
    end

    def cult_population
        cult_follower.size
    end


    def self.find_by_name(cult_name)
        all.select {|object| object.name == cult_name}
    end    

    def self.find_by_location(cult_location)
        all.select {|object| object.location == cult_location}
    end

    def self.find_by_founding_year(year)
        all.select {|object| object.founding_year == year}
    end

    def average_age
        cult_follower.map {|object| object.follower.age}.sum.to_f/cult_population
    end

    def my_followers_mottos
        arr = cult_follower.map {|object| object.follower.life_motto}
        arr.each {|object| object}
    end 

    def self.least_popular
        all.min_by {|object| object.cult_follower.count}
    end

    def self.most_popular
        all.max_by {|object| object.cult_follower.count}
    end

    def self.most_common_location
        all.find {|object| object == self.most_popular}.location
    end

end
