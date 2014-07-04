require 'spec_helper'

describe Line do


  it 'should be equal to another line with the same coordinates swapped' do
    line1=Line.new(Coordinates.new(1, 2), Coordinates.new(2, 3))
    line2=Line.new(Coordinates.new(2, 3), Coordinates.new(1, 2))
    expect(line1).to eq(line2)

  end

  it 'should not be equal when the coordinates of line are different' do
    line1=Line.new(Coordinates.new(1, 2), Coordinates.new(2, 5))
    line2=Line.new(Coordinates.new(2, 3), Coordinates.new(1, 2))
    expect(line1).to_not eq(line2)
  end

  it 'should be equal to another line with the same coordinates' do
    line1=Line.new(Coordinates.new(1, 2), Coordinates.new(2, 3))
    line2=Line.new(Coordinates.new(1, 2), Coordinates.new(2, 3))
    expect(line1).to eq(line2)
  end

  it 'should be equal if the objects are equal' do
    line1=Line.new(Coordinates.new(1, 2), Coordinates.new(2, 3))
    expect(line1.equal?(line1)).to eq(true)

  end
end