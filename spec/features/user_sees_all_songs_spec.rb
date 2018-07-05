require 'rails_helper'

describe 'a visitor' do
  describe 'user index' do
    it 'user cam see all songs' do
      song_1 = Song.create(title:"Dont't Stop Believin", length: 303, play_count: 123456)
      song_2 = Song.create(title:"Never Gonna Give You Up", length: 253, play_count: 92238423)

      visit '/songs'
      
      expect(page).to have_content('All Songs')
      expect(page).to have_content(song_1.title)
      expect(page).to have_content("Plays: #{song_1.play_count}")
      expect(page).to have_content(song_2.title)
      expect(page).to have_content("Plays: #{song_2.play_count}")
    end
  end
end
