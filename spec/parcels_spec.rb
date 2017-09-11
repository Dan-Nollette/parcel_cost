require('parcels')
require('rspec')
require('pry')


describe("parcels#volume")do
  it("will check for the volume")do
    test_parcel = Parcels.new(2,4,5,10)
    expect(test_parcel.volume).to(eq(40))
  end
  it("will check for cost to shop")do
    test_parcel = Parcels.new(4,2,5,39)
    expect(test_parcel.cost_to_ship).to(eq(40))
  end
end
