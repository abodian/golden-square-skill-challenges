require 'calculate_reading_time'

describe 'calculate_reading_time method ' do 
  it 'returns 0 when passed an empty string' do
    expect(calculate_reading_time("")).to eq 0
  end
  it 'returns 1 when passed one word' do 
    expect(calculate_reading_time('one')).to eq 1
  end
  it 'returns 1 when passed two hundred words ' do 
    expect(calculate_reading_time('one ' * 200)).to eq 1
  end
  it 'returns 2 when passed three hundred words' do
    expect(calculate_reading_time('one ' * 300)).to eq 2
  end
  it 'returns 5 when passed five thousand words' do
    expect(calculate_reading_time('one ' * 5000)).to eq 25
  end
end 