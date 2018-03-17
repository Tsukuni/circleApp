class UnisnaController < ApplicationController
  def index
    @women_snaps = WomenSnap.all
    @men_snaps = MenSnap.all
  end

  def women
    @women_snap = WomenSnap.find(params[:id])
  end
  def men
    @men_snap = MenSnap.find(params[:id])
  end
end
