require 'rails_helper'

describe Review, type: :model do
  it { should belong_to :product }
  it { should validate_presence_of :author }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :content }
  it { should validate_inclusion_of(:rating).in_array((1..5).to_a) }
  it { should validate_length_of(:content).is_at_least(50) }
  it { should validate_length_of(:content).is_at_most(250) }
end
