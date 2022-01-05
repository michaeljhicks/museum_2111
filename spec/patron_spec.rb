require './lib/exhibit'
require './lib/patron'
require 'pry'

RSpec.describe 'patron' do

  before(:each) do
    @patron_1 = Patron.new("Bob", 20)
  end

  it "exists" do
    expect(@patron_1).to be_a(Patron)
  end

  it "has a name" do
    expect(@patron_1.name).to eq("Bob")
  end

  it "spending money" do
    expect(@patron_1.spending_money).to eq(20)
  end

  it "has innterests" do
    expect(@patron_1.interests).to eq([])
  end
end
