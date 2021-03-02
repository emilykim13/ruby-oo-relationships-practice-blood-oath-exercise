class BloodOath
    attr_reader :initiation_date
    attr_accessor :cult, :follower
    @@all = []

    def initialize(initiation_date, cult, follower)
        @initiation_date = initiation_date
        @cult = cult
        @follower = follower
        @@all << self
    end

    def self.all
        @@all
    end


end
