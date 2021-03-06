require 'rails_helper'

RSpec.describe Product, type: :model do
  it { is_expected.to have_many(:orders) }
  it { is_expected.to have_one_attached(:photo) }
end
