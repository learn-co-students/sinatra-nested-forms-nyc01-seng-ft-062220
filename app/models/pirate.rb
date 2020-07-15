class Pirate
    attr_accessor :name, :type, :weight, :height

    @@all = []
    def initialize(args)
        @name = args[:name]
        @type = args[:type]
        @weight = args[:weight]
        @height = args[:height]
        Pirate.all << self
    end

    def self.all
        @@all
    end

end