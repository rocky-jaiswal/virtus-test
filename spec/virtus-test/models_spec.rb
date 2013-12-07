require_relative "../spec_helper"

describe "ruby object creation" do

  it "is able to create objects" do
    city = Models::City.new("Berlin")
    borough = Models::Borough.new("Kzburg", city)
    street = Models::Street.new("Ostrasse", borough)
    expect(street.borough.name).to eq("Kzburg")
    expect(street.borough.city.name).to eq("Berlin")
  end

  it "is able to create a lot objects" do
    Benchmark.bm do |x|
      x.report ("10000 Ruby Obects: ") do
        10000.times do
          city = Models::City.new("Berlin")
          borough = Models::Borough.new("Kzburg", city)
          street = Models::Street.new("Ostrasse", borough)
          expect(street.borough.name).to eq("Kzburg")
          expect(street.borough.city.name).to eq("Berlin")
        end
      end
    end
  end

end