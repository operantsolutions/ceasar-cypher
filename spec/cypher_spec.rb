require './cypher.rb'

describe "#ceasar_cypher" do
  it "transforms a string by a specified number of places" do
    expect(ceasar_cypher("dog", 1)).to eql("eph")
  end

  it "transforms a string with multiple words" do
    expect(ceasar_cypher("bad dog", 2)).to eql("dcf fqi")
  end

  it "transforms a string with punctuation" do
    expect(ceasar_cypher("it's ok", 1)).to eql("ju't pl")
  end

  it "transforms a string with varying capitalization" do
    expect(ceasar_cypher("sArCaSm", 4)).to eql("wEvGeWq")
  end

  it "transforms a string with negative values" do
    expect(ceasar_cypher("bill", -1)).to eql("ahkk")
  end

  it "transforms a string with wrapping" do
    expect(ceasar_cypher("xyz", 4)).to eql("bcd")
  end
end