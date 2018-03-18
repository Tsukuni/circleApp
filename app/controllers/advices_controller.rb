class AdvicesController < ApplicationController
  def index
  end
  def capacities
    @capacities = Capacity.all
  end
  def languages
    @languages = Language.all
    @words = Word.all
  end
  def words
    @universityWords = UniversityWord.all
    @introduceUniversityWords = IntroduceUniversityWord.all
  end
  def exams
    @exams = Exam.all
    @exam_comments = ExamComment.all
  end
  def welcome
    @campus_ranks = CampusRank.all
    @campus_lives = CampusLife.all
  end

  def loves
    @loves = Love.all
    @date_places = DatePlace.all
  end
  def life
    @life_pages = LifePage.all
    @life_rankings = LifeRanking.all
  end
  def friend
    @friends = Friend.all
  end
end
