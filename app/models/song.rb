require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake_made_this = Artist.new(name: "Drake")
    self.artist = drake_made_this
    # it '#drake_made_this' do
    #   expect(@song.drake_made_this).to be_a(Artist)
    #   expect(@song.drake_made_this.name).to eq("Drake")
    # end
  end
end
