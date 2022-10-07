require 'rails_helper'

RSpec.describe 'Trails' do
  describe 'Trails#show' do
    #     As a visitor
    # When I visit '/child_table_name/:id'
    # Then I see the child with that id including the child's attributes:
    it 'shows the specific trail and its attributes' do
      mountain_1 = Mountain.create!(name: 'keystone', handicap_accessible: true)
      trail_1 = Trail.create!(name: 'bunny run', trail_open: true, mountain_id: mountain_1.id)
      trail_2 = Trail.create!(name: 'schoolmarm', trail_open: true, mountain_id: mountain_1.id)
      visit "/trails/#{trail_1.id}"

      expect(page).to have_content(trail_1.name)
      expect(page).to have_content(trail_1.trail_open)
      visit "/trails/#{trail_2.id}"

      expect(page).to have_content(trail_2.name)
      expect(page).to have_content(trail_2.trail_open)
    end
  end
end
