class DosihshaRanksController < ApplicationController
  def index
    @trip_ranks = TripRank.all
    @school_ranks = SchoolRank.all
    @job_ranks = JobRank.all
    @fashion_ranks = FashionRank.all
    @circle_ranks = CircleRank.all

  end
end
