class UnisnaController < ApplicationController
  def index
    @women_snaps = WomenSnap.all
    @men_snaps = MenSnap.all

  end
end
