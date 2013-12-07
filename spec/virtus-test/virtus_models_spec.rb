require_relative '../spec_helper'
require 'benchmark'

describe "virtus object creation" do

  it "is able to create objects from virtus" do
    street = VirtusModels::Street.new(name: "OranienStrasse", borough: {name: "Kzburg", city: {name: "Berlin"}})
    expect(street.borough.name).to eq("Kzburg")
    expect(street.borough.city.name).to eq("Berlin")
  end

  it "is able to create a lot objects from virtus" do
    Benchmark.bm do |x|
      x.report ("10000 Virtus Obects: ") do
        10000.times do
          street = VirtusModels::Street.new(name: "OranienStrasse", borough: {name: "Kzburg", city: {name: "Berlin"}})
          expect(street.borough.name).to eq("Kzburg")
          expect(street.borough.city.name).to eq("Berlin")
        end
      end
    end
  end

end