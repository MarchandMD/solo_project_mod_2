require 'rails_helper'

RSpec.describe 'Mountains' do
  describe 'Trails#index view' do

    it 'shows all the trail names' do
      mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true)
      trail_1 = Trail.create!(name: 'bunny_run', open_trail: true, mountain_id: mountain_1.id)
      trail_2 = Trail.create!(name: 'schoolmarm', open_trail: true, mountain_id: mountain_1.id)
      visit "/trails"
      expect(page).to have_content(trail_1.name)
      expect(page).to have_content(trail_2.name)
    end
  end
end
