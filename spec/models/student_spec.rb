require 'rails_helper'

RSpec.describe Student, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(3)}
    it { should validate_uniqueness_of(:name) }
  end

  it "should have a working factory" do
      Fabricate.build(:student).should be_valid
    end
end
