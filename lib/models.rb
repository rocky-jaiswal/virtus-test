require 'virtus'

module Models

  class City
    attr_reader :name

    def initialize(name)
      @name = name
    end
  end

  class Borough
    attr_reader :name, :city

    def initialize(name, city)
      @name = name
      @city = city
    end
  end

  class Street
    attr_reader :name, :borough

    def initialize(name, borough)
      @name = name
      @borough = borough
    end
  end

end
