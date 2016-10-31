require "spec_helper"
require 'nbamagnet'

# describe Nbamagnet do
#   it "has a version number" do
#     expect(Nbamagnet::VERSION).not_to be nil
#   end

#   it "does something useful" do
#     expect(false).to eq(true)
#   end
# end

describe Nbamagnet::Player do
  it "Kobe is Good" do
    expect(Nbamagnet::Player.portray("Kobe")).to eql("Good!")
  end

  it "Other else is Good" do
    expect(Nbamagnet::Player.portray("Not Kobe")).to eql("Also Good!")
  end

  it "pluralizes a word" do
  expect(Nbamagnet::Player.pluralize("player")).to eql("players")
end
end