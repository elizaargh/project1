class MoodsController < ApplicationController

    def index
        @moods = Mood.all 
    end
    def new
      @mood = Mood.new
    end

    def show 
      # @mood = Mood.find params[:id]
      @mood = Mood.find_by :id => params[:id]
      @activities = @mood.activities
      @activity = @activities.sample
      

    end
   
      private
      def mood_params
        params.require(:mood).permit(:name)
      end
  end
  