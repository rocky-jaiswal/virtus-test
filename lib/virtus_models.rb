require 'virtus'

module VirtusModels

  class City
    include Virtus.value_object(strict: true)

    values do
      attribute :name, String
    end
  end

  class Borough
    include Virtus.value_object(strict: true)

    values do
      attribute :name, String
      attribute :city, City
    end
  end

  class Street
    include Virtus.value_object(strict: true)

    values do
      attribute :name, String
      attribute :borough, Borough
    end
  end

end
