require 'rails_helper'

RSpec.describe Mountain, type: :model do
  it {should have_many :trails}
end
