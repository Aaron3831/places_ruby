require('rspec')
require('places')

describe(Places)  do
  describe("#place_input") do
  it("take in user input")do
  place=Places.new("Greece")
  expect(place.place_input()).to(eq("Greece"))
end
end
describe("#save") do
  it ("save userinput to an array") do
    place = Places.new("Italy")
    place.save()
    expect(Places.p_array()).to(eq([place]))

  end
end
end
