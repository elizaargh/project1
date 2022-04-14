class PagesController < ApplicationController
  def home
      @moods = Mood.all
      @activities = Activity.all
  end

def show
  @moods = Mood.all
  @activities = Activity.all
  
end
end
