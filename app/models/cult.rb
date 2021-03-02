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





#   * `Cult#my_followers_mottos`
#     * prints out all of the mottos for this cult's followers
#   * `Cult.least_popular`
#     * returns the `Cult` instance who has the least number of followers :(
#   * `Cult.most_common_location`
#     * returns a `String` that is the location with the most cults
  

end
