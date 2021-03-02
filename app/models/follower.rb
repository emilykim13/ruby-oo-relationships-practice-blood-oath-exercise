class Follower
    attr_accessor :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_mottot = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def bloodoaths #made this method to be lazy c:
        BloodOath.all.select {|object| object.follower == self}
    end

    def cults
        self.bloodoaths.map {|object| object.cult} #returns an array of the follower's cults
    end

    def join_cult(initiation_date, cult)
        BloodOath.new(initiation_date, cult, self)
    end

    def self.of_a_certain_age(age)
        all.select {|object| object.age >= age}
    end
end
