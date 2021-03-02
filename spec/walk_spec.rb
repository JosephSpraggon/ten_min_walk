require 'walk'

describe 'ten_minute_walk?' do

  it 'returns true when given a walk that takes ten minutes' do
    expect(ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])).to eq(true)
  end

  it 'returns false when given a walk that is not ten mintues' do
    expect(ten_minute_walk?(['w', 's'])).to eq(false)
    expect(ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w', 's'])).to eq(false)
  end

  it 'returns true when given a walk that returns you to the starting point' do
    expect(ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])).to eq(true)
    expect(ten_minute_walk?(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])).to eq(false)
    expect(ten_minute_walk?(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n'])).to eq(false)
  end

end