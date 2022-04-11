class MoodsController < ApplicationController

    def index
        @moods = Mood.all 
    end
    def new
      @mood = Mood.new
    end
   
      private
      def mood_params
        params.require(:mood).permit(:name)
      end
  end
  