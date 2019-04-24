Sandwich = Struct.new(:taste, :toppings)

RSpec.describe 'An ideal sandwich' do
  # let is better for 'memoization', but can cause over-complication issues
  let(:sandwich) { Sandwich.new('delicious', []) }

  # this is the 'memoized helper' version (to avoid creating multiple objects in examples)
  # def sandwich
  #   @sandwich ||= Sandwich.new('delicious', [])
  # end

  it 'is delicious' do
    taste = sandwich.taste
    expect(taste).to eq('delicious')
  end

  it 'lets me add some toppings' do
    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings
    expect(toppings).to_not be_empty
  end
end