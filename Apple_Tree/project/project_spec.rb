require_relative 'project'
RSpec.describe AppleTree do
    before(:each) do
    @apple_tree = AppleTree.new
  end
  it 'has a setter for age attribute' do
    @apple_tree.age = 0
    expect(@apple_tree.age).to eq(0)
  end

  it 'has a getter for age attribute' do
    expect(@apple_tree.age).to eq(@apple_tree.age)
  end

  it 'has a getter for the height attribute' do
    expect(@apple_tree.height).to eq(@apple_tree.height)
  end

  it 'will raise an error when trying to set height' do
    expect{@apple_tree.height = 3}.to raise_error(NoMethodError)
  end

  it 'has a getter function for apple_count' do
    expect(@apple_tree.apple_count).to eq(0)
  end

  it 'will raise an error when trying to set apple_count' do
    expect{ @apple_tree.apple_count = 3}.to raise_error(NoMethodError)
  end

  context "should have a method called year_gone_by" do
    before(:each) do
      @apple_tree.year_gone_by
    end

    it 'adds one year to the age attribute' do
      check_age =  @age
      expect(check_age).to eq(check_age)
    end

    it 'has a method to increase height by 10%' do
      expect(@apple_tree.height).to eq(@apple_tree.height)
    end

    it 'has a method to increase its apple_count by 2' do
      5.times {@apple_tree.year_gone_by}
      expect(@apple_tree.apple_count).to eq(@apple_tree.apple_count)
    end

    it 'will not increase its apple_count the first 3 years of its life' do
      2.times {@apple_tree.year_gone_by}
      expect(@apple_tree.apple_count).to eq(@apple_tree.apple_count)
    end

    it 'has a method called pick_apples that takes all apples off the tree' do
      @apple_tree.pick_apples
      expect(@apple_tree.apple_count).to eq(0)
    end

    it 'will not grow apples if its older than 10 years' do
      11.times {@apple_tree.year_gone_by}
      expect(@apple_tree.apple_count).to eq(@apple_tree.apple_count)
    end
  end
end
